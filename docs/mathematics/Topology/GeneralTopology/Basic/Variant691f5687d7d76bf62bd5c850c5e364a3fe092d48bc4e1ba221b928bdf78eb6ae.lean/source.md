# Complete source: GRWTSK.Topology.GeneralTopology.Basic.Variant691f5687d7d76bf62bd5c850c5e364a3fe092d48bc4e1ba221b928bdf78eb6ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31fdc36d736514e28a711705ed3d76c26f7405da` · SHA-256 `691f5687d7d76bf62bd5c850c5e364a3fe092d48bc4e1ba221b928bdf78eb6ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Fangming Li. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Fangming Li
-/
import Mathlib.Topology.Sober
import Mathlib.Topology.Spectral.Prespectral

/-!
# Spectral spaces

A topological space is spectral if it is T0, compact, sober, quasi-separated, and its compact open
subsets form an open basis. Prime spectra of commutative semirings are spectral spaces.
-/

variable (α : Type*) [TopologicalSpace α]

/--
A topological space is spectral if it is T0, compact, sober, quasi-separated, and its compact open
subsets form an open basis.
-/
@[stacks 08YG]
class SpectralSpace : Prop extends
  T0Space α, CompactSpace α, QuasiSober α, QuasiSeparatedSpace α, PrespectralSpace α
```
