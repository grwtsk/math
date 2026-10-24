# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceCriticalCurvaturePhasePrepared.Variantef1e282dbdd5b46e0fd1645918aa206f42d222efa5053c689cfec94afe621619

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `638613f13f247f17be6a9b1a02fc2ee7d852c7d3` · SHA-256 `ef1e282dbdd5b46e0fd1645918aa206f42d222efa5053c689cfec94afe621619`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCriticalSecondAbel

/-!
# Actual curvature on both strict derivative phases

Research candidate; local/kernel/main acceptance are separate receipt gates.
The literal max formula is differentiated only on strict actual derivative
phases, with the unchanged fixed-scale source mass ratio in the negative phase.
The exact exponential correlation product retains all three derivative terms.
No global paired C2 regularity, arithmetic estimate or signed witness is asserted.

Research direction, selection and evaluation: grwtsk contributors.
Construction: OpenAI Codex; independent AI review is a separate gate.
-/

set_option autoImplicit false
set_option backward.isDefEq.respectTransparency false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalCurvaturePhase

open Filter Set
open SourceCriticalSecondAbel SourcePairedTailTest SourcePairedPrimeWork SourceFirstPrimeAbel
open SourcePairing SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- Strict positivity selects the literal positive max branch on an ambient neighborhood. -/
theorem pairedTailTest_second_deriv_eq_neg_of_deriv_pos
    {A u : ℝ} (hA : 1 ≤ A)
    (hu : 0 < deriv (criticalPrimeTest A) u) :
    deriv (deriv (pairedTailTest A)) u =
      -deriv (deriv (criticalPrimeTest A)) u := by
  have hp : 0 < A := by linarith
  have hg : ContDiff ℝ 1 (deriv (criticalPrimeTest A)) :=
    (criticalPrimeTest_contDiff_two hp).deriv'
  have hpos : ∀ᶠ v in 𝓝 u, 0 < deriv (criticalPrimeTest A) v :=
    hg.continuous.continuousAt.preimage_mem_nhds (Ioi_mem_nhds hu)
  have he : deriv (pairedTailTest A) =ᶠ[𝓝 u]
      (fun v => -deriv (criticalPrimeTest A) v) := by
    filter_upwards [hpos] with v hv
    rw [pairedTailTest_deriv hA]
    simp only [positiveSlope, negativeSlope, max_eq_left hv.le,
      max_eq_right (neg_nonpos.mpr hv.le), mul_zero, add_zero]
  have hd := ((contDiff_one_iff_deriv.mp hg).1 u).hasDerivAt
  exact (hd.neg.congr_of_eventuallyEq he).deriv

/-- Strict negativity retains the actual fixed-scale positive-to-negative mass ratio. -/
theorem pairedTailTest_second_deriv_eq_neg_mass_mul_of_deriv_neg
    {A u : ℝ} (hA : 1 ≤ A)
    (hu : deriv (criticalPrimeTest A) u < 0) :
    deriv (deriv (pairedTailTest A)) u =
      -(positiveMass A / negativeMass A) *
        deriv (deriv (criticalPrimeTest A)) u := by
  have hp : 0 < A := by linarith
  have hg : ContDiff ℝ 1 (deriv (criticalPrimeTest A)) :=
    (criticalPrimeTest_contDiff_two hp).deriv'
  have hneg : ∀ᶠ v in 𝓝 u, deriv (criticalPrimeTest A) v < 0 :=
    hg.continuous.continuousAt.preimage_mem_nhds (Iio_mem_nhds hu)
  have he : deriv (pairedTailTest A) =ᶠ[𝓝 u]
      (fun v => -(positiveMass A / negativeMass A) *
        deriv (criticalPrimeTest A) v) := by
    filter_upwards [hneg] with v hv
    rw [pairedTailTest_deriv hA]
    simp only [positiveSlope, negativeSlope, max_eq_right hv.le,
      max_eq_left (neg_nonneg.mpr hv.le), neg_zero, zero_add]
    ring
  have hd := ((contDiff_one_iff_deriv.mp hg).1 u).hasDerivAt
  exact ((hd.const_mul (-(positiveMass A / negativeMass A))).congr_of_eventuallyEq he).deriv

/-- The critical exponential product keeps the quarter, first and second correlation terms. -/
theorem criticalPrimeTest_second_deriv_eq_correlation
    {A u : ℝ} (hA : 0 < A) :
    deriv (deriv (criticalPrimeTest A)) u =
      Real.exp (u / 2) *
        (SourcePairing.sourceCorrelation explicitSecondDerivative A u / 4 +
          deriv (SourcePairing.sourceCorrelation explicitSecondDerivative A) u +
          deriv (deriv (SourcePairing.sourceCorrelation explicitSecondDerivative A)) u) := by
  let C : ℝ → ℝ := SourcePairing.sourceCorrelation explicitSecondDerivative A
  have hC : HasDerivAt C (deriv C u) u :=
    ((contDiff_one_iff_deriv.mp (sourceCorrelation_contDiff A hA)).1 u).hasDerivAt
  have hCp : HasDerivAt (deriv C) (deriv (deriv C) u) u :=
    ((contDiff_one_iff_deriv.mp (sourceCorrelation_deriv_contDiff hA)).1 u).hasDerivAt
  have he := ((hasDerivAt_id u).div_const 2).exp
  have hg : deriv (criticalPrimeTest A) =
      (fun v => Real.exp (v / 2) * (C v / 2 + deriv C v)) :=
    funext fun v => criticalPrimeTest_deriv A v hA
  have hd : HasDerivAt
      (fun v : ℝ => Real.exp (v / 2) * (C v / 2 + deriv C v))
      (Real.exp (u / 2) * (C u / 4 + deriv C u + deriv (deriv C) u)) u :=
    (he.mul ((hC.div_const 2).add hCp)).congr_deriv (by dsimp only [id_eq]; ring)
  change deriv (deriv (criticalPrimeTest A)) u =
    Real.exp (u / 2) * (C u / 4 + deriv C u + deriv (deriv C) u)
  rw [hg]
  exact hd.deriv

end FormalResearch.RiemannHypothesis.SourceCriticalCurvaturePhase
```
