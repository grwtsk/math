# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Normalize.Variant5005f9909b97aba3849ca26a9d8afbbfe283fa2a44ab068f0538a1580d04c7fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b6aefc5b5cbd8bef90d4f1389d80fe46648042ce` · SHA-256 `5005f9909b97aba3849ca26a9d8afbbfe283fa2a44ab068f0538a1580d04c7fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.CategoryTheory.Bicategory.Normalize

open CategoryTheory Mathlib.Tactic BicategoryLike
open Bicategory

namespace CategoryTheory.Bicategory

/-- `normalize% η` is the normalization of the 2-morphism `η`.
1. The normalized 2-morphism is of the form `α₀ ≫ η₀ ≫ α₁ ≫ η₁ ≫ ... αₘ ≫ ηₘ ≫ αₘ₊₁` where
  each `αᵢ` is a structural 2-morphism (consisting of associators and unitors),
2. each `ηᵢ` is a non-structural 2-morphism of the form `f₁ ◁ ... ◁ fₘ ◁ θ`, and
3. `θ` is of the form `ι ▷ g₁ ▷ ... ▷ gₗ`
-/
elab "normalize% " t:term:51 : term => do
  let e ← Lean.Elab.Term.elabTerm t none
  let ctx : Bicategory.Context ← BicategoryLike.mkContext e
  CoherenceM.run (ctx := ctx) do
    return (← BicategoryLike.eval `bicategory (← MkMor₂.ofExpr e)).expr.e.e

universe w v u

variable {B : Type u} [Bicategory.{w, v} B]
variable {a b c d e : B}

variable {f : a ⟶ b} {g : b ⟶ c} in
#guard_expr normalize% f ◁ 𝟙 g = (whiskerLeftIso f (Iso.refl g)).hom
variable {f : a ⟶ b} {g : b ⟶ c} in
#guard_expr normalize% 𝟙 f ▷ g = (whiskerRightIso (Iso.refl f) g).hom
variable {f : a ⟶ b} {g h i : b ⟶ c} {η : g ⟶ h} {θ : h ⟶ i} in
#guard_expr normalize% f ◁ (η ≫ θ) = _ ≫ f ◁ η ≫ _ ≫ f ◁ θ ≫ _
variable {f g h : a ⟶ b} {i : b ⟶ c} {η : f ⟶ g} {θ : g ⟶ h} in
#guard_expr normalize% (η ≫ θ) ▷ i = _ ≫ η ▷ i ≫ _ ≫ θ ▷ i ≫ _
variable {η : 𝟙 a ⟶ 𝟙 a} in
#guard_expr normalize% 𝟙 a ◁ η = _ ≫ η ≫ _
variable {f : a ⟶ b} {g : b ⟶ c} {h i : c ⟶ d} {η : h ⟶ i} in
#guard_expr normalize% (f ≫ g) ◁ η = _ ≫ f ◁ g ◁ η ≫ _
variable {η : 𝟙 a ⟶ 𝟙 a} in
#guard_expr normalize% η ▷ 𝟙 a = _ ≫ η ≫ _
variable {f g : a ⟶ b} {h : b ⟶ c} {i : c ⟶ d} {η : f ⟶ g} in
#guard_expr normalize% η ▷ (h ≫ i) = _ ≫ η ▷ h ▷ i ≫ _
variable {f : a ⟶ b} {g h : b ⟶ c} {i : c ⟶ d} {η : g ⟶ h} in
#guard_expr normalize% (f ◁ η) ▷ i = _ ≫ f ◁ η ▷ i ≫ _
variable {f : a ⟶ b} in
#guard_expr normalize% (λ_ f).hom = (λ_ f).hom
variable {f : a ⟶ b} in
#guard_expr normalize% (λ_ f).inv = ((λ_ f).symm).hom
variable {f : a ⟶ b} in
#guard_expr normalize% (ρ_ f).hom = (ρ_ f).hom
variable {f : a ⟶ b} in
#guard_expr normalize% (ρ_ f).inv = ((ρ_ f).symm).hom
variable {f : a ⟶ b} {g : b ⟶ c} {h : c ⟶ d} in
#guard_expr normalize% (α_ f g h).hom = (α_ _ _ _).hom
variable {f : a ⟶ b} {g : b ⟶ c} {h : c ⟶ d} in
#guard_expr normalize% (α_ f g h).inv = ((α_ f g h).symm).hom
variable {f : a ⟶ b} {g : b ⟶ c} in
#guard_expr normalize% 𝟙 (f ≫ g) = (Iso.refl (f ≫ g)).hom

end CategoryTheory.Bicategory
```
