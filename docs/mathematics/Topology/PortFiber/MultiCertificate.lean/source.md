# Complete source: GRWTSK.Topology.PortFiber.MultiCertificate

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b53f7b5fc81c747fc80bb1dde388afcf27f8842` · SHA-256 `061da7a900563436e7f6b6cc3718af0d4b3fe6db9767b990ff08599d46a99902`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Topology.PortFiber.Path

namespace GRWTSK.Topology.PortFiber

universe u v w x

namespace ComposableProperty

variable {P : GRWTSK.Topology.PortFiber.{u, v, w}}

/-- Conjunction of two independently composable port properties. -/
def and (L R : ComposableProperty P) : ComposableProperty P where
  Holds := fun p => L.Holds p ∧ R.Holds p
  identity := fun A => ⟨L.identity A, R.identity A⟩
  comp := fun hp hq =>
    ⟨L.comp hp.1 hq.1, R.comp hp.2 hq.2⟩

/-- Simultaneous satisfaction of an indexed family of composable port properties. -/
def all {I : Type x} (law : I → ComposableProperty P) : ComposableProperty P where
  Holds := fun p => ∀ i, (law i).Holds p
  identity := fun A i => (law i).identity A
  comp := fun hp hq i => (law i).comp (hp i) (hq i)

/-- Project a conjunction certificate to its left component. -/
theorem and_left (L R : ComposableProperty P)
    {A B : P.Obj} {p : P.Port A B} (h : (and L R).Holds p) :
    L.Holds p :=
  h.1

/-- Project a conjunction certificate to its right component. -/
theorem and_right (L R : ComposableProperty P)
    {A B : P.Obj} {p : P.Port A B} (h : (and L R).Holds p) :
    R.Holds p :=
  h.2

/-- Every certificate in a simultaneous family is retained by the composite path. -/
theorem certifiedAt {I : Type x} (law : I → ComposableProperty P)
    {A B : P.Obj}
    (path : CertifiedPath P (all law) A B) (i : I) :
    (law i).Holds path.composite :=
  path.certified i

end ComposableProperty

end GRWTSK.Topology.PortFiber
```
