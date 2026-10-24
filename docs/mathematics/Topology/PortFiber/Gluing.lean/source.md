# Complete source: GRWTSK.Topology.PortFiber.Gluing

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28bc13d2297559ea515bb04d793587f55ca05ecd` · SHA-256 `27120ba5ddfcd8f9644cdbb97b540c06408669a8fb46edfb3341bf8a7776418f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Topology.PortFiber.Path

namespace GRWTSK.Topology.PortFiber

universe u v w

/-- A binary local-to-global diagram in one port-fiber system. -/
structure BinaryCover (P : GRWTSK.Topology.PortFiber.{u, v, w}) where
  X : P.Obj
  U : P.Obj
  V : P.Obj
  W : P.Obj
  xToU : P.Port X U
  xToV : P.Port X V
  uToW : P.Port U W
  vToW : P.Port V W
  commute : ∀ x,
    P.map uToW (P.map xToU x) =
      P.map vToW (P.map xToV x)

namespace BinaryCover

variable {P : GRWTSK.Topology.PortFiber.{u, v, w}}

/-- Local sections agree on the overlap. -/
def MatchingPair (C : BinaryCover P)
    (sU : P.Fiber C.U) (sV : P.Fiber C.V) : Prop :=
  P.map C.uToW sU = P.map C.vToW sV

/-- Restrictions of every global section form a matching pair. -/
theorem global_matching (C : BinaryCover P) (s : P.Fiber C.X) :
    C.MatchingPair (P.map C.xToU s) (P.map C.xToV s) :=
  C.commute s

/-- One global section realizing a selected matching pair. -/
structure Glue (C : BinaryCover P)
    (sU : P.Fiber C.U) (sV : P.Fiber C.V) where
  global : P.Fiber C.X
  restrictU : P.map C.xToU global = sU
  restrictV : P.map C.xToV global = sV

/-- Global sections are determined by their two local restrictions. -/
def Separated (C : BinaryCover P) : Prop :=
  ∀ x y : P.Fiber C.X,
    P.map C.xToU x = P.map C.xToU y →
    P.map C.xToV x = P.map C.xToV y →
    x = y

/-- Every matching pair has at least one global realization. -/
def HasGluing (C : BinaryCover P) : Prop :=
  ∀ sU sV, C.MatchingPair sU sV → Nonempty (C.Glue sU sV)

/-- Binary sheaf condition at one exact cover. -/
structure SheafCertificate (C : BinaryCover P) : Prop where
  hasGluing : C.HasGluing
  separated : C.Separated

namespace Glue

/-- A separated cover makes the global realization unique. -/
theorem global_unique {C : BinaryCover P}
    {sU : P.Fiber C.U} {sV : P.Fiber C.V}
    (hsep : C.Separated) (g h : C.Glue sU sV) :
    g.global = h.global :=
  hsep g.global h.global
    (g.restrictU.trans h.restrictU.symm)
    (g.restrictV.trans h.restrictV.symm)

end Glue

/-- The degenerate identity cover, useful as a hostile-control baseline. -/
def identityCover (P : GRWTSK.Topology.PortFiber.{u, v, w}) (A : P.Obj) :
    BinaryCover P where
  X := A
  U := A
  V := A
  W := A
  xToU := P.identity A
  xToV := P.identity A
  uToW := P.identity A
  vToW := P.identity A
  commute := by
    intro x
    simp only [P.map_identity]

/-- Matching on the identity cover is ordinary equality. -/
theorem identity_matching_iff
    (P : GRWTSK.Topology.PortFiber.{u, v, w}) (A : P.Obj)
    (x y : P.Fiber A) :
    (identityCover P A).MatchingPair x y ↔ x = y := by
  unfold MatchingPair
  simp only [identityCover, P.map_identity]

/-- The identity cover satisfies the binary sheaf condition. -/
def identitySheaf
    (P : GRWTSK.Topology.PortFiber.{u, v, w}) (A : P.Obj) :
    SheafCertificate (identityCover P A) where
  hasGluing := by
    intro sU sV h
    have hEq : sU = sV := (identity_matching_iff P A sU sV).mp h
    subst sV
    exact ⟨
      { global := sU
        restrictU := P.map_identity A sU
        restrictV := P.map_identity A sU }⟩
  separated := by
    intro x y hx _hy
    calc
      x = P.map (P.identity A) x := (P.map_identity A x).symm
      _ = P.map (P.identity A) y := hx
      _ = y := P.map_identity A y

end BinaryCover

end GRWTSK.Topology.PortFiber
```
