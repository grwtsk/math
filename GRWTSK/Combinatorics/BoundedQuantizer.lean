/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Order.MinMax
import Mathlib.Data.Nat.Basic

/-!+# Bounded natural quantization

Clamping a requested natural count to a nonempty interval preserves its bounds,
is monotone in the request, and is idempotent. These order-theoretic properties
are independent of any numerical matrix, recurrence, spectral approximation,
or dynamical stability assertion.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Interval.BoundedQuantizer

def clamp (lower upper requested : ℕ) : ℕ := max lower (min upper requested)

theorem lower_le_clamp (lower upper requested : ℕ) :
    lower ≤ clamp lower upper requested := le_max_left _ _

theorem clamp_le_upper (lower upper requested : ℕ) (h : lower ≤ upper) :
    clamp lower upper requested ≤ upper :=
  max_le h (min_le_left _ _)

theorem clamp_mem (lower upper requested : ℕ) (h : lower ≤ upper) :
    lower ≤ clamp lower upper requested ∧ clamp lower upper requested ≤ upper :=
  ⟨lower_le_clamp _ _ _, clamp_le_upper _ _ _ h⟩

theorem clamp_eq_self (lower upper requested : ℕ)
    (hlower : lower ≤ requested) (hupper : requested ≤ upper) :
    clamp lower upper requested = requested := by
  unfold clamp
  rw [min_eq_right hupper, max_eq_right hlower]

theorem clamp_monotone (lower upper : ℕ) : Monotone (clamp lower upper) := by
  intro first second h
  exact max_le_max_left lower (min_le_min_left upper h)

theorem clamp_idempotent (lower upper requested : ℕ) (h : lower ≤ upper) :
    clamp lower upper (clamp lower upper requested) = clamp lower upper requested :=
  clamp_eq_self _ _ _ (lower_le_clamp _ _ _) (clamp_le_upper _ _ _ h)

end GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Interval.BoundedQuantizer
