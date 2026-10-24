import Mathlib.Logic.Equiv.Fin.Basic
import BridgeElements.BitMatrixSurface

/-! # Row-major coordinate correspondence. -/

namespace URSM.Bridge

def rowMajor
    (coordinate : Fin m × Fin n) :
    Fin (m * n) :=
  finProdFinEquiv coordinate

theorem rowMajor_injective :
    Function.Injective
      (rowMajor : Fin m × Fin n → Fin (m * n)) :=
  finProdFinEquiv.injective

@[simp] theorem rowMajor_value
    (i : Fin m)
    (j : Fin n) :
    (rowMajor (i, j)).val = i.val * n + j.val :=
  by
    simp [rowMajor, finProdFinEquiv, Nat.mul_comm, Nat.add_comm]

end URSM.Bridge
