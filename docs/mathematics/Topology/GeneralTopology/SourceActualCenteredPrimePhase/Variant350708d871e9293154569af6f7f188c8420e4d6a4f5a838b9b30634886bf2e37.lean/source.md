# Complete source: GRWTSK.Topology.GeneralTopology.SourceActualCenteredPrimePhase.Variant350708d871e9293154569af6f7f188c8420e4d6a4f5a838b9b30634886bf2e37

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86c33d3d48265f39daa69a192d053c9b5ac4ebe9` · SHA-256 `c062e2e64f9b18537753fe426baed461addad8d2a6b04d603fbf1cc1e9be5f48`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.PotentialContinuous.Variantfbaaa24d05f92758b39c739fabce6722d4b3297f680155ada33e987cf34099ac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fbaaa24d05f92758b39c739fabce6722d4b3297f680155ada33e987cf34099ac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.PotentialContinuous.Variantfbaaa24d05f92758b39c739fabce6722d4b3297f680155ada33e987cf34099ac","mathematical_subject":"Topology.GeneralTopology","original_sha256":"fbaaa24d05f92758b39c739fabce6722d4b3297f680155ada33e987cf34099ac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T132012Z-1791379212733299000/SourceActualCenteredPrimePhase.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualEulerPotentialPhase
import SourceActualEulerResidualApproximation

/-!
Actual centered finite-potential integration by parts and its complete signed
cosine/sine phase integral. The real cosine deficit is nonnegative, while the
Mellin derivative cross term and both endpoint products remain. The moving
endpoint payment transports the original residual without proving a bulk cap.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.Topology.GeneralTopology.PotentialContinuous.Variantfbaaa24d05f92758b39c739fabce6722d4b3297f680155ada33e987cf34099ac

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualCenteredPrimePhase
open MeasureTheory Set Complex Filter Topology
open SourceActualEulerPotentialPhase SourceActualEulerLogarithmicPrimitive
open SourceActualEulerResidualApproximation SourceActualEulerSupportHead
open SourceActualInitialPrimeContour SourceActualPrimeBumpDictionary
open SourceActualBumpMellinLineBudget SourceActualRightBumpTail
open SourceActualBumpMovingHeight SourceBumpLaplace SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

private theorem potential_continuous (A : ℝ) :
    Continuous (actualClosedPrimeLogPotential A) :=
  continuous_iff_continuousAt.mpr fun s =>
    (actualClosedPrimeLogPotential_hasDerivAt A s).continuousAt

private theorem mellin_continuous (A : ℝ) (hA : 1 ≤ A) :
    Continuous (actualInitialPrimeMellin A) :=
  continuous_iff_continuousAt.mpr fun s => (actualEulerMellin_hasDerivAt A hA s).continuousAt

private theorem slope_continuous (A : ℝ) : Continuous (actualEulerMellinSlope A) := by
  have hb : Continuous bumpLaplace := by
    have hf : bumpLaplaceMoment 0 = bumpLaplace := funext bump_laplace_moment_zero
    simpa only [hf] using bump_laplace_moment_continuous 0
  have hm := bump_laplace_moment_continuous 1
  unfold actualEulerMellinSlope
  fun_prop

private theorem polynomial_continuous (A : ℝ) :
    Continuous (actualClosedPrimeDirichletPolynomial A) := by
  have ht (n : ℕ) (s : ℂ) :
      LSeries.term actualMangoldtCoefficients s n =
        (ArithmeticFunction.vonMangoldt n : ℂ) * Complex.exp (-s * (Real.log n : ℂ)) := by
    rcases eq_or_ne n 0 with rfl | hn
    · simp
    have hp : 0 < (n : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hn
    rw [LSeries.term_of_ne_zero hn, actualMangoldtCoefficients,
      Complex.cpow_def_of_ne_zero (by exact_mod_cast hn)]
    have hlog : Complex.log (n : ℂ) = (Real.log (n : ℝ) : ℂ) :=
      (Complex.ofReal_log hp.le).symm
    rw [hlog]
    simp only [div_eq_mul_inv, ← Complex.exp_neg]
    ring
  unfold actualClosedPrimeDirichletPolynomial
  simp_rw [ht]
  fun_prop

/-- Complete actual complex bulk with only the actual constant potential centered. -/
def actualCenteredPrimeLogBulk (A c T : ℝ) : ℂ :=
  (1 / (2 * Real.pi) : ℂ) * ∫ t in -T..T,
    actualEulerMellinSlope A ((c : ℂ) + (t : ℂ) * I) *
      (actualClosedPrimeLogPotential A ((c : ℂ) + (t : ℂ) * I) -
        actualClosedPrimeLogPotential A (c : ℂ))

/-- Both oriented endpoint products with the same actual centered potential. -/
def actualCenteredPrimeLogBoundary (A c T : ℝ) : ℂ :=
  (I / (2 * Real.pi) : ℂ) *
    (actualInitialPrimeMellin A ((c : ℂ) + (T : ℂ) * I) *
        (actualClosedPrimeLogPotential A ((c : ℂ) + (T : ℂ) * I) -
          actualClosedPrimeLogPotential A (c : ℂ)) -
      actualInitialPrimeMellin A ((c : ℂ) + (-T : ℂ) * I) *
        (actualClosedPrimeLogPotential A ((c : ℂ) + (-T : ℂ) * I) -
          actualClosedPrimeLogPotential A (c : ℂ)))

/-- The full actual closed cosine deficit, retaining every prime power. -/
def actualClosedPrimeCosineDeficit (A c t : ℝ) : ℝ :=
  -(actualClosedPrimeLogPotential A ((c : ℂ) + (t : ℂ) * I) -
    actualClosedPrimeLogPotential A (c : ℂ)).re

/-- The full actual closed sine component, with the centered imaginary orientation. -/
def actualClosedPrimeSineComponent (A c t : ℝ) : ℝ :=
  -(actualClosedPrimeLogPotential A ((c : ℂ) + (t : ℂ) * I) -
    actualClosedPrimeLogPotential A (c : ℂ)).im

/-- The genuine signed b*S-a*Q integral on the entire prescribed frequency interval. -/
def actualCenteredPrimePhaseBulk (A c T : ℝ) : ℝ :=
  (1 / (2 * Real.pi)) * ∫ t in -T..T,
    (actualEulerMellinSlope A ((c : ℂ) + (t : ℂ) * I)).im *
        actualClosedPrimeSineComponent A c t -
      (actualEulerMellinSlope A ((c : ℂ) + (t : ℂ) * I)).re *
        actualClosedPrimeCosineDeficit A c t

/-- The real cosine deficit has its actual nonnegative coefficients at every real scale. -/
theorem actualClosedPrimeCosineDeficit_nonneg (A c t : ℝ) :
    0 ≤ actualClosedPrimeCosineDeficit A c t := by
  exact neg_nonneg.mpr (actualClosedPrimeLogPotential_centered_re_nonpos A c t)

/-- Genuine compact L1 of the complete centered derivative-potential density. -/
theorem actualCenteredPrimeLogBulk_intervalIntegrable (A c T : ℝ) :
    IntervalIntegrable (fun t : ℝ =>
      actualEulerMellinSlope A ((c : ℂ) + (t : ℂ) * I) *
        (actualClosedPrimeLogPotential A ((c : ℂ) + (t : ℂ) * I) -
          actualClosedPrimeLogPotential A (c : ℂ))) volume (-T) T := by
  have hp := potential_continuous A
  have hs := slope_continuous A
  exact (by fun_prop : Continuous _).intervalIntegrable _ _

/-- The original true head retains exactly the centered bulk and both centered endpoints. -/
theorem actualClosedPrimeHead_eq_centeredBulk_add_boundary
    (A c T : ℝ) (hA : 1 ≤ A) :
    actualClosedPrimeHead A c T =
      actualCenteredPrimeLogBulk A c T + actualCenteredPrimeLogBoundary A c T := by
  let s : ℝ → ℂ := fun t => (c : ℂ) + (t : ℂ) * I
  let P : ℝ → ℂ := fun t =>
    actualClosedPrimeLogPotential A (s t) - actualClosedPrimeLogPotential A (c : ℂ)
  have hs (t : ℝ) : HasDerivAt s I t := by
    simpa [s] using ((hasDerivAt_id t).ofReal_comp.mul_const I).const_add (c : ℂ)
  have hh (t : ℝ) : HasDerivAt (fun t => actualInitialPrimeMellin A (s t))
      (I * actualEulerMellinSlope A (s t)) t := by
    convert! (actualEulerMellin_hasDerivAt A hA (s t)).comp t (hs t) using 1
    exact mul_comm _ _
  have hp (t : ℝ) : HasDerivAt P (-I * actualClosedPrimeDirichletPolynomial A (s t)) t := by
    have h := ((actualClosedPrimeLogPotential_hasDerivAt A (s t)).comp t (hs t)).sub_const
      (actualClosedPrimeLogPotential A (c : ℂ))
    convert! h using 1
    rw [neg_mul, mul_comm I]
    simp only [neg_mul]
  have hi := intervalIntegral.integral_deriv_mul_eq_sub
    (a := -T) (b := T) (fun t _ => hh t) (fun t _ => hp t)
    ((by have h := slope_continuous A; fun_prop : Continuous
      (fun t => I * actualEulerMellinSlope A (s t))).intervalIntegrable _ _)
    ((by have h := polynomial_continuous A; fun_prop : Continuous
      (fun t => -I * actualClosedPrimeDirichletPolynomial A (s t))).intervalIntegrable _ _)
  have he : (fun t : ℝ => I * actualEulerMellinSlope A (s t) * P t +
      actualInitialPrimeMellin A (s t) * (-I * actualClosedPrimeDirichletPolynomial A (s t))) =
      (fun t => I * (actualEulerMellinSlope A (s t) * P t) -
        I * (actualInitialPrimeMellin A (s t) * actualClosedPrimeDirichletPolynomial A (s t))) := by
    funext t
    ring
  rw [he, intervalIntegral.integral_sub] at hi
  · simp only [intervalIntegral.integral_const_mul] at hi
    unfold actualClosedPrimeHead actualCenteredPrimeLogBulk actualCenteredPrimeLogBoundary
    dsimp [s, P] at hi
    simp only [Complex.ofReal_neg] at hi
    have hi' := congrArg (fun z : ℂ => I * z) hi
    simp only [mul_sub, ← mul_assoc, Complex.I_mul_I, neg_one_mul] at hi'
    simp only [mul_sub]
    linear_combination (1 / (2 * Real.pi) : ℂ) * hi'
  · exact (actualCenteredPrimeLogBulk_intervalIntegrable A c T).const_mul I
  · have hm := mellin_continuous A hA
    have hd := polynomial_continuous A
    exact (by fun_prop : Continuous _).intervalIntegrable _ _

/-- The real part is the literal signed phase integral, with the imaginary cross term intact. -/
theorem actualCenteredPrimeLogBulk_real_eq_phaseBulk (A c T : ℝ) :
    (actualCenteredPrimeLogBulk A c T).re = actualCenteredPrimePhaseBulk A c T := by
  unfold actualCenteredPrimeLogBulk actualCenteredPrimePhaseBulk
  rw [show (1 / (2 * Real.pi) : ℂ) = ((1 / (2 * Real.pi) : ℝ) : ℂ) by
    push_cast
    rfl]
  rw [Complex.mul_re]
  simp only [Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
  rw [← (RCLike.reCLM : ℂ →L[ℝ] ℝ).intervalIntegral_comp_comm
    (actualCenteredPrimeLogBulk_intervalIntegrable A c T)]
  congr 1
  apply intervalIntegral.integral_congr
  intro t _
  simp only [Complex.mul_re, actualClosedPrimeCosineDeficit, actualClosedPrimeSineComponent]
  ring

private def endpointConstant (c : ℝ) : ℝ :=
  (204288 : ℝ) ^ 2 / (4096 / 109395) * (1 + c ^ 2) * (1 + (c - 1) ^ 2)

private theorem mellin_endpoint_norm_le (A c t : ℝ) (hA : 1 ≤ A) (hc : 1 < c)
    (ht : |t| = actualBumpMovingHeight A c) :
    ‖actualInitialPrimeMellin A ((c : ℂ) + (t : ℂ) * I)‖ ≤
      endpointConstant c * Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9 := by
  have hp : 0 < A := by linarith
  have hz := actualBumpNormalization_lower A hA
  have hb := bumpMellinWeight_on_line_norm_le A c t hA hc
    (by rw [ht]; exact actualBumpMovingHeight_ge_one A c hA hc)
  rw [← actualInitialPrimeMellin_eq_bumpMellinWeight hA] at hb
  have hz0 : 0 < sourceNormalization A := source_normalization_pos A hA
  have hex : Real.exp ((2 * c - 1) * A) / (actualBumpMovingHeight A c) ^ 6 =
      Real.exp (-((2 * c - 1) * A / 5)) := by
    unfold actualBumpMovingHeight
    rw [← Real.exp_nat_mul, ← Real.exp_sub]
    congr 1
    ring
  rw [ht] at hb
  calc
    _ ≤ (204288 : ℝ) ^ 2 / sourceNormalization A * (1 + c ^ 2) * (1 + (c - 1) ^ 2) *
        Real.exp ((2 * c - 1) * A) / (A ^ 9 * (actualBumpMovingHeight A c) ^ 6) := hb
    _ = ((204288 : ℝ) ^ 2 / sourceNormalization A * (1 + c ^ 2) * (1 + (c - 1) ^ 2)) *
        (Real.exp ((2 * c - 1) * A) / (actualBumpMovingHeight A c) ^ 6) / A ^ 9 := by ring
    _ = ((204288 : ℝ) ^ 2 / sourceNormalization A * (1 + c ^ 2) * (1 + (c - 1) ^ 2)) *
        Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9 := by rw [hex]
    _ ≤ endpointConstant c * Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9 := by
      unfold endpointConstant
      gcongr

private theorem centered_potential_norm_le (A c t : ℝ) (hc : 1 < c) :
    ‖actualClosedPrimeLogPotential A ((c : ℂ) + (t : ℂ) * I) -
      actualClosedPrimeLogPotential A (c : ℂ)‖ ≤
        2 * (actualRightLineMass c / Real.log 2) := by
  have hp := actualClosedPrimeLogPotential_norm_le A c t hc
  have hz := actualClosedPrimeLogPotential_norm_le A c 0 hc
  simp only [Complex.ofReal_zero, zero_mul, add_zero] at hz
  exact (norm_sub_le _ _).trans (by linarith)

/-- Centering keeps both moving endpoints, with twice the genuine original endpoint allowance. -/
theorem actualCenteredPrimeLogBoundary_moving_norm_le (A c : ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) :
    ‖actualCenteredPrimeLogBoundary A c (actualBumpMovingHeight A c)‖ ≤
      2 * actualEulerLogBoundaryConstant c * Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9 := by
  let T := actualBumpMovingHeight A c
  have hT : 0 < T := Real.exp_pos _
  have hHp := mellin_endpoint_norm_le A c T hA hc (abs_of_pos hT)
  have hHm := mellin_endpoint_norm_le A c (-T) hA hc (by rw [abs_neg, abs_of_pos hT])
  have hPp := centered_potential_norm_le A c T hc
  have hPm := centered_potential_norm_le A c (-T) hc
  have hK : 0 ≤ endpointConstant c := by unfold endpointConstant; positivity
  have hM := actualRightLineMass_nonneg c
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  unfold actualCenteredPrimeLogBoundary
  rw [norm_mul]
  calc
    _ ≤ ‖(I / (2 * Real.pi) : ℂ)‖ *
        (‖actualInitialPrimeMellin A ((c : ℂ) + (T : ℂ) * I) *
          (actualClosedPrimeLogPotential A ((c : ℂ) + (T : ℂ) * I) -
            actualClosedPrimeLogPotential A (c : ℂ))‖ +
          ‖actualInitialPrimeMellin A ((c : ℂ) + (-T : ℂ) * I) *
          (actualClosedPrimeLogPotential A ((c : ℂ) + (-T : ℂ) * I) -
            actualClosedPrimeLogPotential A (c : ℂ))‖) :=
      mul_le_mul_of_nonneg_left (norm_sub_le _ _) (norm_nonneg _)
    _ ≤ (1 / (2 * Real.pi)) *
        (2 * (endpointConstant c * Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9) *
          (2 * (actualRightLineMass c / Real.log 2))) := by
      have hn : ‖(I / (2 * Real.pi) : ℂ)‖ = 1 / (2 * Real.pi) := by
        rw [norm_div, norm_I]
        norm_cast
        rw [Real.norm_eq_abs, abs_of_pos (show 0 < 2 * Real.pi by positivity)]
      rw [hn, norm_mul, norm_mul]
      have hPm' : ‖actualClosedPrimeLogPotential A ((c : ℂ) + (-T : ℂ) * I) -
          actualClosedPrimeLogPotential A (c : ℂ)‖ ≤
          2 * (actualRightLineMass c / Real.log 2) := by
        simpa only [Complex.ofReal_neg] using hPm
      have hHm' : ‖actualInitialPrimeMellin A ((c : ℂ) + (-T : ℂ) * I)‖ ≤
          endpointConstant c * Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9 := by
        simpa only [Complex.ofReal_neg] using hHm
      have hb := add_le_add
        (mul_le_mul hHp hPp (norm_nonneg _) (by positivity))
        (mul_le_mul hHm' hPm' (norm_nonneg _) (by positivity))
      have hbb := mul_le_mul_of_nonneg_left hb (show 0 ≤ 1 / (2 * Real.pi) by positivity)
      convert! hbb using 1
      congr 1
      rw [two_mul, add_mul]
    _ = _ := by
      rw [show actualEulerLogBoundaryConstant c =
        endpointConstant c * actualRightLineMass c / (Real.pi * Real.log 2) from rfl]
      ring

/-- Quantitative unscaled transport to the actual signed phase integral,
with both endpoint costs. -/
theorem actualResidual_sub_centeredPhaseBulk_abs_le (A c d : ℝ) (hA : 1 ≤ A)
    (hd : 1 < d) (hdc : d < c) :
    |mertensResidual A - actualCenteredPrimePhaseBulk A c (actualBumpMovingHeight A c)| ≤
      (actualBumpMovingTailConstant c +
        actualClosedPrimeHeadErrorConstant c d * Real.exp (-2 * (c - d) * A) +
        2 * actualEulerLogBoundaryConstant c * Real.exp (-((2 * c - 1) * A / 5))) / A ^ 9 := by
  have hi : actualClosedPrimeHead A c (actualBumpMovingHeight A c) -
      actualCenteredPrimeLogBulk A c (actualBumpMovingHeight A c) =
        actualCenteredPrimeLogBoundary A c (actualBumpMovingHeight A c) := by
    rw [actualClosedPrimeHead_eq_centeredBulk_add_boundary A c _ hA, add_sub_cancel_left]
  rw [← actualCenteredPrimeLogBulk_real_eq_phaseBulk]
  calc
    _ = |((mertensResidual A : ℂ) -
        actualCenteredPrimeLogBulk A c (actualBumpMovingHeight A c)).re| := by
      simp only [Complex.sub_re, Complex.ofReal_re]
    _ ≤ ‖(mertensResidual A : ℂ) -
        actualCenteredPrimeLogBulk A c (actualBumpMovingHeight A c)‖ := Complex.abs_re_le_norm _
    _ ≤ ‖(mertensResidual A : ℂ) - actualClosedPrimeHead A c (actualBumpMovingHeight A c)‖ +
        ‖actualClosedPrimeHead A c (actualBumpMovingHeight A c) -
          actualCenteredPrimeLogBulk A c (actualBumpMovingHeight A c)‖ :=
      norm_sub_le_norm_sub_add_norm_sub _ _ _
    _ ≤ (actualBumpMovingTailConstant c +
        actualClosedPrimeHeadErrorConstant c d * Real.exp (-2 * (c - d) * A)) / A ^ 9 +
        2 * actualEulerLogBoundaryConstant c * Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9 := by
      rw [hi]
      exact add_le_add (actualResidual_sub_closedHead_norm_le A c d hA hd hdc)
        (actualCenteredPrimeLogBoundary_moving_norm_le A c hA (by linarith))
    _ = _ := by ring

/-- The original residual and full b*S-a*Q integral differ by o(1) along every real scale. -/
theorem actualResidual_sub_centeredPhaseBulk_tendsto_zero (c d : ℝ)
    (hd : 1 < d) (hdc : d < c) :
    Tendsto (fun A : ℝ => mertensResidual A -
      actualCenteredPrimePhaseBulk A c (actualBumpMovingHeight A c)) atTop (𝓝 0) := by
  have hp : Tendsto (fun A : ℝ => 2 * (c - d) * A) atTop atTop :=
    tendsto_id.const_mul_atTop (by linarith : 0 < 2 * (c - d))
  have he : Tendsto (fun A : ℝ => Real.exp (-2 * (c - d) * A)) atTop (𝓝 0) := by
    convert Real.tendsto_exp_neg_atTop_nhds_zero.comp hp using 1
    funext A
    congr 1
    ring
  have hq : Tendsto (fun A : ℝ => ((2 * c - 1) / 5) * A) atTop atTop :=
    tendsto_id.const_mul_atTop (by linarith : 0 < (2 * c - 1) / 5)
  have hf : Tendsto (fun A : ℝ => Real.exp (-((2 * c - 1) * A / 5))) atTop (𝓝 0) := by
    convert Real.tendsto_exp_neg_atTop_nhds_zero.comp hq using 1
    funext A
    congr 1
    ring
  have hn : Tendsto (fun A : ℝ => actualBumpMovingTailConstant c +
      actualClosedPrimeHeadErrorConstant c d * Real.exp (-2 * (c - d) * A) +
      2 * actualEulerLogBoundaryConstant c * Real.exp (-((2 * c - 1) * A / 5)))
      atTop (𝓝 (actualBumpMovingTailConstant c)) := by
    simpa using (tendsto_const_nhds.add
      (he.const_mul (actualClosedPrimeHeadErrorConstant c d))).add
        (hf.const_mul (2 * actualEulerLogBoundaryConstant c))
  apply squeeze_zero_norm' _ (hn.div_atTop (tendsto_pow_atTop (by norm_num : (9 : ℕ) ≠ 0)))
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  simpa only [Real.norm_eq_abs] using actualResidual_sub_centeredPhaseBulk_abs_le A c d hA hd hdc

end FormalResearch.RiemannHypothesis.SourceActualCenteredPrimePhase
```
