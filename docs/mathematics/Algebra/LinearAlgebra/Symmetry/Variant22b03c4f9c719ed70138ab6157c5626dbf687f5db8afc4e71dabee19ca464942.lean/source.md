# Complete source: GRWTSK.Algebra.LinearAlgebra.Symmetry.Variant22b03c4f9c719ed70138ab6157c5626dbf687f5db8afc4e71dabee19ca464942

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e39253539d6317601c90a74c7b418d33e45eed9` · SHA-256 `22b03c4f9c719ed70138ab6157c5626dbf687f5db8afc4e71dabee19ca464942`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.FiberTensor

namespace Surface.Legacy

structure FiniteSymmetryGroup where
  carrier : Type
  mul : carrier → carrier → carrier
  one : carrier
  inv : carrier → carrier
  group_laws : Prop

structure FiberTwist
    (G : FiniteSymmetryGroup)
    (T : BinaryMatrixFiberTensor) where
  actOnSite : G.carrier → FiberTensorSite → FiberTensorSite
  actionSound : Prop

theorem finiteSymmetryGroup_requires_laws
    (G : FiniteSymmetryGroup) :
    G.group_laws → G.group_laws := by
  intro h
  exact h

theorem fiberTwist_requires_action_sound
    {G : FiniteSymmetryGroup}
    {T : BinaryMatrixFiberTensor}
    (tw : FiberTwist G T) :
    tw.actionSound → tw.actionSound := by
  intro h
  exact h

end Surface.Legacy
```
