/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform

/-!
# Reciprocal Möbius prefixes and discrete partial summation

The natural reciprocal prefix of the actual pickup coefficients determines the
Mertens prefix by an exact finite Abel identity.  Its absolute-value corollary
retains the accumulated cost of every earlier reciprocal prefix; boundedness
alone is therefore not silently promoted to a power saving.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.ReciprocalPrefix

open GRWTSK.RiemannHypothesis.CCC

/-- Closed reciprocal prefix of the actual real Möbius coefficients. -/
def pickupReciprocalPrefix (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N, moebiusReal n / (n : ℝ)

@[simp] theorem pickupReciprocalPrefix_zero : pickupReciprocalPrefix 0 = 0 := by
  simp [pickupReciprocalPrefix]

theorem pickupReciprocalPrefix_succ (N : ℕ) :
    pickupReciprocalPrefix (N + 1) =
      pickupReciprocalPrefix N + moebiusReal (N + 1) / (N + 1 : ℕ) := by
  rw [pickupReciprocalPrefix, Finset.sum_Icc_succ_top (by omega)]
  rfl

theorem pickupMertensPrefix_succ (N : ℕ) :
    pickupMertensPrefix (N + 1) =
      pickupMertensPrefix N + moebiusReal (N + 1) := by
  change (∑ n ∈ Finset.Icc 1 (N + 1), moebiusReal n) =
    (∑ n ∈ Finset.Icc 1 N, moebiusReal n) + moebiusReal (N + 1)
  rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]

/-- Exact discrete partial summation.  The full history term is retained. -/
theorem pickupMertensPrefix_eq_reciprocalPartialSummation (N : ℕ) :
    pickupMertensPrefix N =
      (N : ℝ) * pickupReciprocalPrefix N -
        ∑ k ∈ Finset.range N, pickupReciprocalPrefix k := by
  induction N with
  | zero => simp [pickupMertensPrefix]
  | succ N ih =>
      rw [show N + 1 = Nat.succ N by rfl, pickupMertensPrefix_succ,
        pickupReciprocalPrefix_succ, Finset.sum_range_succ, ih]
      have hne : ((N + 1 : ℕ) : ℝ) ≠ 0 := by positivity
      field_simp [hne]
      norm_num [Nat.cast_succ]
      ring

/-- Taking absolute values exposes the exact endpoint and accumulated-history
costs.  In particular, a uniform bound for the reciprocal prefix gives only a
linear allowance unless additional decay or cancellation is proved. -/
theorem pickupMertensPrefix_abs_le_reciprocalPartialSummation (N : ℕ) :
    |pickupMertensPrefix N| ≤
      (N : ℝ) * |pickupReciprocalPrefix N| +
        ∑ k ∈ Finset.range N, |pickupReciprocalPrefix k| := by
  rw [pickupMertensPrefix_eq_reciprocalPartialSummation]
  calc
    |(N : ℝ) * pickupReciprocalPrefix N -
        ∑ k ∈ Finset.range N, pickupReciprocalPrefix k| ≤
      |(N : ℝ) * pickupReciprocalPrefix N| +
        |∑ k ∈ Finset.range N, pickupReciprocalPrefix k| := abs_sub _ _
    _ ≤ |(N : ℝ) * pickupReciprocalPrefix N| +
        ∑ k ∈ Finset.range N, |pickupReciprocalPrefix k| :=
      add_le_add le_rfl (Finset.abs_sum_le_sum_abs _ _)
    _ = (N : ℝ) * |pickupReciprocalPrefix N| +
        ∑ k ∈ Finset.range N, |pickupReciprocalPrefix k| := by
      rw [abs_mul, abs_of_nonneg (Nat.cast_nonneg N)]

end GRWTSK.NumberTheory.Moebius.ReciprocalPrefix

#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefix.pickupMertensPrefix_eq_reciprocalPartialSummation
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefix.pickupMertensPrefix_abs_le_reciprocalPartialSummation
