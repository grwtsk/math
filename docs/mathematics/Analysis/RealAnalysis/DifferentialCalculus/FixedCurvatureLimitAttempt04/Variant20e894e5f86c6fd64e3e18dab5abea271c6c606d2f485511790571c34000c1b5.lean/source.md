# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedCurvatureLimitAttempt04.Variant20e894e5f86c6fd64e3e18dab5abea271c6c606d2f485511790571c34000c1b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `000b73d09934bf54084f08f2dd0f4374e46f4cc6` · SHA-256 `20e894e5f86c6fd64e3e18dab5abea271c6c606d2f485511790571c34000c1b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCriticalSecondAbel
import FormalResearch.RiemannHypothesis.SourceMangoldtNorm
import Mathlib.Tactic

/-! Actual fixed-position limits through the paired test's genuine max phases.
Direction grwtsk contributors; scratch construction OpenAI Codex.
No arithmetic L1 premise, growing-domain interchange, signed budget or RH claim.
The private product-rule proof reuses the earlier P15 actual curvature calculation. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.FixedCurvatureLimit
open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis
open SourcePairing SourceFirstPrimeAbel SourcePairedPrimeWork SourcePairedTailTest
open SourceCriticalSecondAbel SourceCorrelationCurvature SourceCorrelationEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

private theorem correlation_deriv_fixed_tendsto (u : ℝ) :
    Tendsto (fun A : ℝ => deriv (sourceCorrelation explicitSecondDerivative A) u)
      atTop (𝓝 0) := by
  apply squeeze_zero_norm' (a := fun A : ℝ => 5 / A)
  · filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    simpa only [Real.norm_eq_abs] using sourceCorrelation_deriv_abs_le_five_div hA u
  · simpa only [div_eq_mul_inv, mul_zero] using
      (tendsto_inv_atTop_zero (𝕜 := ℝ)).const_mul 5

private theorem correlation_second_deriv_fixed_tendsto (u : ℝ) :
    Tendsto (fun A : ℝ => deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u)
      atTop (𝓝 0) := by
  apply squeeze_zero_norm' (a := fun A : ℝ => (162826 / 7623 : ℝ) * (A⁻¹)^2)
  · filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    have hb := sourceCorrelation_second_deriv_abs_le_coefficient hA u
    simpa only [Real.norm_eq_abs, div_eq_mul_inv, mul_inv_rev, inv_pow,
      mul_comm, mul_left_comm, mul_assoc] using hb
  · simpa only [zero_pow (by decide : (2 : ℕ) ≠ 0), mul_zero] using
      ((tendsto_inv_atTop_zero (𝕜 := ℝ)).pow 2).const_mul (162826 / 7623 : ℝ)

private theorem critical_second_deriv {A : ℝ} (hA : 0 < A) (u : ℝ) :
    deriv (deriv (criticalPrimeTest A)) u = Real.exp (u/2) *
      (sourceCorrelation explicitSecondDerivative A u / 4 +
       deriv (sourceCorrelation explicitSecondDerivative A) u +
       deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u) := by
  have heq : deriv (criticalPrimeTest A) = fun t => Real.exp (t/2) *
      (sourceCorrelation explicitSecondDerivative A t / 2 +
       deriv (sourceCorrelation explicitSecondDerivative A) t) :=
    funext fun t => criticalPrimeTest_deriv A t hA
  rw [heq]
  have he := ((hasDerivAt_id u).div_const 2).exp
  have hc := ((sourceCorrelation_contDiff A hA).differentiable_one u).hasDerivAt
  have hd := ((sourceCorrelation_deriv_contDiff hA).differentiable_one u).hasDerivAt
  have hprod : HasDerivAt (fun t => Real.exp (t/2) *
      (sourceCorrelation explicitSecondDerivative A t / 2 +
       deriv (sourceCorrelation explicitSecondDerivative A) t))
      (Real.exp (u/2) * (sourceCorrelation explicitSecondDerivative A u / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) u +
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u)) u := by
    convert (he.mul ((hc.div_const 2).add hd)) using 1 <;> first | rfl | (dsimp; ring)
  exact hprod.deriv

