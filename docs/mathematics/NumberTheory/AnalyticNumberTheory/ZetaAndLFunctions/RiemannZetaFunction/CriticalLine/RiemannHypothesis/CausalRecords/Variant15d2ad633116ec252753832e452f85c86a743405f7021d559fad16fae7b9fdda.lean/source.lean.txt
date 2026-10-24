import Mathlib

/-!
# Causal records and the retained initial level

Finite causal algebra from audited RH conversation Batches 08–12. A source
summation-by-parts display requires either an initial-level subtraction or an
explicit zero-level normalization. Both versions are proved here, with a
counterexample to the unnormalized display. No prime-contact estimate follows
from this finite bookkeeping.

Human mathematical direction: grwtsk contributors. Lean implementation and the
explicit missing-initial-level correction: OpenAI Codex (2026-10-08/09).
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.CausalRecords

open scoped BigOperators

/-- Record growth depends on the prior running maximum, rather than positive work alone. -/
def recordIncrement (level candidate : ℝ) : ℝ := max level candidate - level

theorem recordIncrement_eq_positive_gap (level candidate : ℝ) :
    recordIncrement level candidate = max (candidate - level) 0 := by
  unfold recordIncrement
  rcases le_total candidate level with h | h
  · rw [max_eq_left h, max_eq_right (sub_nonpos.mpr h)]
    ring
  · rw [max_eq_right h, max_eq_left (sub_nonneg.mpr h)]

theorem recordIncrement_nonneg (level candidate : ℝ) :
    0 ≤ recordIncrement level candidate := by
  rw [recordIncrement_eq_positive_gap]
  exact le_max_right _ _

/-- A negative increment cannot establish a new record. -/
theorem no_record_of_nonpositive_work {level old work : ℝ}
    (hold : old ≤ level) (hwork : work ≤ 0) :
    recordIncrement level (old + work) = 0 := by
  unfold recordIncrement
  rw [max_eq_left (by linarith : old + work ≤ level)]
  ring

/-- Positive work is only an upper bound on record growth. -/
theorem record_le_positive_work {level old work : ℝ} (hold : old ≤ level) :
    recordIncrement level (old + work) ≤ max work 0 := by
  rw [recordIncrement_eq_positive_gap]
  exact max_le_max (by linarith) le_rfl

/-- Full increments telescope without dropping a nonzero initial value. -/
theorem sum_increments (f : ℕ → ℝ) (N : ℕ) :
    (∑ k ∈ Finset.range N, (f (k + 1) - f k)) = f N - f 0 := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ, ih]
      ring

/-- Backward suffix summation by parts with the exact initial level retained. -/
theorem suffix_summation_by_parts (B L : ℕ → ℝ) (N : ℕ) :
    (∑ k ∈ Finset.range N, B k * (L (k + 1) - L k)) =
      B 0 * (L N - L 0) +
        ∑ k ∈ Finset.range N, (B (k + 1) - B k) * (L N - L (k + 1)) := by
  induction N with
  | zero => simp
  | succ N ih =>
      have hs : (∑ k ∈ Finset.range N,
          (B (k + 1) - B k) * (L (N + 1) - L (k + 1))) =
          (∑ k ∈ Finset.range N, (B (k + 1) - B k) * (L N - L (k + 1))) +
          (B N - B 0) * (L (N + 1) - L N) := by
        calc
          _ = ∑ k ∈ Finset.range N,
              ((B (k + 1) - B k) * (L N - L (k + 1)) +
                (B (k + 1) - B k) * (L (N + 1) - L N)) := by
            apply Finset.sum_congr rfl
            intro k _
            ring
          _ = _ := by
            rw [Finset.sum_add_distrib, ← Finset.sum_mul, sum_increments]
      rw [Finset.sum_range_succ, Finset.sum_range_succ, ih]
      simp only [sub_self, mul_zero, add_zero]
      rw [hs]
      ring

/-- The shorter source display is valid after explicit zero-level normalization. -/
theorem normalized_suffix_summation_by_parts (B L : ℕ → ℝ) (N : ℕ) (hL : L 0 = 0) :
    (∑ k ∈ Finset.range N, B k * (L (k + 1) - L k)) = B 0 * L N +
      ∑ k ∈ Finset.range N, (B (k + 1) - B k) * (L N - L (k + 1)) := by
  simpa only [hL, sub_zero] using suffix_summation_by_parts B L N

/-- A nonzero initial level makes the unnormalized shortcut false. -/
theorem unnormalized_shortcut_counterexample :
    (2 : ℝ) * (5 - 3) ≠ 2 * 5 := by norm_num

/-- Negative work before positive work can keep all completed prefixes below zero. -/
theorem negative_first_pair (a : ℝ) (ha : 0 ≤ a) :
    -a ≤ 0 ∧ -a + a = 0 ∧ max (-a) 0 + max a 0 = a := by
  constructor
  · linarith
  · constructor
    · ring
    · rw [max_eq_right (by linarith : -a ≤ 0), max_eq_left ha]
      ring

/-- The deficit/record reflection retains a complementary nonnegative pair. -/
theorem record_deficit_split (x D : ℝ) :
    x = max (x - D) 0 + D - max (D - x) 0 ∧
      max (x - D) 0 * max (D - x) 0 = 0 := by
  rcases le_total x D with h | h
  · rw [max_eq_right (sub_nonpos.mpr h), max_eq_left (sub_nonneg.mpr h)]
    constructor <;> ring
  · rw [max_eq_left (sub_nonneg.mpr h), max_eq_right (sub_nonpos.mpr h)]
    constructor <;> ring

/-- An affine contact-energy budget gives the declared record reserve. -/
theorem affine_contact_reserve {L W K a e R : ℝ}
    (_hL : 0 ≤ L) (hW : 0 < W) (_ha : 0 ≤ a) (he : 0 ≤ e) (hR : 0 < R)
    (henergy : L ^ 2 ≤ W * K) (hK : K ≤ a * L + e)
    (hreserve : W * (a * R + e) ≤ R ^ 2) : L ≤ R := by
  by_contra h
  have hLR : R < L := lt_of_not_ge h
  have haW : W * a ≤ R := by
    nlinarith [mul_nonneg hW.le he]
  have htotal : L ^ 2 ≤ W * (a * L + e) :=
    henergy.trans (mul_le_mul_of_nonneg_left hK hW.le)
  nlinarith [mul_pos (sub_pos.mpr hLR) hR]

end GRWTSK.RiemannHypothesis.Conversation.CausalRecords
