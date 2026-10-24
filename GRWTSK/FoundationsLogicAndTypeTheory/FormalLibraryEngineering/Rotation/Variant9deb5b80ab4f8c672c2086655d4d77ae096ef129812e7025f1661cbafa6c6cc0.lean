import Mathematics.Cubical.Complex
import Mathematics.Oracle.Naming.CyclicCubical

/-! # Rotation-equivariant cubical boundary -/

namespace Mathematics.Cubical

open Mathematics.Oracle.Naming

theorem rotation_commutes_boundary
    {n : Nat} [NeZero n]
    (turn : ZMod n)
    (chain : CubicalChain n) :
    cubicalBoundary (rotate_chainMap turn chain) =
      rotate_chainMap turn (cubicalBoundary chain) :=
  boundary_rotate turn chain

end Mathematics.Cubical
