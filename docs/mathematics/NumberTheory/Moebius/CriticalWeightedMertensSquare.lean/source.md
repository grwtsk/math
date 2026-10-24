# Complete source: GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ecb7464bfe5798bbd49c0ecd60d1fb6f02d8865e` · SHA-256 `38da496dd4d58f8f8b95631c3e4d8a959fd748d7d18512e12154325c31f1ac6a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.CriticalMertensTransformMeanSquare

/-!
# Explicit weighted Mertens-square input for the critical transform

The exact square-root gap is bounded by a simple adjacent-integer weight.
This turns the transform-increment hypothesis into an explicit mean-square
Mertens condition of order `M(n)^2 / n^(2+ε)`.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence
open GRWTSK.NumberTheory.Moebius.CriticalMertensTransformMeanSquare

/-- Refined cubic-half estimate for the adjacent reciprocal-square-root gap. -/
theorem criticalEndpointGap_le_inv_sqrt_mul_succ {n : ℕ} (hn : 1 ≤ n) :
    criticalEndpointGap n ≤
      1 / (Real.sqrt n * ((n + 1 : ℕ) : ℝ)) := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  have hspos : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
  let a : ℝ := Real.sqrt n
  let b : ℝ := Real.sqrt ((n + 1 : ℕ) : ℝ)
  have ha : 0 < a := by dsimp [a]; positivity
  have hb : 0 < b := by dsimp [b]; positivity
  have ha2 : a ^ 2 = (n : ℝ) := by
    dsimp [a]
    exact Real.sq_sqrt hnpos.le
  have hb2 : b ^ 2 = ((n + 1 : ℕ) : ℝ) := by
    dsimp [b]
    exact Real.sq_sqrt hspos.le
  have hconj : (b - a) * (a + b) = 1 := by
    have hdiff : b ^ 2 - a ^ 2 = 1 := by
      rw [hb2, ha2]
      norm_num
    nlinarith
  have hgap : a⁻¹ - b⁻¹ = 1 / (a * b * (a + b)) := by
    field_simp [ha.ne', hb.ne', (add_pos ha hb).ne']
    nlinarith [hconj]
  have hdenom : a * ((n + 1 : ℕ) : ℝ) ≤ a * b * (a + b) := by
    rw [← hb2]
    have hb_le : b ≤ a + b := le_add_of_nonneg_left ha.le
    calc
      a * b ^ 2 = (a * b) * b := by ring
      _ ≤ (a * b) * (a + b) :=
        mul_le_mul_of_nonneg_left hb_le (mul_nonneg ha.le hb.le)
  unfold criticalEndpointGap
  change a⁻¹ - b⁻¹ ≤ 1 / (a * ((n + 1 : ℕ) : ℝ))
  rw [hgap]
  exact one_div_le_one_div_of_le (mul_pos ha hspos) hdenom

/-- Squared adjacent-gap bound in rational integer weights. -/
theorem criticalEndpointGap_sq_le_inv_mul_succ_sq {n : ℕ} (hn : 1 ≤ n) :
    criticalEndpointGap n ^ 2 ≤
      1 / ((n : ℝ) * ((n + 1 : ℕ) : ℝ) ^ 2) := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  have hspos : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
  have hsqrt : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.mpr hnpos
  have h := (sq_le_sq₀ (criticalEndpointGap_nonneg hn)
    (by positivity : 0 ≤ 1 / (Real.sqrt n * ((n + 1 : ℕ) : ℝ)))).2
      (criticalEndpointGap_le_inv_sqrt_mul_succ hn)
  calc
    criticalEndpointGap n ^ 2 ≤
        (1 / (Real.sqrt n * ((n + 1 : ℕ) : ℝ))) ^ 2 := h
    _ = 1 / ((n : ℝ) * ((n + 1 : ℕ) : ℝ) ^ 2) := by
      rw [div_pow]
      field_simp [hsqrt.ne', hspos.ne', Real.sq_sqrt hnpos.le]
      exact (Real.sq_sqrt hnpos.le).symm

/-- Explicit `M(n)^2 / n^(2+ε)`-scale summability premise. -/
def CriticalWeightedMertensSquareSummable (ε : ℝ) : Prop :=
  Summable (fun n : ℕ =>
    pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(1 : ℝ)) *
      ((n + 1 : ℕ) : ℝ) ^ (-(1 + ε)))

