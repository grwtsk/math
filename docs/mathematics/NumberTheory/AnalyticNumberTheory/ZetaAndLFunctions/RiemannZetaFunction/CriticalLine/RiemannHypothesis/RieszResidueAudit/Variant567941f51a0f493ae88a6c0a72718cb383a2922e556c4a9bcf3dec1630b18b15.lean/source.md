# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RieszResidueAudit.Variant567941f51a0f493ae88a6c0a72718cb383a2922e556c4a9bcf3dec1630b18b15

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff9a7415a01d712979568726c105559022eb44ab` · SHA-256 `cf4a38d8e316109dde519aa711aeb8c269a9f0813faf75eca4ebd2c05f766f44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RieszCoefficientMass.Variant786b7cf8699ca1afa2132285a4a3dd145ea56db365cc86d34b6dd4da681316ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"786b7cf8699ca1afa2132285a4a3dd145ea56db365cc86d34b6dd4da681316ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.RieszCoefficientMass.Variant786b7cf8699ca1afa2132285a4a3dd145ea56db365cc86d34b6dd4da681316ea","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"786b7cf8699ca1afa2132285a4a3dd145ea56db365cc86d34b6dd4da681316ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/786b7cf8699ca1afa2132285a4a3dd145ea56db365cc86d34b6dd4da681316ea.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.BoundaryRieszKernel
import Mathlib.Analysis.Complex.Polynomial.Basic
import Mathlib.Analysis.Complex.RemovableSingularity
import Zeta23.Statement.Seam
import Mathlib.Tactic.ComputeDegree

/-!
# Rational Riesz decay and algebraic residue guards

These are unconditional bounds for the actual rational transform. Candidate
weights at the trivial-zero parameters are distinguished from a proved contour
residue sum. No Perron inversion, contour shift, simple-zero assumption, or
zero-counting premise is introduced.

AI attribution: Codex authored this module and its proofs.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RieszCoefficientMass.Variant786b7cf8699ca1afa2132285a4a3dd145ea56db365cc86d34b6dd4da681316ea

namespace FormalResearch.RiemannHypothesis.RieszResidueAudit

open MeasureTheory Filter Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization SourceScaledKernel BoundaryRieszKernel

noncomputable section

/-- The finite absolute factorial coefficient mass of the actual rational transform. -/
def rieszCoefficientMass : ℝ :=
  ∑ j ∈ Finset.range 9, |rieszCoefficient j| * ((j + 9).factorial : ℝ)

/-- The fixed decay constant is independent of the source radius. -/
def rieszDecayConstant : ℝ := 4 * rieszCoefficientMass / (4096 / 109395 : ℝ)

/-- The coefficient mass is nonnegative. -/
theorem riesz_coefficient_mass_nonneg : 0 ≤ rieszCoefficientMass := by
  unfold rieszCoefficientMass
  positivity

/-- The canonical normalization is uniformly separated from zero. -/
theorem source_normalization_lower_bound (A : ℝ) :
    (4096 / 109395 : ℝ) ≤ sourceNormalization A := by
  rw [source_normalization_inverse_square]
  have h2 : 0 ≤ (65536 / 45045 : ℝ) * (A ^ 2)⁻¹ := by positivity
  have h4 : 0 ≤ (196608 / 5005 : ℝ) * ((A ^ 2)⁻¹) ^ 2 := by positivity
  linarith

