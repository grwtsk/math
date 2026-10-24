# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualEulerSupportHeadNative02.Variant8eeb75e7cf2f6c1d03d27b303c7ebeb95acaf5e4836c19b45c64a4c424c0bd31

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5eef67adede891c7960520ebfeaf53c801e89eb7` · SHA-256 `c7193986b525396e35675b9cd4bf0183f4fd312ec1cacf4e44dfbbbbc392da29`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualClosedPrimeDirichletPolynomial.Variantc0d63fbaef0c6b95a221c533c80df5a26cf7b2b3b14aa61027487582b0ba09a7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c0d63fbaef0c6b95a221c533c80df5a26cf7b2b3b14aa61027487582b0ba09a7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualClosedPrimeDirichletPolynomial.Variantc0d63fbaef0c6b95a221c533c80df5a26cf7b2b3b14aa61027487582b0ba09a7","mathematical_subject":"Analysis.Integration","original_sha256":"c0d63fbaef0c6b95a221c533c80df5a26cf7b2b3b14aa61027487582b0ba09a7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-euler-support-head/SourceActualEulerSupportHead-native02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualPrimeContourResidual
import SourceActualPrimeBumpDictionary
import SourceActualBumpMovingHeight

/-!
A phase-preserving finite Euler-source truncation on the initial right line.
The literal closed cutoff floor(exp(2A)) includes the unit zero and every prime
power. Above-support terms vanish only after the genuine full-line inversion;
their finite-height contribution is retained and quantitatively estimated.
No uniform signed bound for the remaining finite head is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualClosedPrimeDirichletPolynomial.Variantc0d63fbaef0c6b95a221c533c80df5a26cf7b2b3b14aa61027487582b0ba09a7

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualEulerSupportHead
open MeasureTheory Set Complex Filter
open SourcePairing SourceActualInitialPrimeContour SourceActualInitialPrimeLineL1
open SourceActualRightBumpTail SourceActualBumpTwoTailBudget
open SourceActualPrimeContourResidual SourceActualPrimeBumpDictionary
open SourceActualBumpMellinLineBudget SourceBumpLaplace SourceActualBumpMovingHeight
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
noncomputable section

/-- Literal closed actual Mangoldt Dirichlet polynomial; n=0 and n=1 are zero. -/
def actualClosedPrimeDirichletPolynomial (A : ℝ) (s : ℂ) : ℂ :=
  ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1), LSeries.term actualMangoldtCoefficients s n

/-- The actual exterior Dirichlet series, with the closed endpoint left in the polynomial. -/
def actualExteriorPrimeSeries (A : ℝ) (s : ℂ) : ℂ :=
  ∑' n : {n : ℕ // n ∉ Finset.range (⌊Real.exp (2*A)⌋₊+1)},
    LSeries.term actualMangoldtCoefficients s n

/-- Exact initial arithmetic decomposition, with no cutoff of the infinite multiplier. -/
theorem actualPrimeSeries_eq_closed_add_exterior (A : ℝ) (s : ℂ) (hs : 1 < s.re) :
    LSeries actualMangoldtCoefficients s =
      actualClosedPrimeDirichletPolynomial A s + actualExteriorPrimeSeries A s := by
  unfold LSeries actualClosedPrimeDirichletPolynomial actualExteriorPrimeSeries
  exact (ArithmeticFunction.LSeriesSummable_vonMangoldt hs).sum_add_tsum_subtype_compl
    (Finset.range (⌊Real.exp (2*A)⌋₊+1)) |>.symm

private theorem term_norm_on_line (c t : ℝ) (n : ℕ) :
    ‖LSeries.term actualMangoldtCoefficients ((c:ℂ)+(t:ℂ)*I) n‖ =
      ‖LSeries.term actualMangoldtCoefficients (c:ℂ) n‖ := by
  simp [LSeries.norm_term_eq]

private theorem term_continuous (c : ℝ) (n : ℕ) :
    Continuous (fun t : ℝ => LSeries.term actualMangoldtCoefficients ((c:ℂ)+(t:ℂ)*I) n) := by
  rcases eq_or_ne n 0 with rfl | hn
  · simp only [LSeries.term_zero]
    exact continuous_const
  · simp only [LSeries.term_of_ne_zero hn]
    refine continuous_const.div ?_ (fun t => ?_)
    · exact Continuous.const_cpow (by fun_prop) (Or.inl (by exact_mod_cast hn))
    · exact cpow_ne_zero_iff.mpr (Or.inl (by exact_mod_cast hn))

private theorem term_density_integrable (A c : ℝ) (hA : 1 ≤ A) (n : ℕ) :
    Integrable (fun t : ℝ => actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
      LSeries.term actualMangoldtCoefficients ((c:ℂ)+(t:ℂ)*I) n) := by
  refine (actualInitialPrimeMellin_on_line_integrable A c hA).mul_bdd
    (c := ‖LSeries.term actualMangoldtCoefficients (c:ℂ) n‖)
    (term_continuous c n).aestronglyMeasurable ?_
  filter_upwards [] with t
  exact (term_norm_on_line c t n).le

private theorem term_density_integral (A c : ℝ) (hA : 1 ≤ A) (n : ℕ) :
    (1/(2*Real.pi):ℂ) * (∫ t : ℝ, actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
      LSeries.term actualMangoldtCoefficients ((c:ℂ)+(t:ℂ)*I) n) =
    ((ArithmeticFunction.vonMangoldt n/Real.sqrt n:ℝ):ℂ) *
      (sourceCorrelation explicitSecondDerivative A (Real.log n):ℂ) := by
  simp_rw [actualInitialPrimeMellin_eq_Hfn, Zeta23.WeilEF.Hfn_line]
  exact Zeta23.WeilEF.per_n_line_integral (actualInitialPrimeKernel_contDiff A hA)
    (actualInitialPrimeKernel_hasCompactSupport A hA) n

private theorem closed_actual_weight_sum (A : ℝ) (hA : 1 ≤ A) :
    (∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1),
      ((ArithmeticFunction.vonMangoldt n/Real.sqrt n:ℝ):ℂ) *
      (sourceCorrelation explicitSecondDerivative A (Real.log n):ℂ)) =
      (primePowerContribution explicitSecondDerivative A:ℂ) := by
  rw [← actualInitialPrime_tsum_eq_strict A hA]
  symm
  apply tsum_eq_sum
  intro n hn
  have hN : ⌊Real.exp (2*A)⌋₊ < n := by have h := hn; simp only [Finset.mem_range, not_lt] at h; omega
  have hnr : Real.exp (2*A) < (n:ℝ) := Nat.lt_of_floor_lt hN
  have hl : 2*A ≤ Real.log n := by
    simpa only [Real.log_exp] using (Real.log_le_log (Real.exp_pos _) hnr.le)
  rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A (Real.log n)
    (by linarith) (hl.trans (le_abs_self _))]
  simp

/-- The finite polynomial's full line already gives the complete original strict inventory. -/
theorem actualClosedPrimePolynomial_fullLine (A c : ℝ) (hA : 1 ≤ A) :
    (1/(2*Real.pi):ℂ) * (∫ t : ℝ, actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
      actualClosedPrimeDirichletPolynomial A ((c:ℂ)+(t:ℂ)*I)) =
      (primePowerContribution explicitSecondDerivative A:ℂ) := by
  unfold actualClosedPrimeDirichletPolynomial
  simp_rw [Finset.mul_sum]
  rw [integral_finsetSum _ (fun n _ => term_density_integrable A c hA n), Finset.mul_sum]
  simp_rw [term_density_integral A c hA]
  exact closed_actual_weight_sum A hA

private theorem closed_density_integrable (A c : ℝ) (hA : 1 ≤ A) :
    Integrable (fun t : ℝ => actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
      actualClosedPrimeDirichletPolynomial A ((c:ℂ)+(t:ℂ)*I)) := by
  unfold actualClosedPrimeDirichletPolynomial
  simp_rw [Finset.mul_sum]
  exact integrable_finsetSum _ (fun n _ => term_density_integrable A c hA n)

/-- Genuine full-line L1 of the discarded actual multiplier. -/
theorem actualExteriorPrimeDensity_integrable (A c : ℝ) (hA : 1 ≤ A) (hc : 1 < c) :
    Integrable (fun t : ℝ => actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
      actualExteriorPrimeSeries A ((c:ℂ)+(t:ℂ)*I)) := by
  have he (t : ℝ) : actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
      actualExteriorPrimeSeries A ((c:ℂ)+(t:ℂ)*I) =
      actualInitialPrimeDensity A c t - actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
        actualClosedPrimeDirichletPolynomial A ((c:ℂ)+(t:ℂ)*I) := by
    rw [actualInitialPrimeDensity_eq_series A c t hc,
      actualPrimeSeries_eq_closed_add_exterior A _ (by simpa using hc)]
    ring
  simp_rw [he]
  exact (actualInitialPrimeDensity_integrable A c hA hc).sub (closed_density_integrable A c hA)

/-- The exterior source disappears only after the complete actual full-line inversion. -/
theorem actualExteriorPrimeDensity_fullLine_zero (A c : ℝ) (hA : 1 ≤ A) (hc : 1 < c) :
    (1/(2*Real.pi):ℂ) * (∫ t : ℝ, actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
      actualExteriorPrimeSeries A ((c:ℂ)+(t:ℂ)*I)) = 0 := by
  have hs (t : ℝ) : actualInitialPrimeDensity A c t =
      actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
        actualClosedPrimeDirichletPolynomial A ((c:ℂ)+(t:ℂ)*I) +
      actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
        actualExteriorPrimeSeries A ((c:ℂ)+(t:ℂ)*I) := by
    rw [actualInitialPrimeDensity_eq_series A c t hc,
      actualPrimeSeries_eq_closed_add_exterior A _ (by simpa using hc)]
    ring
  have hi := actualInitialPrimeContour_eq_strict A c hA hc
  change (1/(2*Real.pi):ℂ) * (∫ t : ℝ, actualInitialPrimeDensity A c t) = _ at hi
  simp_rw [hs] at hi
  rw [integral_add (closed_density_integrable A c hA)
    (actualExteriorPrimeDensity_integrable A c hA hc), mul_add,
    actualClosedPrimePolynomial_fullLine A c hA] at hi
  exact add_left_cancel (a := (primePowerContribution explicitSecondDerivative A:ℂ))
    (by simpa using hi)

/-- The actual exterior series has an exponential support-distance payment on c>d>1. -/
theorem actualExteriorPrimeSeries_norm_le (A c d t : ℝ)
    (hd : 1 < d) (hdc : d < c) :
    ‖actualExteriorPrimeSeries A ((c:ℂ)+(t:ℂ)*I)‖ ≤
      actualRightLineMass d * Real.exp (-2*(c-d)*A) := by
  let S := {n : ℕ // n ∉ Finset.range (⌊Real.exp (2*A)⌋₊+1)}
  have hs : Summable (fun n : S =>
      ‖LSeries.term actualMangoldtCoefficients ((c:ℂ)+(t:ℂ)*I) n‖) :=
    (ArithmeticFunction.LSeriesSummable_vonMangoldt
      (show 1 < ((c:ℂ)+(t:ℂ)*I).re by simp; linarith)).norm.subtype _
  have hD : Summable (fun n : ℕ => ‖LSeries.term actualMangoldtCoefficients (d:ℂ) n‖) :=
    actualRightLineMass_summable d hd
  have hb (n : S) : ‖LSeries.term actualMangoldtCoefficients ((c:ℂ)+(t:ℂ)*I) n‖ ≤
      ‖LSeries.term actualMangoldtCoefficients (d:ℂ) n‖ * Real.exp (-2*(c-d)*A) := by
    have hN : ⌊Real.exp (2*A)⌋₊ < (n:ℕ) := by
      have h := n.2
      simp only [Finset.mem_range, not_lt] at h
      omega
    have hn : Real.exp (2*A) < (n:ℝ) := Nat.lt_of_floor_lt hN
    have hn0 : 0 < (n:ℝ) := (Real.exp_pos _).trans hn
    have hnz : (n:ℕ) ≠ 0 := by exact_mod_cast hn0.ne'
    have hl : 2*A ≤ Real.log (n:ℝ) := by
      simpa using Real.log_le_log (Real.exp_pos _) hn.le
    have he : Real.exp (-Real.log (n:ℝ)*(c-d)) ≤ Real.exp (-2*(c-d)*A) := by
      apply Real.exp_le_exp.mpr
      nlinarith
    simp only [LSeries.norm_term_eq, hnz, if_false, actualMangoldtCoefficients,
      Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg,
      Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.I_re, Complex.I_im,
      Complex.ofReal_im, mul_zero, zero_mul, sub_zero, add_zero]
    rw [Real.rpow_def_of_pos hn0, Real.rpow_def_of_pos hn0]
    simp only [div_eq_mul_inv, ← Real.exp_neg]
    have hx : Real.exp (-(Real.log (n:ℝ)*c)) =
        Real.exp (-(Real.log (n:ℝ)*d)) * Real.exp (-Real.log (n:ℝ)*(c-d)) := by
      rw [← Real.exp_add]
      congr 1
      ring
    rw [hx]
    simpa only [mul_assoc] using mul_le_mul_of_nonneg_left he
      (mul_nonneg ArithmeticFunction.vonMangoldt_nonneg (Real.exp_pos _).le)
  unfold actualExteriorPrimeSeries
  calc
    _ ≤ ∑' n : S, ‖LSeries.term actualMangoldtCoefficients ((c:ℂ)+(t:ℂ)*I) n‖ :=
      norm_tsum_le_tsum_norm hs
    _ ≤ ∑' n : S, ‖LSeries.term actualMangoldtCoefficients (d:ℂ) n‖ *
        Real.exp (-2*(c-d)*A) := hs.tsum_le_tsum hb ((hD.subtype _).mul_right _)
    _ = (∑' n : S, ‖LSeries.term actualMangoldtCoefficients (d:ℂ) n‖) *
        Real.exp (-2*(c-d)*A) := tsum_mul_right
    _ ≤ actualRightLineMass d * Real.exp (-2*(c-d)*A) := by
      apply mul_le_mul_of_nonneg_right _ (Real.exp_pos _).le
      exact Summable.tsum_subtype_le
        (fun n : ℕ => ‖LSeries.term actualMangoldtCoefficients (d:ℂ) n‖)
        {n : ℕ | n ∉ Finset.range (⌊Real.exp (2*A)⌋₊+1)}
        (fun _ => norm_nonneg _) hD

/-- The finite-height closed polynomial head retains every actual coefficient and phase. -/
def actualClosedPrimeHead (A c T : ℝ) : ℂ :=
  (1/(2*Real.pi):ℂ) * ∫ t in -T..T,
    actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
      actualClosedPrimeDirichletPolynomial A ((c:ℂ)+(t:ℂ)*I)

private def exteriorDensity (A c t : ℝ) : ℂ :=
  actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
    actualExteriorPrimeSeries A ((c:ℂ)+(t:ℂ)*I)

private def exteriorTailNumerator (A c d : ℝ) : ℝ :=
  actualRightLineMass d * Real.exp (-2*(c-d)*A) *
    ((204288:ℝ)^2/sourceNormalization A*(1+c^2)*(1+(c-1)^2)*
      Real.exp ((2*c-1)*A)/A^9)

private theorem exterior_norm_le (A c d t : ℝ) (hA : 1 ≤ A)
    (hd : 1 < d) (hdc : d < c) (ht : 1 ≤ |t|) :
    ‖exteriorDensity A c t‖ ≤ exteriorTailNumerator A c d / |t|^6 := by
  have hs := actualExteriorPrimeSeries_norm_le A c d t hd hdc
  have hk := bumpMellinWeight_on_line_norm_le A c t hA (by linarith) ht
  rw [← actualInitialPrimeMellin_eq_bumpMellinWeight hA] at hk
  unfold exteriorDensity
  rw [norm_mul]
  calc
    _ ≤ ((204288:ℝ)^2/sourceNormalization A*(1+c^2)*(1+(c-1)^2)*
        Real.exp ((2*c-1)*A)/(A^9*|t|^6)) *
        (actualRightLineMass d * Real.exp (-2*(c-d)*A)) := by
      exact mul_le_mul hk hs (norm_nonneg _) (by
        have := actualRightLineMass_nonneg d
        positivity)
    _ = _ := by unfold exteriorTailNumerator; ring

private theorem sixth_integrable (T C : ℝ) (hT : 1 ≤ T) :
    IntegrableOn (fun t : ℝ => C/t^6) (Ioi T) := by
  have h := (integrableOn_Ioi_rpow_of_lt (a := (-6:ℝ)) (by norm_num)
    (show 0 < T by linarith)).const_mul C
  have hp (t : ℝ) : t^(-6:ℝ) = (t^(6:ℕ))⁻¹ := by
    rw [show (-6:ℝ) = ((-6:ℤ):ℝ) by norm_num, Real.rpow_intCast]
    norm_num [zpow_neg]
  simpa only [IntegrableOn, hp, div_eq_mul_inv] using h

private theorem sixth_integral (T C : ℝ) (hT : 1 ≤ T) :
    (∫ t in Ioi T, C/t^6) = C/(5*T^5) := by
  have hp (t : ℝ) : t^(-6:ℝ) = (t^(6:ℕ))⁻¹ := by
    rw [show (-6:ℝ) = ((-6:ℤ):ℝ) by norm_num, Real.rpow_intCast]
    norm_num [zpow_neg]
  have hf : (fun t : ℝ => C/t^6) = (fun t : ℝ => C*t^(-6:ℝ)) := by
    funext t
    rw [hp]
    rfl
  rw [hf, integral_const_mul,
    integral_Ioi_rpow_of_lt (by norm_num : (-6:ℝ) < -1) (show 0 < T by linarith)]
  norm_num
  field_simp

private theorem exterior_one_tail_norm (A c d T : ℝ) (hA : 1 ≤ A)
    (hd : 1 < d) (hdc : d < c) (hT : 1 ≤ T) :
    ‖∫ t in Ioi T, exteriorDensity A c t‖ ≤ exteriorTailNumerator A c d/(5*T^5) ∧
    ‖∫ t in Ioi T, exteriorDensity A c (-t)‖ ≤ exteriorTailNumerator A c d/(5*T^5) := by
  have hi : Integrable (exteriorDensity A c) :=
    actualExteriorPrimeDensity_integrable A c hA (by linarith)
  have hn : Integrable (fun t => exteriorDensity A c (-t)) := hi.comp_neg
  have hm := sixth_integrable T (exteriorTailNumerator A c d) hT
  constructor
  · calc
      _ ≤ ∫ t in Ioi T, ‖exteriorDensity A c t‖ := norm_integral_le_integral_norm _
      _ ≤ ∫ t in Ioi T, exteriorTailNumerator A c d/t^6 := by
        apply integral_mono_ae hi.integrableOn.norm hm
        filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
        have ht0 : 0 ≤ t := by linarith [ht]
        have ht1 : 1 ≤ |t| := by rw [abs_of_nonneg ht0]; linarith [ht]
        simpa only [abs_of_nonneg ht0] using exterior_norm_le A c d t hA hd hdc ht1
      _ = _ := sixth_integral T _ hT
  · calc
      _ ≤ ∫ t in Ioi T, ‖exteriorDensity A c (-t)‖ := norm_integral_le_integral_norm _
      _ ≤ ∫ t in Ioi T, exteriorTailNumerator A c d/t^6 := by
        apply integral_mono_ae hn.integrableOn.norm hm
        filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
        have ht0 : 0 ≤ t := by linarith [ht]
        have ht1 : 1 ≤ |-t| := by rw [abs_neg, abs_of_nonneg ht0]; linarith [ht]
        simpa only [abs_neg, abs_of_nonneg ht0] using exterior_norm_le A c d (-t) hA hd hdc ht1
      _ = _ := sixth_integral T _ hT

/-- Above-support actual Euler atoms have a controlled finite-head error, not a pointwise zero. -/
theorem actualClosedPrimeHead_error_le (A c d T : ℝ) (hA : 1 ≤ A)
    (hd : 1 < d) (hdc : d < c) (hT : 1 ≤ T) :
    ‖actualInitialPrimeHead A c T - actualClosedPrimeHead A c T‖ ≤
      exteriorTailNumerator A c d/(5*Real.pi*T^5) := by
  have hi : Integrable (exteriorDensity A c) :=
    actualExteriorPrimeDensity_integrable A c hA (by linarith)
  have he (t : ℝ) : actualInitialPrimeDensity A c t =
      actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
        actualClosedPrimeDirichletPolynomial A ((c:ℂ)+(t:ℂ)*I) + exteriorDensity A c t := by
    rw [actualInitialPrimeDensity_eq_series A c t (by linarith),
      actualPrimeSeries_eq_closed_add_exterior A _ (by simp; linarith)]
    unfold exteriorDensity
    ring
  have hhead : actualInitialPrimeHead A c T - actualClosedPrimeHead A c T =
      (1/(2*Real.pi):ℂ) * ∫ t in -T..T, exteriorDensity A c t := by
    unfold actualInitialPrimeHead actualClosedPrimeHead
    simp_rw [he]
    rw [intervalIntegral.integral_add (closed_density_integrable A c hA).intervalIntegrable
      hi.intervalIntegrable]
    ring
  have hs := intervalIntegral.integral_Iic_sub_Iic
    (hi.integrableOn (s := Iic (-T))) (hi.integrableOn (s := Iic T))
  have ht := intervalIntegral.integral_Iic_add_Ioi
    (hi.integrableOn (s := Iic T)) (hi.integrableOn (s := Ioi T))
  have hneg : (∫ t in Ioi T, exteriorDensity A c (-t)) =
      ∫ t in Iic (-T), exteriorDensity A c t := integral_comp_neg_Ioi _ _
  have hz := actualExteriorPrimeDensity_fullLine_zero A c hA (by linarith)
  change (1/(2*Real.pi):ℂ) * (∫ t : ℝ, exteriorDensity A c t) = 0 at hz
  have hx : (1/(2*Real.pi):ℂ) * (∫ t in -T..T, exteriorDensity A c t) =
      -(1/(2*Real.pi):ℂ) * ((∫ t in Ioi T, exteriorDensity A c t) +
        ∫ t in Ioi T, exteriorDensity A c (-t)) := by
    rw [hneg, ← ht, ← hs] at hz
    linear_combination hz
  obtain ⟨hb1,hb2⟩ := exterior_one_tail_norm A c d T hA hd hdc hT
  rw [hhead, hx, norm_mul]
  have hp : ‖-(1/(2*Real.pi):ℂ)‖ = 1/(2*Real.pi) := by
    norm_num [norm_div, norm_mul, Real.norm_eq_abs, abs_of_pos Real.pi_pos]
  rw [hp]
  calc
    _ ≤ (1/(2*Real.pi)) * (exteriorTailNumerator A c d/(5*T^5) +
        exteriorTailNumerator A c d/(5*T^5)) := by
      exact mul_le_mul_of_nonneg_left
        ((norm_add_le _ _).trans (add_le_add hb1 hb2)) (by positivity)
    _ = _ := by ring

/-- Explicit actual arithmetic constant; it is a genuine convergent Mangoldt mass at d>1. -/
def actualClosedPrimeHeadErrorConstant (c d : ℝ) : ℝ :=
  actualRightLineMass d*(204288:ℝ)^2*(1+c^2)*(1+(c-1)^2)*109395/(5*Real.pi*4096)

/-- At the prescribed growing height, exterior Euler atoms have an exponentially small error. -/
theorem actualClosedPrimeHead_moving_error_le (A c d : ℝ) (hA : 1 ≤ A)
    (hd : 1 < d) (hdc : d < c) :
    ‖actualInitialPrimeHead A c (actualBumpMovingHeight A c) -
      actualClosedPrimeHead A c (actualBumpMovingHeight A c)‖ ≤
      actualClosedPrimeHeadErrorConstant c d*Real.exp (-2*(c-d)*A)/A^9 := by
  have hb := actualClosedPrimeHead_error_le A c d (actualBumpMovingHeight A c) hA hd hdc
    (actualBumpMovingHeight_ge_one A c hA (by linarith))
  have hp : 0 < A := by linarith
  have hZ := source_normalization_pos A hA
  have hD := actualRightLineMass_nonneg d
  have ht : actualBumpMovingHeight A c^5 = Real.exp ((2*c-1)*A) := by
    unfold actualBumpMovingHeight
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  have he : exteriorTailNumerator A c d/(5*Real.pi*actualBumpMovingHeight A c^5) =
      (actualRightLineMass d*(204288:ℝ)^2*(1+c^2)*(1+(c-1)^2)*Real.exp (-2*(c-d)*A))/
        (5*Real.pi*sourceNormalization A*A^9) := by
    rw [ht]
    unfold exteriorTailNumerator
    field_simp
  rw [he] at hb
  apply hb.trans
  have hden : 5*Real.pi*(4096/109395:ℝ)*A^9 ≤ 5*Real.pi*sourceNormalization A*A^9 := by
    gcongr
    exact actualBumpNormalization_lower A hA
  calc
    _ ≤ (actualRightLineMass d*(204288:ℝ)^2*(1+c^2)*(1+(c-1)^2)*Real.exp (-2*(c-d)*A))/
        (5*Real.pi*(4096/109395)*A^9) :=
      div_le_div_of_nonneg_left (by positivity) (by positivity) hden
    _ = _ := by unfold actualClosedPrimeHeadErrorConstant; ring

end
end FormalResearch.RiemannHypothesis.SourceActualEulerSupportHead
```
