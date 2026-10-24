# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.6f67c843a3e4151ff32eSourceFullPositiveKappa.Variantdef2e961950e177be610b4e485ec6fd178b7fe8535633df6ae2cad5a2877e2d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d69d8556b463a4355155dc0116df7eaa0e315bc2` · SHA-256 `49a46c1617dee317d90d6976f02c0fb28d2c92ed1b501a24c4b8167d794201e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.FullPositiveKappaWeight.Variant6f67c843a3e4151ff32e29caa8f2f3bcca830e4ef526fdd08c6e77dc21fe02d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6f67c843a3e4151ff32e29caa8f2f3bcca830e4ef526fdd08c6e77dc21fe02d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.FullPositiveKappaWeight.Variant6f67c843a3e4151ff32e29caa8f2f3bcca830e4ef526fdd08c6e77dc21fe02d7","mathematical_subject":"Analysis.Integration","original_sha256":"6f67c843a3e4151ff32e29caa8f2f3bcca830e4ef526fdd08c6e77dc21fe02d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/6f67c843a3e4151ff32e-SourceFullPositiveKappa.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceUpperCubicKappa
import SourceCorrectedOmegaPeanoTaylor

/-!
# Genuine full positive-axis fractional kappa coefficients

AI attribution: OpenAI Codex. The independent full coefficient uses fract(u),
including the entire below-one interval. Centered sawtooth is used only in the
upper interval. Genuine L1 and exact signed lower constants transport the
corrected four jets without any zeta derivative identification. The original
full complement and baseline remain, and no signed arithmetic bound is supplied.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.FullPositiveKappaWeight.Variant6f67c843a3e4151ff32e29caa8f2f3bcca830e4ef526fdd08c6e77dc21fe02d7

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceFullPositiveKappa
open MeasureTheory Set
open scoped BigOperators Interval
open SourceSamplingCoefficients SourceCubicUpperLogMoments SourceUpperCubicKappa
open SourcePeanoSignedShortJet SourceCorrectedOmegaPeanoTaylor SourceFullDivisorLogInventory
open SourcePairing
open ContinuousResearch.ActualIntegerInventory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateMertensAbel
noncomputable section

/-- Independent literal full-positive-axis coefficient density, uncentered near zero. -/
def fullPositiveKappaWeight (k : ℕ) (u : ℝ) : ℝ :=
  Int.fract u * u ^ (-(3 : ℝ) / 2) *
    ((k : ℝ) * (Real.log u) ^ (k - 1) - (Real.log u) ^ k / 2)

/-- Full ordinary signed fractional-part coefficient, before comparison with upper jets. -/
def fullPositiveKappa (k : ℕ) : ℝ := ∫ u in Ioi (0 : ℝ), fullPositiveKappaWeight k u

theorem fullPositiveKappaWeight_eq_moment_densities (k : ℕ) (u : ℝ) :
    fullPositiveKappaWeight k u =
      (k : ℝ) * coefficientWeight (k - 1) u - coefficientWeight k u / 2 := by
  unfold fullPositiveKappaWeight coefficientWeight
  ring

/-- Full L1 includes genuine control at both zero and infinity. -/
theorem fullPositiveKappaWeight_integrable (k : ℕ) :
    IntegrableOn (fullPositiveKappaWeight k) (Ioi (0 : ℝ)) := by
  rw [funext (fullPositiveKappaWeight_eq_moment_densities k)]
  exact ((coefficientWeight_integrable (k - 1)).const_mul (k : ℝ)).sub
    ((coefficientWeight_integrable k).div_const 2)

/-- Actual signed below-one moment density after fract(u)=u. -/
def lowerLogWeight (j : ℕ) (u : ℝ) : ℝ :=
  u ^ (-(1 : ℝ) / 2) * (Real.log u) ^ j

theorem exp_mul_lowerLogWeight (j : ℕ) (v : ℝ) :
    Real.exp v * lowerLogWeight j (Real.exp v) = v ^ j * Real.exp (v / 2) := by
  unfold lowerLogWeight
  rw [Real.rpow_def_of_pos (Real.exp_pos v), Real.log_exp]
  rw [← mul_assoc, ← Real.exp_add]
  rw [show v + v * (-(1 : ℝ) / 2) = v / 2 by ring]
  ring

