import Mathematics.Geometry.Primitive

/-!
# Order channel

Betweenness is independent of incidence and congruence.  Its candidate laws
are named propositions rather than hidden fields.
-/

namespace Mathematics.Geometry

universe u

/-- Bare strict-betweenness data. -/
structure OrderSignature (Point : Type u) where
  between : Point → Point → Point → Prop

/-- Reversing the endpoints preserves betweenness. -/
def BetweennessEndpointSymmetry
    {Point : Type u}
    (order : OrderSignature Point) : Prop :=
  ∀ first middle last,
    order.between first middle last →
      order.between last middle first

/-- A strict interior point differs from both endpoints. -/
def BetweennessStrict
    {Point : Type u}
    (order : OrderSignature Point) : Prop :=
  ∀ first middle last,
    order.between first middle last →
      middle ≠ first ∧ middle ≠ last

/-- Betweenness excludes the reverse ordering of the first two points. -/
def BetweennessAsymmetric
    {Point : Type u}
    (order : OrderSignature Point) : Prop :=
  ∀ first middle last,
    order.between first middle last →
      ¬ order.between middle first last

end Mathematics.Geometry
