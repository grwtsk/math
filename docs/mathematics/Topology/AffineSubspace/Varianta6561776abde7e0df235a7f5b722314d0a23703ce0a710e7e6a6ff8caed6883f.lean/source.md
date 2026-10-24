# Complete source: GRWTSK.Topology.AffineSubspace.Varianta6561776abde7e0df235a7f5b722314d0a23703ce0a710e7e6a6ff8caed6883f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `005282470f6272f941bf9b4ee32d8178de06c597` · SHA-256 `a6561776abde7e0df235a7f5b722314d0a23703ce0a710e7e6a6ff8caed6883f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joseph Myers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joseph Myers
-/
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
import Mathlib.Topology.Algebra.ContinuousAffineMap

/-!
# Topology of affine subspaces.

This file defines the embedding map from an affine subspace to the ambient space as a continuous
affine map.

## Main definitions

* `AffineSubspace.subtypeA` is `AffineSubspace.subtype` as a `ContinuousAffineMap`.

-/


namespace AffineSubspace

variable {R V P : Type*} [Ring R] [AddCommGroup V] [Module R V] [TopologicalSpace P]
  [AddTorsor V P]

attribute [local instance] toAddTorsor

/-- Embedding of an affine subspace to the ambient space, as a continuous affine map. -/
def subtypeA (s : AffineSubspace R P) [Nonempty s] : s →ᴬ[R] P where
  toAffineMap := s.subtype
  cont := continuous_subtype_val

@[simp] lemma coe_subtypeA (s : AffineSubspace R P) [Nonempty s] : ⇑s.subtypeA = Subtype.val :=
  rfl

@[simp] lemma subtypeA_toAffineMap (s : AffineSubspace R P) [Nonempty s] :
    s.subtypeA.toAffineMap = s.subtype :=
  rfl

end AffineSubspace
```
