# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b1f8bdf7b124450a0ec0fac56303e6d3882c2b4` · SHA-256 `7ab80678dc93cdb70ae85a5f16345e5a6ec0e0bf7aa97c203abddd92796f55ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TypesGrothendieckTopology.Variant0f2c78f98c23275bc30c670a1b182bc6951253c90c85b0070ef87c06f45a6733","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0f2c78f98c23275bc30c670a1b182bc6951253c90c85b0070ef87c06f45a6733","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.TypesGrothendieckTopology.Variant0f2c78f98c23275bc30c670a1b182bc6951253c90c85b0070ef87c06f45a6733","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0f2c78f98c23275bc30c670a1b182bc6951253c90c85b0070ef87c06f45a6733","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Sites/Types.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.CategoryTheory.Sites.Canonical

/-!
# Grothendieck Topology and Sheaves on the Category of Types

In this file we define a Grothendieck topology on the category of types,
and construct the canonical functor that sends a type to a sheaf over
the category of types, and make this an equivalence of categories.

Then we prove that the topology defined is the canonical topology.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TypesGrothendieckTopology.Variant0f2c78f98c23275bc30c670a1b182bc6951253c90c85b0070ef87c06f45a6733

universe u

namespace CategoryTheory

/-- A Grothendieck topology associated to the category of all types.
A sieve is a covering iff it is jointly surjective. -/
def typesGrothendieckTopology : GrothendieckTopology (Type u) where
  sieves α S := ∀ x : α, S fun _ : PUnit => x
  top_mem' _ _ := trivial
  pullback_stable' _ _ _ f hs x := hs (f x)
  transitive' _ _ hs _ hr x := hr (hs x) PUnit.unit

/-- The discrete sieve on a type, which only includes arrows whose image is a subsingleton. -/
@[simps]
def discreteSieve (α : Type u) : Sieve α where
  arrows _ f := ∃ x, ∀ y, f y = x
  downward_closed := fun ⟨x, hx⟩ g => ⟨x, fun y => hx <| g y⟩

theorem discreteSieve_mem (α : Type u) : discreteSieve α ∈ typesGrothendieckTopology α :=
  fun x => ⟨x, fun _ => rfl⟩

/-- The discrete presieve on a type, which only includes arrows whose domain is a singleton. -/
def discretePresieve (α : Type u) : Presieve α :=
  fun β _ => ∃ x : β, ∀ y : β, y = x

theorem generate_discretePresieve_mem (α : Type u) :
    Sieve.generate (discretePresieve α) ∈ typesGrothendieckTopology α :=
  fun x => ⟨PUnit, id, fun _ => x, ⟨PUnit.unit, fun _ => Subsingleton.elim _ _⟩, rfl⟩

/-- The sheaf condition for `yoneda'`. -/
theorem Presieve.isSheaf_yoneda' {α : Type u} :
    Presieve.IsSheaf typesGrothendieckTopology (yoneda.obj α) :=
  fun β _ hs x hx =>
  ⟨fun y => x _ (hs y) PUnit.unit, fun γ f h =>
    funext fun z => by
      convert congr_fun (hx (𝟙 _) (fun _ => z) (hs <| f z) h rfl) PUnit.unit using 1,
    fun f hf => funext fun y => by convert congr_fun (hf _ (hs y)) PUnit.unit⟩

/-- The sheaf condition for `yoneda'`. -/
theorem Presheaf.isSheaf_yoneda' {α : Type u} :
    Presheaf.IsSheaf typesGrothendieckTopology (yoneda.obj α) := by
  rw [isSheaf_iff_isSheaf_of_type]
  exact Presieve.isSheaf_yoneda'

@[deprecated (since := "2024-11-26")] alias isSheaf_yoneda' := Presieve.isSheaf_yoneda'