/-- Genuine substitution and reflection retain the signs of all lower logarithmic moments. -/
theorem lowerLogWeight_integral (j : ℕ) :
    (∫ u in Ioo (0 : ℝ) 1, lowerLogWeight j u) =
      (-1 : ℝ) ^ j * (2 : ℝ) ^ (j + 1) * (j.factorial : ℝ) := by
  have hc := integral_image_eq_integral_abs_deriv_smul
    (f := Real.exp) (f' := Real.exp) (s := Iio (0 : ℝ)) measurableSet_Iio
    (fun v _ => (Real.hasDerivAt_exp v).hasDerivWithinAt)
    Real.exp_injective.injOn (lowerLogWeight j)
  rw [Real.image_exp_Iio, Real.exp_zero] at hc
  simp only [abs_of_pos (Real.exp_pos _), smul_eq_mul] at hc
  rw [hc]
  simp_rw [exp_mul_lowerLogWeight]
  have hn := integral_comp_neg_Ioi (0 : ℝ) (fun v : ℝ => v ^ j * Real.exp (v / 2))
  rw [neg_zero, integral_Iic_eq_integral_Iio] at hn
  rw [← hn]
  have he : (fun v : ℝ => (-v) ^ j * Real.exp (-v / 2)) =
      fun v => (-1 : ℝ) ^ j * (v ^ j * Real.exp (-v / 2)) := by
    funext v
    rw [neg_pow]
    ring
  rw [he, integral_const_mul, exponential_half_integral]
  ring

/-- The derived nonzero signed moment verifies actual lower L1 at every degree. -/
theorem lowerLogWeight_integrable (j : ℕ) :
    IntegrableOn (lowerLogWeight j) (Ioo (0 : ℝ) 1) := by
  refine .of_integral_ne_zero ?_
  rw [lowerLogWeight_integral]
  apply mul_ne_zero
  · exact mul_ne_zero (pow_ne_zero _ (by norm_num)) (by positivity)
  · positivity

/-- Exact lower density agreement excludes only the measure-zero unit endpoint. -/
theorem fullPositiveKappaWeight_succ_eq_lower (j : ℕ) {u : ℝ} (hu : u ∈ Ioo (0 : ℝ) 1) :
    fullPositiveKappaWeight (j + 1) u =
      ((j + 1 : ℕ) : ℝ) * lowerLogWeight j u - lowerLogWeight (j + 1) u / 2 := by
  have hf : Int.fract u = u := Int.fract_eq_self.mpr ⟨hu.1.le, hu.2⟩
  have hp : u * u ^ (-(3 : ℝ) / 2) = u ^ (-(1 : ℝ) / 2) := by
    nth_rw 1 [← Real.rpow_one u]
    rw [← Real.rpow_add hu.1]
    norm_num
  unfold fullPositiveKappaWeight lowerLogWeight
  rw [hf]
  simp only [Nat.add_sub_cancel]
  rw [hp]
  ring

/-- Each lower coefficient has its full signed endpoint contribution. -/
theorem fullPositiveKappa_lower_integral_succ (j : ℕ) :
    (∫ u in Ioo (0 : ℝ) 1, fullPositiveKappaWeight (j + 1) u) =
      (-1 : ℝ) ^ j * (2 : ℝ) ^ (j + 2) * ((j + 1).factorial : ℝ) := by
  rw [setIntegral_congr_fun measurableSet_Ioo
    (fun u hu => fullPositiveKappaWeight_succ_eq_lower j hu)]
  rw [integral_sub ((lowerLogWeight_integrable j).const_mul ((j + 1 : ℕ) : ℝ))
    ((lowerLogWeight_integrable (j + 1)).div_const 2), integral_const_mul, integral_div,
    lowerLogWeight_integral, lowerLogWeight_integral]
  simp only [Nat.factorial_succ, Nat.cast_mul, Nat.cast_add, Nat.cast_one]
  rw [show j + 2 = (j + 1) + 1 by omega, pow_succ, pow_succ]
  ring

/-- The upper mean density is independently specified and genuinely integrable. -/
def upperKappaMeanWeight (k : ℕ) (u : ℝ) : ℝ :=
  (k : ℝ) * upperLogWeight (k - 1) u - upperLogWeight k u / 2

theorem upperKappaMeanWeight_integrable (k : ℕ) :
    IntegrableOn (upperKappaMeanWeight k) (Ioi (1 : ℝ)) :=
  ((upperLogWeight_integrable (k - 1)).const_mul (k : ℝ)).sub
    ((upperLogWeight_integrable k).div_const 2)

/-- The upper mean correction vanishes for every positive derivative order. -/
theorem upperKappaMean_integral_succ (j : ℕ) :
    (∫ u in Ioi (1 : ℝ), upperKappaMeanWeight (j + 1) u) = 0 := by
  unfold upperKappaMeanWeight
  simp only [Nat.add_sub_cancel]
  rw [integral_sub ((upperLogWeight_integrable j).const_mul ((j + 1 : ℕ) : ℝ))
    ((upperLogWeight_integrable (j + 1)).div_const 2), integral_const_mul, integral_div,
    upperLogWeight_integral, upperLogWeight_integral]
  simp only [Nat.factorial_succ, Nat.cast_mul, Nat.cast_add, Nat.cast_one]
  rw [show j + 1 + 1 = (j + 1) + 1 from rfl, pow_succ]
  ring

theorem fullPositiveKappaWeight_eq_upper_centered_add_mean (k : ℕ) (u : ℝ) :
    fullPositiveKappaWeight k u = upperCubicKappaWeight k u + upperKappaMeanWeight k u / 2 := by
  unfold fullPositiveKappaWeight upperCubicKappaWeight centeredSawtooth
    upperKappaMeanWeight upperLogWeight
  ring

/-- Uncentered upper coefficients equal the source's centered upper coefficients exactly. -/
theorem fullPositiveKappa_upper_integral_succ (j : ℕ) :
    (∫ u in Ioi (1 : ℝ), fullPositiveKappaWeight (j + 1) u) = upperCubicKappa (j + 1) := by
  simp_rw [fullPositiveKappaWeight_eq_upper_centered_add_mean]
  rw [integral_add (upperCubicKappaWeight_integrable (j + 1))
    ((upperKappaMeanWeight_integrable (j + 1)).div_const 2), integral_div,
    upperKappaMean_integral_succ]
  simp only [upperCubicKappa, zero_div, add_zero]

/-- Full signed split keeps the entire lower cell and the literal upper coefficient. -/
theorem fullPositiveKappa_eq_upper_add_lower_succ (j : ℕ) :
    fullPositiveKappa (j + 1) = upperCubicKappa (j + 1) +
      (-1 : ℝ) ^ j * (2 : ℝ) ^ (j + 2) * ((j + 1).factorial : ℝ) := by
  have hi := fullPositiveKappaWeight_integrable (j + 1)
  have hadd := intervalIntegral.integral_interval_add_Ioi
    (a := (0 : ℝ)) (b := 1) hi
    (hi.mono_set (by intro u hu; exact zero_lt_one.trans (mem_Ioi.mp hu)))
  rw [intervalIntegral.integral_of_le (by norm_num : (0 : ℝ) ≤ 1),
    integral_Ioc_eq_integral_Ioo, fullPositiveKappa_lower_integral_succ,
    fullPositiveKappa_upper_integral_succ] at hadd
  unfold fullPositiveKappa
  linarith

/-- All four signed lower endpoint constants, with none discarded. -/
theorem fullPositiveKappa_four_endpoint_corrections :
    fullPositiveKappa 1 = upperCubicKappa 1 + 4 ∧
    fullPositiveKappa 2 = upperCubicKappa 2 - 16 ∧
    fullPositiveKappa 3 = upperCubicKappa 3 + 96 ∧
    fullPositiveKappa 4 = upperCubicKappa 4 - 768 := by
  have h0 := fullPositiveKappa_eq_upper_add_lower_succ 0
  have h1 := fullPositiveKappa_eq_upper_add_lower_succ 1
  have h2 := fullPositiveKappa_eq_upper_add_lower_succ 2
  have h3 := fullPositiveKappa_eq_upper_add_lower_succ 3
  norm_num at h0 h1 h2 h3
  exact ⟨h0, h1, h2, h3⟩

/-- Corrected actual source jets are exactly the four full positive-axis fractional coefficients. -/
theorem correctedFourKappaJet_eq_full_positive_jet (A t : ℝ) :
    correctedFourKappaJet A t =
      ∑ j ∈ Finset.range 4, fullPositiveKappa (j + 1) / (j.factorial : ℝ) *
        iteratedDeriv j (sourceCorrelation explicitSecondDerivative A) t := by
  rcases fullPositiveKappa_four_endpoint_corrections with ⟨h0, h1, h2, h3⟩
  unfold correctedFourKappaJet peanoCubicCompensation actualFourKappaJet
  norm_num [Finset.sum_range_succ, iteratedDeriv_succ, iteratedDeriv_zero, Nat.factorial]
  rw [h0, h1, h2, h3]
  ring

/-- The original independent corrected Omega retains full L and its discrete baseline. -/
theorem correctedCompleteOmega_eq_full_positive_kappa (A : ℝ) :
    correctedCompleteOmega A =
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / Real.sqrt (d : ℝ) *
        ∑ j ∈ Finset.range 4, fullPositiveKappa (j + 1) / (j.factorial : ℝ) *
          iteratedDeriv j (sourceCorrelation explicitSecondDerivative A) (Real.log (d : ℝ))) +
      literalOmegaComplementarySector A - plainInventory A := by
  unfold correctedCompleteOmega
  simp_rw [correctedFourKappaJet_eq_full_positive_jet]

end
end FormalResearch.RiemannHypothesis.SourceFullPositiveKappa
```
