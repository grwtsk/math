-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.BasisPiTensorProduct.Variant1931c0f5719316c399721fb0f4d9939406504a2740c3478f4b3683c5e0258433","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1931c0f5719316c399721fb0f4d9939406504a2740c3478f4b3683c5e0258433","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.BasisPiTensorProduct.Variant1931c0f5719316c399721fb0f4d9939406504a2740c3478f4b3683c5e0258433","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"1931c0f5719316c399721fb0f4d9939406504a2740c3478f4b3683c5e0258433","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/PiTensorProduct/Basis.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Daniel Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Daniel Morrison, Sophie Morel
-/
module

public import Mathlib.LinearAlgebra.Finsupp.VectorSpace
public import Mathlib.LinearAlgebra.PiTensorProduct.Finsupp

/-!
# Basis for `PiTensorProduct`

This file constructs a basis for `PiTensorProduct` given bases on the component spaces.
-/


namespace GRWTSK.Algebra.LinearAlgebra.BasisPiTensorProduct.Variant1931c0f5719316c399721fb0f4d9939406504a2740c3478f4b3683c5e0258433

@[expose] public section

section PiTensorProduct

attribute [local ext] PiTensorProduct.ext

open PiTensorProduct Module TensorProduct

variable {ι R : Type*} {M : ι → Type*} {κ : ι → Type*} [CommSemiring R] [∀ i, AddCommMonoid (M i)]
  [∀ i, Module R (M i)]

open scoped Classical in
/-- Let `ι` be a `Finite` type and `M` be a family of modules indexed by `ι`. If `b i : κ i → M i`
is a basis for every `i` in `ι`, then `fun (p : Π i, κ i) ↦ ⨂ₜ[R] i, b i (p i)` is a basis
of `⨂[R] i, M i`.
-/
noncomputable def Basis.piTensorProduct [Finite ι] (b : Π i, Basis (κ i) R (M i)) :
    Basis (Π i, κ i) R (⨂[R] i, M i) :=
  haveI := Fintype.ofFinite ι
  Finsupp.basisSingleOne.map
    ((PiTensorProduct.congr (fun i ↦ (b i).repr)) ≪≫ₗ
      ofFinsuppEquiv ≪≫ₗ
      Finsupp.lcongr (Equiv.refl _) (constantBaseRingEquiv _ R).toLinearEquiv).symm

@[simp]
theorem Basis.piTensorProduct_repr_tprod_apply [Fintype ι] (b : Π i, Basis (κ i) R (M i))
    (x : Π i, M i) (p : Π i, κ i) :
    (Basis.piTensorProduct b).repr (tprod R x) p = ∏ i : ι, (b i).repr (x i) (p i) := by
  rw [piTensorProduct, Subsingleton.elim (Fintype.ofFinite ι) ‹_›]
  simp

@[simp]
theorem Basis.piTensorProduct_apply [Finite ι] (b : Π i, Basis (κ i) R (M i)) (p : Π i, κ i) :
    Basis.piTensorProduct b p = ⨂ₜ[R] i, (b i) (p i) := by
  have := Fintype.ofFinite ι
  classical
  refine (Basis.piTensorProduct b).ext_elem (fun q ↦ ?_)
  simp [Finsupp.single_apply, Fintype.prod_ite_zero, ← funext_iff]

end PiTensorProduct
