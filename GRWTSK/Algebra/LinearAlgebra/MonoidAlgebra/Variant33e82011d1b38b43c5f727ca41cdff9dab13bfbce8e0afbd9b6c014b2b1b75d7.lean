-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MapDomainBialgHom.Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"de8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.MapDomainBialgHom.Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"de8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Bialgebra/MonoidAlgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amelia Livingston. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Amelia Livingston, Yaël Dillies, Michał Mrugała
-/
import Mathlib.RingTheory.Bialgebra.Hom
import Mathlib.RingTheory.Coalgebra.MonoidAlgebra

/-!
# The bialgebra structure on monoid algebras

Given a monoid `M`, a commutative semiring `R` and an `R`-bialgebra `A`, this file collects results
about the `R`-bialgebra instance on `A[M]` inherited from the corresponding structure on its
coefficients, building upon results in `Mathlib/RingTheory/Coalgebra/MonoidAlgebra.lean` about the
coalgebra structure.

## Main definitions

* `(Add)MonoidAlgebra.instBialgebra`: the `R`-bialgebra structure on `A[M]` when `M` is an (add)
  monoid and `A` is an `R`-bialgebra.
* `LaurentPolynomial.instBialgebra`: the `R`-bialgebra structure on the Laurent polynomials
  `A[T;T⁻¹]` when `A` is an `R`-bialgebra.
-/


namespace GRWTSK.Algebra.LinearAlgebra.MapDomainBialgHom.Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7

suppress_compilation

open Bialgebra

variable {R A M N O : Type*}

namespace MonoidAlgebra
variable [CommSemiring R] [Semiring A] [Bialgebra R A] [Monoid M] [Monoid N] [Monoid O]

variable (R A M) in
instance instBialgebra : Bialgebra R (MonoidAlgebra A M) where
  counit_one := by simp only [one_def, counit_single, Bialgebra.counit_one]
  mul_compr₂_counit := by ext; simp
  comul_one := by
    simp only [one_def, comul_single, Bialgebra.comul_one, Algebra.TensorProduct.one_def,
      TensorProduct.map_tmul, lsingle_apply]
  mul_compr₂_comul := by
    ext a b c d
    simp only [Function.comp_apply, LinearMap.coe_comp, LinearMap.compr₂_apply,
      LinearMap.mul_apply', single_mul_single, comul_single, Bialgebra.comul_mul,
      ← (Coalgebra.Repr.arbitrary R b).eq, ← (Coalgebra.Repr.arbitrary R d).eq, Finset.sum_mul_sum,
      Algebra.TensorProduct.tmul_mul_tmul, map_sum, TensorProduct.map_tmul, lsingle_apply,
      LinearMap.compl₁₂_apply, LinearMap.coeFn_sum, Finset.sum_apply,
      Finset.sum_comm (s := (Coalgebra.Repr.arbitrary R b).index)]

-- TODO: Generalise to `MonoidAlgebra A M →ₐc[R] MonoidAlgebra A N` under `Bialgebra R A`
variable (R) in
/-- If `f : M → N` is a monoid hom, then `MonoidAlgebra.mapDomain f` is a bialgebra hom between
their monoid algebras. -/
@[simps!]
noncomputable def mapDomainBialgHom (f : M →* N) : MonoidAlgebra R M →ₐc[R] MonoidAlgebra R N :=
  .ofAlgHom (mapDomainAlgHom R R f) (by ext; simp) (by ext; simp)

@[simp] lemma mapDomainBialgHom_id : mapDomainBialgHom R (.id M) = .id _ _ := by ext; simp

@[simp]
lemma mapDomainBialgHom_comp (f : N →* O) (g : M →* N) :
    mapDomainBialgHom R (f.comp g) = (mapDomainBialgHom R f).comp (mapDomainBialgHom R g) := by
  ext; simp [Finsupp.mapDomain_comp]

lemma mapDomainBialgHom_mapDomainBialgHom (f : N →* O) (g : M →* N) (x : MonoidAlgebra R M) :
    mapDomainBialgHom R f (mapDomainBialgHom R g x) = mapDomainBialgHom R (f.comp g) x := by
  ext; simp

end MonoidAlgebra

namespace AddMonoidAlgebra
variable [CommSemiring R] [Semiring A] [Bialgebra R A] [AddMonoid M] [AddMonoid N] [AddMonoid O]

variable (R A M) in
instance instBialgebra : Bialgebra R A[M] where
  counit_one := by simp only [one_def, counit_single, Bialgebra.counit_one]
  mul_compr₂_counit := by ext; simp [single_mul_single]
  comul_one := by
    simp only [one_def, comul_single, Bialgebra.comul_one, Algebra.TensorProduct.one_def,
      TensorProduct.map_tmul, lsingle_apply]
  mul_compr₂_comul := by
    ext a b c d
    simp only [Function.comp_apply, LinearMap.coe_comp, LinearMap.compr₂_apply,
      LinearMap.mul_apply', single_mul_single, comul_single, Bialgebra.comul_mul,
      ← (Coalgebra.Repr.arbitrary R b).eq, ← (Coalgebra.Repr.arbitrary R d).eq, Finset.sum_mul_sum,
      Algebra.TensorProduct.tmul_mul_tmul, map_sum, TensorProduct.map_tmul, lsingle_apply,
      LinearMap.compl₁₂_apply, LinearMap.coeFn_sum, Finset.sum_apply,
      Finset.sum_comm (s := (Coalgebra.Repr.arbitrary R b).index)]

-- TODO: Generalise to `A[M] →ₐc[R] A[N]` under `Bialgebra R A`
variable (R) in
/-- If `f : M → N` is a monoid hom, then `AddMonoidAlgebra.mapDomain f` is a bialgebra hom between
their monoid algebras. -/
@[simps]
noncomputable def mapDomainBialgHom (f : M →+ N) : R[M] →ₐc[R] R[N] where
  __ := mapDomainAlgHom R R f
  map_smul' m x := by simp
  counit_comp := by ext; simp
  map_comp_comul := by ext; simp

@[simp] lemma mapDomainBialgHom_id : mapDomainBialgHom R (.id M) = .id _ _ := by ext; simp

@[simp]
lemma mapDomainBialgHom_comp (f : N →+ O) (g : M →+ N) :
    mapDomainBialgHom R (f.comp g) = (mapDomainBialgHom R f).comp (mapDomainBialgHom R g) := by
  ext; simp

lemma mapDomainBialgHom_mapDomainBialgHom (f : N →+ O) (g : M →+ N) (x : R[M]) :
    mapDomainBialgHom R f (mapDomainBialgHom R g x) = mapDomainBialgHom R (f.comp g) x := by
  ext; simp

end AddMonoidAlgebra

namespace LaurentPolynomial

open AddMonoidAlgebra

variable {R : Type*} [CommSemiring R] {A : Type*} [Semiring A] [Bialgebra R A]

instance instBialgebra : Bialgebra R A[T;T⁻¹] :=
  inferInstanceAs <| Bialgebra R A[ℤ]

@[simp]
theorem comul_T (n : ℤ) :
    Coalgebra.comul (R := R) (T n : A[T;T⁻¹]) = T n ⊗ₜ[R] T n := by
  simp [T, -single_eq_C_mul_T, Algebra.TensorProduct.one_def]

@[simp]
theorem counit_T (n : ℤ) :
    Coalgebra.counit (R := R) (T n : A[T;T⁻¹]) = 1 := by
  simp [T, -single_eq_C_mul_T]

end LaurentPolynomial