/-- Each factorial monomial has the radius-independent tenth-order denominator bound. -/
theorem riesz_monomial_norm_le (A : ℝ) (hA : 1 ≤ A) (s : ℂ) (hs : 1 ≤ ‖s‖) (j : ℕ) :
    ‖(rieszCoefficient j : ℂ) * ((j + 9).factorial : ℂ) /
      ((A : ℂ) ^ j * s ^ (j + 10))‖ ≤
        |rieszCoefficient j| * ((j + 9).factorial : ℝ) / ‖s‖ ^ 10 := by
  have hAp : 0 < A := by linarith
  have hsp : 0 < ‖s‖ := by linarith
  have hAj : 1 ≤ A ^ j := one_le_pow₀ hA
  have hsj : ‖s‖ ^ 10 ≤ ‖s‖ ^ (j + 10) := pow_le_pow_right₀ hs (by omega)
  have hden : ‖s‖ ^ 10 ≤ A ^ j * ‖s‖ ^ (j + 10) := by
    calc
      _ ≤ ‖s‖ ^ (j + 10) := hsj
      _ ≤ A ^ j * ‖s‖ ^ (j + 10) := by
        nlinarith [pow_nonneg (norm_nonneg s) (j + 10)]
  simp only [norm_div, norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs,
    abs_of_pos hAp, Complex.norm_natCast]
  exact div_le_div_of_nonneg_left (by positivity) (by positivity) hden

/-- The complete finite coefficient sum has a uniform tenth-order high-frequency bound. -/
theorem riesz_factorial_sum_norm_le (A : ℝ) (hA : 1 ≤ A) (s : ℂ) (hs : 1 ≤ ‖s‖) :
    ‖∑ j ∈ Finset.range 9,
      (rieszCoefficient j : ℂ) * ((j + 9).factorial : ℂ) /
        ((A : ℂ) ^ j * s ^ (j + 10))‖ ≤ rieszCoefficientMass / ‖s‖ ^ 10 := by
  calc
    _ ≤ ∑ j ∈ Finset.range 9,
        ‖(rieszCoefficient j : ℂ) * ((j + 9).factorial : ℂ) /
          ((A : ℂ) ^ j * s ^ (j + 10))‖ := norm_sum_le _ _
    _ ≤ ∑ j ∈ Finset.range 9,
        |rieszCoefficient j| * ((j + 9).factorial : ℝ) / ‖s‖ ^ 10 :=
      Finset.sum_le_sum (fun j _ ↦ riesz_monomial_norm_le A hA s hs j)
    _ = rieszCoefficientMass / ‖s‖ ^ 10 := by rw [rieszCoefficientMass, Finset.sum_div]

/-- The actual finite-radius rational transform has uniform sixth-order frequency decay. -/
theorem boundary_riesz_transform_norm_le (A : ℝ) (hA : 1 ≤ A) (s : ℂ)
    (hs : 1 ≤ ‖s‖) :
    ‖boundaryRieszTransform A s‖ ≤ rieszDecayConstant / ‖s‖ ^ 6 := by
  have hsp : 0 < ‖s‖ := by linarith
  have hs0 : ‖s‖ ≠ 0 := ne_of_gt hsp
  have hZ := source_normalization_lower_bound A
  have hZp : 0 < sourceNormalization A := by linarith
  have hp : ‖s ^ 2 - (1 / 4 : ℂ)‖ ≤ 2 * ‖s‖ ^ 2 := by
    have ht := norm_sub_le (s ^ 2) (1 / 4 : ℂ)
    norm_num only [norm_pow, norm_div, norm_one, Complex.norm_ofNat] at ht
    have hs2 : 1 ≤ ‖s‖ ^ 2 := one_le_pow₀ hs
    nlinarith
  have hp2 : ‖(s ^ 2 - (1 / 4 : ℂ)) ^ 2‖ ≤ 4 * ‖s‖ ^ 4 := by
    rw [norm_pow]
    have h := pow_le_pow_left₀ (norm_nonneg (s ^ 2 - (1 / 4 : ℂ))) hp 2
    norm_num only [mul_pow, ← pow_mul] at h
    exact h
  have hf : ‖(s ^ 2 - (1 / 4 : ℂ)) ^ 2 / (sourceNormalization A : ℂ)‖ ≤
      4 * ‖s‖ ^ 4 / (4096 / 109395 : ℝ) := by
    rw [norm_div, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hZp]
    exact (div_le_div_of_nonneg_right hp2 (le_of_lt hZp)).trans
      (div_le_div_of_nonneg_left (by positivity) (by norm_num) hZ)
  unfold boundaryRieszTransform
  rw [norm_mul]
  calc
    _ ≤ (4 * ‖s‖ ^ 4 / (4096 / 109395 : ℝ)) *
        (rieszCoefficientMass / ‖s‖ ^ 10) :=
      mul_le_mul hf (riesz_factorial_sum_norm_le A hA s hs)
        (norm_nonneg _) (by positivity)
    _ = rieszDecayConstant / ‖s‖ ^ 6 := by
      unfold rieszDecayConstant
      field_simp

