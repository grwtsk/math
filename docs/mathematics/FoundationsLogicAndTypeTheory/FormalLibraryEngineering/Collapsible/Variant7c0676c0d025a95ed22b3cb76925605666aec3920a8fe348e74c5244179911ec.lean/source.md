# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Collapsible.Variant7c0676c0d025a95ed22b3cb76925605666aec3920a8fe348e74c5244179911ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f0125c43428e8f654082a8ea48f8b0d1dd48786` · SHA-256 `1086da6c17b1b001fed587b5fbf2a4a00ea82de0d1f5e820c99d76ed87ab7053`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant63f90f7fdfca0bd6e48d2cc2b24a803aa3240c973c96f8cba8d5c91be52bb76b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63f90f7fdfca0bd6e48d2cc2b24a803aa3240c973c96f8cba8d5c91be52bb76b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant63f90f7fdfca0bd6e48d2cc2b24a803aa3240c973c96f8cba8d5c91be52bb76b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"63f90f7fdfca0bd6e48d2cc2b24a803aa3240c973c96f8cba8d5c91be52bb76b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/importGraph/ImportGraphTest/Widget/Collapsible.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Lean.Elab.Command
public meta import ImportGraph.Widget.Collapsible


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant63f90f7fdfca0bd6e48d2cc2b24a803aa3240c973c96f8cba8d5c91be52bb76b

open ImportGraph Widget Lean Elab Command

elab "#collapse" : command => liftCoreM do
  let msgs := [
    ← collapsible m!"a header! (with interactivity: {.ofConstName ``True})"
      m!"a body (with interactivity: {.ofConstName ``True})",
    ← collapsible m!"a header!" (← collapsible m!"a nested header" m!"a body"),
    ← collapsible m!"a header!"
      m!"{← collapsible m!"a nested header" m!"a body"}\
        {← collapsible m!"an adjacent nested header" m!"another body"}",
  ]
  logInfo <| m!"\n".joinSep msgs

-- Note that the extra newline in the second case is due to approximating the newline behavior in
-- fallback `MessageData`. A second newline does not appear in the infoview.
/--
info: ▼ a header! (with interactivity: True)
  a body (with interactivity: True)

▼ a header!
  ▼ a nested header
    a body
  ⏎

▼ a header!
  ▼ a nested header
    a body
  ▼ an adjacent nested header
    another body
-/
#guard_msgs in
#collapse
```
