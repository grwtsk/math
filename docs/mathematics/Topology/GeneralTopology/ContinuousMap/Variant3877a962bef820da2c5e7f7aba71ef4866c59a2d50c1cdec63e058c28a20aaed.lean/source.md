# Complete source: GRWTSK.Topology.GeneralTopology.ContinuousMap.Variant3877a962bef820da2c5e7f7aba71ef4866c59a2d50c1cdec63e058c28a20aaed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b12218c3adab943891d69eba4f1ce7a50fd48dc0` · SHA-256 `3877a962bef820da2c5e7f7aba71ef4866c59a2d50c1cdec63e058c28a20aaed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Topology.Metrizable.Uniformity
import Mathlib.Topology.UniformSpace.CompactConvergence

/-!
# Metrizability of `C(X, Y)`

If `X` is a weakly locally compact σ-compact space and `Y` is a (pseudo)metrizable space,
then `C(X, Y)` is a (pseudo)metrizable space.
-/

open TopologicalSpace

namespace ContinuousMap

variable {X Y : Type*}
  [TopologicalSpace X] [WeaklyLocallyCompactSpace X] [SigmaCompactSpace X]
  [TopologicalSpace Y]

instance [PseudoMetrizableSpace Y] : PseudoMetrizableSpace C(X, Y) :=
  let _ := pseudoMetrizableSpacePseudoMetric Y
  inferInstance

instance [MetrizableSpace Y] : MetrizableSpace C(X, Y) :=
  let _ := metrizableSpaceMetric Y
  UniformSpace.metrizableSpace

end ContinuousMap
```
