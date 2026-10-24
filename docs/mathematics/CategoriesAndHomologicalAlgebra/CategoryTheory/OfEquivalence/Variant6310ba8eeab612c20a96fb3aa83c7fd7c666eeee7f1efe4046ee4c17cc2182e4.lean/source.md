# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfEquivalence.Variant6310ba8eeab612c20a96fb3aa83c7fd7c666eeee7f1efe4046ee4c17cc2182e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4a6177f19390b9605eadc0e2c020c353a2099c2` · SHA-256 `6310ba8eeab612c20a96fb3aa83c7fd7c666eeee7f1efe4046ee4c17cc2182e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Monoidal.Rigid.Basic

/-!
# Transport rigid structures over a monoidal equivalence.
-/


noncomputable section

namespace CategoryTheory

open MonoidalCategory Functor.LaxMonoidal Functor.OplaxMonoidal

variable {C D : Type*} [Category C] [Category D] [MonoidalCategory C] [MonoidalCategory D]
  (F : C ⥤ D) [F.Monoidal]

/-- Given candidate data for an exact pairing,
which is sent by a faithful monoidal functor to an exact pairing,
the equations holds automatically. -/
def exactPairingOfFaithful [F.Faithful] {X Y : C} (eval : Y ⊗ X ⟶ 𝟙_ C)
    (coeval : 𝟙_ C ⟶ X ⊗ Y) [ExactPairing (F.obj X) (F.obj Y)]
    (map_eval : F.map eval = (δ F _ _) ≫ ε_ _ _ ≫ ε F)
    (map_coeval : F.map coeval = (η F) ≫ η_ _ _ ≫ μ F _ _) : ExactPairing X Y where
  evaluation' := eval
  coevaluation' := coeval
  evaluation_coevaluation' :=
    F.map_injective <| by
      simp [map_eval, map_coeval, Functor.Monoidal.map_whiskerLeft,
        Functor.Monoidal.map_whiskerRight]
  coevaluation_evaluation' :=
    F.map_injective <| by
      simp [map_eval, map_coeval, Functor.Monoidal.map_whiskerLeft,
        Functor.Monoidal.map_whiskerRight]

/-- Given a pair of objects which are sent by a fully faithful functor to a pair of objects
with an exact pairing, we get an exact pairing.
-/
def exactPairingOfFullyFaithful [F.Full] [F.Faithful] (X Y : C)
    [ExactPairing (F.obj X) (F.obj Y)] : ExactPairing X Y :=
  exactPairingOfFaithful F (F.preimage (δ F _ _ ≫ ε_ _ _ ≫ (ε F)))
    (F.preimage (η F ≫ η_ _ _ ≫ μ F _ _)) (by simp) (by simp)

variable {F}
variable {G : D ⥤ C} (adj : F ⊣ G) [F.IsEquivalence]

/-- Pull back a left dual along an equivalence. -/
def hasLeftDualOfEquivalence (X : C) [HasLeftDual (F.obj X)] :
    HasLeftDual X where
  leftDual := G.obj (ᘁ(F.obj X))
  exact := by
    letI := exactPairingCongrLeft (X := F.obj (G.obj ᘁ(F.obj X)))
      (X' := ᘁ(F.obj X)) (Y := F.obj X) (adj.toEquivalence.counitIso.app ᘁ(F.obj X))
    apply exactPairingOfFullyFaithful F

/-- Pull back a right dual along an equivalence. -/
def hasRightDualOfEquivalence (X : C) [HasRightDual (F.obj X)] :
    HasRightDual X where
  rightDual := G.obj ((F.obj X)ᘁ)
  exact := by
    letI := exactPairingCongrRight (X := F.obj X) (Y := F.obj (G.obj (F.obj X)ᘁ))
      (Y' := (F.obj X)ᘁ) (adj.toEquivalence.counitIso.app (F.obj X)ᘁ)
    apply exactPairingOfFullyFaithful F

/-- Pull back a left rigid structure along an equivalence. -/
def leftRigidCategoryOfEquivalence [LeftRigidCategory D] :
    LeftRigidCategory C where leftDual X := hasLeftDualOfEquivalence adj X

/-- Pull back a right rigid structure along an equivalence. -/
def rightRigidCategoryOfEquivalence [RightRigidCategory D] :
    RightRigidCategory C where rightDual X := hasRightDualOfEquivalence adj X

/-- Pull back a rigid structure along an equivalence. -/
def rigidCategoryOfEquivalence [RigidCategory D] : RigidCategory C where
  leftDual X := hasLeftDualOfEquivalence adj X
  rightDual X := hasRightDualOfEquivalence adj X

end CategoryTheory
```
