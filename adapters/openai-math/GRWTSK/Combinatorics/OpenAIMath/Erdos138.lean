/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in LICENSES/OpenAI-Apache-2.0.txt.
OpenAI retains upstream authorship and licensing of the imported mathematics.
-/
import GRWTSK.Combinatorics.OpenAIMath.QuantitativeVanDerWaerden

/-!
# Erdős Problem #138: the kth-root growth statement

The upstream proof is OpenAI's `kthRoot_tendsto` at
openai/math@7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a, not the comparator
with the same mathematical statement. We supply the interval-convention bridge:
the positive interval `1,...,N` and the zero-based interval `0,...,N-1` have
identical Ramsey properties by shifting the coloring and progression origin.
Local compilation, fresh kernel checking, and transitive axiom audit: NOT_RUN.
-/

namespace GRWTSK.Combinatorics.OpenAIMath.Erdos138

/-- Every two-coloring has a positive-start monochromatic progression in `[1,N]`. -/
def IsRamsey (k N : ℕ) : Prop :=
  ∀ c : ℕ → Fin 2, ∃ a d : ℕ, 0 < a ∧ 0 < d ∧
    a + (k - 1) * d ≤ N ∧ ∀ j < k, c (a + j * d) = c a

/-- The least positive interval size forcing such a progression. -/
noncomputable def W (k : ℕ) : ℕ := sInf {N : ℕ | 0 < N ∧ IsRamsey k N}

/-- Shifting the underlying interval preserves the exact progression length and step. -/
theorem isRamsey_iff_upstream (k N : ℕ) :
    IsRamsey k N ↔ OAI.QuantitativeVanDerWaerden.IsRamsey (Fin 2) k N := by
  constructor
  · intro h c
    obtain ⟨a, d, ha, hd, hb, hm⟩ := h (fun i => c (i - 1))
    refine ⟨a - 1, d, hd, ?_, ?_⟩
    · omega
    · intro j hj
      have hj' := hm j hj
      have hs : a + j * d - 1 = a - 1 + j * d := by omega
      simpa only [hs] using hj'
  · intro h c
    obtain ⟨a, d, hd, hb, hm⟩ := h (fun i => c (i + 1))
    refine ⟨a + 1, d, by omega, hd, ?_, ?_⟩
    · omega
    · intro j hj
      simpa only [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using hm j hj

/-- The independently stated catalogue interval convention has the same Ramsey number. -/
theorem W_eq_upstream (k : ℕ) : W k = OAI.QuantitativeVanDerWaerden.W 2 k := by
  unfold W OAI.QuantitativeVanDerWaerden.W
  congr 1
  ext N
  exact and_congr_right (fun _ => isRamsey_iff_upstream k N)

/-- The kth-root question in Erdős Problem #138, by the pinned upstream proof
and the explicit interval-convention bridge. This asserts no ratio-growth variant. -/
theorem erdos_138 :
    Filter.Tendsto (fun k : ℕ => (W k : ℝ) ^ (1 / (k : ℝ)))
      Filter.atTop Filter.atTop := by
  simpa only [W_eq_upstream] using
    (OAI.QuantitativeVanDerWaerden.kthRoot_tendsto (r := 2) (by decide))

end GRWTSK.Combinatorics.OpenAIMath.Erdos138
