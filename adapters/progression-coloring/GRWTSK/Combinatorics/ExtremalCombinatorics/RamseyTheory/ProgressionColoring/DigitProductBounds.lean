/-
Copyright (c) 2026 grwtsk contributors. Local port under Apache 2.0.
OpenAI retains upstream authorship and licensing.
Source: openai/math@7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a
lean/OAI/Combinatorics/ProgressionColoring/DigitProductBounds.lean (blob da60caf61554a2b0c8e61275a9dd0e145b3755ec).
Only module imports and the enclosing namespace are adapted.
-/
import GRWTSK.Combinatorics.ExtremalCombinatorics.RamseyTheory.ProgressionColoring.DigitProduct
import GRWTSK.Combinatorics.ExtremalCombinatorics.RamseyTheory.ProgressionColoring.UpperBound

namespace GRWTSK.Combinatorics.ProgressionColoring

namespace QuantitativeVanDerWaerden

/-- The product of any number of copies of one cyclic Boolean coloring. -/
theorem cyclic_binary_product_lower {N k m : ℕ} {C : ZMod N → Bool}
    (hN : 2 ≤ N) (hk : 2 ≤ k) (hC : CyclicAvoids C k) :
    N ^ m < W (2 ^ m) k := by
  exact binary_digit_product_lt_W hN hk hC
    (finite_ramsey (pow_pos (by decide : 0 < (2 : ℕ)) m) (by omega))

theorem cyclic_binary_color_lower {N k r : ℕ} {C : ZMod N → Bool}
    (hN : 2 ≤ N) (hk : 2 ≤ k) (hr : 2 ≤ r) (hC : CyclicAvoids C k) :
    N ^ Nat.log 2 r < W r k := by
  exact binary_digit_product_log_lt_W hN hk hr hC
    (finite_ramsey (by omega) (by omega))

end QuantitativeVanDerWaerden

end GRWTSK.Combinatorics.ProgressionColoring
