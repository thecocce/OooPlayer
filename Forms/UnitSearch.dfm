object SearchForm: TSearchForm
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Search'
  ClientHeight = 478
  ClientWidth = 787
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  DesignSize = (
    787
    478)
  PixelsPerInch = 96
  TextHeight = 13
  object ResultsLbl: TLabel
    Left = 0
    Top = 465
    Width = 787
    Height = 13
    Align = alBottom
    ExplicitWidth = 3
  end
  object QueryEdit: TLabeledEdit
    Left = 48
    Top = 10
    Width = 650
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    EditLabel.Width = 34
    EditLabel.Height = 13
    EditLabel.Caption = 'Query:'
    EditLabel.Layout = tlBottom
    LabelPosition = lpLeft
    TabOrder = 0
    OnKeyDown = QueryEditKeyDown
    OnMouseEnter = QueryEditMouseEnter
  end
  object SearchBtn: TButton
    Left = 704
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Search'
    TabOrder = 1
    OnClick = SearchBtnClick
  end
  object ResultsList: TListView
    Left = 8
    Top = 39
    Width = 771
    Height = 397
    Anchors = [akLeft, akTop, akRight, akBottom]
    Columns = <
      item
        Caption = 'Title'
      end
      item
        Alignment = taCenter
        Caption = 'Duration'
        Width = 80
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ReadOnly = True
    RowSelect = True
    ParentFont = False
    PopupMenu = ListMenu
    ShowColumnHeaders = False
    TabOrder = 2
    ViewStyle = vsReport
    OnClick = ResultsListClick
    OnDblClick = ResultsListDblClick
  end
  object chkCloseOnPlayBtn: TCheckBox
    Left = 8
    Top = 440
    Width = 250
    Height = 19
    Anchors = [akLeft, akBottom]
    Caption = 'Close this window if a result is selected to play'
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object ListMenu: TPopupMenu
    Left = 312
    Top = 152
    object A1: TMenuItem
      Caption = 'Add to queue'
      OnClick = A1Click
    end
  end
end
