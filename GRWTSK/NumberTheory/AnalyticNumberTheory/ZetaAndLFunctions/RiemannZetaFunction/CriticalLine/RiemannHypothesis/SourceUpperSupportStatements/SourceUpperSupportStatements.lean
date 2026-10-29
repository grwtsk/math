import FormalResearch.RiemannHypothesis.SourceComparison.ThetaRemainder

set_option autoImplicit false

namespace SourceUpperSupportScratch

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

noncomputable section

theorem sourceSamplingKernel_zero_of_two_mul_ge (A x : ℝ) (hx : 0 < x)
    (hcut : Real.exp (2*A) ≤ 2*x) : SourceSampling.sourceSamplingKernel A x = 0 := by
  unfold SourceSampling.sourceSamplingKernel
  apply sum_eq_zero
  intro k hk
  by_cases hk1 : k = 1
  · simp [hk1]
  · have hm := (SourceSampling.mem_samplingIndices_iff A x k hx).mp hk
    have hk2 : (2:ℝ) ≤ k := by exact_mod_cast (show 2≤k by omega)
    have hmul : 2*x ≤ x*(k:ℝ) := by nlinarith
    exact False.elim (not_lt_of_ge (hcut.trans hmul) hm.2)

theorem thetaKernel_zero_of_two_mul_ge (A : ℝ) (q : ℕ) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 2*(q:ℝ)) : ThetaKernelTransport.thetaKernel A q = 0 := by
  rw [ThetaKernelTransport.thetaKernel_eq_sum_sourceSamplingKernel A q hq]
  apply sum_eq_zero
  intro k hk
  have hk1 := (mem_Icc.mp hk).1
  have hprod : 0 < ((q*k:ℕ):ℝ) := by exact_mod_cast Nat.mul_pos hq hk1
  apply sourceSamplingKernel_zero_of_two_mul_ge A _ hprod
  have hmul : q ≤ q*k := Nat.le_mul_of_pos_right _ hk1
  have hc : (q:ℝ) ≤ (q*k:ℕ) := by exact_mod_cast hmul
  linarith

theorem thetaKernel_eq_sourceSamplingKernel (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 4*(q:ℝ)) :
    ThetaKernelTransport.thetaKernel A q = SourceSampling.sourceSamplingKernel A q := by
  rw [ThetaKernelTransport.thetaKernel_eq_sum_sourceSamplingKernel A q hq]
  have hB : 1 ≤ ⌊Real.exp (2*A)⌋₊ := by
    apply (Nat.le_floor_iff (Real.exp_pos _).le).mpr
    norm_cast
    exact Real.one_le_exp_iff.mpr (by linarith)
  rw [sum_eq_single 1]
  · simp only [Nat.mul_one]
  · intro k hk hk1
    have hk2 : 2 ≤ k := by have h := (mem_Icc.mp hk).1; omega
    have hprod : 0 < ((q*k:ℕ):ℝ) := by exact_mod_cast Nat.mul_pos hq (by omega : 0<k)
    apply sourceSamplingKernel_zero_of_two_mul_ge A _ hprod
    have hmul : 2*q ≤ q*k := by nlinarith
    have hc : (2:ℝ)*(q:ℝ) ≤ (q*k:ℕ) := by exact_mod_cast hmul
    linarith
  · intro hnot
    exact False.elim (hnot (mem_Icc.mpr ⟨by omega, hB⟩))

theorem sourceSamplingKernel_eq_two_channels (A x : ℝ) (hx : 0 < x)
    (hcut : Real.exp (2*A) ≤ 4*x) :
    SourceSampling.sourceSamplingKernel A x =
      (if 2*x < Real.exp (2*A) then
        Real.log 2 / Real.sqrt (2*x) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (2*x)) else 0) +
      (if 3*x < Real.exp (2*A) then
        Real.log 3 / Real.sqrt (3*x) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (3*x)) else 0) := by
  let T := (Icc 2 3).filter (fun k : ℕ ↦ x*(k:ℝ)<Real.exp (2*A))
  have hsub : T ⊆ SourceSampling.samplingIndices A x := by
    intro k hk
    have ht := mem_filter.mp hk
    exact (SourceSampling.mem_samplingIndices_iff A x k hx).mpr
      ⟨by have h := (mem_Icc.mp ht.1).1; omega, ht.2⟩
  have heq : SourceSampling.sourceSamplingKernel A x =
      ∑ k ∈ T, Real.log (k:ℝ)/Real.sqrt (x*(k:ℝ))*
        sourceCorrelation Realization.explicitSecondDerivative A (Real.log (x*(k:ℝ))) := by
    unfold SourceSampling.sourceSamplingKernel
    symm
    apply sum_subset hsub
    intro k hk hkT
    by_cases hk1 : k=1
    · simp [hk1]
    · have hm := (SourceSampling.mem_samplingIndices_iff A x k hx).mp hk
      have hk4 : 4 ≤ k := by
        by_contra h
        apply hkT
        exact mem_filter.mpr ⟨mem_Icc.mpr (by omega),hm.2⟩
      have hk4r : (4:ℝ) ≤ k := by exact_mod_cast hk4
      have hmul : 4*x ≤ x*(k:ℝ) := by nlinarith
      exact False.elim (not_lt_of_ge (hcut.trans hmul) hm.2)
  rw [heq]
  dsimp [T]
  rw [sum_filter]
  have hI : Icc (2:ℕ) 3 = {2,3} := by decide
  rw [hI]
  norm_num only [sum_insert, sum_singleton, mem_singleton, Nat.cast_ofNat, not_false_eq_true]
  simp only [mul_comm x]

