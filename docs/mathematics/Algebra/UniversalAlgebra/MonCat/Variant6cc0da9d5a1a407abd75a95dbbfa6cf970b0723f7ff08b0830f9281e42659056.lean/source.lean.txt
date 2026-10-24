-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.MonCat.Variantdcb5e16d256a8af2de338cbc675f258767be1739776808310fccb94587ed656f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dcb5e16d256a8af2de338cbc675f258767be1739776808310fccb94587ed656f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.MonCat.Variantdcb5e16d256a8af2de338cbc675f258767be1739776808310fccb94587ed656f","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"dcb5e16d256a8af2de338cbc675f258767be1739776808310fccb94587ed656f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/MonCat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Category.MonCat.Basic

-- We verify that the coercions of morphisms to functions work correctly:

namespace GRWTSK.Algebra.UniversalAlgebra.MonCat.Variantdcb5e16d256a8af2de338cbc675f258767be1739776808310fccb94587ed656f

example {R S : MonCat} (f : R ⟶ S) : ↑R → ↑S := f

-- It's essential that simp lemmas for `→*` apply to morphisms.
example {R S : MonCat} (i : R ⟶ S) (r : R) (h : r = 1) : i r = 1 := by simp [h]

example {R S : CommMonCat} (f : R ⟶ S) : ↑R → ↑S := f

example {R S : CommMonCat} (i : R ⟶ S) (r : R) (h : r = 1) : i r = 1 := by simp [h]

-- We verify that when constructing a morphism in `CommMonCat`,
-- when we construct the `toFun` field, the types are presented as `↑R`.
example (R : CommMonCat.{u}) : R ⟶ R := CommMonCat.ofHom
  { toFun := fun x => by
      match_target (R : Type u)
      guard_hyp x : (R : Type u)
      exact x * x
    map_one' := by simp
    map_mul' := fun x y => by
      rw [mul_assoc x y (x * y), ← mul_assoc y x y, mul_comm y x, mul_assoc, mul_assoc] }
