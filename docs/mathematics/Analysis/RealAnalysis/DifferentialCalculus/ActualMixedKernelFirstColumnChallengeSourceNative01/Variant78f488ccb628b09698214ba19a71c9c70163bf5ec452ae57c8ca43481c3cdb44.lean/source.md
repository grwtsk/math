# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualMixedKernelFirstColumnChallengeSourceNative01.Variant78f488ccb628b09698214ba19a71c9c70163bf5ec452ae57c8ca43481c3cdb44

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a318ecaa8c37de2627b12f2ded29e8f7c59f3953` · SHA-256 `78f488ccb628b09698214ba19a71c9c70163bf5ec452ae57c8ca43481c3cdb44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceFiveCancelledFactorialBudget
import SourceStrictComplementaryEarlyBudget

/-!
The actual physical double-Abel coefficient retains its zeroth correlation
term. A true lower-time and first-column cell has coefficient bounded away
from zero at every real scale at least25600. The exponential and reciprocal
prefactors remain, as do all arithmetic signs outside this analytic kernel.
No arithmetic work sign, uniform upper witness or RH result follows.
Research direction: grwtsk contributors. Formal challenge: OpenAI Codex.
-/

set_option autoImplicit false
namespace RH16IndependentChallengeNext
open FormalResearch.RiemannHypothesis
open SourcePairing SourceFiveCancelledFactorialBudget SourceStrictComplementaryEarlyBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateVaughanSource
noncomputable section

/-- The independent actual coefficient of the original physical mixed derivative. -/
def actualMixedColumnCoefficient (A t u : ℝ) : ℝ :=
  deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (t + Real.log u) -
    sourceCorrelation explicitSecondDerivative A (t + Real.log u) / 4

/-- The actual time derivative of the literal exponentially weighted source column. -/
def actualMixedTimeColumn (A t u : ℝ) : ℝ :=
  Real.exp (t / 2) / Real.sqrt u *
    (deriv (sourceCorrelation explicitSecondDerivative A) (t + Real.log u) +
      sourceCorrelation explicitSecondDerivative A (t + Real.log u) / 2)

/-- The entire actual physical mixed density, with its positive exponential retained. -/
def actualMixedColumnDensity (A t u : ℝ) : ℝ :=
  Real.exp (t / 2) / (u * Real.sqrt u) * actualMixedColumnCoefficient A t u

private theorem actual_column_derivative_algebra (u s c p d E : ℝ) (hs : s ≠ 0)
    (hsq : s * s = u) :
    (-(E * (1 / (2 * s))) / s ^ 2) * (p + c / 2) +
        (E / s) * (d * (1 / u) + p * (1 / u) / 2) =
      E / (u * s) * (d - c / 4) := by
  subst u
  field_simp [hs]
  ring

