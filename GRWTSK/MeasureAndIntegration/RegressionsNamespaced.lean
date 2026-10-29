-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NegativeAxisCounterexample.Variantd6a1e5ce8af856c3e1c33e0878222fcc0efb1944de5208ed7eb9f59f4a9cf23a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d6a1e5ce8af856c3e1c33e0878222fcc0efb1944de5208ed7eb9f59f4a9cf23a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.NegativeAxisCounterexample.Variantd6a1e5ce8af856c3e1c33e0878222fcc0efb1944de5208ed7eb9f59f4a9cf23a","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"d6a1e5ce8af856c3e1c33e0878222fcc0efb1944de5208ed7eb9f59f4a9cf23a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/inner-abel-20261005/Regressions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import CenteredAbel

/-!
Exact endpoint regressions against the generic CenteredAbel module.
grwtsk contributors selected the mathematical target; OpenAI Codex constructed
these exact endpoint regressions. These tests do not certify the source adapter.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NegativeAxisCounterexample.Variantd6a1e5ce8af856c3e1c33e0878222fcc0efb1944de5208ed7eb9f59f4a9cf23a

set_option autoImplicit false
noncomputable section
namespace CenteredAbelRegressions
open MeasureTheory Set Finset
open CenteredAbelCandidate

/-- The natural-floor convention fails to be nonnegative on the negative axis. -/
theorem negative_axis_counterexample : fracPlus (-1 : ℝ) = -1 := by
  have hf : ⌊(-1 : ℝ)⌋₊ = 0 := Nat.floor_eq_zero.mpr (by norm_num)
  simp [fracPlus, hf]

/-- The collapsed interval retains exactly its initial closed-sum atom. -/
theorem lower_endpoint_regression (g : ℝ → ℝ) :
    (∑ n ∈ Finset.Icc 1 ⌊(1 : ℝ)⌋₊, g n) = g 1 := by simp

/-- Constant functions force both generic endpoint contributions to remain visible. -/
theorem constant_uncentered_regression {Y : ℝ} (hY : 1 ≤ Y) :
    (∑ _n ∈ Finset.Icc 1 ⌊Y⌋₊, (1 : ℝ)) =
      (∫ _y in (1 : ℝ)..Y, (1 : ℝ)) + 1 - fracPlus Y := by
  have h := sum_eq_integral_add_frac
    (show ContDiff ℝ 1 (fun _ : ℝ => (1 : ℝ)) from contDiff_const) hY
  simpa only [deriv_const, mul_zero, intervalIntegral.integral_zero,
    add_zero, mul_one] using h

/-- Centering retains half of the initial atom and half minus frac at the terminal atom. -/
theorem constant_centered_regression {Y : ℝ} (hY : 1 ≤ Y) :
    (∑ _n ∈ Finset.Icc 1 ⌊Y⌋₊, (1 : ℝ)) =
      (∫ _y in (1 : ℝ)..Y, (1 : ℝ)) + (1 / 2 : ℝ) +
        ((1 / 2 : ℝ) - fracPlus Y) := by
  have h := sum_eq_integral_add_centered
    (show ContDiff ℝ 1 (fun _ : ℝ => (1 : ℝ)) from contDiff_const) hY
  simpa only [deriv_const, mul_zero, intervalIntegral.integral_zero,
    add_zero, mul_one] using h

/-- A natural terminal argument has zero fractional part but keeps its terminal summand. -/
theorem integer_terminal_regression (N : ℕ) (hN : 1 ≤ N) :
    (∑ n ∈ Finset.Icc 1 N, ((n : ℝ) - 1)) =
      (∫ y in (1 : ℝ)..(N : ℝ), y - 1) +
      (∫ y in (1 : ℝ)..(N : ℝ), fracPlus y * deriv (fun t : ℝ => t - 1) y) := by
  have hg : ContDiff ℝ 1 (fun y : ℝ => y - 1) := contDiff_id.sub contDiff_const
  have h := sum_eq_integral_add_frac hg (show (1 : ℝ) ≤ N by exact_mod_cast hN)
  simpa only [Nat.floor_natCast, fracPlus, sub_self, mul_zero,
    add_zero, sub_zero, zero_mul] using h

