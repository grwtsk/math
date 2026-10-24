# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCriticalZeroMagnitude.Variant156d658b544c8b620b046f681318cf88c630f196970d9668d4b35b72c9f56a3a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0da2c906c0a9386387283c7e91ff94ada87f64d5` · SHA-256 `55901f51dbcea2a9a203f21f51c50f52ee9c4faa67cf30398f722c4d43b1d36b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualZeroSixMass.Variant57d449ba571df38b6642a1cb097945d136ec9870b80b3f238b62d657e47f2a16","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"57d449ba571df38b6642a1cb097945d136ec9870b80b3f238b62d657e47f2a16","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualZeroSixMass.Variant57d449ba571df38b6642a1cb097945d136ec9870b80b3f238b62d657e47f2a16","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"57d449ba571df38b6642a1cb097945d136ec9870b80b3f238b62d657e47f2a16","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-challenge-next/ActualCriticalZeroMagnitude-Native02/ActualCriticalZeroMagnitude.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualCriticalOrdinateBudget

/-!
The genuine actual critical-axis head is uniformly small at every finite real height.
The low window retains every analytic multiplicity; the remaining reciprocal-six mass
uses the actual all-zero counting theorem. No off-axis absence or lower bound is asserted.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualZeroSixMass.Variant57d449ba571df38b6642a1cb097945d136ec9870b80b3f238b62d657e47f2a16

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualCriticalZeroMagnitude
open Zeta23 Set Finset
open SourcePairing SourceActualInitialPrimeContour SourceActualZeroTailBudget
open SourceActualZeroTailCount SourceActualCriticalZeroHead ActualCriticalOrdinateBudget
noncomputable section

/-- Actual reciprocal-six mass, with the entire low window and the closed tail retained. -/
def actualZeroSixMass : ℝ :=
  (∑ ρ ∈ (actualZeroHeightHead_finite 4).toFinset,
    ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6) + actualZeroSixTail 4

/-- This literal actual finite-plus-tail mass is nonnegative. -/
theorem actualZeroSixMass_nonneg : 0 ≤ actualZeroSixMass := by
  unfold actualZeroSixMass actualZeroSixTail
  exact add_nonneg (sum_nonneg (fun _ _ => by positivity))
    (tsum_nonneg (fun _ => by split_ifs <;> positivity))

/-- Every actual finite carrier subset has at most the complete reciprocal-six mass. -/
theorem actual_finite_reciprocal_six_le (F : Finset (zetaZeros zetaSeam).carrier) :
    (∑ ρ ∈ F, ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6) ≤
      actualZeroSixMass := by
  classical
  obtain ⟨A0, hA0, hc⟩ := actualZeroSixTail_count_bound
  obtain ⟨hsm, _⟩ := hc 4 (by norm_num)
  let f : (zetaZeros zetaSeam).carrier → ℝ := fun ρ =>
    ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6
  have hf (ρ : (zetaZeros zetaSeam).carrier) : 0 ≤ f ρ := by dsimp [f]; positivity
  have hlo : (∑ ρ ∈ F.filter (fun ρ : (zetaZeros zetaSeam).carrier => |(ρ : ℂ).im| < 4), f ρ) ≤
      ∑ ρ ∈ (actualZeroHeightHead_finite 4).toFinset, f ρ := by
    apply sum_le_sum_of_subset_of_nonneg
    · intro ρ hρ
      simpa only [Set.Finite.mem_toFinset, Set.mem_ofPred_eq] using (mem_filter.mp hρ).2
    · intro ρ _ _
      exact hf ρ
  have hhi : (∑ ρ ∈ F.filter (fun ρ : (zetaZeros zetaSeam).carrier => ¬ |(ρ : ℂ).im| < 4), f ρ) ≤
      actualZeroSixTail 4 := by
    have he : (∑ ρ ∈ F.filter (fun ρ : (zetaZeros zetaSeam).carrier => ¬ |(ρ : ℂ).im| < 4), f ρ) =
        ∑ ρ ∈ F.filter (fun ρ : (zetaZeros zetaSeam).carrier => ¬ |(ρ : ℂ).im| < 4),
          if 4 ≤ |(ρ : ℂ).im| then f ρ else 0 := by
      apply sum_congr rfl
      intro ρ hρ
      rw [if_pos (le_of_not_gt (mem_filter.mp hρ).2)]
    rw [he]
    exact Summable.sum_le_tsum _ (fun ρ _ => by split_ifs <;> positivity) hsm
  have he := sum_filter_add_sum_filter_not F (fun ρ : (zetaZeros zetaSeam).carrier => |(ρ : ℂ).im| < 4) f
  change (∑ ρ ∈ F, f ρ) ≤ _
  rw [← he]
  exact add_le_add hlo hhi