/-- Fixed position and growing real source radius; the actual first derivative has a positive limit. -/
theorem criticalPrimeTest_deriv_fixed_tendsto (u : ℝ) :
    Tendsto (fun A : ℝ => deriv (criticalPrimeTest A) u) atTop
      (𝓝 (Real.exp (u/2) / 2)) := by
  have h := ((SourceMangoldtNorm.sourceCorrelation_tendsto_one u).div_const 2).add
    (correlation_deriv_fixed_tendsto u)
  have hm := h.const_mul (Real.exp (u/2))
  have he : (fun A : ℝ => deriv (criticalPrimeTest A) u) =ᶠ[atTop]
      (fun A : ℝ => Real.exp (u/2) *
        (sourceCorrelation explicitSecondDerivative A u / 2 +
         deriv (sourceCorrelation explicitSecondDerivative A) u)) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    exact criticalPrimeTest_deriv A u (by linarith)
  simpa only [add_zero, div_eq_mul_inv, one_mul] using hm.congr' he.symm

/-- The genuine product-rule second derivative converges before any arithmetic pairing. -/
theorem criticalPrimeTest_second_deriv_fixed_tendsto (u : ℝ) :
    Tendsto (fun A : ℝ => deriv (deriv (criticalPrimeTest A)) u) atTop
      (𝓝 (Real.exp (u/2) / 4)) := by
  have h := (((SourceMangoldtNorm.sourceCorrelation_tendsto_one u).div_const 4).add
    (correlation_deriv_fixed_tendsto u)).add (correlation_second_deriv_fixed_tendsto u)
  have hm := h.const_mul (Real.exp (u/2))
  have he : (fun A : ℝ => deriv (deriv (criticalPrimeTest A)) u) =ᶠ[atTop]
      (fun A : ℝ => Real.exp (u/2) *
        (sourceCorrelation explicitSecondDerivative A u / 4 +
         deriv (sourceCorrelation explicitSecondDerivative A) u +
         deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u)) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    exact critical_second_deriv (by linarith) u
  simpa only [add_zero, div_eq_mul_inv, one_mul] using hm.congr' he.symm

/-- Strict positivity is derived from the literal limiting value, not assumed as a phase witness. -/
theorem criticalPrimeTest_deriv_eventually_pos (u : ℝ) :
    ∀ᶠ A : ℝ in atTop, 0 < deriv (criticalPrimeTest A) u :=
  (criticalPrimeTest_deriv_fixed_tendsto u).eventually
    (eventually_gt_nhds (by positivity : (0 : ℝ) < Real.exp (u/2) / 2))

/-- Local strict positivity removes the actual negative max branch in a whole neighborhood.
This is a local derivative identity, including the global tail's true normalization. -/
theorem paired_curvature_eq_neg_critical_of_positive {A u : ℝ} (hA : 1 ≤ A)
    (hu : 0 < deriv (criticalPrimeTest A) u) :
    deriv (deriv (pairedTailTest A)) u = -deriv (deriv (criticalPrimeTest A)) u := by
  have hc : Continuous (deriv (criticalPrimeTest A)) :=
    (criticalPrimeTest_contDiff A (by linarith)).continuous_deriv_one
  have hp : ∀ᶠ t in 𝓝 u, 0 < deriv (criticalPrimeTest A) t :=
    hc.continuousAt.tendsto.eventually (eventually_gt_nhds hu)
  have he : deriv (pairedTailTest A) =ᶠ[𝓝 u] -deriv (criticalPrimeTest A) := by
    filter_upwards [hp] with t ht
    rw [pairedTailTest_deriv hA, positiveSlope, negativeSlope,
      max_eq_left ht.le, max_eq_right (neg_nonpos.mpr ht.le), mul_zero, add_zero]
    rfl
  rw [he.deriv_eq, deriv.neg]

/-- The actual paired curvature at every fixed real position has this negative limit.
No growing-domain integral or max-seam differentiation is asserted. -/
theorem paired_curvature_fixed_tendsto (u : ℝ) :
    Tendsto (fun A : ℝ => deriv (deriv (pairedTailTest A)) u) atTop
      (𝓝 (-(Real.exp (u/2) / 4))) := by
  have he : (fun A : ℝ => deriv (deriv (pairedTailTest A)) u) =ᶠ[atTop]
      (fun A : ℝ => -deriv (deriv (criticalPrimeTest A)) u) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ), criticalPrimeTest_deriv_eventually_pos u]
      with A hA hu
    exact paired_curvature_eq_neg_critical_of_positive hA hu
  exact (criticalPrimeTest_second_deriv_fixed_tendsto u).neg.congr' he.symm

end ContinuousResearch.FixedCurvatureLimit
```
