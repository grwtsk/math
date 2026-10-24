# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SelectedPrimeMean.Variantfd24c1c0160315a3eb79c32e2cbe1f4741fbe923a19904155d1f5d64742252c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20fd5df40ca1da36be4f707e4eab6a314072d378` · SHA-256 `fd24c1c0160315a3eb79c32e2cbe1f4741fbe923a19904155d1f5d64742252c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation

/-! Scratch research only: a one-sided quantitative refinement of the fixed
two-prime comparison mean. grwtsk contributors's research direction; this lemma
was developed with OpenAI Codex. No actual common-mean lower witness is supplied.
-/

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.SelectedPrimeMean

open FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation

theorem correlation_deriv_zero {A : ℝ} (hA : 1 ≤ A) :
    deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
  have hp : 0 < A := by linarith
  have hd := ((sourceCorrelation_contDiff A hp).differentiable (by norm_num) 0).hasDerivAt
  have hdneg : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A) 0) (- (0 : ℝ)) := by
    simpa using hd
  have hn := hdneg.comp 0 (hasDerivAt_neg (0 : ℝ))
  simp only [Function.comp_def] at hn
  have he : (fun x : ℝ => sourceCorrelation explicitSecondDerivative A (-x)) =
      sourceCorrelation explicitSecondDerivative A := funext (sourceCorrelation_even A)
  rw [he] at hn
  have hh := hd.unique hn
  simp only [mul_neg, mul_one] at hh
  linarith

theorem correlation_deficit {A : ℝ} (hA : 1 ≤ A) (s : ℝ) :
    0 ≤ 1 - sourceCorrelation explicitSecondDerivative A s ∧
      1 - sourceCorrelation explicitSecondDerivative A s ≤
        162826 / (7623 * A ^ 2) * s ^ 2 / 2 := by
  have hp : 0 < A := by linarith
  have habs := actual_correlation_abs_le_one A s hA
  have hb := sourceCorrelation_linear_taylor_bound hA 0 s
  rw [zero_add, actual_correlation_at_zero A hA, correlation_deriv_zero hA, mul_zero, sub_zero] at hb
  exact ⟨by linarith [(abs_le.mp habs).2], by linarith [(abs_le.mp hb).1]⟩

def twoPrimeLoss : ℝ :=
  Real.log 2 * Real.exp (-Real.log 2 / 2) +
    Real.log 3 * Real.exp (-Real.log 3 / 2)

def twoPrimeShift (A : ℝ) : ℝ :=
  Real.log 2 * Real.exp (-Real.log 2 / 2) *
    sourceCorrelation explicitSecondDerivative A (Real.log 2) +
  Real.log 3 * Real.exp (-Real.log 3 / 2) *
    sourceCorrelation explicitSecondDerivative A (Real.log 3)

def twoPrimeShiftError : ℝ :=
  (162826 / (2 * 7623) : ℝ) *
    (Real.log 2 ^ 3 * Real.exp (-Real.log 2 / 2) +
      Real.log 3 ^ 3 * Real.exp (-Real.log 3 / 2))

theorem twoPrimeShift_deficit {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ twoPrimeLoss - twoPrimeShift A ∧
      twoPrimeLoss - twoPrimeShift A ≤ twoPrimeShiftError / A ^ 2 := by
  have hp : 0 < A := by linarith
  have h2 := correlation_deficit hA (Real.log 2)
  have h3 := correlation_deficit hA (Real.log 3)
  have hc2 : 0 ≤ Real.log 2 * Real.exp (-Real.log 2 / 2) := by positivity
  have hc3 : 0 ≤ Real.log 3 * Real.exp (-Real.log 3 / 2) := by positivity
  have he : twoPrimeLoss - twoPrimeShift A =
      Real.log 2 * Real.exp (-Real.log 2 / 2) *
        (1 - sourceCorrelation explicitSecondDerivative A (Real.log 2)) +
      Real.log 3 * Real.exp (-Real.log 3 / 2) *
        (1 - sourceCorrelation explicitSecondDerivative A (Real.log 3)) := by
    unfold twoPrimeLoss twoPrimeShift
    ring
  rw [he]
  constructor
  · exact add_nonneg (mul_nonneg hc2 h2.1) (mul_nonneg hc3 h3.1)
  · have hh := add_le_add (mul_le_mul_of_nonneg_left h2.2 hc2)
      (mul_le_mul_of_nonneg_left h3.2 hc3)
    refine hh.trans_eq ?_
    unfold twoPrimeShiftError
    field_simp

#print axioms correlation_deriv_zero
#print axioms correlation_deficit
#print axioms twoPrimeShift_deficit

end ContinuousResearch.SelectedPrimeMean
```
