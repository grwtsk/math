# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AuditSource.Variantf3f4a4bfad5357972840a42f8321c37e4811ea5990dde1f5dbc0311a5a28c683

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba54a3e881c696db504964864423573d4be91183` · SHA-256 `f3f4a4bfad5357972840a42f8321c37e4811ea5990dde1f5dbc0311a5a28c683`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel

/-!
# RH estimate: derivative of the actual finite Möbius source kernel

The finite inventory, correlation, normalization, and zero extension are those
of `EstimateSourceMobiusKernel`. These identities expose the exact derivative
required by its Mertens/Abel integral; they do not bound that integral.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateSourceMobiusDerivative

open MeasureTheory Set
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open EstimateMertensAbel EstimateMobiusSplit PrimePowerDescent EstimateSourceMobiusKernel

noncomputable section

/-- The derivative of one actual kernel term, with its signed correlation
derivative retained. -/
theorem sourceKernelTerm_hasDerivAt
    (A x : ℝ) (k : ℕ) (hA : 0 < A) (hx : 0 < x) (hk : 1 ≤ k) :
    HasDerivAt (sourceKernelTerm A k)
      (Real.log (k : ℝ) / (x * Real.sqrt (x * (k : ℝ))) *
        (deriv (sourceCorrelation Realization.explicitSecondDerivative A)
            (Real.log (x * (k : ℝ))) -
          sourceCorrelation Realization.explicitSecondDerivative A
            (Real.log (x * (k : ℝ))) / 2)) x := by
  have hkpos : 0 < (k : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hk)
  have hy : 0 < x * (k : ℝ) := mul_pos hx hkpos
  have hC := CorrelationRegularity.sourceCorrelation_contDiff A hA
  have hF := exponentialTest_contDiff _ hC
  have hdF := ((contDiff_one_iff_deriv.mp hF).1
    (Real.log (x * (k : ℝ)))).hasDerivAt
  rw [exponentialTest_deriv _ hC] at hdF
  have harg := ((hasDerivAt_id x).mul_const (k : ℝ)).log (ne_of_gt hy)
  have hd := (hdF.comp x harg).const_mul (Real.log (k : ℝ))
  have hexp : Real.exp (-Real.log (x * (k : ℝ)) / 2) =
      1 / Real.sqrt (x * (k : ℝ)) := by
    rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hy]
    ring
  dsimp only [id_eq, Function.comp_def] at hd
  rw [hexp] at hd
  have hcoef :
      Real.log (k : ℝ) *
        (1 / Real.sqrt (x * (k : ℝ)) *
          (deriv (sourceCorrelation Realization.explicitSecondDerivative A)
              (Real.log (x * (k : ℝ))) -
            sourceCorrelation Realization.explicitSecondDerivative A
              (Real.log (x * (k : ℝ))) / 2) *
          (1 * (k : ℝ) / (x * (k : ℝ)))) =
      Real.log (k : ℝ) / (x * Real.sqrt (x * (k : ℝ))) *
        (deriv (sourceCorrelation Realization.explicitSecondDerivative A)
            (Real.log (x * (k : ℝ))) -
          sourceCorrelation Realization.explicitSecondDerivative A
            (Real.log (x * (k : ℝ))) / 2) := by
    field_simp [ne_of_gt hx, ne_of_gt hkpos]
  rw [hcoef] at hd
  exact hd

/-- Ordinary derivative of one summand in the exact finite source inventory. -/
theorem sourceKernelTerm_deriv
    (A x : ℝ) (k : ℕ) (hA : 0 < A) (hx : 0 < x) (hk : 1 ≤ k) :
    deriv (sourceKernelTerm A k) x =
      Real.log (k : ℝ) / (x * Real.sqrt (x * (k : ℝ))) *
        (deriv (sourceCorrelation Realization.explicitSecondDerivative A)
            (Real.log (x * (k : ℝ))) -
          sourceCorrelation Realization.explicitSecondDerivative A
            (Real.log (x * (k : ℝ))) / 2) :=
  (sourceKernelTerm_hasDerivAt A x k hA hx hk).deriv

/-- Differentiation commutes with this fixed finite inventory. No unbounded sum
or integral is interchanged. -/
theorem sourceMobiusKernel_deriv
    (A x : ℝ) (hA : 0 < A) (hx : 0 < x) :
    deriv (sourceMobiusKernel A) x =
      ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
        Real.log (k : ℝ) / (x * Real.sqrt (x * (k : ℝ))) *
          (deriv (sourceCorrelation Realization.explicitSecondDerivative A)
              (Real.log (x * (k : ℝ))) -
            sourceCorrelation Realization.explicitSecondDerivative A
              (Real.log (x * (k : ℝ))) / 2) := by
  unfold sourceMobiusKernel
  rw [deriv_fun_sum]
  · apply Finset.sum_congr rfl
    intro k hk
    exact sourceKernelTerm_deriv A x k hA hx (Finset.mem_Icc.mp hk).1
  · intro k hk
    exact (sourceKernelTerm_hasDerivAt A x k hA hx (Finset.mem_Icc.mp hk).1).differentiableAt

/-- At and beyond the positive support endpoint, the correlation derivative
vanishes as well. The endpoint uses the exact right-hand zero extension. -/
theorem sourceCorrelation_deriv_zero_of_two_mul_le
    (A t : ℝ) (hA : 0 < A) (ht : 2 * A ≤ t) :
    deriv (sourceCorrelation Realization.explicitSecondDerivative A) t = 0 := by
  have hz : ∀ y ∈ Ici t,
      sourceCorrelation Realization.explicitSecondDerivative A y = 0 := by
    intro y hy
    exact CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs A y hA
      (ht.trans (hy.trans (le_abs_self y)))
  have hd : HasDerivWithinAt
      (sourceCorrelation Realization.explicitSecondDerivative A) 0 (Ici t) t :=
    (hasDerivWithinAt_const t (Ici t) (0 : ℝ)).congr
      (fun y hy ↦ hz y hy) (hz t self_mem_Ici)
  exact hd.deriv_eq_zero (uniqueDiffWithinAt_Ici t)

/-- Every fixed summand has zero derivative at the exact upper Abel boundary. -/
theorem sourceKernelTerm_deriv_upper_zero
    (A : ℝ) (hA : 1 ≤ A) (k : ℕ) (hk : 1 ≤ k) :
    deriv (sourceKernelTerm A k) (sourceUpper A) = 0 := by
  have hApos : 0 < A := by linarith
  have hkpos : 0 < (k : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hk)
  have hkone : (1 : ℝ) ≤ k := by exact_mod_cast hk
  have hu : 0 < sourceUpper A := Real.exp_pos _
  have ht : 2 * A ≤ Real.log (sourceUpper A * (k : ℝ)) := by
    unfold sourceUpper
    rw [Real.log_mul (Real.exp_pos _).ne' hkpos.ne', Real.log_exp]
    linarith [Real.log_nonneg hkone]
  rw [sourceKernelTerm_deriv A (sourceUpper A) k hApos hu hk,
    sourceCorrelation_deriv_zero_of_two_mul_le A _ hApos ht,
    CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs A _ hApos
      (ht.trans (le_abs_self _))]
  simp

/-- The finite source kernel has no derivative boundary contribution at
`exp (2 * A)`, including the support seam itself. -/
theorem sourceMobiusKernel_deriv_upper_zero
    (A : ℝ) (hA : 1 ≤ A) :
    deriv (sourceMobiusKernel A) (sourceUpper A) = 0 := by
  unfold sourceMobiusKernel
  rw [deriv_fun_sum]
  · apply Finset.sum_eq_zero
    intro k hk
    exact sourceKernelTerm_deriv_upper_zero A hA k (Finset.mem_Icc.mp hk).1
  · intro k hk
    exact (sourceKernelTerm_hasDerivAt A (sourceUpper A) k (by linarith)
      (Real.exp_pos _) (Finset.mem_Icc.mp hk).1).differentiableAt

end
end EstimateSourceMobiusDerivative
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusDerivative

#check sourceKernelTerm_hasDerivAt
#print axioms sourceKernelTerm_hasDerivAt
#check sourceKernelTerm_deriv
#print axioms sourceKernelTerm_deriv
#check sourceMobiusKernel_deriv
#print axioms sourceMobiusKernel_deriv
#check sourceCorrelation_deriv_zero_of_two_mul_le
#print axioms sourceCorrelation_deriv_zero_of_two_mul_le
#check sourceKernelTerm_deriv_upper_zero
#print axioms sourceKernelTerm_deriv_upper_zero
#check sourceMobiusKernel_deriv_upper_zero
#print axioms sourceMobiusKernel_deriv_upper_zero
```