/-- Candidate trivial-zero parameters start at the actual first negative even integer. -/
def trivialRieszParameter (k : ℕ) : ℂ := -(2 * (k : ℂ) + 5 / 2)

/-- The unit-multiplicity candidate weight does not assert an established contour residue. -/
def candidateTrivialRieszWeight (A : ℝ) (k : ℕ) : ℂ :=
  Complex.exp (2 * (A : ℂ) * trivialRieszParameter k) *
    boundaryRieszTransform A (trivialRieszParameter k)

/-- Every candidate trivial parameter is uniformly outside the unit disk. -/
theorem trivial_riesz_parameter_norm (k : ℕ) :
    ‖trivialRieszParameter k‖ = 2 * (k : ℝ) + 5 / 2 := by
  have h : trivialRieszParameter k = (-(2 * (k : ℝ) + 5 / 2) : ℝ) := by
    simp [trivialRieszParameter]
  rw [h, Complex.norm_real, Real.norm_eq_abs, abs_neg, abs_of_nonneg (by positivity)]

/-- The candidate weights admit a single radius-independent exponential majorant. -/
theorem candidate_trivial_riesz_weight_norm_le (A : ℝ) (hA : 1 ≤ A) (k : ℕ) :
    ‖candidateTrivialRieszWeight A k‖ ≤
      rieszDecayConstant * Real.exp (-4 * (k : ℝ)) := by
  have hK : 0 ≤ rieszDecayConstant := by
    unfold rieszDecayConstant
    exact div_nonneg (mul_nonneg (by norm_num) riesz_coefficient_mass_nonneg) (by norm_num)
  have hp : 1 ≤ ‖trivialRieszParameter k‖ := by
    rw [trivial_riesz_parameter_norm]
    linarith [Nat.cast_nonneg (α := ℝ) k]
  have hb := boundary_riesz_transform_norm_le A hA (trivialRieszParameter k) hp
  have hbK : ‖boundaryRieszTransform A (trivialRieszParameter k)‖ ≤
      rieszDecayConstant := hb.trans (div_le_self hK (one_le_pow₀ hp))
  have he : ‖Complex.exp (2 * (A : ℂ) * trivialRieszParameter k)‖ =
      Real.exp (-(4 * (k : ℝ) + 5) * A) := by
    rw [Complex.norm_exp]
    congr 1
    simp [trivialRieszParameter]
    ring
  have heB : Real.exp (-(4 * (k : ℝ) + 5) * A) ≤
      Real.exp (-4 * (k : ℝ)) := by
    apply Real.exp_monotone
    nlinarith [Nat.cast_nonneg (α := ℝ) k]
  unfold candidateTrivialRieszWeight
  rw [norm_mul, he]
  exact (mul_le_mul_of_nonneg_left hbK (Real.exp_nonneg _)).trans
    (by simpa only [mul_comm] using mul_le_mul_of_nonneg_left heB hK)

/-- The candidate trivial weights are genuinely absolutely summable, without a contour claim. -/
theorem candidate_trivial_riesz_weights_norm_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun k : ℕ ↦ ‖candidateTrivialRieszWeight A k‖) := by
  have h : Summable (fun k : ℕ ↦ Real.exp (-4 * (k : ℝ))) := by
    simpa only [mul_comm] using
      (Real.summable_exp_nat_mul_iff.mpr (by norm_num : (-4 : ℝ) < 0))
  exact (h.mul_left rieszDecayConstant).of_nonneg_of_le (fun _ ↦ norm_nonneg _)
    (candidate_trivial_riesz_weight_norm_le A hA)

