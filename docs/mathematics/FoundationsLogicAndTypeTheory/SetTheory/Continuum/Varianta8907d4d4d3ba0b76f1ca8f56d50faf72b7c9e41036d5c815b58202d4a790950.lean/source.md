# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Continuum.Varianta8907d4d4d3ba0b76f1ca8f56d50faf72b7c9e41036d5c815b58202d4a790950

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42c2d813ef44285085acbce8ebe3ad8d8114b721` · SHA-256 `a8907d4d4d3ba0b76f1ca8f56d50faf72b7c9e41036d5c815b58202d4a790950`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Floris van Doorn, Violeta Hernández Palacios
-/
import Mathlib.SetTheory.Cardinal.Continuum
import Mathlib.Deprecated.Cardinal.PartENat

/-!
# Deprecated material from Mathlib.SetTheory.Cardinal.Aleph and Mathlib.SetTheory.Cardinal.Continuum

Moved here so we can reduce imports sooner.
-/

namespace Cardinal

@[simp, deprecated aleph_toENat (since := "2024-12-01")]
theorem aleph_toPartENat (o : Ordinal) : toPartENat (ℵ_ o) = ⊤ :=
  toPartENat_apply_of_aleph0_le <| aleph0_le_aleph o

@[simp, deprecated aleph_toENat (since := "2024-12-01")]
theorem continuum_toPartENat : toPartENat continuum = ⊤ :=
  toPartENat_apply_of_aleph0_le aleph0_le_continuum

end Cardinal
```
