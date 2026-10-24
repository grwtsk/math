# Complete source: GRWTSK.Topology.GeneralTopology.EffectiveEpi.Variant78263c263f0eb680ffb0c41b2500642f1334b10348142abf9d9af32080857fad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7e132cdbf53d8010becfd47f4563aaf629f68dd9` · SHA-256 `78263c263f0eb680ffb0c41b2500642f1334b10348142abf9d9af32080857fad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.Topology.Category.CompHausLike.EffectiveEpi
import Mathlib.Topology.Category.LightProfinite.Limits
/-!

# Effective epimorphisms in `LightProfinite`

This file proves that `EffectiveEpi` and `Surjective` are equivalent in `LightProfinite`.
As a consequence we deduce from the material in
`Mathlib/Topology/Category/CompHausLike/EffectiveEpi.lean` that `LightProfinite` is `Preregular`
and `Precoherent`.
-/

universe u

open CategoryTheory Limits CompHausLike

namespace LightProfinite

theorem effectiveEpi_iff_surjective {X Y : LightProfinite.{u}} (f : X ⟶ Y) :
    EffectiveEpi f ↔ Function.Surjective f := by
  refine ⟨fun h ↦ ?_, fun h ↦ ⟨⟨effectiveEpiStruct f h⟩⟩⟩
  rw [← epi_iff_surjective]
  infer_instance

instance : Preregular LightProfinite.{u} := by
  apply CompHausLike.preregular
  intro _ _ f
  exact (effectiveEpi_iff_surjective f).mp

example : Precoherent LightProfinite.{u} := inferInstance

end LightProfinite
```
