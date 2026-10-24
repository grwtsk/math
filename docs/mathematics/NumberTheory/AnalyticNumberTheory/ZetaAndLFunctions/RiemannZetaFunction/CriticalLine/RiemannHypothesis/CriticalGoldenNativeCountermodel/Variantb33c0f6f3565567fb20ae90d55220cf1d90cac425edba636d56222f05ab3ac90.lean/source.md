# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CriticalGoldenNativeCountermodel.Variantb33c0f6f3565567fb20ae90d55220cf1d90cac425edba636d56222f05ab3ac90

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5cba263002a985dd9fed2e36df7f76e7b0157987` · SHA-256 `b33c0f6f3565567fb20ae90d55220cf1d90cac425edba636d56222f05ab3ac90`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.CriticalTwoModeNativeEnergy
import FormalResearch.RiemannHypothesis.Conversation.CriticalTwoModeNativePartition
import FormalResearch.RiemannHypothesis.Conversation.CriticalGoldenRatioCertificate

/-!
# One fixed golden-ratio path and complete native partition for all p>1

The literal cos(t)+cos(alpha*t), alpha=(1+sqrt(5))/2, remains smooth and
bounded. The same p-independent increasing prefix-record partition has
positive heights and exact positive native widths, finite total height and
finite p=1 energy, but infinite extended-real energy for every fixed p>1.
This is the Batch-12 critical-superposition countermodel on a declared
complete record partition, not a claim about actual zeta frequencies or a
relabeling of arithmetic record energy. Human fixed-source, all-p and full
inventory direction: grwtsk contributors. Local integrated consumer: OpenAI
Codex. Upstream formal artifacts and older mathematical sources retain credit.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.CriticalGoldenNativeCountermodel
open CriticalTwoModeBasic CriticalTwoModeDiophantine CriticalTwoModeRecords
open CriticalTwoModeRecordSequence CriticalTwoModeNativeClock CriticalTwoModeNativeEnergy
open CriticalTwoModeNativePartition Set
open CriticalGoldenRatioCertificate
open scoped BigOperators Topology
noncomputable section

theorem literal_initial_record_level {α t₀ : ℝ} (hα : BadlyApproximable α) (ht₀ : 0 < t₀) :
    recordLevel hα ht₀ 0 = twoMode α t₀ := by
  obtain ⟨s,hs,he,_hmax⟩ := literal_prefix_maximum_attained α (le_refl t₀)
  have hs0 : s=t₀ := le_antisymm hs.2 hs.1
  simpa only [recordLevel,literal_record_time_zero,hs0] using he

theorem literal_golden_complete_native_countermodel (t₀ : ℝ) (ht₀ : 0 < t₀) :
    (∀ t : ℝ, |twoMode goldenFrequency t| ≤ 2) ∧
    (∀ k : WithTop ℕ∞, ContDiff ℝ k (twoMode goldenFrequency)) ∧
    (∀ j : ℕ, 0 < recordHeight literal_golden_frequency_badly_approximable ht₀ j ∧
      0 < nativeClock literal_golden_frequency_badly_approximable ht₀ j) ∧
    (∀ i j : ℕ, i < j →
      Disjoint (Ioo (recordTime literal_golden_frequency_badly_approximable ht₀ i)
        (recordTime literal_golden_frequency_badly_approximable ht₀ (i+1)))
      (Ioo (recordTime literal_golden_frequency_badly_approximable ht₀ j)
        (recordTime literal_golden_frequency_badly_approximable ht₀ (j+1)))) ∧
    (∀ j : ℕ, (∫ t in recordTime literal_golden_frequency_badly_approximable ht₀ j..
      recordTime literal_golden_frequency_badly_approximable ht₀ (j+1),Real.exp (-t/2)) =
        nativeClock literal_golden_frequency_badly_approximable ht₀ j) ∧
    HasSum (recordHeight literal_golden_frequency_badly_approximable ht₀)
      (2-twoMode goldenFrequency t₀) ∧
    HasSum (nativeClock literal_golden_frequency_badly_approximable ht₀)
      (2*Real.exp (-t₀/2)) ∧
    HasSum (energyTerm literal_golden_frequency_badly_approximable ht₀ 1)
      (2-twoMode goldenFrequency t₀) ∧
    (∀ p : ℝ, 1 < p → (∑' j : ℕ,
      ENNReal.ofReal (energyTerm literal_golden_frequency_badly_approximable ht₀ p j)) = ⊤) := by
  refine ⟨literal_two_mode_abs_le_two goldenFrequency,literal_two_mode_smooth goldenFrequency,
    ?_,?_,?_,?_,?_,?_,?_⟩
  · intro j
    exact ⟨literal_record_height_pos _ ht₀ j,literal_native_clock_pos _ ht₀ j⟩
  · intro i j hij
    exact literal_record_intervals_disjoint _ ht₀ hij
  · intro j
    exact literal_native_clock_exact_integral _ ht₀ j
  · have h := literal_record_height_tail_has_sum literal_golden_frequency_badly_approximable ht₀ 0
    simpa only [Nat.add_zero,literal_initial_record_level] using h
  · have h := literal_native_clock_tail_has_sum literal_golden_frequency_badly_approximable ht₀ 0
    simpa only [Nat.add_zero,literal_record_time_zero] using h
  · simpa only [literal_initial_record_level] using
      literal_p_one_energy_has_sum literal_golden_frequency_badly_approximable ht₀
  · intro p hp
    exact literal_fixed_p_native_energy_eq_top _ ht₀ hp

end
end GRWTSK.RiemannHypothesis.Conversation.CriticalGoldenNativeCountermodel
```
