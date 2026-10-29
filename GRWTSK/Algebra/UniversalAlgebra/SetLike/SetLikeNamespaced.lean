-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Subfield.Variant208c8d4a59c8c685582de325c3d4b0af7a6b781992d06f7285e88fccf9ea3e0e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"208c8d4a59c8c685582de325c3d4b0af7a6b781992d06f7285e88fccf9ea3e0e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Subfield.Variant208c8d4a59c8c685582de325c3d4b0af7a6b781992d06f7285e88fccf9ea3e0e","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"208c8d4a59c8c685582de325c3d4b0af7a6b781992d06f7285e88fccf9ea3e0e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/set_like.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Field.Subfield.Basic
import Mathlib.Algebra.Star.Subalgebra
import Mathlib.Algebra.Star.SelfAdjoint
import Mathlib.Algebra.Star.NonUnitalSubalgebra


namespace GRWTSK.Algebra.UniversalAlgebra.Subfield.Variant208c8d4a59c8c685582de325c3d4b0af7a6b781992d06f7285e88fccf9ea3e0e

set_option autoImplicit true

section Delab
variable {M : Type u} [Monoid M] (S S' : Submonoid M)

/-- info: ↥S → ↥S' : Type u -/
#guard_msgs in #check S → S'

/-- info: ↥S : Type u -/
#guard_msgs in #check {x // x ∈ S}

/-- info: { x // 1 * x ∈ S } : Type u -/
#guard_msgs in #check {x // 1 * x ∈ S}

end Delab

example [Ring R] (S : Subring R) (hx : x ∈ S) (hy : y ∈ S) (hz : z ∈ S) (n m : ℕ) :
    n • x ^ 3 - 2 • y + z ^ m ∈ S := by
  aesop

example [Ring R] (S : Set R) (hx : x ∈ S) (hy : y ∈ S) (hz : z ∈ S) (n m : ℕ) :
    n • x ^ 3 - y + z ^ m ∈ Subring.closure S := by
  aesop

example [CommRing R] [Ring A] [Algebra R A] [StarRing R] [StarRing A] [StarModule R A]
    (r : R) (a b c : A) (n : ℕ) :
    -b + star (algebraMap R A r) + a ^ n * c ∈ StarAlgebra.adjoin R {a, b, c} := by
  aesop

example [Monoid M] (x : M) (n : ℕ) : x ^ n ∈ Submonoid.closure {x} := by
  aesop

example [Monoid M] (x y z w : M) (n : ℕ) : (x * y) ^ n * w ∈ Submonoid.closure {x, y, z, w} := by
  aesop

example [Group M] (x : M) (n : ℤ) : x ^ n ∈ Subgroup.closure {x} := by
  aesop

example [Monoid M] (x y z : M) (S₁ S₂ : Submonoid M) (h : S₁ ≤ S₂) (hx : x ∈ S₁)
    (hy : y ∈ S₁) (hz : z ∈ S₂) :
    x * y * z ∈ S₂ := by
  aesop

example [Monoid M] (x y z : M) (S₁ S₂ : Submonoid M) (h : S₁ ≤ S₂) (hx : x ∈ S₁)
    (hy : y ∈ S₁) (hz : z ∈ S₂) :
    x * y * z ∈ S₁ ⊔ S₂ := by
  aesop

example [Monoid M] (x y z : M) (S : Submonoid M) (hxy : x * y ∈ S) (hz : z ∈ S) :
    z * (x * y) ∈ S := by
  aesop

example [Field F] (S : Subfield F) (q : ℚ) : (q : F) ∈ S := by
  aesop

example [Field F] (S : Subfield F) : (1.2 : F) ∈ S := by
  aesop

example [Field F] (S : Subfield F) (x : F) (hx : x ∈ S) : ((12e-100 : F) • x⁻¹) ∈ S := by
  aesop