/-- One fixed actual radius and constant bound every critical head at every real height. -/
theorem actualCriticalZeroHeightHead_uniform_ninth_bound :
    ∃ C R0 : ℝ, 0 ≤ C ∧ 1 ≤ R0 ∧ ∀ A R : ℝ, R0 ≤ A →
      ‖actualCriticalZeroHeightHead A R‖ ≤ C / A ^ 9 := by
  classical
  obtain ⟨R0, hR0, hg⟩ := actual_critical_ordinate_radius
  let b : ℝ := (204288 : ℝ) ^ 2 * 109395 / 4096 * (1 + R0 ^ 2) ^ 2
  have hb : 0 ≤ b := by dsimp [b]; positivity
  refine ⟨b * actualZeroSixMass, R0, mul_nonneg hb actualZeroSixMass_nonneg,
    hR0, fun A R hA => ?_⟩
  have hApos : 0 < A := by linarith
  let F := (actualZeroHeightHead_finite R).toFinset.filter
    (fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ).re = 1 / 2)
  have hpoint (ρ : (zetaZeros zetaSeam).carrier) (hρ : ρ ∈ F) :
      ‖((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ‖ ≤
        (b / A ^ 9) * (((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6) := by
    have hh := (mem_filter.mp hρ).2
    have hw := actual_critical_mellin_norm_le A R0 ρ hR0 hA hh (hg ρ hh)
    rw [norm_mul, Complex.norm_natCast]
    have hm := mul_le_mul_of_nonneg_left hw
      (show 0 ≤ ((zetaZeros zetaSeam).mult ρ : ℝ) by positivity)
    exact hm.trans_eq (by dsimp [b]; ring)
  change ‖∑ ρ ∈ F, ((zetaZeros zetaSeam).mult ρ : ℂ) *
    actualInitialPrimeMellin A ρ‖ ≤ _
  calc
    _ ≤ ∑ ρ ∈ F, ‖((zetaZeros zetaSeam).mult ρ : ℂ) *
        actualInitialPrimeMellin A ρ‖ := norm_sum_le _ _
    _ ≤ ∑ ρ ∈ F, (b / A ^ 9) *
        (((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6) :=
      sum_le_sum hpoint
    _ = (b / A ^ 9) * (∑ ρ ∈ F,
        ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6) := by rw [mul_sum]
    _ ≤ (b / A ^ 9) * actualZeroSixMass :=
      mul_le_mul_of_nonneg_left (actual_finite_reciprocal_six_le F) (by positivity)
    _ = _ := by ring

/-- The same actual magnitude bound respects its independently proved nonnegative real sign. -/
theorem actualCriticalZeroHeightHead_real_uniform_ninth_bound :
    ∃ C R0 : ℝ, 0 ≤ C ∧ 1 ≤ R0 ∧ ∀ A R : ℝ, R0 ≤ A →
      0 ≤ (actualCriticalZeroHeightHead A R).re ∧
        (actualCriticalZeroHeightHead A R).re ≤ C / A ^ 9 := by
  obtain ⟨C, R0, hC, hR0, hb⟩ := actualCriticalZeroHeightHead_uniform_ninth_bound
  refine ⟨C, R0, hC, hR0, fun A R hA => ?_⟩
  exact ⟨actualCriticalZeroHeightHead_re_nonneg A R (hR0.trans hA),
    (Complex.re_le_norm _).trans (hb A R hA)⟩

end
end FormalResearch.RiemannHypothesis.ActualCriticalZeroMagnitude
```