/-- The candidate complex trivial weights have a genuine convergent sum. -/
theorem candidate_trivial_riesz_weights_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (candidateTrivialRieszWeight A) :=
  (candidate_trivial_riesz_weights_norm_summable A hA).of_norm

/-- The canonical quartic is strictly positive on the real axis. -/
theorem source_quartic_real_positive (x : ℝ) :
    0 < (ZeroSideTargets.transformPolynomial (x : ℂ)).re := by
  have h : (ZeroSideTargets.transformPolynomial (x : ℂ)).re =
      (x ^ 2 - 5 * x + 8) ^ 2 + 4 * (x - 25 / 8) ^ 2 + 31 / 16 := by
    simp [ZeroSideTargets.transformPolynomial, pow_succ, Complex.mul_re, Complex.mul_im]
    ring
  rw [h]
  nlinarith [sq_nonneg (x ^ 2 - 5 * x + 8), sq_nonneg (x - 25 / 8)]

/-- The canonical quartic has no real root. -/
theorem source_quartic_real_ne_zero (x : ℝ) :
    ZeroSideTargets.transformPolynomial (x : ℂ) ≠ 0 := by
  intro h
  have hp := source_quartic_real_positive x
  rw [h, Complex.zero_re] at hp
  exact lt_irrefl _ hp

/-- The canonical quartic has no root on the imaginary axis. -/
theorem source_quartic_imaginary_ne_zero (t : ℝ) :
    ZeroSideTargets.transformPolynomial ((t : ℂ) * Complex.I) ≠ 0 := by
  have hr : (ZeroSideTargets.transformPolynomial ((t : ℂ) * Complex.I)).re =
      t ^ 4 - 45 * t ^ 2 + 105 := by
    simp [ZeroSideTargets.transformPolynomial, pow_succ, Complex.mul_re, Complex.mul_im]
    ring
  have hi : (ZeroSideTargets.transformPolynomial ((t : ℂ) * Complex.I)).im =
      t * (10 * t ^ 2 - 105) := by
    simp [ZeroSideTargets.transformPolynomial, pow_succ, Complex.mul_re, Complex.mul_im]
    ring
  intro hz
  rw [hz, Complex.zero_re] at hr
  rw [hz, Complex.zero_im] at hi
  rcases (mul_eq_zero.mp hi.symm) with h0 | h2
  · rw [h0] at hr
    norm_num at hr
  · have ht2 : t ^ 2 = (21 / 2 : ℝ) := by linarith
    rw [show t ^ 4 = (t ^ 2) ^ 2 by ring, ht2] at hr
    norm_num at hr

/-- The actual zeta pole normalized by its proved residue, with the removable value inserted. -/
def zetaPoleRegularPart : ℂ → ℂ :=
  Function.update (fun s : ℂ ↦ (s - 1) * riemannZeta s) 1 1

/-- The native zeta residue and removable-singularity theorem give an analytic regular part. -/
theorem zeta_pole_regular_part_analytic_at_one : AnalyticAt ℂ zetaPoleRegularPart 1 := by
  apply Complex.analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt
  · filter_upwards [self_mem_nhdsWithin] with s hs
    have hsn : s ≠ 1 := by simpa using hs
    have he : zetaPoleRegularPart =ᶠ[nhds s]
        (fun w : ℂ ↦ (w - 1) * riemannZeta w) := by
      filter_upwards [eventually_ne_nhds hsn] with w hw
      simp [zetaPoleRegularPart, Function.update_of_ne hw]
    exact ((differentiableAt_id.sub_const 1).mul
      (differentiableAt_riemannZeta hsn)).congr_of_eventuallyEq he
  · simpa only [zetaPoleRegularPart, continuousAt_update_same] using riemannZeta_residue_one

