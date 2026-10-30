/-
Copyright (c) 2026 grwtsk contributors. Local port under Apache 2.0.
OpenAI retains upstream authorship and licensing.
Source: openai/math@7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a
lean/OAI/Combinatorics/ProgressionColoring/CyclicBasic.lean (blob 66731fc577bf5019da75fa63c2f5dbf5faabe077).
Only module imports and the enclosing namespace are adapted.
-/
import Mathlib.Data.ZMod.Basic

namespace GRWTSK.Combinatorics.ProgressionColoring

/-! The common nonzero-step cyclic avoidance predicate. Colors are generic so
the constructed Boolean coloring and finite-cardinality transfers use the same
definition without a color conversion. -/

universe uAlpha

namespace QuantitativeVanDerWaerden

def CyclicAvoids {N : ℕ} {α : Type uAlpha} (C : ZMod N → α) (k : ℕ) : Prop :=
  ∀ a d, d ≠ 0 → ¬ (∀ j < k, C (a + (j : ZMod N) * d) = C a)

end QuantitativeVanDerWaerden

end GRWTSK.Combinatorics.ProgressionColoring
