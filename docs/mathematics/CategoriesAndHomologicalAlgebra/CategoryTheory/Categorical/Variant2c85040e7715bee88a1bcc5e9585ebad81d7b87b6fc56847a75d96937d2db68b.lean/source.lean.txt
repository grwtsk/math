-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NatIsoLike.Variantfe96b16e57a10c8273f043c09fe51dc796b10c6fd4ca62cdc8aed9635975c19d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe96b16e57a10c8273f043c09fe51dc796b10c6fd4ca62cdc8aed9635975c19d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.NatIsoLike.Variantfe96b16e57a10c8273f043c09fe51dc796b10c6fd4ca62cdc8aed9635975c19d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"fe96b16e57a10c8273f043c09fe51dc796b10c6fd4ca62cdc8aed9635975c19d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Categorical.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Categorical

/-
Core-only categorical utilities for the algebraization-completeness extension.

The definitions deliberately preserve the distinction between source objects,
target objects, designated generators, and objects merely known to lie in an
essential image.  No mathematical geometry theorem is introduced here.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NatIsoLike.Variantfe96b16e57a10c8273f043c09fe51dc796b10c6fd4ca62cdc8aed9635975c19d

universe uObj uHom vObj vHom wObj wHom

namespace FCRS.Algebraization

/-- Objectwise membership in the essential image of a functor. -/
def EssentialImage
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D)
    (Y : D.Obj) : Prop :=
  ∃ X : C.Obj, Nonempty (IsoLike D (F.obj X) Y)

/-- A full subcategory selected by an independently supplied object predicate. -/
def FullSubcategory
    (C : CategoryLike.{uObj, uHom})
    (P : C.Obj → Prop) :
    CategoryLike.{uObj, uHom} where
  Obj := {X : C.Obj // P X}
  Hom := fun X Y => C.Hom X.1 Y.1
  id := fun X => C.id X.1
  comp := fun f g => C.comp f g
  id_comp := by
    intro X Y f
    exact C.id_comp f
  comp_id := by
    intro X Y f
    exact C.comp_id f
  assoc := by
    intro W X Y Z f g h
    exact C.assoc f g h

/-- Restrict the codomain of a functor after proving every image object satisfies `P`. -/
def restrictCodomain
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D)
    (P : D.Obj → Prop)
    (hObj : ∀ X : C.Obj, P (F.obj X)) :
    FunctorLike C (FullSubcategory D P) where
  obj := fun X => ⟨F.obj X, hObj X⟩
  map := fun f => F.map f
  map_id := by
    intro X
    exact F.map_id X
  map_comp := by
    intro X Y Z f g
    exact F.map_comp f g

/-- Lift an ambient isomorphism to a full subcategory. -/
def isoInFullSubcategory
    {C : CategoryLike.{uObj, uHom}}
    {P : C.Obj → Prop}
    {X Y : (FullSubcategory C P).Obj}
    (e : IsoLike C X.1 Y.1) :
    IsoLike (FullSubcategory C P) X Y where
  hom := e.hom
  inv := e.inv
  hom_inv := e.hom_inv
  inv_hom := e.inv_hom

/-- Fullness passes to a restriction of the codomain to a full subcategory. -/
def fullRestrictCodomain
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D)
    (P : D.Obj → Prop)
    (hObj : ∀ X : C.Obj, P (F.obj X))
    (hFull : Full F) :
    Full (restrictCodomain F P hObj) := by
  intro X Y g
  rcases hFull g with ⟨f, hf⟩
  exact ⟨f, hf⟩

/-- Faithfulness passes to a restriction of the codomain to a full subcategory. -/
def faithfulRestrictCodomain
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D)
    (P : D.Obj → Prop)
    (hObj : ∀ X : C.Obj, P (F.obj X))
    (hFaithful : Faithful F) :
    Faithful (restrictCodomain F P hObj) := by
  intro X Y f g hfg
  exact hFaithful f g hfg

/-- Essential surjectivity onto an independently selected full subcategory. -/
def essentiallySurjectiveRestrictCodomain
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D)
    (P : D.Obj → Prop)
    (hObj : ∀ X : C.Obj, P (F.obj X))
    (hEss : ∀ Y : D.Obj, P Y → EssentialImage F Y) :
    EssentiallySurjective (restrictCodomain F P hObj) := by
  intro Y
  rcases hEss Y.1 Y.2 with ⟨X, hIso⟩
  rcases hIso with ⟨e⟩
  exact ⟨X, ⟨isoInFullSubcategory e⟩⟩

