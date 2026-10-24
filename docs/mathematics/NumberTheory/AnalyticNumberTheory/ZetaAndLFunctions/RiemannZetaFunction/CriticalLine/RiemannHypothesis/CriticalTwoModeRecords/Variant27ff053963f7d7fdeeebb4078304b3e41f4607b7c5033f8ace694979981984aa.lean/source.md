# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CriticalTwoModeRecords.Variant27ff053963f7d7fdeeebb4078304b3e41f4607b7c5033f8ace694979981984aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72f73ae9fb8d0ae7bd9937a42c165cf608576dc8` · SHA-256 `27ff053963f7d7fdeeebb4078304b3e41f4607b7c5033f8ace694979981984aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.CriticalTwoModeDeficit
import FormalResearch.RiemannHypothesis.Conversation.CriticalTwoModeSupremum

/-!
# Actual prefix maxima and arbitrarily late record increments

The running maximum is the supremum of the unchanged two-mode path on the
complete closed interval [t0,T]. It is attained there, stays strictly below
two, and has the uniform polynomial deficit. A later genuine path value
forces a running-maximum rise of at least half the current remaining height.
This does not identify a discrete record enumeration or assert that its
native p-energy has been checked. Human source-faithful record direction:
grwtsk contributors. Local complete-prefix consumer: OpenAI Codex.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeRecords
open CriticalTwoModeBasic CriticalTwoModeDiophantine CriticalTwoModeDeficit
open CriticalTwoModeSupremum Set
noncomputable section

/-- The prefix maximum in this module, with the following exact parameterization.

def prefixMaximum (α t₀ T : ℝ) : ℝ := sSup (twoMode α '' Icc t₀ T)
-/
def prefixMaximum (α t₀ T : ℝ) : ℝ := sSup (twoMode α '' Icc t₀ T)

theorem literal_prefix_maximum_attained (α : ℝ) {t₀ T : ℝ} (hT : t₀ ≤ T) :
    ∃ s : ℝ, s ∈ Icc t₀ T ∧ prefixMaximum α t₀ T = twoMode α s ∧
      ∀ t : ℝ, t ∈ Icc t₀ T → twoMode α t ≤ twoMode α s := by
  obtain ⟨s,hs,hmax⟩ := isCompact_Icc.exists_isMaxOn (nonempty_Icc.mpr hT)
    (literal_two_mode_continuous α).continuousOn
  have hg : IsGreatest (twoMode α '' Icc t₀ T) (twoMode α s) := by
    refine ⟨⟨s,hs,rfl⟩,?_⟩
    rintro y ⟨t,ht,rfl⟩
    exact hmax ht
  exact ⟨s,hs,hg.csSup_eq,fun t ht ↦ hmax ht⟩

theorem literal_prefix_value_le (α : ℝ) {t₀ T t : ℝ} (hT : t₀ ≤ T)
    (ht : t ∈ Icc t₀ T) : twoMode α t ≤ prefixMaximum α t₀ T := by
  obtain ⟨s,_hs,he,hmax⟩ := literal_prefix_maximum_attained α hT
  rw [he]
  exact hmax t ht

theorem literal_prefix_maximum_monotone (α : ℝ) {t₀ T U : ℝ}
    (hT : t₀ ≤ T) (hTU : T ≤ U) : prefixMaximum α t₀ T ≤ prefixMaximum α t₀ U := by
  obtain ⟨s,hs,he,_hmax⟩ := literal_prefix_maximum_attained α hT
  rw [he]
  exact literal_prefix_value_le α (hT.trans hTU) ⟨hs.1,hs.2.trans hTU⟩

theorem literal_prefix_maximum_lt_two {α t₀ T : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (hT : t₀ ≤ T) : prefixMaximum α t₀ T < 2 := by
  obtain ⟨s,hs,he,_hmax⟩ := literal_prefix_maximum_attained α hT
  rw [he]
  exact literal_two_mode_lt_two (badly_approximable_is_irrational hα) (ht₀.trans_le hs.1)

theorem literal_prefix_maximum_uniform_deficit {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) :
    ∃ k : ℝ, 0 < k ∧ ∀ T : ℝ, 1 ≤ T → t₀ ≤ T →
      k/T^2 ≤ 2-prefixMaximum α t₀ T := by
  obtain ⟨k,hk,hbound⟩ := literal_badly_approximable_prefix_deficit hα ht₀
  refine ⟨k,hk,?_⟩
  intro T hT1 hT
  obtain ⟨s,hs,he,_hmax⟩ := literal_prefix_maximum_attained α hT
  rw [he]
  exact hbound T hT1 s hs

theorem literal_later_record_rise {α t₀ T : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (hT : t₀ ≤ T) :
    ∃ U : ℝ, T < U ∧
      (2-prefixMaximum α t₀ T)/2 ≤ prefixMaximum α t₀ U-prefixMaximum α t₀ T := by
  have hδ : 0 < 2-prefixMaximum α t₀ T := by
    linarith [literal_prefix_maximum_lt_two hα ht₀ hT]
  obtain ⟨U,hU,_hpos,hnear⟩ := literal_two_mode_near_two_after_every_threshold hα
    ((2-prefixMaximum α t₀ T)/2) T (by linarith)
  have hval := literal_prefix_value_le α (hT.trans hU.le) ⟨hT.trans hU.le,le_rfl⟩
  exact ⟨U,hU,by linarith⟩

end
end GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeRecords
```
