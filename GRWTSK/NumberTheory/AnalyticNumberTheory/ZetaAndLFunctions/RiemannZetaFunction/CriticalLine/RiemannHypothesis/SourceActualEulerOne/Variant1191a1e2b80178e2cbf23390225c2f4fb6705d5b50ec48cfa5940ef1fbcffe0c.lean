-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PeriodicB1.Variant5f3e5075bd59ca92df1ead90bced97db598e3183eb4c1295dab2e77bb3961970","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f3e5075bd59ca92df1ead90bced97db598e3183eb4c1295dab2e77bb3961970","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PeriodicB1.Variant5f3e5075bd59ca92df1ead90bced97db598e3183eb4c1295dab2e77bb3961970","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"5f3e5075bd59ca92df1ead90bced97db598e3183eb4c1295dab2e77bb3961970","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/xi-analysis/low-euler-maclaurin/native/attempt02/SourceActualEulerOne.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Zeta23.FromPNTPlus.ZetaBounds
import Zeta23.Statement.SeamClosed
import Mathlib.Tactic

/-!
Literal actual N=1 Euler source and periodic Bernoulli endpoint data.
Direction: grwtsk contributors. Source matching and construction: OpenAI Codex.
The second-order improper integration by parts is a separate paper result.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PeriodicB1.Variant5f3e5075bd59ca92df1ead90bced97db598e3183eb4c1295dab2e77bb3961970

set_option autoImplicit false

namespace RH16ActualEulerOne

open MeasureTheory Set

noncomputable section

def periodicB1 (x : ℝ) : ℝ := Int.fract x - 1 / 2

def periodicB2 (x : ℝ) : ℝ :=
  (Int.fract x) ^ 2 - Int.fract x + 1 / 6

theorem sourceFloorWeight_eq_neg_periodicB1 (x : ℝ) :
    (⌊x⌋ : ℝ) + 1 / 2 - x = -periodicB1 x := by
  unfold periodicB1 Int.fract
  ring

theorem periodicB2_bounds (x : ℝ) :
    -(1 / 12 : ℝ) ≤ periodicB2 x ∧ periodicB2 x ≤ 1 / 6 := by
  have h0 := Int.fract_nonneg x
  have h1 := (Int.fract_lt_one x).le
  have hm := mul_nonneg h0 (show 0 ≤ 1 - Int.fract x by linarith)
  unfold periodicB2
  constructor
  · nlinarith [sq_nonneg (Int.fract x - 1 / 2)]
  · nlinarith

theorem periodicB2_abs_le (x : ℝ) : |periodicB2 x| ≤ 1 / 6 := by
  obtain ⟨hl, hu⟩ := periodicB2_bounds x
  exact abs_le.mpr ⟨by linarith, hu⟩

theorem periodicB2_at_integer (n : ℤ) :
    periodicB2 n = 1 / 6 := by
  simp [periodicB2]

theorem actual_zeta_euler_one {s : ℂ} (hσ : 0 < s.re) (hs : s ≠ 1) :
    riemannZeta s = 1 / (s - 1) + 1 / 2 - s *
      ∫ x in Ioi (1 : ℝ), (periodicB1 x : ℂ) *
        (x : ℂ) ^ (-(s + 1)) := by
  have hs0 : s ≠ 0 := by
    intro he
    simp only [he, Complex.zero_re, lt_self_iff_false] at hσ
  have hζ := Zeta0EqZeta (N := 1) (by norm_num) hσ hs
  have hi :
      (∫ x in Ioi (1 : ℝ), ((⌊x⌋ : ℝ) + 1 / 2 - x : ℂ) *
        (x : ℂ) ^ (-(s + 1))) =
      -(∫ x in Ioi (1 : ℝ), (periodicB1 x : ℂ) *
        (x : ℂ) ^ (-(s + 1))) := by
    rw [← integral_neg]
    apply integral_congr_ae
    exact Filter.Eventually.of_forall fun x => by
      rw [sourceFloorWeight_eq_neg_periodicB1]
      simp
  rw [← hζ, riemannZeta0_apply]
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, Nat.cast_zero,
    Nat.cast_one, Complex.zero_cpow hs0, div_zero, zero_add,
    Complex.one_cpow, div_one, one_mul]
  rw [hi]
  have hs' : 1 - s ≠ 0 := sub_ne_zero.mpr hs.symm
  field_simp
  ring

end

end RH16ActualEulerOne