/-- The actual negative zeta logarithmic derivative has the correct positive pole sign. -/
theorem zeta_negative_log_derivative_pole_expansion :
    ∀ᶠ s : ℂ in nhdsWithin 1 ({1}ᶜ),
      -logDeriv riemannZeta s = (s - 1)⁻¹ - logDeriv zetaPoleRegularPart s := by
  have hG := zeta_pole_regular_part_analytic_at_one
  have hG1 : zetaPoleRegularPart 1 ≠ 0 := by simp [zetaPoleRegularPart]
  have he : riemannZeta =ᶠ[nhdsWithin 1 ({1}ᶜ)]
      (fun w : ℂ ↦ zetaPoleRegularPart w / (w - 1)) := by
    filter_upwards [self_mem_nhdsWithin] with w hw
    have hwn : w ≠ 1 := by simpa using hw
    simp [zetaPoleRegularPart, Function.update_of_ne hwn, sub_ne_zero.mpr hwn]
  filter_upwards [logDeriv_congr_nhdsNE he,
    hG.eventually_analyticAt.filter_mono nhdsWithin_le_nhds,
    hG.continuousAt.eventually_ne hG1 |>.filter_mono nhdsWithin_le_nhds,
    self_mem_nhdsWithin] with s hlog hsA hsG hs
  have hsn : s - 1 ≠ 0 := sub_ne_zero.mpr (by simpa using hs)
  rw [hlog, logDeriv_div s hsG hsn hsA.differentiableAt (by fun_prop)]
  simp [logDeriv_apply]

/-- The right-pole regular factor after removing the explicit double zero. -/
def rieszRightPoleRegularFactor (A : ℝ) (s : ℂ) : ℂ :=
  (s + 1 / 2) ^ 2 *
    ((∑ j ∈ Finset.range 9,
      (rieszCoefficient j : ℂ) * ((j + 9).factorial : ℂ) /
        ((A : ℂ) ^ j * s ^ (j + 10))) / (sourceNormalization A : ℂ))

/-- The explicit right-pole regular factor is analytic at the nonzero pole parameter. -/
theorem riesz_right_pole_regular_factor_analytic (A : ℝ) :
    AnalyticAt ℂ (rieszRightPoleRegularFactor A) (1 / 2) := by
  unfold rieszRightPoleRegularFactor
  simp only [div_eq_mul_inv, mul_inv_rev]
  fun_prop (disch := norm_num)

/-- The actual finite transform has its exact explicit right-pole double factor. -/
theorem boundary_riesz_transform_eq_right_pole_factor (A : ℝ) (s : ℂ) :
    boundaryRieszTransform A s = (s - 1 / 2) ^ 2 * rieszRightPoleRegularFactor A s := by
  rw [boundary_riesz_transform_double_factor]
  unfold rieszRightPoleRegularFactor
  ring

