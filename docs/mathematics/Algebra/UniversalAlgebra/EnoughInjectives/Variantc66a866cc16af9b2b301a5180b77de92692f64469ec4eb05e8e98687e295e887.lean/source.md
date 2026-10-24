# Complete source: GRWTSK.Algebra.UniversalAlgebra.EnoughInjectives.Variantc66a866cc16af9b2b301a5180b77de92692f64469ec4eb05e8e98687e295e887

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `70c5e935bde37da2156788ef28b20ee8f17be23c` · SHA-256 `c66a866cc16af9b2b301a5180b77de92692f64469ec4eb05e8e98687e295e887`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang, Junyan Xu
-/

import Mathlib.Algebra.Module.CharacterModule
import Mathlib.Algebra.Category.Grp.EquivalenceGroupAddGroup
import Mathlib.Algebra.Category.Grp.EpiMono
import Mathlib.Algebra.Category.Grp.Injective

/-!

# Category of abelian groups has enough injectives

Given an abelian group `A`, then `i : A ⟶ ∏_{A⋆} ℚ ⧸ ℤ` defined by `i : a ↦ c ↦ c a` is an
injective presentation for `A`, hence category of abelian groups has enough injectives.

## Implementation notes

This file is split from `Mathlib/Algebra/Category/Grp/Injective.lean` to prevent import loops.
-/

open CategoryTheory

universe u

namespace AddCommGrp

open CharacterModule

instance enoughInjectives : EnoughInjectives AddCommGrp.{u} where
  presentation A_ := Nonempty.intro
    { J := of <| (CharacterModule A_) → ULift.{u} (AddCircle (1 : ℚ))
      injective := injective_of_divisible _
      f := ofHom ⟨⟨fun a i ↦ ULift.up (i a), by aesop⟩, by aesop⟩
      mono := (AddCommGrp.mono_iff_injective _).mpr <| (injective_iff_map_eq_zero _).mpr
        fun _ h0 ↦ eq_zero_of_character_apply (congr_arg ULift.down <| congr_fun h0 ·) }

end AddCommGrp


namespace CommGrp

instance enoughInjectives : EnoughInjectives CommGrp.{u} :=
  EnoughInjectives.of_equivalence commGroupAddCommGroupEquivalence.functor

end CommGrp
```
