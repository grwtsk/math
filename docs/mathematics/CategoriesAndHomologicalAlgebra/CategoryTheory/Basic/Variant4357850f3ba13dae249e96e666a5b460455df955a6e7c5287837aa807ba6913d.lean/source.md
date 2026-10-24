# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant4357850f3ba13dae249e96e666a5b460455df955a6e7c5287837aa807ba6913d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86299b027885af6684ef8038451bd35a3491422f` · SHA-256 `4357850f3ba13dae249e96e666a5b460455df955a6e7c5287837aa807ba6913d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz
-/

import Mathlib.CategoryTheory.Sites.Sheaf
import Mathlib.Topology.Category.CompHaus.EffectiveEpi

/-!

# Condensed Objects

This file defines the category of condensed objects in a category `C`, following the work
of Clausen-Scholze and Barwick-Haine.

## Implementation Details

We use the coherent Grothendieck topology on `CompHaus`, and define condensed objects in `C` to
be `C`-valued sheaves, with respect to this Grothendieck topology.

In future work, we will define similar Grothendieck topologies on the category of profinite sets
and extremally disconnected sets, and show that the three categories are equivalent (under
suitable assumptions on `C`).

Note: Our definition more closely resembles "Pyknotic objects" in the sense of Barwick-Haine,
as we do not impose cardinality bounds, and manage universes carefully instead.

## References

- [barwickhaine2019]: *Pyknotic objects, I. Basic notions*, 2019.
- [scholze2019condensed]: *Lectures on Condensed Mathematics*, 2019.

-/

open CategoryTheory Limits

open CategoryTheory

universe u v w

/--
`Condensed.{u} C` is the category of condensed objects in a category `C`, which are
defined as sheaves on `CompHaus.{u}` with respect to the coherent Grothendieck topology.
-/
def Condensed (C : Type w) [Category.{v} C] :=
  Sheaf (coherentTopology CompHaus.{u}) C

instance {C : Type w} [Category.{v} C] : Category (Condensed.{u} C) :=
  show Category (Sheaf _ _) from inferInstance
```
