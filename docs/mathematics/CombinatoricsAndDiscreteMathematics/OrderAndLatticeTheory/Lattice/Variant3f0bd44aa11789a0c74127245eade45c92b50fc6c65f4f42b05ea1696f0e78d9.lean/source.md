# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variant3f0bd44aa11789a0c74127245eade45c92b50fc6c65f4f42b05ea1696f0e78d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf1ae58eec0b157302f00b1101fa6c1773ffe594` · SHA-256 `3f0bd44aa11789a0c74127245eade45c92b50fc6c65f4f42b05ea1696f0e78d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Data.Sum.Order
import Mathlib.Order.Hom.Lattice

/-!
# Lexicographic sum of lattices

This file proves that we can combine two lattices `α` and `β` into a lattice `α ⊕ₗ β` where
everything in `α` is declared smaller than everything in `β`.
-/

open OrderDual

namespace Sum.Lex
variable {α β : Type*}

section SemilatticeSup
variable [SemilatticeSup α] [SemilatticeSup β]

-- The linter significantly hinders readability here.
set_option linter.unusedVariables false in
instance instSemilatticeSup : SemilatticeSup (α ⊕ₗ β) where
  sup
    | inlₗ a₁, inlₗ a₂ => inl (a₁ ⊔ a₂)
    | inlₗ a₁, inrₗ b₂ => inr b₂
    | inrₗ b₁, inlₗ a₂ => inr b₁
    | inrₗ b₁, inrₗ b₂ => inr (b₁ ⊔ b₂)
  le_sup_left
    | inlₗ a₁, inlₗ a₂ => inl_le_inl_iff.2 le_sup_left
    | inlₗ a₁, inrₗ b₂ => inl_le_inr _ _
    | inrₗ b₁, inlₗ a₂ => le_rfl
    | inrₗ b₁, inrₗ b₂ => inr_le_inr_iff.2 le_sup_left
  le_sup_right
    | inlₗ a₁, inlₗ a₂ => inl_le_inl_iff.2 le_sup_right
    | inlₗ a₁, inrₗ b₂ => le_rfl
    | inrₗ b₁, inlₗ a₂ => inl_le_inr _ _
    | inrₗ b₁, inrₗ b₂ => inr_le_inr_iff.2 le_sup_right
  sup_le
    | inlₗ a₁, inlₗ a₂, inlₗ a₃, Lex.inl h₁₃, Lex.inl h₂₃ => inl_le_inl_iff.2 <| sup_le h₁₃ h₂₃
    | inlₗ a₁, inlₗ a₂, inrₗ b₃, Lex.sep _ _, Lex.sep _ _ => Lex.sep _ _
    | inlₗ a₁, inrₗ b₂, inrₗ b₃, Lex.sep _ _, Lex.inr h₂₃ => inr_le_inr_iff.2 h₂₃
    | inrₗ b₁, inlₗ a₂, inrₗ b₃, Lex.inr h₁₃, Lex.sep _ _ => inr_le_inr_iff.2 h₁₃
    | inrₗ b₁, inrₗ b₂, inrₗ b₃, Lex.inr h₁₃, Lex.inr h₂₃ => inr_le_inr_iff.2 <| sup_le h₁₃ h₂₃

@[simp] lemma inl_sup (a₁ a₂ : α) : (inlₗ (a₁ ⊔ a₂) : α ⊕ β) = inlₗ a₁ ⊔ inlₗ a₂ := rfl
@[simp] lemma inr_sup (b₁ b₂ : β) : (inrₗ (b₁ ⊔ b₂) : α ⊕ β) = inrₗ b₁ ⊔ inrₗ b₂ := rfl

end SemilatticeSup

section SemilatticeInf
variable [SemilatticeInf α] [SemilatticeInf β]

