/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ActualMobiusQuadraticPerturbation

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Explicit full-vector prefix correction using the actual source prefix.
This retains the unknown positive-direction datum rather than bounding it.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ActualPrefixMatchedVector
open CyclicConstantModeSignedPrefixObstruction CyclicActualMertensPrefixSource
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
variable (N : ℕ) [NeZero N]

def matchActualPrefix (z : ZMod N → ℝ) (i : ZMod N) : ℝ :=
  z i-((∑ j, z j)-sampleResidue (N+1))/(N : ℝ)

theorem matched_full_prefix (z : ZMod N → ℝ) :
    (∑ i, matchActualPrefix N z i)=sampleResidue (N+1) := by
  have hN : (N : ℝ) ≠ 0 := by exact_mod_cast NeZero.ne N
  unfold matchActualPrefix
  rw [Finset.sum_sub_distrib]
  simp only [Finset.sum_const,Finset.card_univ,ZMod.card,nsmul_eq_mul]
  field_simp [hN]
  <;> ring

theorem matched_error_sum_zero (e : ZMod N ≃ Fin N) (z : ZMod N → ℝ) :
    (∑ i, matchActualPrefix N z i-actualIncrement N e i)=0 := by
  rw [Finset.sum_sub_distrib,matched_full_prefix,actual_full_prefix,sub_self]

theorem actual_signed_from_matched_vector (z : ZMod N → ℝ) :
    sampleSignedMixedPrefix N = signedPrefixStatistic N (matchActualPrefix N z)+
      (∑ i, matchActualPrefix N z i^2)-sampleUnweightedDiagonal N := by
  unfold signedPrefixStatistic
  rw [matched_full_prefix]
  have hh := sampleResidue_square_eq_signedPrefix_add_diagonal N
  linarith

/- The exact diagonal difference remains. A bound on the matched statistic
is still an arithmetic supplier; matching the prefix does not supply it. -/
end GRWTSK.NumberTheory.Zeta.Riemann.ActualPrefixMatchedVector
