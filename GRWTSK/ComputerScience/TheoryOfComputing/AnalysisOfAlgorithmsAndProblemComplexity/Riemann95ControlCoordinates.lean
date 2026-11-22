/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the MIT license as described in the file LICENSE.
-/
import Mathlib.Data.Fin.Basic

/-!
# Correct CRT coordinates for 95 finite control labels

For a = s mod 5 and b = s mod 19 the reconstruction is
s = (76*a + 20*b) mod 95. This is a bijection of labels, not a factorization
of a transition function. An independently incremented phase belongs in
external metadata. The native first-transition obstruction is connected to
the literal Cryptids machine in `Riemann95Instrumentation`.
-/

set_option autoImplicit false

namespace GRWTSK.ComputerScience.Riemann95ControlCoordinates

def decode (state : Fin 95) : Fin 5 × Fin 19 :=
  (⟨state.val % 5, Nat.mod_lt _ (by decide)⟩,
   ⟨state.val % 19, Nat.mod_lt _ (by decide)⟩)

def encode (coordinates : Fin 5 × Fin 19) : Fin 95 :=
  ⟨(76 * coordinates.1.val + 20 * coordinates.2.val) % 95,
    Nat.mod_lt _ (by decide)⟩

/-- Both finite round trips are kernel-decidable arithmetic propositions. -/
theorem encode_decode : ∀ state : Fin 95, encode (decode state) = state := by
  decide

theorem decode_encode :
    ∀ coordinates : Fin 5 × Fin 19, decode (encode coordinates) = coordinates := by
  rintro ⟨a, b⟩
  exact (by decide : ∀ x : Fin 5, ∀ y : Fin 19, decode (encode (x, y)) = (x, y)) a b

def controlCoordinates : Fin 95 ≃ Fin 5 × Fin 19 where
  toFun := decode
  invFun := encode
  left_inv := encode_decode
  right_inv := decode_encode

/-- The reversed coefficients do not decode to the stated residue pair. -/
theorem swapped_coefficients_fail :
    decode (⟨(20 * 1 + 76 * 0) % 95, by decide⟩ : Fin 95) ≠ (1, 0) := by
  decide

theorem decode_forty_eight : decode 48 = (3, 10) := by
  decide

/-- Forcing the second coordinate to one already disagrees with label 48. -/
theorem forced_phase_one_changes_label : encode (3, 1) = 58 ∧ encode (3, 1) ≠ 48 := by
  decide

end GRWTSK.ComputerScience.Riemann95ControlCoordinates