/-- The corrected noninteger identity has the negative terminal contribution. -/
theorem linear_noninteger_regression :
    (∑ n ∈ Finset.Icc 1 ⌊(3 / 2 : ℝ)⌋₊, ((n : ℝ) - 1)) =
      (∫ y in (1 : ℝ)..(3 / 2 : ℝ), y - 1) +
      (∫ y in (1 : ℝ)..(3 / 2 : ℝ), fracPlus y * deriv (fun t : ℝ => t - 1) y) -
      (1 / 4 : ℝ) := by
  have hg : ContDiff ℝ 1 (fun y : ℝ => y - 1) := contDiff_id.sub contDiff_const
  have hc := sum_eq_integral_add_frac hg (by norm_num : (1 : ℝ) ≤ 3 / 2)
  have hf : ⌊(3 / 2 : ℝ)⌋₊ = 1 :=
    (Nat.floor_eq_iff (by norm_num)).mpr ⟨by norm_num, by norm_num⟩
  have hfrac : fracPlus (3 / 2 : ℝ) = 1 / 2 := by norm_num [fracPlus, hf]
  rw [hfrac] at hc
  norm_num only [sub_self, add_zero] at hc
  convert hc using 1

/-- The submitted positive-terminal convention is false already for a linear test. -/
theorem positive_terminal_formula_false :
    ¬ ((∑ n ∈ Finset.Icc 1 ⌊(3 / 2 : ℝ)⌋₊, ((n : ℝ) - 1)) =
      (∫ y in (1 : ℝ)..(3 / 2 : ℝ), y - 1) +
      (∫ y in (1 : ℝ)..(3 / 2 : ℝ), fracPlus y * deriv (fun t : ℝ => t - 1) y) +
      ((1 : ℝ) - 1) + fracPlus (3 / 2 : ℝ) * ((3 / 2 : ℝ) - 1)) := by
  have hg : ContDiff ℝ 1 (fun y : ℝ => y - 1) := contDiff_id.sub contDiff_const
  have hc := sum_eq_integral_add_frac hg (by norm_num : (1 : ℝ) ≤ 3 / 2)
  have hf : ⌊(3 / 2 : ℝ)⌋₊ = 1 :=
    (Nat.floor_eq_iff (by norm_num)).mpr ⟨by norm_num, by norm_num⟩
  have hfrac : fracPlus (3 / 2 : ℝ) = 1 / 2 := by norm_num [fracPlus, hf]
  intro hw
  rw [hfrac] at hc hw
  linarith

/-- For a polynomial with both endpoints zero the centered identity loses no boundary terms. -/
theorem zero_endpoint_polynomial_regression {Y : ℝ} (hY : 1 ≤ Y) :
    (∑ n ∈ Finset.Icc 1 ⌊Y⌋₊, ((n : ℝ) - 1) * (Y - n)) =
      (∫ y in (1 : ℝ)..Y, (y - 1) * (Y - y)) +
      (∫ y in (1 : ℝ)..Y,
        (fracPlus y - 1 / 2) * deriv (fun t : ℝ => (t - 1) * (Y - t)) y) := by
  have hg : ContDiff ℝ 1 (fun y : ℝ => (y - 1) * (Y - y)) :=
    (contDiff_id.sub contDiff_const).mul (contDiff_const.sub contDiff_id)
  have hc := sum_eq_integral_add_centered hg hY
  simpa only [sub_self, zero_mul, mul_zero, add_zero] using hc

/-- The positive-index closed sum equals the range representation with its explicit zero branch. -/
theorem sum_Icc_eq_range_zero_branch (g : ℝ → ℝ) (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, g n) =
      ∑ n ∈ Finset.range (N + 1), if n = 0 then 0 else g n := by
  have hset : Finset.range (N + 1) = Finset.Icc 0 N := by
    ext n
    simp only [Finset.mem_range, Finset.mem_Icc]
    omega
  rw [hset]
  symm
  calc
    _ = ∑ n ∈ Finset.Icc 1 N, if n = 0 then 0 else g n := by
      symm
      apply Finset.sum_subset
      · intro n hn
        exact Finset.mem_Icc.mpr ⟨Nat.zero_le _, (Finset.mem_Icc.mp hn).2⟩
      · intro n hn hnnot
        have hn0 : n = 0 := by
          simp only [Finset.mem_Icc] at hn hnnot
          omega
        subst n
        simp
    _ = _ := by
      apply Finset.sum_congr rfl
      intro n hn
      have hn0 : n ≠ 0 := by
        have := (Finset.mem_Icc.mp hn).1
        omega
      simp [hn0]

#print axioms negative_axis_counterexample
#print axioms lower_endpoint_regression
#print axioms constant_uncentered_regression
#print axioms constant_centered_regression
#print axioms integer_terminal_regression
#print axioms linear_noninteger_regression
#print axioms positive_terminal_formula_false
#print axioms zero_endpoint_polynomial_regression
#print axioms sum_Icc_eq_range_zero_branch
end CenteredAbelRegressions