theorem thetaKernel_eq_two_channels (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 4*(q:ℝ)) :
    ThetaKernelTransport.thetaKernel A q =
      (if 2*(q:ℝ) < Real.exp (2*A) then
        Real.log 2 / Real.sqrt (2*(q:ℝ)) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (2*(q:ℝ))) else 0) +
      (if 3*(q:ℝ) < Real.exp (2*A) then
        Real.log 3 / Real.sqrt (3*(q:ℝ)) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (3*(q:ℝ))) else 0) := by
  rw [thetaKernel_eq_sourceSamplingKernel A q hA hq hcut]
  exact sourceSamplingKernel_eq_two_channels A q (by exact_mod_cast (show 0<q by omega)) hcut

theorem thetaRemainder_eq_neg_rankOne_of_two_mul_ge (A : ℝ) (q : ℕ) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 2*(q:ℝ)) :
    ThetaRemainder.thetaRemainder A q =
      -CorrelationSecondMoment.sourceRankOneCoefficient A / (q:ℝ) := by
  rw [ThetaRemainder.thetaRemainder, thetaKernel_zero_of_two_mul_ge A q hq hcut]
  ring

end
end SourceUpperSupportScratch

namespace SourceUpperSupportStatementChecks

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

noncomputable section

example (A x : ℝ) (hx : 0 < x)
    (hcut : Real.exp (2*A) ≤ 2*x) : SourceSampling.sourceSamplingKernel A x = 0 := by
  exact SourceUpperSupportScratch.sourceSamplingKernel_zero_of_two_mul_ge A x hx hcut

example (A : ℝ) (q : ℕ) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 2*(q:ℝ)) : ThetaKernelTransport.thetaKernel A q = 0 := by
  exact SourceUpperSupportScratch.thetaKernel_zero_of_two_mul_ge A q hq hcut

example (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 4*(q:ℝ)) :
    ThetaKernelTransport.thetaKernel A q = SourceSampling.sourceSamplingKernel A q := by
  exact SourceUpperSupportScratch.thetaKernel_eq_sourceSamplingKernel A q hA hq hcut

example (A x : ℝ) (hx : 0 < x)
    (hcut : Real.exp (2*A) ≤ 4*x) :
    SourceSampling.sourceSamplingKernel A x =
      (if 2*x < Real.exp (2*A) then
        Real.log 2 / Real.sqrt (2*x) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (2*x)) else 0) +
      (if 3*x < Real.exp (2*A) then
        Real.log 3 / Real.sqrt (3*x) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (3*x)) else 0) := by
  exact SourceUpperSupportScratch.sourceSamplingKernel_eq_two_channels A x hx hcut

example (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 4*(q:ℝ)) :
    ThetaKernelTransport.thetaKernel A q =
      (if 2*(q:ℝ) < Real.exp (2*A) then
        Real.log 2 / Real.sqrt (2*(q:ℝ)) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (2*(q:ℝ))) else 0) +
      (if 3*(q:ℝ) < Real.exp (2*A) then
        Real.log 3 / Real.sqrt (3*(q:ℝ)) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (3*(q:ℝ))) else 0) := by
  exact SourceUpperSupportScratch.thetaKernel_eq_two_channels A q hA hq hcut

example (A : ℝ) (q : ℕ) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 2*(q:ℝ)) :
    ThetaRemainder.thetaRemainder A q =
      -CorrelationSecondMoment.sourceRankOneCoefficient A / (q:ℝ) := by
  exact SourceUpperSupportScratch.thetaRemainder_eq_neg_rankOne_of_two_mul_ge A q hq hcut

end
end SourceUpperSupportStatementChecks