/-- The actual zeta-pole product extends analytically and retains a zero after cancellation. -/
theorem zeta_pole_riesz_product_analytic (A : ℝ) :
    AnalyticAt ℂ (fun s : ℂ ↦ -logDeriv riemannZeta (s + 1 / 2) *
      boundaryRieszTransform A s) (1 / 2) := by
  have hG := zeta_pole_regular_part_analytic_at_one
  have hL : AnalyticAt ℂ (logDeriv zetaPoleRegularPart) 1 := by
    exact hG.deriv.div hG (by simp [zetaPoleRegularPart])
  have hshift : AnalyticAt ℂ (fun s : ℂ ↦ logDeriv zetaPoleRegularPart (s + 1 / 2))
      (1 / 2) := by
    exact hL.comp_of_eq (by fun_prop : AnalyticAt ℂ (fun s : ℂ ↦ s + 1 / 2) (1 / 2))
      (by norm_num)
  have hR := riesz_right_pole_regular_factor_analytic A
  have hJ : AnalyticAt ℂ (fun s : ℂ ↦ rieszRightPoleRegularFactor A s *
      ((s - 1 / 2) - (s - 1 / 2) ^ 2 * logDeriv zetaPoleRegularPart (s + 1 / 2)))
      (1 / 2) := by fun_prop
  apply hJ.congr
  have ht : Tendsto (fun s : ℂ ↦ s + 1 / 2) (nhds (1 / 2)) (nhds 1) := by
    convert (tendsto_id.add_const (1 / 2 : ℂ)) using 1 <;> norm_num
  have he := ht.eventually (eventually_nhdsWithin_iff.mp
    zeta_negative_log_derivative_pole_expansion)
  filter_upwards [he] with s hs
  by_cases hsp : s = 1 / 2
  · subst s
    rw [boundary_riesz_transform_at_right_pole]
    simp
  · have hsn : s + 1 / 2 ≠ 1 := by
      intro h
      apply hsp
      linear_combination h
    have h := hs (by simpa using hsn)
    rw [h, boundary_riesz_transform_eq_right_pole_factor]
    have hn : s - 1 / 2 ≠ 0 := sub_ne_zero.mpr hsp
    have heq : s + 1 / 2 - 1 = s - 1 / 2 := by ring
    rw [heq]
    have hc : (s - 1 / 2) ^ 2 * (s - 1 / 2)⁻¹ = s - 1 / 2 := by
      rw [pow_two, mul_assoc, mul_inv_cancel₀ hn, mul_one]
    linear_combination -(rieszRightPoleRegularFactor A s) * hc

/-- After the zeta pole cancels, the actual product has zero value at the pole parameter. -/
theorem zeta_pole_riesz_product_at_half (A : ℝ) :
    -logDeriv riemannZeta (1 : ℂ) * boundaryRieszTransform A (1 / 2) = 0 := by
  rw [boundary_riesz_transform_at_right_pole, mul_zero]

/-- The local negative logarithmic derivative retains the full native analytic multiplicity. -/
theorem negative_log_derivative_weighted_coefficient_limit (f g : ℂ → ℂ) (p : ℂ)
    (hf : AnalyticAt ℂ f p) (hfinite : analyticOrderAt f p ≠ ⊤)
    (hg : ContinuousAt g p) :
    Tendsto (fun s : ℂ ↦ (s - p) * (-logDeriv f s) * g s)
      (nhdsWithin p ({p}ᶜ))
      (nhds (-(analyticOrderNatAt f p : ℂ) * g p)) := by
  obtain ⟨h, hh, hh0, hfh⟩ := hf.analyticOrderAt_ne_top.mp hfinite
  have hlocal : ∀ᶠ s : ℂ in nhdsWithin p ({p}ᶜ),
      logDeriv f s = (analyticOrderNatAt f p : ℂ) / (s - p) + logDeriv h s := by
    filter_upwards [logDeriv_congr_nhds hfh |>.filter_mono nhdsWithin_le_nhds,
      hh.eventually_analyticAt.filter_mono nhdsWithin_le_nhds,
      hh.continuousAt.eventually_ne hh0 |>.filter_mono nhdsWithin_le_nhds,
      self_mem_nhdsWithin] with s hlog hsA hsH hs
    have hsp : s - p ≠ 0 := sub_ne_zero.mpr (by simpa using hs)
    simp only [smul_eq_mul] at hlog
    rw [hlog, logDeriv_mul (f := fun w : ℂ ↦ (w - p) ^ analyticOrderNatAt f p)
      (g := h) s (pow_ne_zero _ hsp) hsH (by fun_prop) hsA.differentiableAt]
    have hp : logDeriv (fun w : ℂ ↦ (w - p) ^ analyticOrderNatAt f p) s =
        (analyticOrderNatAt f p : ℂ) / (s - p) := by
      rw [show (fun w : ℂ ↦ (w - p) ^ analyticOrderNatAt f p) =
        (fun x : ℂ ↦ x ^ analyticOrderNatAt f p) ∘ (fun w : ℂ ↦ w - p) from rfl,
        logDeriv_comp (by fun_prop) (by fun_prop), logDeriv_pow]
      simp
    rw [hp]
  have hL : ContinuousAt (logDeriv h) p :=
    hh.deriv.continuousAt.div hh.continuousAt hh0
  have ht : Tendsto (fun s : ℂ ↦
      (-(analyticOrderNatAt f p : ℂ) - (s - p) * logDeriv h s) * g s)
      (nhdsWithin p ({p}ᶜ))
      (nhds (-(analyticOrderNatAt f p : ℂ) * g p)) := by
    simpa only [id_eq, sub_self, zero_mul, sub_zero] using
      ((tendsto_const_nhds.sub ((tendsto_id.sub_const p).mul hL.tendsto)).mul
        hg.tendsto).mono_left nhdsWithin_le_nhds
  apply ht.congr'
  filter_upwards [hlocal, self_mem_nhdsWithin] with s hs hsp
  have hn : s - p ≠ 0 := sub_ne_zero.mpr (by simpa using hsp)
  rw [hs]
  field_simp
  ring

