import Mathlib.Data.Fintype.Powerset
import Mathlib.Data.Nat.Choose.Basic
import Mathematics.SemiLocalDefect.WP0.PrimeHorizon.Insertion

/-!
# Cut-neighborhood primitives

Shells group equal-depth cuts.  A downstream cone is the finite neighborhood
of cuts containing one insertion target.
-/

namespace Mathematics.SemiLocalDefect.SoninCore

def cutShell
    (U : FinitePrimeHorizon)
    (depth : Nat) :
    Finset (PrimeCut U) :=
  Finset.univ.filter
    (fun S => S.card = depth)

def downstreamCone
    {U : FinitePrimeHorizon}
    (e : PrimeInsertionEdge U) :
    Finset (PrimeCut U) :=
  Finset.univ.filter
    (fun T => e.target ⊆ T)

structure PrimeCutCombinatorics
    (U : FinitePrimeHorizon) : Prop where
  shell_cardinality :
    ∀ r,
      (cutShell U r).card =
      Nat.choose
        (Fintype.card U.Prime)
        r
  cone_cardinality :
    ∀ e : PrimeInsertionEdge U,
      (downstreamCone e).card =
      2 ^
        (Fintype.card U.Prime -
          e.target.card)

end Mathematics.SemiLocalDefect.SoninCore