/-- Genuine differentiation preserves the unsuppressed minus-C/4 term. -/
theorem actualMixedTimeColumn_hasDerivAt {A u : ℝ} (hA : 0 < A) (hu : 0 < u)
    (t : ℝ) : HasDerivAt (actualMixedTimeColumn A t) (actualMixedColumnDensity A t u) u := by
  have hlog := (Real.hasDerivAt_log hu.ne').const_add t
  have hc := ((sourceCorrelation_contDiff A hA).differentiable (by norm_num)
    (t + Real.log u)).hasDerivAt.comp u hlog
  have hd := ((sourceCorrelation_deriv_contDiff hA).differentiable (by norm_num)
    (t + Real.log u)).hasDerivAt.comp u hlog
  have hs : Real.sqrt u ≠ 0 := Real.sqrt_ne_zero'.mpr hu
  have h := ((hasDerivAt_const u (Real.exp (t / 2))).div
    (Real.hasDerivAt_sqrt hu.ne') hs).mul (hd.add (hc.div_const 2))
  convert h using 1 <;> try rfl
  simpa only [actualMixedColumnDensity, actualMixedColumnCoefficient, zero_mul, zero_sub,
    one_div, Function.comp_apply, Pi.mul_apply, Pi.div_apply, Pi.add_apply] using
      (actual_column_derivative_algebra u (Real.sqrt u)
        (sourceCorrelation explicitSecondDerivative A (t + Real.log u))
        (deriv (sourceCorrelation explicitSecondDerivative A) (t + Real.log u))
        (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (t + Real.log u))
        (Real.exp (t / 2)) hs (Real.mul_self_sqrt hu.le)).symm

/-- The actual lower-time first-column rectangle stays in the early correlation window. -/
theorem actualMixed_firstColumn_shift_bounds {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (ht1 : t ≤ Real.log (vaughanCutoff A : ℝ) + 1)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    0 ≤ t + Real.log u ∧ t + Real.log u ≤ A / 10 := by
  have hU : (1 : ℝ) ≤ (vaughanCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_pos A (by linarith : 1 ≤ A)
  have hu0 : 0 < u := by push_cast at hu; linarith
  have hlU0 : 0 ≤ Real.log (vaughanCutoff A : ℝ) := Real.log_nonneg hU
  have hlu0 : 0 ≤ Real.log u := Real.log_nonneg (by push_cast at hu; linarith)
  have hup : u ≤ 3 * (vaughanCutoff A : ℝ) := by push_cast at hu2; linarith
  have hl := Real.log_le_log hu0 hup
  rw [Real.log_mul (by norm_num : (3 : ℝ) ≠ 0) (by linarith :
    (vaughanCutoff A : ℝ) ≠ 0)] at hl
  have hlog3 : Real.log (3 : ℝ) ≤ 2 := by
    simpa only [show (3 : ℝ) - 1 = 2 by norm_num] using
      Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 3)
  have hlU := log_vaughanCutoff_le_early_window hA
  constructor <;> linarith

/-- The mixed coefficient is uniformly negative on this actual strict-column rectangle. -/
theorem actualMixed_firstColumn_coefficient_upper {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (ht1 : t ≤ Real.log (vaughanCutoff A : ℝ) + 1)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    actualMixedColumnCoefficient A t u ≤ -(1 / 5 : ℝ) := by
  have hy := actualMixed_firstColumn_shift_bounds hA ht ht1 hu hu2
  have hA0 : 0 < A := by linarith
  have hy2 : (t + Real.log u) ^ 2 ≤ A ^ 2 / 100 := by nlinarith
  have hc := actualCorrelation_sub_one_abs_le_five (by linarith : 91 ≤ A) (t + Real.log u)
  have hc1 : |sourceCorrelation explicitSecondDerivative A (t + Real.log u) - 1| ≤
      (1 / 40 : ℝ) := by
    calc
      _ ≤ (5 / 2 : ℝ) / A ^ 2 * (t + Real.log u) ^ 2 := hc
      _ ≤ (5 / 2 : ℝ) / A ^ 2 * (A ^ 2 / 100) := by gcongr
      _ = 1 / 40 := by field_simp; ring
  have hd := RH16FiveCesaro.actualCorrelation_second_abs_le_five
    (by linarith : 91 ≤ A) (t + Real.log u)
  have hd1 : |deriv (deriv (sourceCorrelation explicitSecondDerivative A))
      (t + Real.log u)| ≤ (1 / 1600 : ℝ) := by
    calc
      _ ≤ 5 / A ^ 2 := hd
      _ ≤ 5 / 8000 := div_le_div_of_nonneg_left (by norm_num) (by norm_num) (by nlinarith)
      _ = 1 / 1600 := by norm_num
  have hcl := (abs_le.mp hc1).1
  have hdu := (abs_le.mp hd1).2
  unfold actualMixedColumnCoefficient
  linarith

/-- In particular its absolute size cannot be treated as a pure small curvature term. -/
theorem actualMixed_firstColumn_coefficient_abs_lower {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (ht1 : t ≤ Real.log (vaughanCutoff A : ℝ) + 1)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    (1 / 5 : ℝ) ≤ |actualMixedColumnCoefficient A t u| := by
  have h := actualMixed_firstColumn_coefficient_upper hA ht ht1 hu hu2
  exact le_trans (by linarith : (1 / 5 : ℝ) ≤ -actualMixedColumnCoefficient A t u)
    (neg_le_abs _)

/-- Its physical negative density retains the full exponential and reciprocal prefactors. -/
theorem actualMixed_firstColumn_density_upper {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (ht1 : t ≤ Real.log (vaughanCutoff A : ℝ) + 1)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    actualMixedColumnDensity A t u ≤ -(Real.exp (t / 2) / (u * Real.sqrt u)) / 5 := by
  have hu0 : 0 < u := by
    have hU := vaughanCutoff_pos A (by linarith : 1 ≤ A)
    push_cast at hu
    exact_mod_cast hU at hU
    linarith
  have hm := mul_le_mul_of_nonneg_left
    (actualMixed_firstColumn_coefficient_upper hA ht ht1 hu hu2)
    (le_of_lt (div_pos (Real.exp_pos _) (mul_pos hu0 (Real.sqrt_pos.mpr hu0))))
  unfold actualMixedColumnDensity
  linarith

end
end RH16IndependentChallengeNext
```
