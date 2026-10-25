# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Golden.Variantc252bcb96e82ae4f626b108502ee7c336ae386e1bce10abd682f2912d634f1fe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc8dc494d4efe1c1c61b1dcde75530d0b50a0559` · SHA-256 `319bf78dd598023e885a1ebace33b0e487fee8fd4d181f85b8306dc8a6088ddb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant7f669c3be4df7ae311a3e2bd74b856746326562324cff6a3a074d9495187b376","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f669c3be4df7ae311a3e2bd74b856746326562324cff6a3a074d9495187b376","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Tactic.Variant7f669c3be4df7ae311a3e2bd74b856746326562324cff6a3a074d9495187b376","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7f669c3be4df7ae311a3e2bd74b856746326562324cff6a3a074d9495187b376","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/composite/CompositeElements/Golden.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic
import CompositeElements.Invariants

/-! # Kernel-checked finite golden facts. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant7f669c3be4df7ae311a3e2bd74b856746326562324cff6a3a074d9495187b376

namespace URSM.Composite

example : importsBits 3 0 = true := by decide
example : importsBits 3 1 = true := by decide
example : importsBits 3 2 = true := by decide
example : importsBits 4 0 = true := by decide
example : importsBits 4 2 = true := by decide
example : importsBits 5 0 = true := by decide
example : importsBits 5 3 = true := by decide
example : importsBits 5 4 = true := by decide
example : importsBits 0 3 = false := by decide
example : exactBridgeBits 2 2 = true := by decide
example : exactBridgeBits 0 1 = true := by decide
example : transportBits 2 0 = true := by decide
example : exactBridgeBits 2 0 = false := by decide
example :
    staticPlanes.conflict.square.read? 0 1 = some false := by
  decide
example :
    staticPlanes.conflict.square.read? 1 2 = none := by
  decide

example :
    (URSM.Contracts.ResolvedSquare.unresolved :
      URSM.Contracts.ResolvedSquare 2).read? 0 1 = none := by
  simp

example :
    URSM.Bridge.rowMajor
      ((7 : Fin 8), (7 : Fin 8)) = (63 : Fin 64) := by
  apply Fin.ext
  decide

example :
    URSM.Bridge.rowMajor
      ((1 : Fin 2), (1 : Fin 33)) = (34 : Fin 66) := by
  apply Fin.ext
  decide

end URSM.Composite
```
