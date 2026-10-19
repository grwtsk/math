import DAF.Terrain.Core
import Mathlib.Data.ZMod.Basic
import Mathlib.Data.Real.Basic

/-!
# Binary charges on concrete terrain vertices

Charges are vertex observations, not permutation matrices or action matrices.
The Boolean and `ZMod 2` presentations are tied pointwise by a proof field.
-/

universe u

namespace DAF.Terrain

/-- A finite family of one-bit channels on each concrete vertex. -/
structure BinaryVertexCharge
    (V : Type u) [Fintype V] [DecidableEq V] where
  channels : Nat
  bits : V → Fin channels → Bool
  f2 : V → Fin channels → ZMod 2
  f2_spec : ∀ v i, f2 v i = if bits v i then 1 else 0

/-- Terrain adjacency and vertex charge remain separate fields. -/
structure ChargedTerrain
    (V : Type u) [Fintype V] [DecidableEq V] where
  terrain : Terrain V
  charge : BinaryVertexCharge V

/-- Exact Boolean embedding used by raster and threshold layers. -/
def boolToReal : Bool → Real
  | false => 0
  | true => 1

@[simp] theorem boolToReal_false : boolToReal false = 0 := rfl
@[simp] theorem boolToReal_true : boolToReal true = 1 := rfl

end DAF.Terrain
