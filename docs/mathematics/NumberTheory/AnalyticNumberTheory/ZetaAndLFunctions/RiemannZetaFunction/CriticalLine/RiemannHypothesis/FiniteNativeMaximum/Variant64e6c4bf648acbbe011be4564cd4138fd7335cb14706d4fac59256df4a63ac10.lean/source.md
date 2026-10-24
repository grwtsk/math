# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteNativeMaximum.Variant64e6c4bf648acbbe011be4564cd4138fd7335cb14706d4fac59256df4a63ac10

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bba7bf2eb5fe505d3b082c961115e06667ec9342` · SHA-256 `64e6c4bf648acbbe011be4564cd4138fd7335cb14706d4fac59256df4a63ac10`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.NativeCellBound
import FormalResearch.RiemannHypothesis.Conversation.AttainedCausalDuality

/-!
# The actual finite native maximum is attained at an integer endpoint

CC01's finite-horizon correction uses the unchanged ordinary-prime primitive.
Its exact native cells never exceed the larger endpoint value. The complete
finite record level is therefore the greatest real primitive increment on the
closed horizon, attained at an integer endpoint including the entrance and
final endpoint. No conclusion about infinite-tail attainment or an arithmetic
upper bound is inferred.

Human endpoint and source-fidelity direction: grwtsk contributors. Local finite
continuous-horizon consumer: OpenAI Codex. Mathlib floor and finite order laws
retain upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.FiniteNativeMaximum
open ArithmeticPrimitive OpenArithmeticSuppliers NativeCellBound AttainedCausalDuality
noncomputable section

theorem actual_bounded_horizon_spec {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    (∀ j ≤ K, ordinaryPrimePrimitive (N + j : ℕ) - ordinaryPrimePrimitive N ≤
      primeRecordLevel N K) ∧
    ∃ j ≤ K, ordinaryPrimePrimitive (N + j : ℕ) - ordinaryPrimePrimitive N =
      primeRecordLevel N K := by
  have h := maximum_prefix_spec (actualPrimeWork N) K
  rw [← actual_prime_record_eq_maximum hN] at h
  simp_rw [actual_prime_work_prefix hN] at h
  exact h.2

theorem actual_closed_horizon_upper {N : ℕ} (hN : 1 ≤ N) (K : ℕ)
    {x : ℝ} (hleft : (N : ℝ) ≤ x) (hright : x ≤ (N + K : ℕ)) :
    ordinaryPrimePrimitive x - ordinaryPrimePrimitive N ≤ primeRecordLevel N K := by
  have hint := (actual_bounded_horizon_spec hN K).1
  have hbound (n : ℕ) (hn : N ≤ n) (hnK : n ≤ N + K) :
      ordinaryPrimePrimitive n ≤ ordinaryPrimePrimitive N + primeRecordLevel N K := by
    obtain ⟨j, rfl⟩ := Nat.exists_eq_add_of_le hn
    have hj : j ≤ K := by omega
    linarith [hint j hj]
  by_cases he : x = (N + K : ℕ)
  · rw [he]
    exact hint K le_rfl
  have hxlt : x < (N + K : ℕ) := lt_of_le_of_ne hright he
  have hx0 : 0 ≤ x := (Nat.cast_nonneg N).trans hleft
  have hfloor : N ≤ ⌊x⌋₊ := Nat.le_floor hleft
  have hfloorlt : ⌊x⌋₊ < N + K := by
    have hh : (⌊x⌋₊ : ℝ) < (N + K : ℕ) := (Nat.floor_le hx0).trans_lt hxlt
    exact_mod_cast hh
  have hl := hbound ⌊x⌋₊ hfloor (by omega)
  have hr := hbound (⌊x⌋₊ + 1) (by omega) (by omega)
  have hc : finitePrimitive ordinaryPrimeCoefficient x ⌊x⌋₊ ≤
      ordinaryPrimePrimitive N + primeRecordLevel N K := by
    apply finite_cell_upper (by omega) (Nat.floor_le hx0)
      (by simpa only [Nat.cast_add, Nat.cast_one] using (Nat.lt_floor_add_one x).le)
    · simpa only [ordinaryPrimePrimitive, closedPrimitive, Nat.floor_natCast] using hl
    · simpa only [ordinaryPrimePrimitive, closedPrimitive, Nat.floor_natCast] using hr
  change finitePrimitive ordinaryPrimeCoefficient x ⌊x⌋₊ - ordinaryPrimePrimitive N ≤ _
  linarith

theorem actual_finite_real_maximum_is_attained {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    IsGreatest ((fun x : ℝ ↦ ordinaryPrimePrimitive x - ordinaryPrimePrimitive N) ''
      Set.Icc (N : ℝ) (N + K : ℕ)) (primeRecordLevel N K) := by
  constructor
  · obtain ⟨j, hj, he⟩ := (actual_bounded_horizon_spec hN K).2
    refine ⟨(N + j : ℕ), ?_, he⟩
    constructor
    · exact_mod_cast Nat.le_add_right N j
    · exact_mod_cast Nat.add_le_add_left hj N
  · rintro r ⟨x, ⟨hl, hr⟩, rfl⟩
    exact actual_closed_horizon_upper hN K hl hr

end
end GRWTSK.RiemannHypothesis.Conversation.FiniteNativeMaximum
```
