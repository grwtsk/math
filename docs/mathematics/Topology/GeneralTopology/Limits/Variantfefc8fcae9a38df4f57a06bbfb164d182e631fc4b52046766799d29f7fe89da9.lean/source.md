# Complete source: GRWTSK.Topology.GeneralTopology.Limits.Variantfefc8fcae9a38df4f57a06bbfb164d182e631fc4b52046766799d29f7fe89da9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d5addd904332b2e193d09a1b8372f9e636ed034` · SHA-256 `fefc8fcae9a38df4f57a06bbfb164d182e631fc4b52046766799d29f7fe89da9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz, Dagur Asgeirsson
-/
import Mathlib.Topology.Category.Profinite.Basic
import Mathlib.Topology.Category.CompHausLike.Limits
/-!

# Explicit limits and colimits

This file applies the general API for explicit limits and colimits in `CompHausLike P` (see
the file `Mathlib/Topology/Category/CompHausLike/Limits.lean`) to the special case of `Profinite`.
-/

namespace Profinite

universe u w

open CategoryTheory Limits CompHausLike

instance : HasExplicitPullbacks (fun Y ↦ TotallyDisconnectedSpace Y) where
  hasProp _ _ := { hasProp :=
    show TotallyDisconnectedSpace {_xy : _ | _} from inferInstance}

instance : HasExplicitFiniteCoproducts.{w, u} (fun Y ↦ TotallyDisconnectedSpace Y) where
  hasProp _ := { hasProp :=
    show TotallyDisconnectedSpace (Σ (_a : _), _) from inferInstance}

/-- A one-element space is terminal in `Profinite` -/
abbrev isTerminalPUnit : IsTerminal (Profinite.of PUnit.{u + 1}) := CompHausLike.isTerminalPUnit

example : FinitaryExtensive Profinite.{u} := inferInstance

noncomputable example : PreservesFiniteCoproducts profiniteToCompHaus := inferInstance

end Profinite
```
