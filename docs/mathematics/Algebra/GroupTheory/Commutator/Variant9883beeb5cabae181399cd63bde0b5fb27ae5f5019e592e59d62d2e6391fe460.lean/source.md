# Complete source: GRWTSK.Algebra.GroupTheory.Commutator.Variant9883beeb5cabae181399cd63bde0b5fb27ae5f5019e592e59d62d2e6391fe460

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b719453bc1f7a17deb23ee8af6b636756ab71173` · SHA-256 `9883beeb5cabae181399cd63bde0b5fb27ae5f5019e592e59d62d2e6391fe460`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Thomas Browning. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Browning
-/
import Mathlib.Algebra.Group.Defs
import Mathlib.Data.Bracket

/-!
# The bracket on a group given by commutator.
-/

assert_not_exists MonoidWithZero DenselyOrdered

/-- The commutator of two elements `g₁` and `g₂`. -/
instance commutatorElement {G : Type*} [Group G] : Bracket G G :=
  ⟨fun g₁ g₂ ↦ g₁ * g₂ * g₁⁻¹ * g₂⁻¹⟩

theorem commutatorElement_def {G : Type*} [Group G] (g₁ g₂ : G) :
    ⁅g₁, g₂⁆ = g₁ * g₂ * g₁⁻¹ * g₂⁻¹ :=
  rfl
```
