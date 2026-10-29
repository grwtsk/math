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
