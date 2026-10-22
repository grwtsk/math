/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Source pattern reviewed from openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a,
lean/OAI/LinearAlgebra/TensorProduct/ScalarDescent.lean (Apache-2.0).
This local file adapts the arbitrary-Galois and ambient-complex stages.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.LinearAlgebra.TensorProduct.RationalScalarDescent

/-!
# Arbitrary Galois and ambient scalar descent

A tensor over an arbitrary Galois extension has finite coefficient support, so
it descends to a finite Galois intermediate field. The finite theorem from
RationalScalarDescent can therefore be lifted to arbitrary Galois extensions
and then to an ambient coefficient field such as C.

This is the algebraic descent mechanism needed by the rational-Hodge bridge.
It does not prove that the selected ambient subspace is a Hodge subspace or
that its rational part is algebraic.
-/

set_option autoImplicit false

namespace GRWTSK.LinearAlgebra.TensorProduct.ArbitraryScalarDescent

noncomputable section

open scoped TensorProduct
open TensorProduct
open RationalScalarDescent

section ChangeCoefficients

variable {k K C V : Type*} [Field k] [Field K] [Field C]
  [Algebra k K] [Algebra k C] [Algebra K C] [IsScalarTower k K C]
  [AddCommGroup V] [Module k V]

def coefficientInclusion : K ⊗[k] V →ₗ[K] C ⊗[k] V :=
  TensorProduct.AlgebraTensorModule.map
    (Algebra.linearMap K C) (LinearMap.id : V →ₗ[k] V)

@[simp]
theorem coefficientInclusion_tmul (a : K) (v : V) :
    coefficientInclusion (C := C) (a ⊗ₜ[k] v) =
      algebraMap K C a ⊗ₜ[k] v := rfl

theorem coefficientInclusion_mem_baseChange
    (W : Submodule k V)
    (t : K ⊗[k] V)
    (ht : t ∈ W.baseChange K) :
    coefficientInclusion (C := C) t ∈ W.baseChange C := by
  obtain ⟨u, rfl⟩ := ht
  refine ⟨coefficientInclusion (C := C) u, ?_⟩
  induction u with
  | tmul a v => rfl
  | add u v hu hv => simp [hu, hv]

theorem rationalPart_comap_coefficientInclusion
    (P : Submodule C (C ⊗[k] V)) :
    rationalPart
        ((P.restrictScalars K).comap (coefficientInclusion (K := K))) =
      rationalPart P := by
  ext v
  simp [rationalPart, coefficientInclusion]

end ChangeCoefficients

section ArbitraryGalois

variable {k K V : Type*} [Field k] [Field K] [Algebra k K]
  [IsGalois k K] [AddCommGroup V] [Module k V]

theorem tensor_defined_over_finiteGalois
    (t : K ⊗[k] V) :
    ∃ (L : FiniteGaloisIntermediateField k K) (u : L ⊗[k] V),
      coefficientInclusion u = t := by
  classical
  obtain ⟨s, hs⟩ := TensorProduct.exists_finset t
  let L := FiniteGaloisIntermediateField.adjoin
    k (↑(s.image Prod.fst) : Set K)
  have hmem (a : ↥s) : a.val.1 ∈ L.toIntermediateField := by
    exact FiniteGaloisIntermediateField.subset_adjoin k _
      (Finset.mem_image.mpr ⟨a.val, a.property, rfl⟩)
  refine ⟨L, ∑ a : ↥s,
    (⟨a.val.1, hmem a⟩ : L) ⊗ₜ[k] a.val.2, ?_⟩
  simpa [coefficientInclusion, ← hs] using
    (Finset.sum_attach s (fun a : K × V => a.1 ⊗ₜ[k] a.2))

omit [IsGalois k K] in
theorem scalarConjugate_restrict
    (L : FiniteGaloisIntermediateField k K)
    (σ : K ≃ₐ[k] K)
    (u : L ⊗[k] V) :
    coefficientInclusion
        (scalarConjugate (σ.restrictNormal L) u) =
      scalarConjugate σ (coefficientInclusion u) := by
  induction u with
  | tmul a v =>
      simp only [scalarConjugate_tmul, coefficientInclusion_tmul,
        AlgEquiv.restrictNormal_commutes]
  | add u v hu hv =>
      simp [hu, hv]

theorem galois_scalarDescent
    (P : Submodule K (K ⊗[k] V))
    (t : K ⊗[k] V)
    (ht : ∀ σ : K ≃ₐ[k] K, scalarConjugate σ t ∈ P) :
    t ∈ (rationalPart P).baseChange K := by
  obtain ⟨L, u, hu⟩ := tensor_defined_over_finiteGalois t
  let Q : Submodule L (L ⊗[k] V) :=
    (P.restrictScalars L).comap coefficientInclusion
  have hQ : rationalPart Q = rationalPart P :=
    rationalPart_comap_coefficientInclusion P
  have hconj (χ : L ≃ₐ[k] L) :
      scalarConjugate χ u ∈ Q := by
    obtain ⟨σ, hσ⟩ :=
      AlgEquiv.restrictNormalHom_surjective
        (F := k) (K₁ := L) K χ
    change coefficientInclusion (scalarConjugate χ u) ∈ P
    change σ.restrictNormal L = χ at hσ
    rw [← hσ, scalarConjugate_restrict, hu]
    exact ht σ
  have hdesc := finiteGalois_scalarDescent Q u hconj
  rw [hQ] at hdesc
  rw [← hu]
  exact coefficientInclusion_mem_baseChange
    (rationalPart P) u hdesc

end ArbitraryGalois

section AmbientDescent

variable {k K C V : Type*} [Field k] [Field K] [Field C]
  [Algebra k K] [IsGalois k K]
  [Algebra k C] [Algebra K C] [IsScalarTower k K C]
  [AddCommGroup V] [Module k V]

theorem scalarDescent_ambient
    (P : Submodule C (C ⊗[k] V))
    (t : K ⊗[k] V)
    (ht : ∀ σ : K ≃ₐ[k] K,
      coefficientInclusion (scalarConjugate σ t) ∈ P) :
    t ∈ (rationalPart P).baseChange K := by
  let Q : Submodule K (K ⊗[k] V) :=
    (P.restrictScalars K).comap coefficientInclusion
  have hQ : rationalPart Q = rationalPart P :=
    rationalPart_comap_coefficientInclusion P
  have hdesc := galois_scalarDescent Q t ht
  rwa [hQ] at hdesc

end AmbientDescent

abbrev AlgebraicNumbers := algebraicClosure ℚ ℂ

theorem traceDescent
    {V : Type*} [AddCommGroup V] [Module ℚ V]
    (P : Submodule ℂ (ℂ ⊗[ℚ] V))
    (t : AlgebraicNumbers ⊗[ℚ] V)
    (ht : ∀ σ : AlgebraicNumbers ≃ₐ[ℚ] AlgebraicNumbers,
      coefficientInclusion (scalarConjugate σ t) ∈ P) :
    t ∈ (rationalPart P).baseChange AlgebraicNumbers := by
  let : IsAlgClosure ℚ AlgebraicNumbers :=
    algebraicClosure.isAlgClosure ℚ ℂ
  exact scalarDescent_ambient P t ht

end

end GRWTSK.LinearAlgebra.TensorProduct.ArbitraryScalarDescent
