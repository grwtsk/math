# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalTypePanel.Variantac092e45ba08bc532211831a7f3b2be0b8dc05e32de3ea84a6fb1b74cd8945dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `024b1aa5d23ad5efa6f1fccf4b1be02bbc22d8a6` · SHA-256 `365bf71b16cb011b96e9a996af2b91962ba13abf903061d5c3a565eb657176f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
