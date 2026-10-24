# Complete source: GRWTSK.NumberTheory.Moebius.ReciprocalPrefix

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9014c091e12c7104e8087204b2aa12552b6a7afa` · SHA-256 `7d44957afb8337671653a138af653a0761431fed659bb26e17423a7262065f01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
import GRWTSK.Analysis.AsymptoticAnalysis.FinitePowerSum

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
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.Analysis.Asymptotics.FinitePowerSum

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

/-- A reciprocal-prefix decay rate transfers through the exact history term
without losing its exponent. -/
theorem pickupMertensPrefix_le_of_reciprocalPrefixDecay {C β : ℝ}
    (hC : 0 ≤ C) (hβ0 : 0 < β) (hβ1 : β < 1)
    (hR : ∀ n : ℕ, 1 ≤ n →
      |pickupReciprocalPrefix n| ≤ C * (n : ℝ) ^ (β - 1)) :
    ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ (C + C / β) * (n : ℝ) ^ β := by
  intro n hn
  have hnpos : (0 : ℝ) < n := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn)
  have hRall (k : ℕ) :
      |pickupReciprocalPrefix k| ≤ C * (k : ℝ) ^ (β - 1) := by
    cases k with
    | zero => simp [Real.zero_rpow (by linarith : β - 1 ≠ 0)]
    | succ k => exact hR (k + 1) (by omega)
  have hend : (n : ℝ) * |pickupReciprocalPrefix n| ≤
      C * (n : ℝ) ^ β := by
    calc
      (n : ℝ) * |pickupReciprocalPrefix n| ≤
          (n : ℝ) * (C * (n : ℝ) ^ (β - 1)) :=
        mul_le_mul_of_nonneg_left (hR n hn) hnpos.le
      _ = C * (n : ℝ) ^ β := by
        rw [Real.rpow_def_of_pos hnpos, Real.rpow_def_of_pos hnpos]
        calc
          (n : ℝ) * (C * Real.exp (Real.log (n : ℝ) * (β - 1))) =
              C * (Real.exp (Real.log (n : ℝ)) *
                Real.exp (Real.log (n : ℝ) * (β - 1))) := by
            rw [Real.exp_log hnpos]
            ring
          _ = C * Real.exp (Real.log (n : ℝ) * β) := by
            rw [← Real.exp_add]
            congr 1
            ring_nf
  have hzero : (0 : ℝ) ^ (β - 1) = 0 :=
    Real.zero_rpow (by linarith : β - 1 ≠ 0)
  have hrange :
      (∑ k ∈ Finset.range n, (k : ℝ) ^ (β - 1)) ≤
        ∑ k ∈ Finset.Icc 1 n, (k : ℝ) ^ (β - 1) := by
    have hmem : 0 ∈ Finset.range n :=
      Finset.mem_range.mpr (lt_of_lt_of_le Nat.zero_lt_one hn)
    rw [← Finset.sum_erase_add (Finset.range n)
      (fun k : ℕ => (k : ℝ) ^ (β - 1)) hmem]
    simp only [Nat.cast_zero, hzero, add_zero]
    apply Finset.sum_le_sum_of_subset_of_nonneg
    · intro k hk
      simp only [Finset.mem_erase, Finset.mem_range] at hk
      exact Finset.mem_Icc.mpr ⟨Nat.one_le_iff_ne_zero.mpr hk.1, hk.2.le⟩
    · intro k _ _
      exact Real.rpow_nonneg (Nat.cast_nonneg k) _
  have hsum :
      (∑ k ∈ Finset.range n, |pickupReciprocalPrefix k|) ≤
        (C / β) * (n : ℝ) ^ β := by
    calc
      (∑ k ∈ Finset.range n, |pickupReciprocalPrefix k|) ≤
          ∑ k ∈ Finset.range n, C * (k : ℝ) ^ (β - 1) :=
        Finset.sum_le_sum (fun k _ => hRall k)
      _ = C * ∑ k ∈ Finset.range n, (k : ℝ) ^ (β - 1) := by
        rw [Finset.mul_sum]
      _ ≤ C * ∑ k ∈ Finset.Icc 1 n, (k : ℝ) ^ (β - 1) :=
        mul_le_mul_of_nonneg_left hrange hC
      _ ≤ C * ((n : ℝ) ^ β / β) :=
        mul_le_mul_of_nonneg_left (sum_Icc_rpow_sub_one_le hβ0 hβ1.le n) hC
      _ = (C / β) * (n : ℝ) ^ β := by ring
  calc
    |pickupMertensPrefix n| ≤
        (n : ℝ) * |pickupReciprocalPrefix n| +
          ∑ k ∈ Finset.range n, |pickupReciprocalPrefix k| :=
      pickupMertensPrefix_abs_le_reciprocalPartialSummation n
    _ ≤ C * (n : ℝ) ^ β + (C / β) * (n : ℝ) ^ β :=
      add_le_add hend hsum
    _ = (C + C / β) * (n : ℝ) ^ β := by ring

/-- Quantitative decay of the actual reciprocal Möbius prefix at any exponent
`β - 1` with `0 < β < 1` implies the completed critical vertical line.  The
decay premise remains the signed arithmetic obligation. -/
theorem criticalBoundary_of_reciprocalPrefixDecay {C β : ℝ}
    (hC : 0 ≤ C) (hβ0 : 0 < β) (hβ1 : β < 1)
    (hR : ∀ n : ℕ, 1 ≤ n →
      |pickupReciprocalPrefix n| ≤ C * (n : ℝ) ^ (β - 1)) :
    CriticalBoundaryVerticalLineUniform := by
  apply criticalBoundary_of_nonnegative_mertensPowerSaving
      (C := C + C / β) (β := β)
  · exact add_nonneg hC (div_nonneg hC hβ0.le)
  · exact hβ0.le
  · exact hβ1
  · exact pickupMertensPrefix_le_of_reciprocalPrefixDecay hC hβ0 hβ1 hR

end GRWTSK.NumberTheory.Moebius.ReciprocalPrefix

#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefix.pickupMertensPrefix_eq_reciprocalPartialSummation
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefix.pickupMertensPrefix_abs_le_reciprocalPartialSummation
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefix.pickupMertensPrefix_le_of_reciprocalPrefixDecay
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefix.criticalBoundary_of_reciprocalPrefixDecay
```
