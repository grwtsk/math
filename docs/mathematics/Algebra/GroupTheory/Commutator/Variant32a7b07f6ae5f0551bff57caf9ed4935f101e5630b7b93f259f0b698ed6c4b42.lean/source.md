# Complete source: GRWTSK.Algebra.GroupTheory.Commutator.Variant32a7b07f6ae5f0551bff57caf9ed4935f101e5630b7b93f259f0b698ed6c4b42

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22b4d040d70fb4e9ed5ac406a8e5e7932da3db61` · SHA-256 `32a7b07f6ae5f0551bff57caf9ed4935f101e5630b7b93f259f0b698ed6c4b42`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Thomas Browning. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Browning
-/
import Mathlib.Algebra.Group.Defs
import Mathlib.Data.Bracket

#align_import algebra.group.commutator from "leanprover-community/mathlib"@"c4658a649d216f57e99621708b09dcb3dcccbd23"

/-!
# The bracket on a group given by commutator.
-/

/-- The commutator of two elements `g₁` and `g₂`. -/
instance commutatorElement {G : Type*} [Group G] : Bracket G G :=
  ⟨fun g₁ g₂ ↦ g₁ * g₂ * g₁⁻¹ * g₂⁻¹⟩
#align commutator_element commutatorElement

theorem commutatorElement_def {G : Type*} [Group G] (g₁ g₂ : G) :
  ⁅g₁, g₂⁆ = g₁ * g₂ * g₁⁻¹ * g₂⁻¹ :=
  rfl
#align commutator_element_def commutatorElement_def
```