/-- The yoneda functor that sends a type to a sheaf over the category of types. -/
@[simps]
def yoneda' : Type u ⥤ Sheaf typesGrothendieckTopology (Type u) where
  obj α := ⟨yoneda.obj α, Presheaf.isSheaf_yoneda'⟩
  map f := ⟨yoneda.map f⟩

@[simp]
theorem yoneda'_comp : yoneda'.{u} ⋙ sheafToPresheaf _ _ = yoneda :=
  rfl

open Opposite

/-- Given a presheaf `P` on the category of types, construct
a map `P(α) → (α → P(*))` for all type `α`. -/
def eval (P : Type uᵒᵖ ⥤ Type u) (α : Type u) (s : P.obj (op α)) (x : α) : P.obj (op PUnit) :=
  P.map (↾fun _ => x).op s

open Presieve

/-- Given a sheaf `S` on the category of types, construct a map
`(α → S(*)) → S(α)` that is inverse to `eval`. -/
noncomputable def typesGlue (S : Type uᵒᵖ ⥤ Type u) (hs : IsSheaf typesGrothendieckTopology S)
    (α : Type u) (f : α → S.obj (op PUnit)) : S.obj (op α) :=
  (hs.isSheafFor _ _ (generate_discretePresieve_mem α)).amalgamate
    (fun _ g hg => S.map (↾fun _ => PUnit.unit).op <| f <| g <| Classical.choose hg)
    fun β γ δ g₁ g₂ f₁ f₂ hf₁ hf₂ h =>
    (hs.isSheafFor _ _ (generate_discretePresieve_mem δ)).isSeparatedFor.ext fun ε g ⟨x, _⟩ => by
      have : f₁ (Classical.choose hf₁) = f₂ (Classical.choose hf₂) :=
        Classical.choose_spec hf₁ (g₁ <| g x) ▸
          Classical.choose_spec hf₂ (g₂ <| g x) ▸ congr_fun h _
      simp_rw [← FunctorToTypes.map_comp_apply, this, ← op_comp]
      rfl

theorem eval_typesGlue {S hs α} (f) : eval.{u} S α (typesGlue S hs α f) = f := by
  funext x
  apply (IsSheafFor.valid_glue _ _ _ <| ⟨PUnit.unit, fun _ => Subsingleton.elim _ _⟩).trans
  convert FunctorToTypes.map_id_apply S _

theorem typesGlue_eval {S hs α} (s) : typesGlue.{u} S hs α (eval S α s) = s := by
  apply (hs.isSheafFor _ _ (generate_discretePresieve_mem α)).isSeparatedFor.ext
  intro β f hf
  apply (IsSheafFor.valid_glue _ _ _ hf).trans
  apply (FunctorToTypes.map_comp_apply _ _ _ _).symm.trans
  rw [← op_comp]
  --congr 2 -- Porting note: This tactic didn't work. Find an alternative.
  suffices ((↾fun _ ↦ PUnit.unit) ≫ ↾fun _ ↦ f (Classical.choose hf)) = f by rw [this]
  funext x
  exact congr_arg f (Classical.choose_spec hf x).symm

/-- Given a sheaf `S`, construct an equivalence `S(α) ≃ (α → S(*))`. -/
@[simps]
noncomputable def evalEquiv (S : Type uᵒᵖ ⥤ Type u)
    (hs : Presheaf.IsSheaf typesGrothendieckTopology S)
    (α : Type u) : S.obj (op α) ≃ (α → S.obj (op PUnit)) where
  toFun := eval S α
  invFun := typesGlue S ((isSheaf_iff_isSheaf_of_type _ _ ).1 hs) α
  left_inv := typesGlue_eval
  right_inv := eval_typesGlue

theorem eval_map (S : Type uᵒᵖ ⥤ Type u) (α β) (f : β ⟶ α) (s x) :
    eval S β (S.map f.op s) x = eval S α s (f x) := by
  simp_rw [eval, ← FunctorToTypes.map_comp_apply, ← op_comp]; rfl

