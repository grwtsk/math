# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OmegaCompletePartialOrder.Variant760a6b56f846c8b3eedfc86ce6c3d67caf706ec1defc5ee7ecc6237387e420de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ff464b12477e9dd6f6d63601cc507bc9baaa83f` · SHA-256 `bcb4ba7572a4fc8c96f0a71a5df60146e0e8a80f419566f9994ebc1a642aab6a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoeOf.Variantcf567d8d2d6becb646d0ed566342a5853c333fe150ba53ec602e378d40191d50","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf567d8d2d6becb646d0ed566342a5853c333fe150ba53ec602e378d40191d50","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CoeOf.Variantcf567d8d2d6becb646d0ed566342a5853c333fe150ba53ec602e378d40191d50","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"cf567d8d2d6becb646d0ed566342a5853c333fe150ba53ec602e378d40191d50","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Category/OmegaCompletePartialOrder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
module

public import Mathlib.Order.BourbakiWitt
public import Mathlib.CategoryTheory.Limits.Shapes.Products
public import Mathlib.CategoryTheory.Limits.Shapes.Equalizers
public import Mathlib.CategoryTheory.Limits.Constructions.LimitsOfProductsAndEqualizers
public import Mathlib.CategoryTheory.ConcreteCategory.Basic

/-!
# Category of types with an omega complete partial order

In this file, we bundle the class `OmegaCompletePartialOrder` into a
concrete category and prove that continuous functions also form
an `OmegaCompletePartialOrder`.

## Main definitions

* `ωCPO`
  * an instance of `Category` and `ConcreteCategory`

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoeOf.Variantcf567d8d2d6becb646d0ed566342a5853c333fe150ba53ec602e378d40191d50

@[expose] public section


open CategoryTheory

universe u v


/-- The category of types with an omega complete partial order. -/
structure ωCPO : Type (u + 1) where
  /-- Construct a bundled ωCPO from the underlying type and typeclass. -/
  of ::
  /-- The underlying type. -/
  carrier : Type u
  [str : OmegaCompletePartialOrder carrier]

attribute [instance] ωCPO.str

namespace ωCPO

open Lean.PrettyPrinter.Delaborator in
/-- This prints `ωCPO.of X` as `↧X`. -/
@[app_delab ωCPO.of]
meta def delabOf : Delab := CategoryTheory.delabOf

open OmegaCompletePartialOrder

instance : CoeSort ωCPO Type* :=
  ⟨carrier⟩

theorem coe_of (α : Type*) [OmegaCompletePartialOrder α] : ↥(of α) = α :=
  rfl

instance : LargeCategory.{u} ωCPO where
  Hom X Y := ContinuousHom X Y
  id X := ContinuousHom.id
  comp f g := g.comp f

instance : ConcreteCategory ωCPO (ContinuousHom · ·) where
  hom f := f
  ofHom f := f

instance : Inhabited ωCPO :=
  ⟨of PUnit⟩

section

open CategoryTheory.Limits

namespace HasProducts

/-- The pi-type gives a cone for a product. -/
def product {J : Type v} (f : J → ωCPO.{v}) : Fan f :=
  Fan.mk (of (∀ j, f j)) fun j => .mk (Pi.evalOrderHom j) fun _ => rfl

/-- The pi-type is a limit cone for the product. -/
def isProduct (J : Type v) (f : J → ωCPO) : IsLimit (product f) where
  lift s :=
    ⟨⟨fun t j => (s.π.app ⟨j⟩) t, fun _ _ h j => (s.π.app ⟨j⟩).monotone h⟩,
      fun x => funext fun j => (s.π.app ⟨j⟩).continuous x⟩
  uniq s m w := by
    ext t; funext j -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11041): Originally `ext t j`
    change m t j = (s.π.app ⟨j⟩) t
    rw [← w ⟨j⟩]
    rfl
  fac _ _ := rfl

instance (J : Type v) (f : J → ωCPO.{v}) : HasProduct f :=
  HasLimit.mk ⟨_, isProduct _ f⟩

end HasProducts

instance omegaCompletePartialOrderEqualizer {α β : Type*} [OmegaCompletePartialOrder α]
    [OmegaCompletePartialOrder β] (f g : α →𝒄 β) :
    OmegaCompletePartialOrder { a : α // f a = g a } :=
  OmegaCompletePartialOrder.subtype _ fun c hc => by
    rw [f.continuous, g.continuous]
    congr 1
    ext x
    apply hc _ ⟨_, rfl⟩

namespace HasEqualizers

/-- The equalizer inclusion function as a `ContinuousHom`. -/
def equalizerι {α β : Type*} [OmegaCompletePartialOrder α] [OmegaCompletePartialOrder β]
    (f g : α →𝒄 β) : { a : α // f a = g a } →𝒄 α :=
  .mk (OrderHom.Subtype.val _) fun _ => rfl

/-- A construction of the equalizer fork. -/
def equalizer {X Y : ωCPO.{v}} (f g : X ⟶ Y) : Fork f g :=
  Fork.ofι (P := ↧{ a // f a = g a }) (equalizerι f g)
    (ContinuousHom.ext _ _ fun x => x.2)

/-- The equalizer fork is a limit. -/
def isEqualizer {X Y : ωCPO.{v}} (f g : X ⟶ Y) : IsLimit (equalizer f g) :=
  Fork.IsLimit.mk' _ fun s =>
    ⟨{  toFun := fun x => ⟨s.ι x, by apply ContinuousHom.congr_fun s.condition⟩
        monotone' := fun _ _ h => s.ι.monotone h
        map_ωSup' := fun x => Subtype.ext (s.ι.continuous x)
      }, by ext; rfl, fun hm => by
      ext x : 2; apply Subtype.ext ?_ -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11041): Originally `ext`
      apply ContinuousHom.congr_fun hm⟩

end HasEqualizers

instance : HasProducts.{v} ωCPO.{v} :=
  fun _ => { has_limit := fun _ => hasLimit_of_iso Discrete.natIsoFunctor.symm }

instance {X Y : ωCPO.{v}} (f g : X ⟶ Y) : HasLimit (parallelPair f g) :=
  HasLimit.mk ⟨_, HasEqualizers.isEqualizer f g⟩

instance : HasEqualizers ωCPO.{v} :=
  hasEqualizers_of_hasLimit_parallelPair _

instance : HasLimits ωCPO.{v} :=
  has_limits_of_hasEqualizers_and_products

end

end ωCPO
```
