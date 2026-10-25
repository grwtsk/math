# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalTypePanel.Variant47fcdde2dac7d7f865c2934a5cd4fe3b408594a3276e8480e28b243591c6997a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d946776de7978681d53499ce7e4ce10a9bd3afe` · SHA-256 `6311e90bdfe856f10dc1fbdf6a3a15f58692744f9095b49459a48531bc7fe338`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
