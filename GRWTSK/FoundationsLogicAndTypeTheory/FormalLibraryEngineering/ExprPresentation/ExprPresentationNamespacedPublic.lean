-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Presenter.Variant011dffb62a4924f1c36bfdb33fda8022bda23fbdc76dc191effed39da467f103","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"011dffb62a4924f1c36bfdb33fda8022bda23fbdc76dc191effed39da467f103","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Presenter.Variant011dffb62a4924f1c36bfdb33fda8022bda23fbdc76dc191effed39da467f103","mathematical_subject":"Foundations.Unclassified","original_sha256":"011dffb62a4924f1c36bfdb33fda8022bda23fbdc76dc191effed39da467f103","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Demos/ExprPresentation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import ProofWidgets.Component.Panel.SelectionPanel
public import ProofWidgets.Component.Panel.GoalTypePanel
public import ProofWidgets.Presentation.Expr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Presenter.Variant011dffb62a4924f1c36bfdb33fda8022bda23fbdc76dc191effed39da467f103

public meta section

open ProofWidgets Jsx

@[expr_presenter]
def presenter : ExprPresenter where
  userName := "With octopodes"
  layoutKind := .inline
  present e :=
    return <span>
        {.text "🐙 "}<InteractiveCode fmt={← Lean.Widget.ppExprTagged e} />{.text " 🐙"}
      </span>

example : 2 + 2 = 4 ∧ 3 + 3 = 6 := by
  with_panel_widgets [GoalTypePanel]
    -- Place cursor here.
    constructor
    rfl
    rfl

example (_h : 2 + 2 = 5) : 2 + 2 = 4 := by
  with_panel_widgets [SelectionPanel]
    -- Place cursor here and select subexpressions in the goal with shift-click.
    rfl
