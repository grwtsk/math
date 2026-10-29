-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Rank.Variant2492d126dc18ca66cb534c64bac5856de0f76b778ba6a6e730f256a464f45db6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2492d126dc18ca66cb534c64bac5856de0f76b778ba6a6e730f256a464f45db6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Rank.Variant2492d126dc18ca66cb534c64bac5856de0f76b778ba6a6e730f256a464f45db6","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"2492d126dc18ca66cb534c64bac5856de0f76b778ba6a6e730f256a464f45db6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/24/2492d126dc18ca66cb534c64bac5856de0f76b778ba6a6e730f256a464f45db6--types.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.LinearAlgebra.Matrix.Rank
import Mathlib.LinearAlgebra.Matrix.Echelon.Decomposition
import Mathlib.LinearAlgebra.ExteriorPower.Basis
import Mathlib.LinearAlgebra.Projectivization.Basic
import Mathlib.RingTheory.Grassmannian

namespace GRWTSK.Algebra.LinearAlgebra.Rank.Variant2492d126dc18ca66cb534c64bac5856de0f76b778ba6a6e730f256a464f45db6

open Lean Elab Command
set_option pp.all true
set_option pp.universes true
set_option pp.proofs true
set_option pp.maxSteps 1000000
run_cmd do
  let env ← getEnv
  let moduleNames := env.allImportedModuleNames
  let names : Array String := #["Echelon.Decomposition", "Echelon.Decomposition.mk", "Echelon.Decomposition.rank_eq", "ExteriorAlgebra.exteriorPower", "LinearIndependent.rank_matrix", "Matrix.IsPivotedBy", "Matrix.IsPivotedBy.rank_eq", "Matrix.det_eq_zero_of_not_linearIndependent_rows", "Matrix.exists_mulVec_eq_zero_iff", "Matrix.linearIndependent_rows_of_det_ne_zero", "Matrix.rank", "Matrix.rank_eq_finrank_span_row", "Matrix.rank_mul_eq_right_of_det_ne_zero", "Matrix.rank_mul_eq_right_of_isUnit_det", "Matrix.rank_of_det_ne_zero", "Matrix.rank_submatrix_le", "Matrix.rank_transpose", "Matrix.row", "Matrix.vecMulLinear", "Module.Basis.exteriorPower", "Module.Grassmannian", "Module.Grassmannian.ext", "Module.Grassmannian.mk", "Module.Grassmannian.rankAtStalk_eq", "Module.Grassmannian.toSubmodule", "Module.rankAtStalk_eq_finrank_of_free", "Projectivization", "Projectivization.equivSubmodule", "Projectivization.mk", "Projectivization.mk_eq_mk_iff", "Projectivization.mk_eq_mk_iff'", "Projectivization.rep", "Projectivization.rep_nonzero", "Projectivization.submodule", "Set.powersetCard", "Set.powersetCard.mem_range_ofFinEmbEquiv_symm_iff_mem", "Set.powersetCard.ofFinEmbEquiv", "Set.powersetCard.ofFinEmbEquiv_symm_apply", "Submodule.finrank_quotient_add_finrank", "exists_linearIndependent'", "exteriorPower.basis_repr_apply", "exteriorPower.finrank_eq", "exteriorPower.map", "exteriorPower.map_apply_ιMulti", "exteriorPower.map_injective_field", "exteriorPower.ιMulti", "exteriorPower.ιMultiDual", "exteriorPower.ιMultiDual_apply_ιMulti", "exteriorPower.ιMulti_family_linearIndependent_field", "linearIndependent_iff_card_eq_finrank_span", "range_vecMulLinear"]
  for text in names do
    let name := text.toName
    let ci ← getConstInfo name
    let some index := env.getModuleIdxFor? name | throwError "No declaring module for {name}"
    let rendered ← liftTermElabM do
      let result ← Meta.ppExpr ci.type
      return result.pretty 100000
    if rendered.contains '⋯' then throwError "Omitted argument in type for {name}"
    liftIO <| IO.println ("API_JSON " ++ (Json.mkObj [
      ("name", toJson text),
      ("declaring_module", toJson moduleNames[index]!.toString),
      ("universe_parameters", toJson (ci.levelParams.map Name.toString)),
      ("type", toJson rendered)]).compress)