/-- Equivalence evidence for a codomain restriction. -/
def equivalenceRestrictCodomain
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D)
    (P : D.Obj → Prop)
    (hObj : ∀ X : C.Obj, P (F.obj X))
    (hFull : Full F)
    (hFaithful : Faithful F)
    (hEss : ∀ Y : D.Obj, P Y → EssentialImage F Y) :
    EquivalenceWitness (restrictCodomain F P hObj) where
  full := fullRestrictCodomain F P hObj hFull
  faithful := faithfulRestrictCodomain F P hObj hFaithful
  essentiallySurjective :=
    essentiallySurjectiveRestrictCodomain F P hObj hEss

/-- Identity functor for the core-only category structure. -/
def identityFunctor
    (C : CategoryLike.{uObj, uHom}) :
    FunctorLike C C where
  obj := fun X => X
  map := fun f => f
  map_id := by
    intro X
    rfl
  map_comp := by
    intro X Y Z f g
    rfl

/-- Composition `G ∘ F` of core-only functors. -/
def composeFunctors
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    {E : CategoryLike.{wObj, wHom}}
    (F : FunctorLike C D)
    (G : FunctorLike D E) :
    FunctorLike C E where
  obj := fun X => G.obj (F.obj X)
  map := fun f => G.map (F.map f)
  map_id := by
    intro X
    calc
      G.map (F.map (C.id X)) =
          G.map (D.id (F.obj X)) := congrArg G.map (F.map_id X)
      _ = E.id (G.obj (F.obj X)) := G.map_id (F.obj X)
  map_comp := by
    intro X Y Z f g
    calc
      G.map (F.map (C.comp f g)) =
          G.map (D.comp (F.map f) (F.map g)) :=
            congrArg G.map (F.map_comp f g)
      _ = E.comp (G.map (F.map f)) (G.map (F.map g)) :=
            G.map_comp (F.map f) (F.map g)

/-- A natural isomorphism between two core-only functors. -/
structure NatIsoLike
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F G : FunctorLike C D) where
  app : ∀ X : C.Obj, IsoLike D (F.obj X) (G.obj X)
  naturality :
    ∀ {X Y : C.Obj} (f : C.Hom X Y),
      D.comp (F.map f) (app Y).hom =
      D.comp (app X).hom (G.map f)

/-- Type-valued quasi-inverse structure, including naturality. -/
structure QuasiInverseStructure
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D)
    (G : FunctorLike D C) where
  unit :
    NatIsoLike
      (composeFunctors F G)
      (identityFunctor C)
  counit :
    NatIsoLike
      (composeFunctors G F)
      (identityFunctor D)

/--
Existence of explicit quasi-inverse data.  `Nonempty` keeps the theorem-level
claim in `Prop` while retaining a typed structure for downstream witnesses.
-/
def QuasiInverseData
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D)
    (G : FunctorLike D C) : Prop :=
  Nonempty (QuasiInverseStructure F G)

/-- An object of the groupoid-like fiber of algebraizations of `Y`. -/
structure AlgebraizationFiber
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D)
    (Y : D.Obj) where
  source : C.Obj
  comparison : IsoLike D (F.obj source) Y

/-- Compatibility of a source isomorphism with two chosen target identifications. -/
def CompatibleFiberIso
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    {F : FunctorLike C D}
    {Y : D.Obj}
    (a b : AlgebraizationFiber F Y)
    (e : IsoLike C a.source b.source) : Prop :=
  D.comp (F.map e.hom) b.comparison.hom =
  a.comparison.hom

/-- Contractibility in the "unique compatible isomorphism" sense. -/
def FibersUniquelyIsomorphic
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D) : Prop :=
  ∀ (Y : D.Obj)
    (a b : AlgebraizationFiber F Y),
      ∃ e : IsoLike C a.source b.source,
        CompatibleFiberIso a b e ∧
          ∀ e' : IsoLike C a.source b.source,
            CompatibleFiberIso a b e' → e' = e

/-- An explicit target object outside the essential image. -/
def CounterexampleToEssentialSurjectivity
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D) : Prop :=
  ∃ Y : D.Obj, ¬ EssentialImage F Y

/-- A counterexample object refutes essential surjectivity. -/
def counterexampleNotEssentiallySurjective
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D)
    (h : CounterexampleToEssentialSurjectivity F) :
    ¬ EssentiallySurjective F := by
  intro hEss
  rcases h with ⟨Y, hY⟩
  exact hY (hEss Y)

end FCRS.Algebraization
