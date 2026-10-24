# Complete source: GRWTSK.Topology.GeneralTopology.Limits.Variant9cf73e270341cac996785a8e714f32723163016f9c5fee685e807a6306cdf402

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67b2e81257f2bcb04bf03403de9d55f75c0b8aec` · SHA-256 `9cf73e270341cac996785a8e714f32723163016f9c5fee685e807a6306cdf402`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.Topology.Category.CompHausLike.Limits
import Mathlib.Topology.Category.LightProfinite.Basic
/-!

# Explicit limits and colimits

This file applies the general API for explicit limits and colimits in `CompHausLike P` (see
the file `Mathlib/Topology/Category/CompHausLike/Limits.lean`) to the special case of
`LightProfinite`.
-/

namespace LightProfinite

universe u w

open CategoryTheory Limits CompHausLike

instance : HasExplicitPullbacks
    (fun Y ↦ TotallyDisconnectedSpace Y ∧ SecondCountableTopology Y) where
  hasProp _ _ := {
    hasProp := ⟨show TotallyDisconnectedSpace {_xy : _ | _} from inferInstance,
      show SecondCountableTopology {_xy : _ | _} from inferInstance⟩ }

instance : HasExplicitFiniteCoproducts.{w, u}
    (fun Y ↦ TotallyDisconnectedSpace Y ∧ SecondCountableTopology Y) where
  hasProp _ := { hasProp :=
    ⟨show TotallyDisconnectedSpace (Σ (_a : _), _) from inferInstance,
      show SecondCountableTopology (Σ (_a : _), _) from inferInstance⟩ }

/-- A one-element space is terminal in `Profinite` -/
abbrev isTerminalPUnit : IsTerminal (LightProfinite.of PUnit.{u + 1}) :=
  CompHausLike.isTerminalPUnit

example : FinitaryExtensive LightProfinite.{u} := inferInstance

noncomputable example : PreservesFiniteCoproducts lightProfiniteToCompHaus.{u} := inferInstance

end LightProfinite
```
