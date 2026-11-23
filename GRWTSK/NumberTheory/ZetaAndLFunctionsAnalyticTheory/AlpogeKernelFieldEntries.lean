/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.MvPolynomial.Funext
import Mathlib.LinearAlgebra.Dual.Lemmas
import Mathlib.Tactic

/-! # Reproducing families and coefficient-field descent for kernel entries

Cauchy–Binet gives a polynomial kernel as a sum of a list of rational flag
polynomials times their evaluations. The list can be linearly dependent.
-/

namespace GRWTSK.NumberTheory.AlpogeKernelFieldEntries

open MvPolynomial
open scoped BigOperators

/-- Each member of any finite family of rational polynomials belongs to the
rational span of the corresponding evaluation kernels. The argument takes
the sum of squares over the rational ground field before scalar extension. -/
theorem mem_span_evaluation_kernel {J σ : Type*} [Fintype J]
    (p : J → MvPolynomial σ ℚ) (j : J) :
    p j ∈ Submodule.span ℚ
      (Set.range fun y : σ → ℚ => ∑ k, eval y (p k) • p k) := by
  classical
  let W := Submodule.span ℚ
    (Set.range fun y : σ → ℚ => ∑ k, eval y (p k) • p k)
  apply (Subspace.forall_mem_dualAnnihilator_apply_eq_zero_iff W (p j)).mp
  intro ℓ hℓ
  have vanish (y : σ → ℚ) : ∑ k, eval y (p k) * ℓ (p k) = 0 := by
    have hm : ∑ k, eval y (p k) • p k ∈ W := Submodule.subset_span ⟨y, rfl⟩
    simpa only [map_sum, map_smul, smul_eq_mul] using
      (Submodule.mem_dualAnnihilator ℓ).mp hℓ _ hm
  have polynomial_zero : (∑ k, ℓ (p k) • p k : MvPolynomial σ ℚ) = 0 := by
    apply MvPolynomial.funext
    intro y
    simpa [MvPolynomial.smul_eq_C_mul, mul_comm] using vanish y
  have hsum : ∑ k, (ℓ (p k)) ^ 2 = 0 := by
    simpa [pow_two] using congrArg ℓ polynomial_zero
  exact sq_eq_zero_iff.mp <|
    (Finset.sum_eq_zero_iff_of_nonneg (fun k _ => sq_nonneg (ℓ (p k)))).mp
      hsum j (Finset.mem_univ j)

/-- An arbitrary extension-valued functional takes values in the prescribed
ground-field subspace on each individual polynomial as soon as its evaluated
kernel values do. No uniqueness of the ambient functional is assumed. -/
theorem values_of_evaluation_kernel {J σ V : Type*} [Fintype J] [AddCommGroup V]
    [Module ℚ V] (p : J → MvPolynomial σ ℚ) (ℓ : MvPolynomial σ ℚ →ₗ[ℚ] V)
    (W : Submodule ℚ V)
    (h : ∀ y : σ → ℚ, ℓ (∑ k, eval y (p k) • p k) ∈ W) (j : J) :
    ℓ (p j) ∈ W := by
  have hi : Submodule.span ℚ (Set.range fun y : σ → ℚ => ∑ k, eval y (p k) • p k) ≤
      W.comap ℓ := by
    apply Submodule.span_le.mpr
    rintro _ ⟨y, rfl⟩
    exact h y
  exact hi (mem_span_evaluation_kernel p j)

/-- A unitriangular selection of monomial coefficients in an integral
tableau basis detects integral coefficients over an arbitrary subring.
The pivots are ordered so preceding columns can be removed integrally. -/
theorem integral_pivot_coordinates {K : Type*} [CommRing K] {n : ℕ}
    (O : Subring K) (A : Fin n → Fin n → K) (c : Fin n → K)
    (hint : ∀ i j, A i j ∈ O) (hdiag : ∀ i, A i i = 1)
    (htri : ∀ i j, i < j → A i j = 0)
    (h : ∀ i, ∑ j, A i j * c j ∈ O) : ∀ i, c i ∈ O := by
  intro i
  induction i using WellFoundedLT.induction with
  | ind i ih =>
    have hp : ∑ j ∈ Finset.univ.erase i, A i j * c j ∈ O := by
      apply O.sum_mem
      intro j hj
      rcases lt_or_gt_of_ne (Finset.ne_of_mem_erase hj) with hlt | hgt
      · exact O.mul_mem (hint i j) (ih j hlt)
      · simp [htri i j hgt]
    have he := Finset.sum_erase_add (f := fun j => A i j * c j) Finset.univ
      (Finset.mem_univ i)
    rw [hdiag, one_mul] at he
    exact (show c i = (∑ j, A i j * c j) - ∑ j ∈ Finset.univ.erase i, A i j * c j by
      rw [← he]; abel) ▸ O.sub_mem (h i) hp

end GRWTSK.NumberTheory.AlpogeKernelFieldEntries
