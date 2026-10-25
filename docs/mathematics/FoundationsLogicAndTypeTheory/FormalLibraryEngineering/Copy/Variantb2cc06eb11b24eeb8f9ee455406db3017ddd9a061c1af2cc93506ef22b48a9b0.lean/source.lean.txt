-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Copy.Variantabb2e8e9846fc6b798846132b6621b7d040cf06089cc32b679a4843e0cc3e462","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"abb2e8e9846fc6b798846132b6621b7d040cf06089cc32b679a4843e0cc3e462","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Copy.Variantabb2e8e9846fc6b798846132b6621b7d040cf06089cc32b679a4843e0cc3e462","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"abb2e8e9846fc6b798846132b6621b7d040cf06089cc32b679a4843e0cc3e462","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/importGraph/ImportGraphTest/Widget/Copy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import ImportGraph.Widget.Copy
public import Lean.Elab.Command


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Copy.Variantabb2e8e9846fc6b798846132b6621b7d040cf06089cc32b679a4843e0cc3e462

open ImportGraph Widget Lean Elab Command

elab "#copy" : command => liftCoreM do
  let msgs := [
    ← copyToClipboard "some copied text",
    ← copyToClipboard "some more copied text" .copiedText,
    ← copyToClipboard "some more copied text" "override text",
  ]
  logInfo m!"{m!"\n\n".joinSep msgs}"

/--
info: [click-to-copy] (Will copy:
  some copied text)

[click-to-copy] some more copied text
(Will copy:
  some more copied text)

[click-to-copy] override text
(Will copy:
  some more copied text)
-/
#guard_msgs in
#copy
