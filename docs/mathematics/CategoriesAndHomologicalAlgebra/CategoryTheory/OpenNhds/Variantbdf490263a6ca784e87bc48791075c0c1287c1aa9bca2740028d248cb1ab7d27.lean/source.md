# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OpenNhds.Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `53ac4adf632fa1df4dddab7b5206b2516780c02f` · SHA-256 `28abf1385aa871c5de1e73c72e005cbe4d39edb8f1cf2aac03d0115d6772885a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OpenNhds.Variantfa17755fe454939f0e1d5bac6b3bff66a18275e0e5b10b1fdf7e9c605dbd0d2c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fa17755fe454939f0e1d5bac6b3bff66a18275e0e5b10b1fdf7e9c605dbd0d2c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.OpenNhds.Variantfa17755fe454939f0e1d5bac6b3bff66a18275e0e5b10b1fdf7e9c605dbd0d2c","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"fa17755fe454939f0e1d5bac6b3bff66a18275e0e5b10b1fdf7e9c605dbd0d2c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Category/TopCat/OpenNhds.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Topology.Category.TopCat.Opens
import Mathlib.Data.Set.Subsingleton

/-!
# The category of open neighborhoods of a point

Given an object `X` of the category `TopCat` of topological spaces and a point `x : X`, this file
builds the type `OpenNhds x` of open neighborhoods of `x` in `X` and endows it with the partial
order given by inclusion and the corresponding category structure (as a full subcategory of the
poset category `Set X`). This is used in `Topology.Sheaves.Stalks` to build the stalk of a sheaf
at `x` as a limit over `OpenNhds x`.

## Main declarations

Besides `OpenNhds`, the main constructions here are:

* `inclusion (x : X)`: the obvious functor `OpenNhds x ⥤ Opens X`
* `functorNhds`: An open map `f : X ⟶ Y` induces a functor `OpenNhds x ⥤ OpenNhds (f x)`
* `adjunctionNhds`: An open map `f : X ⟶ Y` induces an adjunction between `OpenNhds x` and
                    `OpenNhds (f x)`.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OpenNhds.Variantfa17755fe454939f0e1d5bac6b3bff66a18275e0e5b10b1fdf7e9c605dbd0d2c

open CategoryTheory TopologicalSpace Opposite Topology

universe u

variable {X Y : TopCat.{u}} (f : X ⟶ Y)

namespace TopologicalSpace

/-- The type of open neighbourhoods of a point `x` in a (bundled) topological space. -/
def OpenNhds (x : X) :=
  ObjectProperty.FullSubcategory fun U : Opens X => x ∈ U

namespace OpenNhds
variable {x : X} {U V W : OpenNhds x}

instance partialOrder (x : X) : PartialOrder (OpenNhds x) where
  le U V := U.1 ≤ V.1
  le_refl _ := le_rfl
  le_trans _ _ _ := le_trans
  le_antisymm _ _ i j := ObjectProperty.FullSubcategory.ext <| le_antisymm i j

instance (x : X) : Lattice (OpenNhds x) :=
  { OpenNhds.partialOrder x with
    inf := fun U V => ⟨U.1 ⊓ V.1, ⟨U.2, V.2⟩⟩
    le_inf := fun U V W => @le_inf _ _ U.1.1 V.1.1 W.1.1
    inf_le_left := fun U V => @inf_le_left _ _ U.1.1 V.1.1
    inf_le_right := fun U V => @inf_le_right _ _ U.1.1 V.1.1
    sup := fun U V => ⟨U.1 ⊔ V.1, Set.mem_union_left V.1.1 U.2⟩
    sup_le := fun U V W => @sup_le _ _ U.1.1 V.1.1 W.1.1
    le_sup_left := fun U V => @le_sup_left _ _ U.1.1 V.1.1
    le_sup_right := fun U V => @le_sup_right _ _ U.1.1 V.1.1 }

instance (x : X) : OrderTop (OpenNhds x) where
  top := ⟨⊤, trivial⟩
  le_top _ := by dsimp [LE.le]; exact le_top

instance (x : X) : Inhabited (OpenNhds x) :=
  ⟨⊤⟩

instance openNhdsCategory (x : X) : Category.{u} (OpenNhds x) := inferInstance

instance opensNhds.instFunLike : FunLike (U ⟶ V) U.1 V.1 where
  coe f := Set.inclusion f.le
  coe_injective' := by rintro ⟨⟨_⟩⟩ _ _; congr!

@[simp] lemma apply_mk (f : U ⟶ V) (y : X) (hy) : f ⟨y, hy⟩ = ⟨y, f.le hy⟩ := rfl

@[simp] lemma val_apply (f : U ⟶ V) (y : U.1) : (f y : X) = y := rfl

@[simp, norm_cast] lemma coe_id (f : U ⟶ U) : ⇑f = id := rfl

lemma id_apply (f : U ⟶ U) (y : U.1) : f y = y := rfl