/-- Given a sheaf `S`, construct an isomorphism `S ≅ [-, S(*)]`. -/
@[simps!]
noncomputable def equivYoneda (S : Type uᵒᵖ ⥤ Type u)
    (hs : Presheaf.IsSheaf typesGrothendieckTopology S) :
    S ≅ yoneda.obj (S.obj (op PUnit)) :=
  NatIso.ofComponents (fun α => Equiv.toIso <| evalEquiv S hs <| unop α) fun {α β} f =>
    funext fun _ => funext fun _ => eval_map S (unop α) (unop β) f.unop _ _

/-- Given a sheaf `S`, construct an isomorphism `S ≅ [-, S(*)]`. -/
@[simps]
noncomputable def equivYoneda' (S : Sheaf typesGrothendieckTopology (Type u)) :
    S ≅ yoneda'.obj (S.1.obj (op PUnit)) where
  hom := ⟨(equivYoneda S.1 S.2).hom⟩
  inv := ⟨(equivYoneda S.1 S.2).inv⟩
  hom_inv_id := by ext1; apply (equivYoneda S.1 S.2).hom_inv_id
  inv_hom_id := by ext1; apply (equivYoneda S.1 S.2).inv_hom_id

theorem eval_app (S₁ S₂ : Sheaf typesGrothendieckTopology (Type u)) (f : S₁ ⟶ S₂) (α : Type u)
    (s : S₁.1.obj (op α)) (x : α) :
    eval S₂.1 α (f.val.app (op α) s) x = f.val.app (op PUnit) (eval S₁.1 α s x) :=
  (congr_fun (f.val.naturality (↾fun _ : PUnit => x).op) s).symm

/-- `yoneda'` induces an equivalence of category between `Type u` and
`Sheaf typesGrothendieckTopology (Type u)`. -/
@[simps!]
noncomputable def typeEquiv : Type u ≌ Sheaf typesGrothendieckTopology (Type u) where
  functor := yoneda'
  inverse := sheafToPresheaf _ _ ⋙ (evaluation _ _).obj (op PUnit)
  unitIso := NatIso.ofComponents
      (fun _α => -- α ≅ PUnit ⟶ α
        { hom := fun x _ => x
          inv := fun f => f PUnit.unit
          hom_inv_id := funext fun _ => rfl
          inv_hom_id := funext fun _ => funext fun y => PUnit.casesOn y rfl })
      fun _ => rfl
  counitIso := Iso.symm <|
      NatIso.ofComponents (fun S => equivYoneda' S) (fun {S₁ S₂} f => by
        ext ⟨α⟩ s
        dsimp at s ⊢
        ext x
        exact eval_app S₁ S₂ f α s x)
  functor_unitIso_comp X := by
    ext1
    apply yonedaEquiv.injective
    dsimp [yoneda', yonedaEquiv, evalEquiv]
    erw [typesGlue_eval]

instance subcanonical_typesGrothendieckTopology : typesGrothendieckTopology.{u}.Subcanonical :=
  GrothendieckTopology.Subcanonical.of_isSheaf_yoneda_obj _ fun _ => Presieve.isSheaf_yoneda'

theorem typesGrothendieckTopology_eq_canonical :
    typesGrothendieckTopology.{u} = Sheaf.canonicalTopology (Type u) := by
  refine le_antisymm typesGrothendieckTopology.le_canonical (sInf_le ?_)
  refine ⟨yoneda.obj (ULift Bool), ⟨_, rfl⟩, GrothendieckTopology.ext ?_⟩
  funext α
  ext S
  refine ⟨fun hs x => ?_, fun hs β f => Presieve.isSheaf_yoneda' _ fun y => hs _⟩
  by_contra hsx
  have : (fun _ => ULift.up true) = fun _ => ULift.up false :=
    (hs PUnit fun _ => x).isSeparatedFor.ext
      fun β f hf => funext fun y => hsx.elim <| S.2 hf fun _ => y
  simp [funext_iff] at this

end CategoryTheory
```