/-- The actual zeta Riesz coefficient has sign minus multiplicity and the exact finite weight. -/
theorem zeta_riesz_coefficient_limit (A : ℝ) (ρ : ℂ) (hρ1 : ρ ≠ 1)
    (hρhalf : ρ - 1 / 2 ≠ 0) :
    Tendsto (fun z : ℂ ↦ (z - ρ) * (-logDeriv riemannZeta z) *
      (Complex.exp (2 * (A : ℂ) * (z - 1 / 2)) * boundaryRieszTransform A (z - 1 / 2)))
      (nhdsWithin ρ ({ρ}ᶜ))
      (nhds (-(analyticOrderNatAt riemannZeta ρ : ℂ) *
        (Complex.exp (2 * (A : ℂ) * (ρ - 1 / 2)) *
          boundaryRieszTransform A (ρ - 1 / 2)))) := by
  have hw := (boundary_riesz_transform_analytic_at A (ρ - 1 / 2) hρhalf).comp_of_eq
    (by fun_prop : AnalyticAt ℂ (fun z : ℂ ↦ z - 1 / 2) ρ) rfl
  apply negative_log_derivative_weighted_coefficient_limit
  · exact Zeta23.riemannZeta_analyticOnNhd_compl_one ρ hρ1
  · exact Zeta23.analyticOrderAt_riemannZeta_ne_top hρ1
  · have ha : AnalyticAt ℂ (fun z : ℂ ↦
        Complex.exp (2 * (A : ℂ) * (z - 1 / 2)) *
          boundaryRieszTransform A (z - 1 / 2)) ρ := by fun_prop
    exact ha.continuousAt

