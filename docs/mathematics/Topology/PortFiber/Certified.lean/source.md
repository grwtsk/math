# Complete source: GRWTSK.Topology.PortFiber.Certified

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57d6221c9cdf479404f303272873d32b95837075` · SHA-256 `a288d72834daed544636f732d2f4279c61ed2ffea4b4c5217b259a2001fb5207`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Topology.PortFiber.Path

namespace GRWTSK.Topology.PortFiber

universe u v w

variable (P : GRWTSK.Topology.PortFiber.{u, v, w})
variable [∀ A : P.Obj, TopologicalSpace (P.Fiber A)]

/-- A continuity proof for the exact fiber map of one typed port. -/
structure ContinuousCertificate {A B : P.Obj} (p : P.Port A B) : Prop where
  continuous : Continuous (P.map p)

namespace ContinuousCertificate

/-- Identity ports are continuous. -/
def identity (A : P.Obj) : ContinuousCertificate P (P.identity A) where
  continuous := by
    have hmap : P.map (P.identity A) = id := by
      funext x
      exact P.map_identity A x
    rw [hmap]
    exact continuous_id

/-- Composable certified ports have a certified continuous composite. -/
def comp {A B C : P.Obj} {p : P.Port A B} {q : P.Port B C}
    (hp : ContinuousCertificate P p) (hq : ContinuousCertificate P q) :
    ContinuousCertificate P (P.comp p q) where
  continuous := by
    have hmap : P.map (P.comp p q) = P.map q ∘ P.map p := by
      funext x
      exact P.map_comp p q x
    rw [hmap]
    exact hq.continuous.comp hp.continuous

/-- Continuity as a composable port property, usable by arbitrary certified paths. -/
def composableProperty : ComposableProperty P where
  Holds := fun p => ContinuousCertificate P p
  identity := ContinuousCertificate.identity P
  comp := fun hp hq => ContinuousCertificate.comp P hp hq

end ContinuousCertificate

end GRWTSK.Topology.PortFiber
```
