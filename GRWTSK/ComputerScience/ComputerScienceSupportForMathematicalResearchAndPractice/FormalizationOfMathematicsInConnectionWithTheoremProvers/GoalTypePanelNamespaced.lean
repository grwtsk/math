-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalTypePanel.Variant5055d51db4eb2de0b880291b0451c404965e9a9713728a2c05342c990367fd7a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5055d51db4eb2de0b880291b0451c404965e9a9713728a2c05342c990367fd7a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.GoalTypePanel.Variant5055d51db4eb2de0b880291b0451c404965e9a9713728a2c05342c990367fd7a","mathematical_subject":"Foundations.Unclassified","original_sha256":"5055d51db4eb2de0b880291b0451c404965e9a9713728a2c05342c990367fd7a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/proofwidgets/ProofWidgets/Component/GoalTypePanel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ProofWidgets.Component.Panel


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalTypePanel.Variant5055d51db4eb2de0b880291b0451c404965e9a9713728a2c05342c990367fd7a

namespace ProofWidgets

/-- Display the goal type using known `Expr` presenters. -/
@[widget_module]
def GoalTypePanel : Component PanelWidgetProps where
  javascript := include_str ".." / ".." / "build" / "js" / "goalTypePanel.js"

end ProofWidgets
