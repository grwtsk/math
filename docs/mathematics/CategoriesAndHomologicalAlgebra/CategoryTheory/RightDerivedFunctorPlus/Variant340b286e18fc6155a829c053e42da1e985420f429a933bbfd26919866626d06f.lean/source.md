# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RightDerivedFunctorPlus.Variant340b286e18fc6155a829c053e42da1e985420f429a933bbfd26919866626d06f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66690cb631219445b9824518b7def1b35d91ef26` · SHA-256 `15350cb7c8e1930d9fba283a76ffde010d90039e3a9713e5c066436a7c476a89`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RightDerivedFunctorPlus.Variant0c8ac4b692578ccf58e53cb8e16fcc0da608629a2f0d9fdae4c0659b570ff9fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c8ac4b692578ccf58e53cb8e16fcc0da608629a2f0d9fdae4c0659b570ff9fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.RightDerivedFunctorPlus.Variant0c8ac4b692578ccf58e53cb8e16fcc0da608629a2f0d9fdae4c0659b570ff9fb","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0c8ac4b692578ccf58e53cb8e16fcc0da608629a2f0d9fdae4c0659b570ff9fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Homology/DerivedCategory/RightDerivedFunctorPlus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Homology.DerivedCategory.DerivabilityStructureInjectives
public import Mathlib.CategoryTheory.Functor.Derived.RightDerivedCommShift
public import Mathlib.CategoryTheory.Localization.DerivabilityStructure.DerivesTriangulated

/-!
# The right derived functor on the bounded below derived category

If `F : C ⥤ D` is an additive functor between abelian categories,
where `C` has enough injectives, we define the right derived functor
`F.rightDerivedFunctorPlus : DerivedCategory.Plus C ⥤ DerivedCategory.Plus D`
between the corresponding bounded below derived categories. We define
this derived functor as the derived functor of the functor
`F.mapHomotopyCategoryPlus` induced by `F` on the bounded below
homotopy categories. We take advantage of this definition in order to
show that `F.rightDerivedFunctorPlus` is a triangulated functor.
We also show that `F.rightDerivedFunctorPlus` may also be thought of
as a derived functor of the functor `F.mapCochainComplexPlus`
that `F` induces on the categories of bounded below cochain complexes.

TODO(@joelriou): refactor the definition of `Functor.rightDerived`

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RightDerivedFunctorPlus.Variant0c8ac4b692578ccf58e53cb8e16fcc0da608629a2f0d9fdae4c0659b570ff9fb

@[expose] public section

namespace CategoryTheory

namespace Functor

variable {C D : Type*} [Category* C] [Category* D] [Abelian C] [Abelian D]
  [HasDerivedCategory C] [HasDerivedCategory D]
  (F : C ⥤ D) [F.Additive] [EnoughInjectives C]

/-- The right derived functor `DerivedCategory.Plus C ⥤ DerivedCategory.Plus D`
when `F : C ⥤ D` is an additive functor between abelian categories and
`C` has enough injectives. -/
@[no_expose]
noncomputable def rightDerivedFunctorPlus :
    DerivedCategory.Plus C ⥤ DerivedCategory.Plus D :=
  (F.mapHomotopyCategoryPlus ⋙ DerivedCategory.Plus.Qh).totalRightDerived DerivedCategory.Plus.Qh
    (HomotopyCategory.Plus.quasiIso C)

/-- The natural transformation that is part of the data of the right derived functor
`F.rightDerivedFunctorPlus : DerivedCategory.Plus C ⥤ DerivedCategory.Plus D`
when `F : C ⥤ D` is an additive functor between abelian categories and
`C` has enough injectives. It is defined here as a derived functor of
`F.mapHomotopyCategoryPlus : HomotopyCategory.Plus C ⥤ HomotopyCategory.Plus D`,
postcomposed with `DerivedCategory.Plus.Qh`.
(See `Functor.rightDerivedFunctorPlusUnit` for the similar result regarding
`F.mapCochainComplexPlus : CochainComplex.Plus C ⥤ CochainComplex.Plus D`.) -/
@[no_expose]
noncomputable def rightDerivedFunctorPlusUnith :
    F.mapHomotopyCategoryPlus ⋙ DerivedCategory.Plus.Qh ⟶
      DerivedCategory.Plus.Qh ⋙ F.rightDerivedFunctorPlus :=
  (F.mapHomotopyCategoryPlus ⋙ DerivedCategory.Plus.Qh).totalRightDerivedUnit
    DerivedCategory.Plus.Qh (HomotopyCategory.Plus.quasiIso C)

instance :
    F.rightDerivedFunctorPlus.IsRightDerivedFunctor
      F.rightDerivedFunctorPlusUnith (HomotopyCategory.Plus.quasiIso C) := by
  dsimp only [rightDerivedFunctorPlus, rightDerivedFunctorPlusUnith]
  infer_instance