-- The linter significantly hinders readability here.
set_option linter.unusedVariables false in
instance instSemilatticeInf : SemilatticeInf (α ⊕ₗ β) where
  inf
    | inlₗ a₁, inlₗ a₂ => inl (a₁ ⊓ a₂)
    | inlₗ a₁, inrₗ b₂ => inl a₁
    | inrₗ b₁, inlₗ a₂ => inl a₂
    | inrₗ b₁, inrₗ b₂ => inr (b₁ ⊓ b₂)
  inf_le_left
    | inlₗ a₁, inlₗ a₂ => inl_le_inl_iff.2 inf_le_left
    | inlₗ a₁, inrₗ b₂ => le_rfl
    | inrₗ b₁, inlₗ a₂ => inl_le_inr _ _
    | inrₗ b₁, inrₗ b₂ => inr_le_inr_iff.2 inf_le_left
  inf_le_right
    | inlₗ a₁, inlₗ a₂ => inl_le_inl_iff.2 inf_le_right
    | inlₗ a₁, inrₗ b₂ => inl_le_inr _ _
    | inrₗ b₁, inlₗ a₂ => le_rfl
    | inrₗ b₁, inrₗ b₂ => inr_le_inr_iff.2 inf_le_right
  le_inf
    | inlₗ a₁, inlₗ a₂, inlₗ a₃, Lex.inl h₁₃, Lex.inl h₂₃ => inl_le_inl_iff.2 <| le_inf h₁₃ h₂₃
    | inlₗ a₁, inlₗ a₂, inrₗ b₃, Lex.inl h₁₃, Lex.sep _ _ => inl_le_inl_iff.2 h₁₃
    | inlₗ a₁, inrₗ b₂, inlₗ a₃, Lex.sep _ _, Lex.inl h₂₃ => inl_le_inl_iff.2 h₂₃
    | inlₗ a₁, inrₗ b₂, inrₗ b₃, Lex.sep _ _, Lex.sep _ _ => Lex.sep _ _
    | inrₗ b₁, inrₗ b₂, inrₗ b₃, Lex.inr h₁₃, Lex.inr h₂₃ => inr_le_inr_iff.2 <| le_inf h₁₃ h₂₃

@[simp] lemma inl_inf (a₁ a₂ : α) : (inlₗ (a₁ ⊓ a₂) : α ⊕ β) = inlₗ a₁ ⊓ inlₗ a₂ := rfl
@[simp] lemma inr_inf (b₁ b₂ : β) : (inrₗ (b₁ ⊓ b₂) : α ⊕ β) = inrₗ b₁ ⊓ inrₗ b₂ := rfl

end SemilatticeInf

section Lattice
variable [Lattice α] [Lattice β]

instance instLattice : Lattice (α ⊕ₗ β) := { instSemilatticeSup, instSemilatticeInf with }

/-- `Sum.Lex.inlₗ` as a lattice homomorphism. -/
def inlLatticeHom : LatticeHom α (α ⊕ₗ β) where
  toFun := inlₗ
  map_sup' _ _ := rfl
  map_inf' _ _ := rfl

/-- `Sum.Lex.inrₗ` as a lattice homomorphism. -/
def inrLatticeHom : LatticeHom β (α ⊕ₗ β) where
  toFun := inrₗ
  map_sup' _ _ := rfl
  map_inf' _ _ := rfl

end Lattice

instance instDistribLattice [DistribLattice α] [DistribLattice β] : DistribLattice (α ⊕ₗ β) where
  le_sup_inf := by
    simp only [Lex.forall, Sum.forall, inl_le_inl_iff, inr_le_inr_iff, sup_le_iff,
      le_sup_left, true_and, inl_le_inr, not_inr_le_inl, le_inf_iff, sup_of_le_right, and_self,
      inf_of_le_left, le_refl, implies_true, and_true, inf_of_le_right, sup_of_le_left, ← inl_sup,
      ← inr_sup, ← inl_inf, ← inr_inf, sup_inf_left, le_rfl]

end Sum.Lex
```
