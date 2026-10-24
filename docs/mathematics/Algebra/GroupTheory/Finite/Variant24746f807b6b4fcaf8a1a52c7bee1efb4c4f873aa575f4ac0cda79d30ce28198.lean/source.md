# Complete source: GRWTSK.Algebra.GroupTheory.Finite.Variant24746f807b6b4fcaf8a1a52c7bee1efb4c4f873aa575f4ac0cda79d30ce28198

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `75a9e8e69dc5776d0502db71a6ad90bb8309ffe4` · SHA-256 `24746f807b6b4fcaf8a1a52c7bee1efb4c4f873aa575f4ac0cda79d30ce28198`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Yaël Dillies, Patrick Luo. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Patrick Luo
-/
import Mathlib.GroupTheory.Finiteness
import Mathlib.GroupTheory.MonoidLocalization.GrothendieckGroup

/-!
# Localization of a finitely generated submonoid

## TODO

If `Mathlib/GroupTheory/Finiteness.lean` wasn't so heavy, this could move earlier.
-/

open Localization

variable {M : Type*} [CommMonoid M] {S : Submonoid M}

namespace Localization

/-- The localization of a finitely generated monoid at a finitely generated submonoid is
finitely generated. -/
@[to_additive "The localization of a finitely generated monoid at a finitely generated submonoid is
finitely generated."]
lemma fg [Monoid.FG M] (hS : S.FG) : Monoid.FG <| Localization S := by
  rw [← Monoid.fg_iff_submonoid_fg] at hS; exact Monoid.fg_of_surjective mkHom mkHom_surjective

end Localization

namespace Algebra.GrothendieckGroup

/-- The Grothendieck group of a finitely generated monoid is finitely generated. -/
@[to_additive "The Grothendieck group of a finitely generated monoid is finitely generated."]
instance instFG [Monoid.FG M] : Monoid.FG <| GrothendieckGroup M := fg Monoid.FG.fg_top

end Algebra.GrothendieckGroup
```