@[simp] lemma comp_apply (f : U ⟶ V) (g : V ⟶ W) (x : U.1) : (f ≫ g) x = g (f x) := rfl

/-- The inclusion `U ⊓ V ⟶ U` as a morphism in the category of open sets. -/
def infLELeft {x : X} (U V : OpenNhds x) : U ⊓ V ⟶ U :=
  homOfLE inf_le_left

/-- The inclusion `U ⊓ V ⟶ V` as a morphism in the category of open sets. -/
def infLERight {x : X} (U V : OpenNhds x) : U ⊓ V ⟶ V :=
  homOfLE inf_le_right

/-- The inclusion functor from open neighbourhoods of `x`
to open sets in the ambient topological space. -/
def inclusion (x : X) : OpenNhds x ⥤ Opens X :=
  ObjectProperty.ι _

@[simp]
theorem inclusion_obj (x : X) (U) (p) : (inclusion x).obj ⟨U, p⟩ = U :=
  rfl

theorem isOpenEmbedding {x : X} (U : OpenNhds x) : IsOpenEmbedding U.1.inclusion' :=
  U.1.isOpenEmbedding

/-- The preimage functor from neighborhoods of `f x` to neighborhoods of `x`. -/
def map (x : X) : OpenNhds (f x) ⥤ OpenNhds x where
  obj U := ⟨(Opens.map f).obj U.1, U.2⟩
  map i := (Opens.map f).map i

@[simp]
theorem map_obj (x : X) (U) (q) : (map f x).obj ⟨U, q⟩ = ⟨(Opens.map f).obj U, q⟩ :=
  rfl

@[simp]
theorem map_id_obj (x : X) (U) : (map (𝟙 X) x).obj U = U := rfl

@[simp]
theorem map_id_obj' (x : X) (U) (p) (q) : (map (𝟙 X) x).obj ⟨⟨U, p⟩, q⟩ = ⟨⟨U, p⟩, q⟩ :=
  rfl

@[simp]
theorem map_id_obj_unop (x : X) (U : (OpenNhds x)ᵒᵖ) : (map (𝟙 X) x).obj (unop U) = unop U := by
  simp

@[simp]
theorem op_map_id_obj (x : X) (U : (OpenNhds x)ᵒᵖ) : (map (𝟙 X) x).op.obj U = U := by simp

/-- `Opens.map f` and `OpenNhds.map f` form a commuting square (up to natural isomorphism)
with the inclusion functors into `Opens X`. -/
@[simps! hom_app inv_app]
def inclusionMapIso (x : X) : inclusion (f x) ⋙ Opens.map f ≅ map f x ⋙ inclusion x :=
  NatIso.ofComponents fun U => { hom := 𝟙 _, inv := 𝟙 _ }

@[simp]
theorem inclusionMapIso_hom (x : X) : (inclusionMapIso f x).hom = 𝟙 _ :=
  rfl

@[simp]
theorem inclusionMapIso_inv (x : X) : (inclusionMapIso f x).inv = 𝟙 _ :=
  rfl

end OpenNhds

end TopologicalSpace

namespace IsOpenMap

open TopologicalSpace

variable {f}

/-- An open map `f : X ⟶ Y` induces a functor `OpenNhds x ⥤ OpenNhds (f x)`. -/
@[simps]
def functorNhds (h : IsOpenMap f) (x : X) : OpenNhds x ⥤ OpenNhds (f x) where
  obj U := ⟨h.functor.obj U.1, ⟨x, U.2, rfl⟩⟩
  map i := h.functor.map i

/-- An open map `f : X ⟶ Y` induces an adjunction between `OpenNhds x` and `OpenNhds (f x)`. -/
def adjunctionNhds (h : IsOpenMap f) (x : X) : IsOpenMap.functorNhds h x ⊣ OpenNhds.map f x where
  unit := { app := fun _ => homOfLE fun x hxU => ⟨x, hxU, rfl⟩ }
  counit := { app := fun _ => homOfLE fun _ ⟨_, hfxV, hxy⟩ => hxy ▸ hfxV }

end IsOpenMap

namespace Topology.IsInducing

open TopologicalSpace

variable {f}

/-- An inducing map `f : X ⟶ Y` induces a functor `open_nhds x ⥤ open_nhds (f x)`. -/
@[simps]
def functorNhds (h : IsInducing f) (x : X) :
    OpenNhds x ⥤ OpenNhds (f x) where
  obj U := ⟨h.functor.obj U.1, (h.mem_functorObj_iff U.1).mpr U.2⟩
  map := h.functor.map

/--
An inducing map `f : X ⟶ Y` induces an adjunction between `open_nhds x` and `open_nhds (f x)`.
-/
def adjunctionNhds (h : IsInducing f) (x : X) :
    OpenNhds.map f x ⊣ h.functorNhds x where
  unit := { app := fun U => homOfLE (h.adjunction.unit.app U.1).le }
  counit := { app := fun U => homOfLE (h.adjunction.counit.app U.1).le }

end Topology.IsInducing
```
