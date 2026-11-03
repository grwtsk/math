/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletPhaseCorrectedAnalyticObservation
import GRWTSK.GeneralTopology.DirichletPoleCancelledObservation

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Zero-residue input preparation supplies exact zero-sum Fourier output.
Actual character accuracy remains an explicit input budget. Modulus one
and trivial-character exceptions are retained. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletZeroSumFourierObservation
open ZMod AddChar DirichletFiniteParseval DirichletFiniteFourierOrthogonality
open DirichletNormalizedFourierError DirichletPhaseCorrectedAnalyticObservation
open DirichletPoleCancelledObservation
variable (N : ℕ) [NeZero N]

def zeroResidue (x : ZMod N → ℂ) : ZMod N → ℂ := fun j => if j = 0 then 0 else x j

theorem full_transform_sum (x : ZMod N → ℂ) :
    (∑ k : ZMod N, transform N x k) = (N : ℂ) * x 0 := by
  unfold transform
  rw [Finset.sum_comm]
  have hs (j : ZMod N) : (∑ k : ZMod N, x j * stdAddChar (k * j)) =
      x j * (if j = 0 then (N : ℂ) else 0) := by
    rw [← Finset.mul_sum]
    congr 1
    simpa only [mul_comm] using standard_kernel_sum N j
  simp_rw [hs]
  simp [mul_ite, Finset.sum_ite_eq', mul_comm]

theorem zeroResidue_error_le (χ : DirichletCharacter ℂ N) (hχ0 : χ 0 = 0)
    (x : ZMod N → ℂ) :
    (∑ j : ZMod N, ‖zeroResidue N x j - χ j‖ ^ 2) ≤ ∑ j : ZMod N, ‖x j - χ j‖ ^ 2 := by
  apply Finset.sum_le_sum
  intro j _
  by_cases hj : j = 0
  · subst j
    simp only [zeroResidue, if_pos rfl, hχ0, sub_self, norm_zero, zero_pow]
    exact sq_nonneg _
  · simp only [zeroResidue, if_neg hj, le_refl]

theorem prepared_observation_sum_zero (χ : DirichletCharacter ℂ N) (x : ZMod N → ℂ) :
    (∑ j : ZMod N, correctedTransform N χ (zeroResidue N x) j) = 0 := by
  unfold correctedTransform normalizedTransform
  rw [← Finset.mul_sum, ← Finset.mul_sum, full_transform_sum]
  simp [zeroResidue]

theorem prepared_centered_error (χ : DirichletCharacter ℂ N) (hχ : χ.IsPrimitive)
    (hN : N ≠ 1) (hχne : χ ≠ 1) (x : ZMod N → ℂ) (s : ℂ)
    (base : ZMod N) (ε : ℝ) (hε : 0 ≤ ε)
    (hx : (∑ j : ZMod N, ‖x j - χ j‖ ^ 2) ≤ ε ^ 2) :
    ‖DirichletCharacter.LFunction χ⁻¹ s -
      ZMod.LFunction (correctedTransform N χ (zeroResidue N x)) s‖ ≤
      ε * centeredConditionMass N base s := by
  have hinv : χ⁻¹ ≠ 1 := by
    intro h
    apply hχne
    simpa using congrArg Inv.inv h
  have hsum := (χ⁻¹).sum_eq_zero_of_ne_one hinv
  have herr := (zeroResidue_error_le N χ (χ.map_zero' hN) x).trans hx
  exact centered_analytic_error N χ⁻¹ (correctedTransform N χ (zeroResidue N x)) base s ε
    hsum (prepared_observation_sum_zero N χ x)
    (corrected_sample_error N χ hχ (zeroResidue N x) ε hε herr)

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletZeroSumFourierObservation
