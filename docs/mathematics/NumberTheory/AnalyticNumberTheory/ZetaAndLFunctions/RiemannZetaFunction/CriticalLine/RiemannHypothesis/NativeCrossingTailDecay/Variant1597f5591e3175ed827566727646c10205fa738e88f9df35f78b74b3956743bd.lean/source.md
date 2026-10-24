# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NativeCrossingTailDecay.Variant1597f5591e3175ed827566727646c10205fa738e88f9df35f78b74b3956743bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85a025f8a9883cafacbcbf69da80ff5ea9ff4991` · SHA-256 `1597f5591e3175ed827566727646c10205fa738e88f9df35f78b74b3956743bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.NativeCrossingTail

/-!
# The actual crossing-ledger tail vanishes and admits every positive tolerance

The proved infinite selected crossing budget is consumed at varying entrances.
Its exact logarithmic envelope tends to zero, so the actual nonnegative native
ledger also tends to zero. Every requested positive tolerance therefore admits
an entrance after which all later actual ledger tails fit that tolerance.
This is a seam-price result, not an estimate of the signed causal cycle loads.

Human tail and uniform-entrance direction: grwtsk contributors. Local convergence
consumer: OpenAI Codex. Mathlib limits and series order retain upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.NativeCrossingTailDecay
open Filter ArithmeticPrimitive NativeRecordConsumer AtomicCrossingLedger
open NativeCrossingTail LogRootTailIntegral
open scoped Topology
noncomputable section

theorem exact_envelope_tends_to_zero : Tendsto envelope atTop (𝓝 0) := by
  have hnat : Tendsto (fun N : ℕ ↦ (N : ℝ)) atTop atTop := tendsto_natCast_atTop_atTop
  have hshift : Tendsto (fun N : ℕ ↦ (N : ℝ) - 1) atTop atTop := by
    apply tendsto_atTop.2
    intro B
    filter_upwards [hnat.eventually (eventually_ge_atTop (B + 1))] with N hN
    linarith
  have h := (log_root_primitive_tends_to_zero.comp hshift).neg
  simp only [neg_zero] at h
  apply h.congr'
  filter_upwards [] with N
  dsimp only [Function.comp_def]
  unfold envelope primitive
  ring

theorem actual_tail_price_nonnegative {N : ℕ} (hN : 3 ≤ N) : 0 ≤ tailPrice N := by
  classical
  change 0 ≤ ∑' n : ℕ, priceTerm N n
  apply tsum_nonneg
  intro n
  unfold priceTerm
  split_ifs with h
  · exact mul_nonneg (cellClock_pos (by have := h.1; omega)).le
      (le_max_of_le_left (abs_nonneg _))
  · rfl

theorem actual_native_ledger_tail_tends_to_zero : Tendsto tailPrice atTop (𝓝 0) := by
  apply squeeze_zero' _ _ exact_envelope_tends_to_zero
  · filter_upwards [eventually_ge_atTop (3 : ℕ)] with N hN
    exact actual_tail_price_nonnegative hN
  · filter_upwards [eventually_ge_atTop (3 : ℕ)] with N hN
    exact actual_infinite_crossing_tail_envelope hN

theorem every_positive_tolerance_has_uniform_actual_entrance {epsilon : ℝ}
    (he : 0 < epsilon) :
    ∃ N0 : ℕ, 3 ≤ N0 ∧ ∀ N : ℕ, N0 ≤ N → 0 ≤ tailPrice N ∧ tailPrice N < epsilon := by
  have h := actual_native_ledger_tail_tends_to_zero.eventually (eventually_lt_nhds he)
  obtain ⟨N0, hN0⟩ := eventually_atTop.1 h
  refine ⟨max N0 3, le_max_right _ _, ?_⟩
  intro N hN
  have hn3 : 3 ≤ N := (le_max_right _ _).trans hN
  have hn0 : N0 ≤ N := (le_max_left _ _).trans hN
  exact ⟨actual_tail_price_nonnegative hn3, hN0 N hn0⟩

end
end GRWTSK.RiemannHypothesis.Conversation.NativeCrossingTailDecay
```
