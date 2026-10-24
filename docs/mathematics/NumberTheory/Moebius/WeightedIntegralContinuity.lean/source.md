# Complete source: GRWTSK.NumberTheory.Moebius.WeightedIntegralContinuity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `874e9702580bca18c2ae7cd010f33a350fc7ff92` · SHA-256 `48cd9aab54844ccc3deb9bdbcad8a560827a8451f9a75bd1ebe1e48829065231`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.SignedIntegralSectorBounds
import Mathlib.Topology.Piecewise
import Mathlib.Topology.Order.Compact

/-!
# CCC continuity of the actual causal pickup

The original integral is zero at nonpositive times. Each admitted arithmetic
response is continuous because its causal arrival weight is exactly zero at
the retained closed atom. A fixed finite inventory agrees with the actual
pickup in every bounded upper neighborhood, including negative times.

Research direction: grwtsk contributors. Lean implementation: OpenAI Codex.
Continuity alone does not prove a polynomial return or cancellation budget.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupContinuity

open MeasureTheory Set Filter Topology
open ArithmeticPickupSource ArithmeticPickupEnergy ArithmeticSupplier

noncomputable section

theorem pickup_nonpositive {T : ℝ} (hT : T ≤ 0) : pickup T = 0 := by
  have endpoint : Real.exp T ≤ 1 := by simpa using Real.exp_le_exp.mpr hT
  have empty : Ioc (1 : ℝ) (Real.exp T) = ∅ := Ioc_eq_empty_of_le endpoint
  simp [pickup, empty]

theorem response_continuous {n : ℕ} (hn : 1 ≤ n) : Continuous (response n) := by
  classical
  have boundary : ∀ u ∈ frontier (Ici (Real.log (n : ℝ))), responseKernel n u = 0 := by
    intro u hu
    have atArrival : u = Real.log (n : ℝ) := by
      simpa only [frontier_Ici, mem_singleton_iff] using hu
    subst u
    simpa only [response_of_arrived le_rfl] using response_touching_atom_zero hn
  change Continuous ((Ici (Real.log (n : ℝ))).piecewise (responseKernel n) (fun _ ↦ 0))
  exact (response_kernel_continuous n).piecewise boundary continuous_const

def fixedInventorySignal (H u : ℝ) : ℝ :=
  ∑ n ∈ inventory H, moebiusCoefficient n * response n u

theorem fixed_inventory_signal_continuous (H : ℝ) : Continuous (fixedInventorySignal H) := by
  unfold fixedInventorySignal
  apply continuous_finsetSum
  intro n hn
  exact continuous_const.mul (response_continuous (Finset.mem_Icc.mp hn).1)

/-- The exact fixed-inventory waveform adapter also covers the original causal zero extension. -/
theorem actual_waveform_on_inventory_all {u H : ℝ} (huH : u ≤ H) :
    pickup u = fixedInventorySignal H u := by
  by_cases hu : 0 ≤ u
  · exact actual_waveform_on_inventory hu huH
  · have negative : u < 0 := lt_of_not_ge hu
    rw [pickup_nonpositive negative.le]
    unfold fixedInventorySignal
    symm
    apply Finset.sum_eq_zero
    intro n hn
    have hnOne : 1 ≤ n := (Finset.mem_Icc.mp hn).1
    have logNonnegative : 0 ≤ Real.log (n : ℝ) :=
      Real.log_nonneg (by exact_mod_cast hnOne)
    have notArrived : ¬ Real.log (n : ℝ) ≤ u := by linarith
    rw [response_of_not_arrived notArrived, mul_zero]

/-- Unconditional continuity of the literal integral pickup on every real time. -/
theorem pickup_continuous : Continuous pickup := by
  rw [continuous_iff_continuousAt]
  intro t
  let H : ℝ := max 0 t + 1
  have upper : t < H := by
    dsimp [H]
    have : t ≤ max 0 t := le_max_right _ _
    linarith
  have agreement : pickup =ᶠ[𝓝 t] fixedInventorySignal H := by
    filter_upwards [Iio_mem_nhds upper] with u hu
    exact actual_waveform_on_inventory_all hu.le
  exact (fixed_inventory_signal_continuous H).continuousAt.congr_of_eventuallyEq agreement

theorem reset_pickup_continuous (A : ℝ) : Continuous (resetPickup A) := by
  unfold resetPickup
  exact pickup_continuous.sub continuous_const

/-- The original positive envelope is attained in its closed actual history. -/
theorem positive_envelope_attained {T : ℝ} (hT : 0 ≤ T) :
    ∃ t ∈ Icc 0 T, pickup t = positiveEnvelope T := by
  have history : (Icc (0 : ℝ) T).Nonempty := ⟨0, le_rfl, hT⟩
  obtain ⟨t, ht, maximum⟩ :=
    isCompact_Icc.exists_isMaxOn history pickup_continuous.continuousOn
  refine ⟨t, ht, ?_⟩
  rw [positive_envelope_eq_sup hT]
  apply le_antisymm
  · exact le_csSup (positive_envelope_history_bounded T) (mem_image_of_mem pickup ht)
  · apply csSup_le (history.image pickup)
    rintro _ ⟨u, hu, rfl⟩
    exact maximum hu

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupContinuity
```
