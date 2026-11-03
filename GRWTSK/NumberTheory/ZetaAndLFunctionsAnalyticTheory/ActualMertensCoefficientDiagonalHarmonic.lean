/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ActualMertensGcdDiagonalCoordinates

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact diagonal packet transport and paid finite harmonic budget.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensCoefficientDiagonalHarmonic
open ActualMertensGcdDiagonalCoordinates ActualMertensGcdSignedMass
open ActualMertensNaturalGcdKernel ActualMertensNaturalDiagonalBudget
open GRWTSK.RiemannHypothesis.CCC
variable (N : ℕ) [NeZero N]

theorem actual_coefficient_diagonal_natural_sum (e : ZMod N ≃ Fin N) :
    coefficientDiagonal N e=
      ∑ r ∈ Finset.Icc 1 N,moebiusReal r^2*actualNaturalKernel N e r r := by
  classical
  letI : Fintype (GcdDiagonal N) := Fintype.ofFinite _
  letI : Fintype (PositiveSourceLabels N) := Fintype.ofEquiv (GcdDiagonal N) (diagonalSourceEquiv N)
  have hs : coefficientDiagonal N e=∑ q : GcdDiagonal N,actualGcdAtom N e q.val := by
    unfold coefficientDiagonal
    rw [← Finset.sum_filter]
    exact Finset.sum_subtype _ (by intro q; simp [GcdDiagonal]) (actualGcdAtom N e)
  rw [hs]
  calc
    _ = ∑ r : PositiveSourceLabels N, moebiusReal r.val^2*
        actualNaturalKernel N e r.val r.val := by
      apply Fintype.sum_equiv (diagonalSourceEquiv N)
      intro q
      exact actual_diagonal_atom N e q.val q.property
    _ = _ := by
      symm
      exact Finset.sum_subtype (Finset.Icc 1 N)
        (by intro r; simp [PositiveSourceLabels,Finset.mem_Icc,Nat.succ_le_iff])
        (fun r => moebiusReal r^2*actualNaturalKernel N e r r)

theorem actual_coefficient_diagonal_harmonic_budget (e : ZMod N ≃ Fin N) :
    coefficientDiagonal N e≤∑ r ∈ Finset.Icc 1 N,1/(r : ℝ) := by
  rw [actual_coefficient_diagonal_natural_sum]
  exact actual_natural_diagonal_harmonic_budget N e

theorem actual_signed_statistic_paid_diagonal (e : ZMod N ≃ Fin N) :
    GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sampleSignedMixedPrefix N≤
      (∑ r ∈ Finset.Icc 1 N,1/(r : ℝ))+positiveOffDiagonal N e-negativeOffDiagonal N e := by
  rw [actual_signed_mass_identity N e]
  linarith [actual_coefficient_diagonal_harmonic_budget N e]

/- The diagonal's finite harmonic cost is now paid explicitly. Uniform
control of the full actual positive-minus-negative off-diagonal mass is
still missing; entrywise kernel positivity cannot supply its cancellation.
No analytic-zero/operator spectral identification is inferred. -/
end GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensCoefficientDiagonalHarmonic
