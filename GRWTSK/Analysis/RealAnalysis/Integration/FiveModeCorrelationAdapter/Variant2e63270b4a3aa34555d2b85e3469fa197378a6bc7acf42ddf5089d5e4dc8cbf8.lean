-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ModeSupportOverlap.Variant70c7a03c8c946de074b426760baf45a5724fa8ab5379a354ce17108676ae0667","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"70c7a03c8c946de074b426760baf45a5724fa8ab5379a354ce17108676ae0667","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ModeSupportOverlap.Variant70c7a03c8c946de074b426760baf45a5724fa8ab5379a354ce17108676ae0667","mathematical_subject":"Analysis.Integration","original_sha256":"70c7a03c8c946de074b426760baf45a5724fa8ab5379a354ce17108676ae0667","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/finite-stieltjes-independent-review/overlay/scratch/common_mean_20261004/FiveModeCorrelationAdapter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.common_mean_20261004.FiveModeTransport
import scratch.common_mean_20261004.FiveModeCorrelations

/-!
Actual Lebesgue correlation adapter for the unchanged closed-support Legendre modes.
Originating mathematical direction, theorem selection, corrections and evaluation:
grwtsk contributors. Scratch formalization assistance: OpenAI Codex.
The positive polynomial branch is restricted to 0 ≤ h ≤ 2. Touching endpoints
remain included in the supports and contribute zero by Lebesgue integration.
No explicit formula, arithmetic estimate or RH conclusion is asserted.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ModeSupportOverlap.Variant70c7a03c8c946de074b426760baf45a5724fa8ab5379a354ce17108676ae0667

set_option autoImplicit false
set_option maxHeartbeats 8000000
noncomputable section
namespace CommonMeanScratch
open MeasureTheory Set
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

/-- The exact overlap of the two retained closed mode supports. -/
theorem mode_support_overlap (A h : ℝ) (hA : 0 < A) (hh : 0 ≤ h) :
    Icc (-A) A ∩ (fun x : ℝ => x-A*h) ⁻¹' Icc (-A) A =
      Icc (A*(h-1)) A := by
  ext x
  change (-A ≤ x ∧ x ≤ A) ∧ (-A ≤ x-A*h ∧ x-A*h ≤ A) ↔
    A*(h-1) ≤ x ∧ x ≤ A
  constructor
  · intro hx
    exact ⟨by nlinarith [hx.2.1], hx.1.2⟩
  · intro hx
    have hah : 0 ≤ A*h := mul_nonneg hA.le hh
    exact ⟨⟨by nlinarith [hx.1], hx.2⟩,
      ⟨by nlinarith [hx.1], by nlinarith [hx.2]⟩⟩

/-- Product indicator algebra retains the touching endpoints exactly. -/
theorem mode_product_positive_indicator (A h : ℝ) (i j : Fin 5)
    (hA : 0 < A) (hh : 0 ≤ h) :
    (fun x => normalizedMode A i x * normalizedMode A j (x-A*h)) =
      (Icc (A*(h-1)) A).indicator (fun x =>
        (Real.sqrt (modeWeight i / (2*A)) * Real.sqrt (modeWeight j / (2*A))) *
          (mode i (x/A) * mode j ((x-A*h)/A))) := by
  classical
  let s := Icc (-A) A ∩ (fun x : ℝ => x-A*h) ⁻¹' Icc (-A) A
  have heq : (fun x => normalizedMode A i x * normalizedMode A j (x-A*h)) =
      s.indicator (fun x =>
        (Real.sqrt (modeWeight i / (2*A)) * Real.sqrt (modeWeight j / (2*A))) *
          (mode i (x/A) * mode j ((x-A*h)/A))) := by
    funext x
    simp only [normalizedMode, Set.indicator]
    by_cases hx : x ∈ Icc (-A) A
    · by_cases hy : x-A*h ∈ Icc (-A) A
      · have hsx : x ∈ s := ⟨hx, hy⟩
        rw [if_pos hx, if_pos hy, if_pos hsx]
        ring
      · have hsx : x ∉ s := fun hx => hy hx.2
        rw [if_pos hx, if_neg hy, if_neg hsx, mul_zero]
    · have hsx : x ∉ s := fun hs => hx hs.1
      rw [if_neg hx, if_neg hsx, zero_mul]
  rw [heq]
  exact congrArg (fun s : Set ℝ => s.indicator _) (mode_support_overlap A h hA hh)

/-- Exact angular-free spatial dilation of the raw branch integral. -/
theorem raw_mode_dilation (A h : ℝ) (i j : Fin 5) (hA : 0 < A) :
    (∫ x in (A*(h-1))..A, mode i (x/A) * mode j ((x-A*h)/A)) =
      A * rawCorrelation i j h := by
  have heq : (fun x : ℝ => mode i (x/A) * mode j ((x-A*h)/A)) =
      (fun x => mode i (x/A) * mode j (x/A-h)) := by
    funext x
    have hs : (x-A*h)/A = x/A-h := by field_simp
    rw [hs]
  rw [heq, intervalIntegral.integral_comp_div (fun y => mode i y * mode j (y-h))
    hA.ne']
  have hl : A*(h-1)/A = h-1 := by field_simp
  simp only [hl, div_self hA.ne', smul_eq_mul, rawCorrelation]

/-- The original normalization factors combine to the archived Legendre coefficient. -/
theorem mode_correlation_scale (A : ℝ) (i j : Fin 5) (hA : 0 < A) :
    (Real.sqrt (modeWeight i / (2*A)) * Real.sqrt (modeWeight j / (2*A))) * A =
      Real.sqrt (modeWeight i * modeWeight j) / 2 := by
  have hi : 0 ≤ modeWeight i / (2*A) := div_nonneg (modeWeight_pos i).le (by positivity)
  have hj : 0 ≤ modeWeight j / (2*A) := div_nonneg (modeWeight_pos j).le (by positivity)
  have hs : ((Real.sqrt (modeWeight i / (2*A)) *
      Real.sqrt (modeWeight j / (2*A))) * A)^2 = modeWeight i * modeWeight j / 4 := by
    rw [mul_pow, mul_pow, Real.sq_sqrt hi, Real.sq_sqrt hj]
    field_simp
    ring
  have ht : (Real.sqrt (modeWeight i * modeWeight j) / 2)^2 =
      modeWeight i * modeWeight j / 4 := by
    rw [div_pow, Real.sq_sqrt (mul_nonneg (modeWeight_pos i).le (modeWeight_pos j).le)]
    norm_num
  have hp : 0 ≤ (Real.sqrt (modeWeight i / (2*A)) *
      Real.sqrt (modeWeight j / (2*A))) * A := by positivity
  have hq : 0 ≤ Real.sqrt (modeWeight i * modeWeight j) / 2 := by positivity
  nlinarith

/-- Actual normalized-mode correlation equals the positive branch on its full real domain. -/
theorem modeCorrelation_positive_branch (A h : ℝ) (i j : Fin 5)
    (hA : 0 < A) (hzero : 0 ≤ h) (htwo : h ≤ 2) :
    modeCorrelation A i j (A*h) =
      Real.sqrt (modeWeight i * modeWeight j) / 2 * rawCorrelation i j h := by
  unfold modeCorrelation
  rw [mode_product_positive_indicator A h i j hA hzero,
    zeroExtension_integral _ _ _ (by nlinarith : A*(h-1) ≤ A),
    intervalIntegral.integral_const_mul, raw_mode_dilation A h i j hA]
  rw [← mul_assoc, mode_correlation_scale A i j hA]

/-- Each closed-support even mode retains exact reflection symmetry. -/
theorem normalizedMode_even (A x : ℝ) (i : Fin 5) :
    normalizedMode A i (-x) = normalizedMode A i x := by
  by_cases hx : x ∈ Icc (-A) A
  · have hn : -x ∈ Icc (-A) A := ⟨by linarith [hx.2], by linarith [hx.1]⟩
    simp only [normalizedMode, indicator_of_mem hx, indicator_of_mem hn, neg_div, mode_even]
  · have hn : -x ∉ Icc (-A) A := by
      intro hn
      exact hx ⟨by linarith [hn.2], by linarith [hn.1]⟩
    simp only [normalizedMode, indicator_of_notMem hx, indicator_of_notMem hn]

/-- Reflection proves evenness of every actual cross-correlation. -/
theorem modeCorrelation_even (A t : ℝ) (i j : Fin 5) :
    modeCorrelation A i j (-t) = modeCorrelation A i j t := by
  unfold modeCorrelation
  have h := integral_neg_eq_self (fun x : ℝ =>
    normalizedMode A i x * normalizedMode A j (x- -t)) (μ := volume)
  have heq : (fun x : ℝ => normalizedMode A i (-x) * normalizedMode A j (-x- -t)) =
      (fun x => normalizedMode A i x * normalizedMode A j (x-t)) := by
    funext x
    rw [normalizedMode_even, show -x- -t = -(x-t) by ring, normalizedMode_even]
  rw [heq] at h
  exact h.symm

/-- Translation and reflection give pair symmetry without replacing the signed form. -/
theorem modeCorrelation_symm (A t : ℝ) (i j : Fin 5) :
    modeCorrelation A i j t = modeCorrelation A j i t := by
  have h := integral_sub_right_eq_self (μ := volume) (fun x : ℝ =>
    normalizedMode A i x * normalizedMode A j (x- -t)) t
  have hs : modeCorrelation A j i t = modeCorrelation A i j (-t) := by
    simpa only [modeCorrelation, sub_neg_eq_add, sub_add_cancel, mul_comm] using h
  rw [modeCorrelation_even] at hs
  exact hs.symm

/-- Exact orthonormal origin values for the actual normalized basis. -/
theorem modeCorrelation_origin (A : ℝ) (i j : Fin 5) (hA : 0 < A) :
    modeCorrelation A i j 0 = if i = j then 1 else 0 := by
  have hb := modeCorrelation_positive_branch A 0 i j hA (by norm_num) (by norm_num)
  simp only [mul_zero] at hb
  rw [hb, rawCorrelation_origin]
  split_ifs with hij
  · subst j
    rw [Real.sqrt_mul (modeWeight_pos i).le, ← pow_two, Real.sq_sqrt (modeWeight_pos i).le]
    field_simp [(modeWeight_pos i).ne']
  · ring

/-- Closed supports touch at the upper separation; the singleton contributes zero. -/
theorem modeCorrelation_upper_endpoint (A : ℝ) (i j : Fin 5) (hA : 0 < A) :
    modeCorrelation A i j (2*A) = 0 := by
  have hb := modeCorrelation_positive_branch A 2 i j hA (by norm_num) (by norm_num)
  rw [rawCorrelation_endpoint, mul_zero] at hb
  simpa only [mul_comm] using hb

/-- The reflected touching endpoint also contributes zero. -/
theorem modeCorrelation_lower_endpoint (A : ℝ) (i j : Fin 5) (hA : 0 < A) :
    modeCorrelation A i j (-(2*A)) = 0 := by
  rw [modeCorrelation_even, modeCorrelation_upper_endpoint A i j hA]

/-- Individual modes vanish strictly outside the closed interval, preserving endpoint values. -/
theorem normalizedMode_zero_of_abs_gt (A x : ℝ) (i : Fin 5) (hx : A < |x|) :
    normalizedMode A i x = 0 := by
  unfold normalizedMode
  apply indicator_of_notMem
  intro hm
  exact (not_le_of_gt hx) (abs_le.mpr hm)

/-- Actual cross-correlations vanish outside and at both support endpoints. -/
theorem modeCorrelation_support (A t : ℝ) (i j : Fin 5) (hA : 0 < A)
    (ht : 2*A ≤ |t|) : modeCorrelation A i j t = 0 := by
  by_cases hs : 2*A < |t|
  · unfold modeCorrelation
    apply integral_eq_zero_of_ae
    filter_upwards [] with x
    change normalizedMode A i x * normalizedMode A j (x-t) = 0
    by_cases hx : A < |x|
    · rw [normalizedMode_zero_of_abs_gt A x i hx, zero_mul]
    · have hy : A < |x-t| := by
        have hbound : |t| ≤ |x| + |x-t| := by
          calc
            |t| = |x-(x-t)| := by congr 1; ring
            _ ≤ |x| + |x-t| := abs_sub _ _
        linarith [le_of_not_gt hx]
      rw [normalizedMode_zero_of_abs_gt A (x-t) j hy, mul_zero]
  · have he : |t| = 2*A := le_antisymm (le_of_not_gt hs) ht
    rcases le_total t 0 with hn | hp
    · have ht' : t = -(2*A) := by rw [abs_of_nonpos hn] at he; linarith
      rw [ht', modeCorrelation_lower_endpoint A i j hA]
    · have ht' : t = 2*A := by rw [abs_of_nonneg hp] at he; linarith
      rw [ht', modeCorrelation_upper_endpoint A i j hA]

end CommonMeanScratch
