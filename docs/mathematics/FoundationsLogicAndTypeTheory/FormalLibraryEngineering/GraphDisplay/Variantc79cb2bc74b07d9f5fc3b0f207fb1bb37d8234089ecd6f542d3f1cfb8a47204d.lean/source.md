# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GraphDisplay.Variantc79cb2bc74b07d9f5fc3b0f207fb1bb37d8234089ecd6f542d3f1cfb8a47204d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e56924a4109b5e9e5c19517dd3e05bd3a719c9ae` · SHA-256 `9724adfc3f30b99058184f5ba5d39b32c6e658cc8692d9057681b307c42ca2a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GraphDisplay.Variantbf81f2d3057e0d4f485c44fff27d3281997c673d3224fbf55978a7cdb2e790c5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf81f2d3057e0d4f485c44fff27d3281997c673d3224fbf55978a7cdb2e790c5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.GraphDisplay.Variantbf81f2d3057e0d4f485c44fff27d3281997c673d3224fbf55978a7cdb2e790c5","mathematical_subject":"Foundations.Unclassified","original_sha256":"bf81f2d3057e0d4f485c44fff27d3281997c673d3224fbf55978a7cdb2e790c5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Component/GraphDisplay.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
module

public import ProofWidgets.Component.ForceGraphDisplay


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GraphDisplay.Variantbf81f2d3057e0d4f485c44fff27d3281997c673d3224fbf55978a7cdb2e790c5

public meta section

namespace ProofWidgets.GraphDisplay

open Lean in
local macro "#reexport" n:ident : command =>
  `(@[deprecated "Namespace moved to ForceGraphDisplay." (since := "2026-06-25")]
    abbrev $n := @$(mkIdent <| `ForceGraphDisplay ++ n.getId))

#reexport mkCircle
#reexport BoundingShape
#reexport Vertex
#reexport Edge
#reexport ForceCenterParams
#reexport ForceCollideParams
#reexport ForceLinkParams
#reexport ForceManyBodyParams
#reexport ForceXParams
#reexport ForceYParams
#reexport ForceRadialParams
#reexport ForceParams
#reexport Props

end GraphDisplay

@[deprecated ForceGraphDisplay (since := "2026-06-25")]
def GraphDisplay : Component GraphDisplay.Props := ForceGraphDisplay

end ProofWidgets
```
