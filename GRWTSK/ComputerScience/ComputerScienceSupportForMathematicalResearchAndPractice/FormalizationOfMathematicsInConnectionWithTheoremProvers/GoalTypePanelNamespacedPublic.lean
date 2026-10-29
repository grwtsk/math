-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalTypePanel.Variant2e59b9b3537a9a463ddba58a36b503ef4f1f7cb703164cfee3e6a7f185f82f18","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e59b9b3537a9a463ddba58a36b503ef4f1f7cb703164cfee3e6a7f185f82f18","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.GoalTypePanel.Variant2e59b9b3537a9a463ddba58a36b503ef4f1f7cb703164cfee3e6a7f185f82f18","mathematical_subject":"Foundations.Unclassified","original_sha256":"2e59b9b3537a9a463ddba58a36b503ef4f1f7cb703164cfee3e6a7f185f82f18","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Component/Panel/GoalTypePanel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import ProofWidgets.Component.Panel.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalTypePanel.Variant2e59b9b3537a9a463ddba58a36b503ef4f1f7cb703164cfee3e6a7f185f82f18

public meta section

namespace ProofWidgets

/-- Display the goal type using known `Expr` presenters. -/
@[widget_module]
def GoalTypePanel : Component PanelWidgetProps where
  javascript := include_str ".." / ".." / ".." / "widget" / "js" / "goalTypePanel.js"

end ProofWidgets