@[no_expose]
noncomputable instance : F.rightDerivedFunctorPlus.CommShift ℤ :=
  Functor.IsRightDerivedFunctor.commShift _ F.rightDerivedFunctorPlusUnith
    (HomotopyCategory.Plus.quasiIso C) ℤ

instance : NatTrans.CommShift F.rightDerivedFunctorPlusUnith ℤ :=
  Functor.IsRightDerivedFunctor.natTrans_commShift _ F.rightDerivedFunctorPlusUnith
    (HomotopyCategory.Plus.quasiIso C) ℤ

open HomotopyCategory.Plus in
instance : F.rightDerivedFunctorPlus.IsTriangulated :=
  (localizerMorphism_derives _).isTriangulated_of_isRightDerivedFunctor
    F.rightDerivedFunctorPlusUnith

/-- A natural transformation that is part of the data of the right derived functor
`F.rightDerivedFunctorPlus : DerivedCategory.Plus C ⥤ DerivedCategory.Plus D`
when `F : C ⥤ D` is an additive functor between abelian categories and
`C` has enough injectives. While the right derived functor was defined using
bounded below homotopy categories, this natural transformation allows to say
that it is also the derived functor of the functor
`F.mapCochainComplexPlus : CochainComplex.Plus C ⥤ CochainComplex.Plus D`,
postcomposed with `DerivedCategory.Plus.Q`. -/
@[no_expose, simps! -isSimp app]
noncomputable def rightDerivedFunctorPlusUnit :
    F.mapCochainComplexPlus ⋙ DerivedCategory.Plus.Q ⟶
    DerivedCategory.Plus.Q ⋙ F.rightDerivedFunctorPlus :=
  whiskerLeft _ (DerivedCategory.Plus.quotientCompQhIso D).inv ≫
    (associator _ _ _).inv ≫ whiskerRight F.quotientCompMapHomotopyCategoryPlusIso.inv _ ≫
    (associator _ _ _).hom ≫
    whiskerLeft (HomotopyCategory.Plus.quotient C) F.rightDerivedFunctorPlusUnith ≫
    (associator _ _ _).inv ≫ whiskerRight (DerivedCategory.Plus.quotientCompQhIso C).hom _

instance : NatTrans.CommShift F.rightDerivedFunctorPlusUnit ℤ := by
  dsimp [rightDerivedFunctorPlusUnit]
  infer_instance

instance (K : CochainComplex.Plus (InjectiveObject C)) :
    IsIso (F.rightDerivedFunctorPlusUnit.app
      ((InjectiveObject.ι C).mapCochainComplexPlus.obj K)) := by
  simp only [F.rightDerivedFunctorPlusUnit_app]
  infer_instance

omit [HasDerivedCategory C] [EnoughInjectives C] in
lemma _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RightDerivedFunctorPlus.Variant0c8ac4b692578ccf58e53cb8e16fcc0da608629a2f0d9fdae4c0659b570ff9fb.CochainComplex.Plus.localizerMorphism_derives_mapCochainComplexPlus :
    (CochainComplex.Plus.localizerMorphism C).Derives
      (F.mapCochainComplexPlus ⋙ DerivedCategory.Plus.Q) := by
  intro K L f hf
  rw [HomotopyCategory.Plus.inverseImage_quasiIso_mapCochainComplexPlus_injectiveObjectι] at hf
  dsimp
  exact Localization.inverts _ (CochainComplex.Plus.quasiIso D) _
    (homotopyEquivalences_le_quasiIso _ _ _
      (F.homotopyEquivalences_mapCochainComplexPlus_map _
        ((InjectiveObject.ι C).homotopyEquivalences_mapCochainComplexPlus_map _ hf)))

open CochainComplex.Plus in
instance : F.rightDerivedFunctorPlus.IsRightDerivedFunctor
    F.rightDerivedFunctorPlusUnit (CochainComplex.Plus.quasiIso C) :=
  (localizerMorphism_derives_mapCochainComplexPlus F).isRightDerivedFunctor_of_isIso _
    (by dsimp; infer_instance)

example (X : HomotopyCategory.Plus (InjectiveObject C)) :
    IsIso (F.rightDerivedFunctorPlusUnith.app
      ((InjectiveObject.ι C).mapHomotopyCategoryPlus.obj X)) := by
  infer_instance

example (K : CochainComplex.Plus (InjectiveObject C)) :
    IsIso (F.rightDerivedFunctorPlusUnith.app
      ((HomotopyCategory.Plus.quotient C).obj
        ((InjectiveObject.ι C).mapCochainComplexPlus.obj K))) := by
  infer_instance

end Functor

end CategoryTheory
```
