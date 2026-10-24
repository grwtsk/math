# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoherenceLemmas.Varianta318901dead0f376652d4c1dabd130a0ac0163d90d053b478115ff93b4041c86

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef4ecbd8d358485f32b37effd9417527200d0b0a` · SHA-256 `a318901dead0f376652d4c1dabd130a0ac0163d90d053b478115ff93b4041c86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Michael Jendrusch. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Jendrusch, Kim Morrison, Bhavik Mehta, Jakob von Raumer
-/
import Mathlib.Tactic.CategoryTheory.Monoidal.PureCoherence

/-!
# Lemmas which are consequences of monoidal coherence

These lemmas are all proved `by coherence`.

## Future work
Investigate whether these lemmas are really needed,
or if they can be replaced by use of the `coherence` tactic.
-/


open CategoryTheory Category Iso

namespace CategoryTheory.MonoidalCategory

variable {C : Type*} [Category C] [MonoidalCategory C]

-- See Proposition 2.2.4 of <http://www-math.mit.edu/~etingof/egnobookfinal.pdf>
@[reassoc]
theorem leftUnitor_tensor'' (X Y : C) :
    (α_ (𝟙_ C) X Y).hom ≫ (λ_ (X ⊗ Y)).hom = (λ_ X).hom ⊗ 𝟙 Y := by
  monoidal_coherence

@[reassoc]
theorem leftUnitor_tensor' (X Y : C) :
    (λ_ (X ⊗ Y)).hom = (α_ (𝟙_ C) X Y).inv ≫ ((λ_ X).hom ⊗ 𝟙 Y) := by
  monoidal_coherence

@[reassoc]
theorem leftUnitor_tensor_inv' (X Y : C) :
    (λ_ (X ⊗ Y)).inv = ((λ_ X).inv ⊗ 𝟙 Y) ≫ (α_ (𝟙_ C) X Y).hom := by monoidal_coherence

@[reassoc]
theorem id_tensor_rightUnitor_inv (X Y : C) : 𝟙 X ⊗ (ρ_ Y).inv = (ρ_ _).inv ≫ (α_ _ _ _).hom := by
  monoidal_coherence

@[reassoc]
theorem leftUnitor_inv_tensor_id (X Y : C) : (λ_ X).inv ⊗ 𝟙 Y = (λ_ _).inv ≫ (α_ _ _ _).inv := by
  monoidal_coherence

@[reassoc]
theorem pentagon_inv_inv_hom (W X Y Z : C) :
    (α_ W (X ⊗ Y) Z).inv ≫ ((α_ W X Y).inv ⊗ 𝟙 Z) ≫ (α_ (W ⊗ X) Y Z).hom =
      (𝟙 W ⊗ (α_ X Y Z).hom) ≫ (α_ W X (Y ⊗ Z)).inv := by
  monoidal_coherence

theorem unitors_equal : (λ_ (𝟙_ C)).hom = (ρ_ (𝟙_ C)).hom := by
  monoidal_coherence

theorem unitors_inv_equal : (λ_ (𝟙_ C)).inv = (ρ_ (𝟙_ C)).inv := by
  monoidal_coherence

@[reassoc]
theorem pentagon_hom_inv {W X Y Z : C} :
    (α_ W X (Y ⊗ Z)).hom ≫ (𝟙 W ⊗ (α_ X Y Z).inv) =
      (α_ (W ⊗ X) Y Z).inv ≫ ((α_ W X Y).hom ⊗ 𝟙 Z) ≫ (α_ W (X ⊗ Y) Z).hom := by
  monoidal_coherence

@[reassoc]
theorem pentagon_inv_hom (W X Y Z : C) :
    (α_ (W ⊗ X) Y Z).inv ≫ ((α_ W X Y).hom ⊗ 𝟙 Z) =
      (α_ W X (Y ⊗ Z)).hom ≫ (𝟙 W ⊗ (α_ X Y Z).inv) ≫ (α_ W (X ⊗ Y) Z).inv := by
  monoidal_coherence

end CategoryTheory.MonoidalCategory
```