/-- The exact transform-increment square is dominated by the explicit
weighted Mertens square. -/
theorem criticalMertensIncrementTerm_le_weightedSquare (ε : ℝ) {n : ℕ}
    (hn : 1 ≤ n) :
    (pickupMertensPrefix n * criticalEndpointGap n) ^ 2 *
        ((n + 1 : ℕ) : ℝ) ^ (1 - ε) ≤
      pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(1 : ℝ)) *
        ((n + 1 : ℕ) : ℝ) ^ (-(1 + ε)) := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  have hspos : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
  rw [mul_pow]
  calc
    pickupMertensPrefix n ^ 2 * criticalEndpointGap n ^ 2 *
        ((n + 1 : ℕ) : ℝ) ^ (1 - ε) ≤
      pickupMertensPrefix n ^ 2 *
          (1 / ((n : ℝ) * ((n + 1 : ℕ) : ℝ) ^ 2)) *
        ((n + 1 : ℕ) : ℝ) ^ (1 - ε) := by
      gcongr
      exact criticalEndpointGap_sq_le_inv_mul_succ_sq hn
    _ = pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(1 : ℝ)) *
        ((n + 1 : ℕ) : ℝ) ^ (-(1 + ε)) := by
      rw [show 1 / ((n : ℝ) * ((n + 1 : ℕ) : ℝ) ^ 2) =
          (n : ℝ) ^ (-(1 : ℝ)) *
            ((n + 1 : ℕ) : ℝ) ^ (-(2 : ℝ)) by
        rw [Real.rpow_neg hnpos.le, Real.rpow_neg hspos.le,
          Real.rpow_one]
        field_simp
        exact Real.rpow_natCast _ 2]
      calc
        pickupMertensPrefix n ^ 2 *
            ((n : ℝ) ^ (-(1 : ℝ)) *
              ((n + 1 : ℕ) : ℝ) ^ (-(2 : ℝ))) *
            ((n + 1 : ℕ) : ℝ) ^ (1 - ε) =
          pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(1 : ℝ)) *
            (((n + 1 : ℕ) : ℝ) ^ (-(2 : ℝ)) *
              ((n + 1 : ℕ) : ℝ) ^ (1 - ε)) := by ring
        _ = pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(1 : ℝ)) *
            ((n + 1 : ℕ) : ℝ) ^ ((-(2 : ℝ)) + (1 - ε)) := by
          rw [Real.rpow_add hspos]
        _ = pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(1 : ℝ)) *
            ((n + 1 : ℕ) : ℝ) ^ (-(1 + ε)) := by ring_nf

/-- The explicit weighted Mertens-square premise pays the exact increment
mean square. -/
theorem incrementMeanSquare_of_weightedMertensSquare {ε : ℝ}
    (hs : CriticalWeightedMertensSquareSummable ε) :
    CriticalMertensIncrementMeanSquare ε := by
  unfold CriticalWeightedMertensSquareSummable at hs
  unfold CriticalMertensIncrementMeanSquare
  apply hs.of_nonneg_of_le
  · intro n
    positivity
  · intro n
    cases n with
    | zero => simp [pickupMertensPrefix, criticalEndpointGap]
    | succ n =>
        exact criticalMertensIncrementTerm_le_weightedSquare ε (by omega)

/-- A weighted Mertens square at any exponent `2+ε`, `0<ε<1`, reaches the
critical boundary. -/
theorem criticalBoundary_of_weightedMertensSquare {ε : ℝ}
    (hε0 : 0 < ε) (hε1 : ε < 1)
    (hs : CriticalWeightedMertensSquareSummable ε) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_incrementMeanSquare hε0 hε1
    (incrementMeanSquare_of_weightedMertensSquare hs)

end GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare

#print axioms GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare.criticalEndpointGap_le_inv_sqrt_mul_succ
#print axioms GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare.criticalEndpointGap_sq_le_inv_mul_succ_sq
#print axioms GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare.incrementMeanSquare_of_weightedMertensSquare
#print axioms GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare.criticalBoundary_of_weightedMertensSquare
```
