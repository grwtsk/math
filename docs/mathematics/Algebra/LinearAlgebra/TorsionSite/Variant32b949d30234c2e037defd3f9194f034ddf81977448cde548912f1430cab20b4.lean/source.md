# Complete source: GRWTSK.Algebra.LinearAlgebra.TorsionSite.Variant32b949d30234c2e037defd3f9194f034ddf81977448cde548912f1430cab20b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72a67f0b629e8f4887b6ec9e2dce9a7c2e99f8b4` · SHA-256 `32b949d30234c2e037defd3f9194f034ddf81977448cde548912f1430cab20b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Symmetry

namespace Surface.Legacy

def iteratedAction
    {G : FiniteSymmetryGroup}
    (act : G.carrier → FiberTensorSite → FiberTensorSite)
    (element : G.carrier) : Nat → FiberTensorSite → FiberTensorSite
| 0, site => site
| Nat.succ n, site => act element (iteratedAction act element n site)

structure TorsionAtSite
    (G : FiniteSymmetryGroup)
    (T : BinaryMatrixFiberTensor)
    (tw : FiberTwist G T) where
  site : FiberTensorSite
  element : G.carrier
  order : Nat
  order_pos : 0 < order
  torsionSound :
    iteratedAction tw.actOnSite element order site = site

theorem torsionAtSite_has_positive_order
    {G : FiniteSymmetryGroup}
    {T : BinaryMatrixFiberTensor}
    {tw : FiberTwist G T}
    (tor : TorsionAtSite G T tw) :
    0 < tor.order := by
  exact tor.order_pos

theorem torsionAtSite_returns_to_site
    {G : FiniteSymmetryGroup}
    {T : BinaryMatrixFiberTensor}
    {tw : FiberTwist G T}
    (tor : TorsionAtSite G T tw) :
    iteratedAction tw.actOnSite tor.element tor.order tor.site = tor.site := by
  exact tor.torsionSound

end Surface.Legacy
```
