# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Arc.Variant3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `909e1c060e2f906caf2111427e87a6de18cf4306` · SHA-256 `3aa4580a8d88ae5639f6c6e7e7f1cf040963a01117b53e19149dbf348fe03ed9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.GraphCut
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Prod.Lex
import Mathlib.Tactic.DeriveFintype

/-!
# Directed views of immutable graph edges

An arc is an edge together with an explicit traversal direction.  Forward and
reverse views remain distinct even when they share the same stored edge.
-/

namespace Mathematics.GraphAccess

inductive ArcDirection
  | forward
  | reverse
deriving DecidableEq, Ord, Repr, Fintype

def ArcDirection.code : ArcDirection → Nat
  | .forward => 0
  | .reverse => 1

theorem ArcDirection.code_injective :
    Function.Injective ArcDirection.code := by
  intro left right equality
  cases left <;> cases right <;>
    simp_all [ArcDirection.code]

instance : LinearOrder ArcDirection :=
  LinearOrder.lift'
    ArcDirection.code
    ArcDirection.code_injective

structure Arc (G : GraphCut) where
  edge : G.Edge
  direction : ArcDirection
deriving DecidableEq

instance (G : GraphCut) : Fintype (Arc G) :=
  letI : Fintype G.Edge := G.edgeFintype
  Fintype.ofEquiv
      (G.Edge × ArcDirection)
      { toFun := fun pair =>
          { edge := pair.1
            direction := pair.2 }
        invFun := fun arc =>
          (arc.edge, arc.direction)
        left_inv := by
          intro pair
          rfl
        right_inv := by
          intro arc
          cases arc
          rfl }

namespace Arc

def directionCode : ArcDirection → Nat :=
  ArcDirection.code

def tail
    {G : GraphCut}
    (arc : Arc G) : G.Node :=
  match arc.direction with
  | .forward => G.source arc.edge
  | .reverse => G.target arc.edge

def head
    {G : GraphCut}
    (arc : Arc G) : G.Node :=
  match arc.direction with
  | .forward => G.target arc.edge
  | .reverse => G.source arc.edge

def reverse
    {G : GraphCut}
    (arc : Arc G) : Arc G :=
  { edge := arc.edge
    direction :=
      match arc.direction with
      | .forward => .reverse
      | .reverse => .forward }

@[simp]
theorem reverse_reverse
    {G : GraphCut}
    (arc : Arc G) :
    arc.reverse.reverse = arc := by
  cases arc with
  | mk edge direction =>
      cases direction <;> rfl

theorem reverse_involutive
    {G : GraphCut} :
    Function.Involutive (@reverse G) :=
  reverse_reverse

@[simp]
theorem tail_reverse
    {G : GraphCut}
    (arc : Arc G) :
    arc.reverse.tail = arc.head := by
  cases arc with
  | mk edge direction =>
      cases direction <;> rfl

theorem reverse_tail
    {G : GraphCut}
    (arc : Arc G) :
    arc.reverse.tail = arc.head :=
  tail_reverse arc

@[simp]
theorem head_reverse
    {G : GraphCut}
    (arc : Arc G) :
    arc.reverse.head = arc.tail := by
  cases arc with
  | mk edge direction =>
      cases direction <;> rfl

theorem reverse_head
    {G : GraphCut}
    (arc : Arc G) :
    arc.reverse.head = arc.tail :=
  head_reverse arc

def canonicalKey
    {G : GraphCut}
  (arc : Arc G) : CanonicalCode × Nat :=
  (G.edgeCode arc.edge, directionCode arc.direction)

instance {G : GraphCut} : Repr (Arc G) where
  reprPrec arc precedence :=
    Repr.reprPrec (canonicalKey arc) precedence

theorem canonicalKey_injective
    {G : GraphCut} :
    Function.Injective (@canonicalKey G) := by
  intro left right equality
  cases left with
  | mk leftEdge leftDirection =>
      cases right with
      | mk rightEdge rightDirection =>
          simp only [canonicalKey, Prod.mk.injEq] at equality
          rcases equality with ⟨edgeEquality, directionEquality⟩
          have edgesEqual :=
            G.edgeCode_injective edgeEquality
          have directionsEqual : leftDirection = rightDirection := by
            cases leftDirection <;>
              cases rightDirection <;>
            simp_all [directionCode, ArcDirection.code]
          subst rightEdge
          subst rightDirection
          rfl

def canonicalLexKey
    {G : GraphCut}
    (arc : Arc G) :
    CanonicalCode ×ₗ Nat :=
  toLex arc.canonicalKey

theorem canonicalLexKey_injective
    {G : GraphCut} :
    Function.Injective (@canonicalLexKey G) := by
  intro left right equality
  exact canonicalKey_injective
    (toLex.injective equality)

instance {G : GraphCut} : LinearOrder (Arc G) :=
  LinearOrder.lift'
    canonicalLexKey canonicalLexKey_injective

theorem forward_ne_reverse
    {G : GraphCut}
    (edge : G.Edge) :
    (Arc.mk edge .forward : Arc G) ≠
      Arc.mk edge .reverse := by
  intro equality
  have directionEquality :=
    congrArg Arc.direction equality
  cases directionEquality

end Arc

end Mathematics.GraphAccess
```
