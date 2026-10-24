# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CategoricalAssembly.Variantbcf8ea0110839dc093d98f4c2ddc2d7d401149805aa20ee780bdc10b975c2e9a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a12d76e64cc4489b75218a9b9834ca6c36b7298d` · SHA-256 `bcf8ea0110839dc093d98f4c2ddc2d7d401149805aa20ee780bdc10b975c2e9a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.CategoryTheory.Equivalence
import Mathlib.CategoryTheory.Discrete.Basic
import Mathlib.Data.ZMod.Basic

/-!
# Separately typed inverse witnesses and finite sector categories

This module proves the categorical assembly implication independently of any
geometric comparison. The finite consumer is the discrete category of pairs of
`ZMod 3` labels, not the Fourier operator or the global QGL functor.

Research direction, theorem selection, corrections and evaluation:
grwtsk contributors. Formalization and checks: OpenAI Codex.
The inverse-witness mechanism is extracted from OpenAI family 069, Section 13;
the geometric hypotheses supplying these witnesses remain separate obligations.
-/

namespace FormalResearch.QuantumLanglands.CategoricalAssembly

open CategoryTheory CategoryTheory.Functor

universe v₁ v₂ u₁ u₂

variable {C : Type u₁} {D : Type u₂} [Category.{v₁} C] [Category.{v₂} D]

/-- A left inverse and a separately typed right inverse agree by a natural
isomorphism. No equality of the two inverse functors is assumed. -/
def inverseWitnessComparison (F : C ⥤ D) (L R : D ⥤ C)
    (left : F ⋙ L ≅ 𝟭 C) (right : R ⋙ F ≅ 𝟭 D) : L ≅ R :=
  (Functor.leftUnitor L).symm ≪≫
    isoWhiskerRight right.symm L ≪≫
    Functor.associator R F L ≪≫
    isoWhiskerLeft R left ≪≫
    Functor.rightUnitor R

/-- The comparison supplies the missing counit for the chosen left inverse.
Mathlib's construction adjusts the unit to satisfy the triangle identities. -/
def assemble (F : C ⥤ D) (L R : D ⥤ C)
    (left : F ⋙ L ≅ 𝟭 C) (right : R ⋙ F ≅ 𝟭 D) : C ≌ D :=
  CategoryTheory.Equivalence.mk F L left.symm
    (isoWhiskerRight (inverseWitnessComparison F L R left right) F ≪≫ right)

@[simp] theorem assemble_functor (F : C ⥤ D) (L R : D ⥤ C)
    (left : F ⋙ L ≅ 𝟭 C) (right : R ⋙ F ≅ 𝟭 D) :
    (assemble F L R left right).functor = F := rfl

@[simp] theorem assemble_inverse (F : C ⥤ D) (L R : D ⥤ C)
    (left : F ⋙ L ≅ 𝟭 C) (right : R ⋙ F ≅ 𝟭 D) :
    (assemble F L R left right).inverse = L := rfl

/-- Odd-torsion labels make the minus sign visible. -/
abbrev Sector := ZMod 3 × ZMod 3

/-- The quarter turn `(η, p) ↦ (p, -η)` on finite `ZMod 3 × ZMod 3` sector labels. -/
def quarterTurn : Sector ≃ Sector where
  toFun x := (x.2, -x.1)
  invFun x := (-x.2, x.1)
  left_inv x := by cases x; simp
  right_inv x := by cases x; simp

theorem quarterTurn_square (x : Sector) :
    quarterTurn (quarterTurn x) = (-x.1, -x.2) := by
  cases x
  rfl

theorem quarterTurn_fourth (x : Sector) :
    quarterTurn (quarterTurn (quarterTurn (quarterTurn x))) = x := by
  cases x
  simp [quarterTurn]

theorem quarterTurn_square_not_identity :
    quarterTurn (quarterTurn ((1, 0) : Sector)) ≠ ((1, 0) : Sector) := by
  decide

/-- An actual finite category equivalence. No functor power law for QGL follows. -/
def sectorEquivalence : Discrete Sector ≌ Discrete Sector :=
  Discrete.equivalence quarterTurn

/-- Consume the assembly with actual finite left and right inverse witnesses. -/
def assembledSectorEquivalence : Discrete Sector ≌ Discrete Sector :=
  assemble sectorEquivalence.functor sectorEquivalence.inverse
    sectorEquivalence.inverse sectorEquivalence.unitIso.symm
    sectorEquivalence.counitIso

end FormalResearch.QuantumLanglands.CategoricalAssembly
```
