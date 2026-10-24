# Complete source: GRWTSK.Topology.GeneralTopology.Ultrafilter.Variant8066eef07e3734e7a157993f8a3d66e7134bd371eeb2ca9453eda09e6b133f8b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `acf010e527bb604a134c61550622aa562511cea9` · SHA-256 `8066eef07e3734e7a157993f8a3d66e7134bd371eeb2ca9453eda09e6b133f8b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Jeremy Avigad
-/
module

public import Mathlib.Order.Filter.Ultrafilter.Defs
public import Mathlib.Topology.Defs.Filter

/-!
# Limit of an ultrafilter.

* `Ultrafilter.lim f`: a limit of an ultrafilter `f`,
  defined as the limit of `(f : Filter X)`
  with a proof of `Nonempty X` deduced from existence of an ultrafilter on `X`.

-/

@[expose] public section

variable {X : Type*} [TopologicalSpace X]

open Filter

/--
If `F` is an ultrafilter, then `Filter.Ultrafilter.lim F` is a limit of the filter, if it exists.
Note that dot notation `F.lim` can be used for `F : Filter.Ultrafilter X`.
-/
noncomputable nonrec def Ultrafilter.lim (F : Ultrafilter X) : X :=
  @lim X _ (nonempty_of_neBot F) F
```
