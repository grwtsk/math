# Complete source: GRWTSK.Topology.MetricTopology.MulOpposite.Variant760d99bdb3bf8d9d0c8406d32e7e1dd1a0a07eae90b42abae3e7164471e832eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b337b82bb3e868f66c796714878154aecc1c7d1d` · SHA-256 `760d99bdb3bf8d9d0c8406d32e7e1dd1a0a07eae90b42abae3e7164471e832eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Felix Pernegger. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Felix Pernegger
-/
module

public import Mathlib.Topology.Algebra.Constructions
public import Mathlib.Topology.EMetricSpace.Defs

/-!
# Extended metric spaces on multiplicative opposites

This file proves that if `α` is some (weak) pseudo extended metric space, so is `αᵐᵒᵖ`.
We do this in this file instead of `Mathlib/Topology/EMetricSpace/Defs.lean` to avoid imports.
-/

public section

open Filter Set Topology Set.Notation

namespace MulOpposite

variable {α : Type*} [TopologicalSpace α] [WeakPseudoEMetricSpace α]

/-- weak pseudoemetric space instance on the multiplicative opposite of a
weak pseudoemetric space. -/
@[to_additive
/-- Weak pseudoemetric space instance on the additive opposite of a weak pseudoemetric space. -/]
instance {α : Type*} [TopologicalSpace α] [WeakPseudoEMetricSpace α] :
    WeakPseudoEMetricSpace αᵐᵒᵖ :=
  WeakPseudoEMetricSpace.IsInducing MulOpposite.opHomeomorph.symm.isInducing ‹_›

/-- Pseudoemetric space instance on the multiplicative opposite of a pseudoemetric space. -/
@[to_additive
/-- Pseudoemetric space instance on the additive opposite of a pseudoemetric space. -/]
instance {α : Type*} [PseudoEMetricSpace α] : PseudoEMetricSpace αᵐᵒᵖ :=
  PseudoEMetricSpace.induced unop ‹_›

@[to_additive]
theorem edist_unop (x y : αᵐᵒᵖ) : edist (unop x) (unop y) = edist x y := rfl

@[to_additive]
theorem edist_op (x y : α) : edist (op x) (op y) = edist x y := rfl

end MulOpposite
```
