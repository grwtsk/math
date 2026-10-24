# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCompletedHorizontalBudget.Variante445965e6091d594a0824e2e6ce9430c6b75c5674287abe91339e416879045d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e388f0e276d144188fe2fdf171b5ac132766174a` · SHA-256 `c9e0b901d50c6e5aa039678a94461bc05238a7b184ea25f6f94d6469676721a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCompletedLogDerivGoodLine.Variant0218808d689bffd71d0be1afd518a8af867b6f48d0e6905f4deac8c8b4d71a44","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0218808d689bffd71d0be1afd518a8af867b6f48d0e6905f4deac8c8b4d71a44","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualCompletedLogDerivGoodLine.Variant0218808d689bffd71d0be1afd518a8af867b6f48d0e6905f4deac8c8b4d71a44","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"0218808d689bffd71d0be1afd518a8af867b6f48d0e6905f4deac8c8b4d71a44","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-refocus-20261006/dependencies/owner-source-captures/ActualCompletedHorizontalBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualBumpHorizontalStripBudget
import Zeta23.WeilEF.Horizontal

/-!
Actual source horizontal-side estimates with explicit moving-scale dependence.
The completed logarithmic derivative retains its genuine gamma and zeta terms;
reflection covers the left half of the strip. Heights come from the authentic
package good-height theorem, with all nontrivial-zero residues left untouched.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCompletedLogDerivGoodLine.Variant0218808d689bffd71d0be1afd518a8af867b6f48d0e6905f4deac8c8b4d71a44

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualCompletedHorizontalBudget
open MeasureTheory Set Complex Topology Filter
open Zeta23 Zeta23.WeilEF
open SourcePairing ActualCorrelationOppositeHalf ActualBumpHorizontalStripBudget
noncomputable section