/-- The candidate trivial sector has a uniform bound without asserting residue identification. -/
theorem candidate_trivial_riesz_sum_norm_le (A : ℝ) (hA : 1 ≤ A) :
    ‖∑' k : ℕ, candidateTrivialRieszWeight A k‖ ≤
      rieszDecayConstant / (1 - Real.exp (-4)) := by
  have he : Summable (fun k : ℕ ↦ Real.exp (-4 * (k : ℝ))) := by
    simpa only [mul_comm] using
      (Real.summable_exp_nat_mul_iff.mpr (by norm_num : (-4 : ℝ) < 0))
  have hvalue : (∑' k : ℕ, rieszDecayConstant * Real.exp (-4 * (k : ℝ))) =
      rieszDecayConstant / (1 - Real.exp (-4)) := by
    rw [tsum_mul_left]
    simp_rw [mul_comm (-4 : ℝ), Real.exp_nat_mul]
    rw [tsum_geometric_of_norm_lt_one (by
      rw [Real.norm_of_nonneg (Real.exp_nonneg _), Real.exp_lt_one_iff]
      norm_num)]
    ring
  calc
    _ ≤ ∑' k : ℕ, ‖candidateTrivialRieszWeight A k‖ := norm_tsum_le_tsum_norm
      (candidate_trivial_riesz_weights_norm_summable A hA)
    _ ≤ ∑' k : ℕ, rieszDecayConstant * Real.exp (-4 * (k : ℝ)) :=
      Summable.tsum_le_tsum (candidate_trivial_riesz_weight_norm_le A hA)
        (candidate_trivial_riesz_weights_norm_summable A hA) (he.mul_left rieszDecayConstant)
    _ = _ := hvalue

private def sourceQuarticPolynomial : Polynomial ℂ :=
  Polynomial.X ^ 4 - Polynomial.C 10 * Polynomial.X ^ 3 +
    Polynomial.C 45 * Polynomial.X ^ 2 - Polynomial.C 105 * Polynomial.X + Polynomial.C 105

/-- The canonical quartic has a genuine complex root by the fundamental theorem of algebra. -/
theorem source_quartic_has_root : ∃ z : ℂ, ZeroSideTargets.transformPolynomial z = 0 := by
  have hd : sourceQuarticPolynomial.degree = (4 : WithBot ℕ) := by
    unfold sourceQuarticPolynomial
    compute_degree!
  obtain ⟨z, hz⟩ := Complex.exists_root (f := sourceQuarticPolynomial)
    (by rw [hd]; norm_num)
  refine ⟨z, ?_⟩
  simpa [Polynomial.IsRoot, sourceQuarticPolynomial, ZeroSideTargets.transformPolynomial] using hz

/-- Every quartic root lies off the imaginary axis. -/
theorem source_quartic_root_re_ne_zero (z : ℂ)
    (hz : ZeroSideTargets.transformPolynomial z = 0) : z.re ≠ 0 := by
  intro hre
  have he : z = (z.im : ℂ) * Complex.I := by
    apply Complex.ext <;> simp [hre]
  rw [he] at hz
  exact source_quartic_imaginary_ne_zero z.im hz

/-- Every quartic root lies off the real axis. -/
theorem source_quartic_root_im_ne_zero (z : ℂ)
    (hz : ZeroSideTargets.transformPolynomial z = 0) : z.im ≠ 0 := by
  intro him
  have he : z = (z.re : ℂ) := by
    apply Complex.ext <;> simp [him]
  rw [he] at hz
  exact source_quartic_real_ne_zero z.re hz

/-- The finite Riesz transform has genuine off-axis zeros unrelated to any asserted zeta zero. -/
theorem boundary_riesz_transform_has_off_axis_zero :
    ∃ z : ℂ, z.re ≠ 0 ∧ z.im ≠ 0 ∧ z ^ 2 ≠ 1 / 4 ∧
      boundaryRieszTransform 1 z = 0 := by
  obtain ⟨z, hz⟩ := source_quartic_has_root
  have hr := source_quartic_root_re_ne_zero z hz
  have hi := source_quartic_root_im_ne_zero z hz
  have hn : z ≠ 0 := by intro h; rw [h, Complex.zero_re] at hr; exact hr rfl
  have hp : z ^ 2 ≠ 1 / 4 := by
    intro hp
    have hf : (z - 1 / 2) * (z + 1 / 2) = 0 := by linear_combination hp
    rcases mul_eq_zero.mp hf with h | h
    · have he : z = 1 / 2 := sub_eq_zero.mp h
      rw [he] at hi
      norm_num at hi
    · have he : z = -1 / 2 := by linear_combination h
      rw [he] at hi
      norm_num at hi
  refine ⟨z, hr, hi, hp, ?_⟩
  rw [boundary_riesz_transform_eq_source_polynomial 1 (by norm_num) z hn]
  norm_num only [Complex.ofReal_one, one_mul, hz, zero_pow, mul_zero, zero_div]

end

end FormalResearch.RiemannHypothesis.RieszResidueAudit
```
