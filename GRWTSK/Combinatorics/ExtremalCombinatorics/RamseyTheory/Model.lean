/-
Copyright (c) 2026 grwtsk contributors. Local port under Apache 2.0.
OpenAI retains upstream authorship and licensing.
Source: openai/math@7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a
lean/OAI/Combinatorics/ProgressionColoring/Model.lean (blob 996e314a8a8293eaaadba41fe40e8522152b8656).
Only module imports and the enclosing namespace are adapted.
-/
import Mathlib.Order.Lattice.Nat

namespace GRWTSK.Combinatorics.ProgressionColoring

universe u

namespace QuantitativeVanDerWaerden

def MonoAP {α : Type u} (c : ℕ → α) (k a d : ℕ) : Prop :=
  ∀ j < k, c (a + j * d) = c a

def HasMonoAP {α : Type u} (c : ℕ → α) (k N : ℕ) : Prop :=
  ∃ a d, 0 < d ∧ a + (k - 1) * d < N ∧ MonoAP c k a d

def IsRamsey (α : Type u) (k N : ℕ) : Prop :=
  ∀ c : ℕ → α, HasMonoAP c k N

/-- The least positive Ramsey interval size. Statements about its Ramsey
property require a finiteness proof; no such proof is built into this definition. -/
noncomputable def W (r k : ℕ) : ℕ :=
  sInf {N : ℕ | 0 < N ∧ IsRamsey (Fin r) k N}

end QuantitativeVanDerWaerden

end GRWTSK.Combinatorics.ProgressionColoring