/-- Good horizontal lines control the completed derivative, including its gamma term. -/
theorem actual_completed_logDeriv_good_line {Cg : ℝ} (hCg : 0 < Cg) :
    ∃ K : ℝ, 0 < K ∧ ∀ (j : ℕ) (R c x y : ℝ),
      7 ≤ j → (j : ℝ) ≤ R → R ≤ (j : ℝ)+1 →
      (∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1/2 ≤ s.re → s.re ≤ 2 →
        riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤ Cg*(Real.log ((j : ℝ)+3))^2) →
      1 < c → c ≤ 3/2 → (y = R ∨ y = -R) → 1 - c ≤ x → x ≤ c →
      ‖logDeriv completedRiemannZeta ((x : ℂ)+y*I)‖ ≤
        K*(Real.log ((j : ℝ)+3))^2 := by
  obtain ⟨Cψ, hCψ, hψ⟩ := digamma_growth_strip
  have hlogπ : 0 < Real.log Real.pi := Real.log_pos (by linarith [Real.pi_gt_three])
  set K : ℝ := Real.log Real.pi / 2 + Cψ + Cg with hKdef
  have hK0 : 0 < K := by positivity
  refine ⟨K, hK0, ?_⟩
  intro j R c x y hj hR1 hR2 hgood hc1 hc2 hy hx1 hx2
  have hj7 : (7 : ℝ) ≤ j := by exact_mod_cast hj
  set Lg : ℝ := Real.log ((j : ℝ)+3) with hLgdef
  have hLg1 : 1 ≤ Lg := by
    rw [hLgdef, ← Real.log_exp 1]
    refine Real.log_le_log (Real.exp_pos 1) ?_
    have := Real.exp_one_lt_d9
    linarith
  -- ‖Λ'/Λ(s)‖ ≤ K log²(j+10) on the good horizontals, re s ∈ [1/2, 2]
  have hright : ∀ (s : ℂ), (s.im = R ∨ s.im = -R) → 1/2 ≤ s.re → s.re ≤ 2 →
      ‖logDeriv completedRiemannZeta s‖ ≤ K * (Lg) ^ 2 := by
    intro s hsim hre1 hre2
    have hj0 : (0:ℝ) ≤ j := Nat.cast_nonneg j
    have hRj0 : 0 ≤ R := by linarith
    have him7 : 7 ≤ |s.im| := by
      rcases hsim with h | h
      · rw [h, abs_of_nonneg hRj0]; linarith
      · rw [h, abs_neg, abs_of_nonneg hRj0]; linarith
    have hs0 : s ≠ 0 := fun h => by rw [h] at him7; norm_num at him7
    have hs1 : s ≠ 1 := fun h => by rw [h] at him7; norm_num at him7
    obtain ⟨hζ, hLζ⟩ := hgood s hsim hre1 hre2
    have hre0 : 0 < s.re := by linarith
    rw [logDeriv_completedZeta s hs1 hζ hre0, logDeriv_Gammaℝ hre0]
    have hψs : ‖Complex.digamma (s / 2)‖ ≤ Cψ * Real.log (2 + |(s / 2).im|) :=
      hψ (s / 2) (by simp; linarith) (by simp; linarith)
    have hlog2 : Real.log (2 + |(s / 2).im|) ≤ Lg := by
      have him8 : |s.im| ≤ (j : ℝ) + 1 := by
        rcases hsim with h | h
        · rw [h, abs_of_nonneg hRj0]; exact hR2
        · rw [h, abs_neg, abs_of_nonneg hRj0]; exact hR2
      have e : |(s / 2).im| = |s.im| / 2 := by simp [abs_div]
      rw [e, hLgdef]
      exact Real.log_le_log (by positivity) (by linarith)
    have hLg2 : Lg ≤ Lg ^ 2 := by nlinarith [hLg1]
    calc ‖-((Real.log Real.pi : ℝ) : ℂ) / 2 + 1 / 2 * Complex.digamma (s / 2) +
        logDeriv riemannZeta s‖
        ≤ ‖-((Real.log Real.pi : ℝ) : ℂ) / 2‖ + ‖(1 / 2 : ℂ) * Complex.digamma (s / 2)‖
          + ‖logDeriv riemannZeta s‖ := norm_add₃_le
      _ = Real.log Real.pi / 2 + 1 / 2 * ‖Complex.digamma (s / 2)‖ + ‖logDeriv riemannZeta s‖ := by
          rw [norm_div, norm_neg, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hlogπ, norm_mul]
          norm_num
      _ ≤ Real.log Real.pi / 2 * Lg ^ 2 + Cψ * Lg ^ 2 + Cg * Lg ^ 2 := by
          have h1 : Real.log Real.pi / 2 ≤ Real.log Real.pi / 2 * Lg ^ 2 := by
            have : (1:ℝ) ≤ Lg ^ 2 := by nlinarith [hLg1]
            nlinarith
          have h2 : 1 / 2 * ‖Complex.digamma (s / 2)‖ ≤ Cψ * Lg ^ 2 := by
            have := hψs.trans (mul_le_mul_of_nonneg_left (hlog2.trans hLg2) hCψ.le)
            nlinarith [norm_nonneg (Complex.digamma (s / 2))]
          linarith
      _ = K * Lg ^ 2 := by rw [hKdef]; ring
  -- the same bound on the whole horizontal segment x ∈ [1-c, c], by reflection for x < 1/2
  have hall : ∀ (x y : ℝ), (y = R ∨ y = -R) → 1 - c ≤ x → x ≤ c →
      ‖logDeriv completedRiemannZeta ((x : ℂ) + y * I)‖ ≤ K * (Lg) ^ 2 := by
    intro x y hy hx1 hx2
    rcases le_or_gt (1/2 : ℝ) x with hx | hx
    · exact hright _ (by rcases hy with h | h <;> simp [h]) (by simpa using hx)
        (by simp; linarith)
    · -- reflect: s = 1 − s', s' := (1 − x) − y i on the opposite good horizontal
      set s' : ℂ := ((1 - x : ℝ) : ℂ) + (-y) * I with hs'def
      have him' : s'.im = -y := by simp [hs'def]
      have hre' : s'.re = 1 - x := by simp [hs'def]
      have hy0 : y ≠ 0 := by
        have hj0 : (0:ℝ) ≤ j := Nat.cast_nonneg j
        have hRpos : 0 < R := by linarith
        rcases hy with h | h
        · rw [h]; exact hRpos.ne'
        · rw [h]; exact (neg_lt_zero.mpr hRpos).ne
      have hs'0 : s' ≠ 0 := fun h => hy0 (by
        have him0 := congrArg Complex.im h
        rw [him'] at him0; simpa using him0)
      have hs'1 : s' ≠ 1 := fun h => hy0 (by
        have him1 := congrArg Complex.im h
        rw [him'] at him1; simpa using him1)
      have e : ((x : ℂ) + y * I) = 1 - s' := by
        simp only [hs'def]; push_cast; ring
      rw [e, logDeriv_completedZeta_one_sub s' hs'0 hs'1, norm_neg]
      refine hright s' ?_ (by rw [hre']; linarith) (by rw [hre']; linarith)
      rw [him']
      rcases hy with h | h
      · right; rw [h]
      · left; rw [h, neg_neg]
  exact hall x y hy hx1 hx2

end
end FormalResearch.RiemannHypothesis.ActualCompletedHorizontalBudget
```
