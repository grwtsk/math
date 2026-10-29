-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoveringOfPresieve.Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"efc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CoveringOfPresieve.Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"efc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/Sheaves/SheafCondition/Sites.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Justus Springer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Justus Springer
-/
import Mathlib.CategoryTheory.Sites.Spaces
import Mathlib.Topology.Sheaves.Sheaf
import Mathlib.CategoryTheory.Sites.DenseSubsite


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoveringOfPresieve.Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91

#align_import topology.sheaves.sheaf_condition.sites from "leanprover-community/mathlib"@"d39590fc8728fbf6743249802486f8c91ffe07bc"

/-!

# Coverings and sieves; from sheaves on sites and sheaves on spaces

In this file, we connect coverings in a topological space to sieves in the associated Grothendieck
topology, in preparation of connecting the sheaf condition on sites to the various sheaf conditions
on spaces.

We also specialize results about sheaves on sites to sheaves on spaces; we show that the inclusion
functor from a topological basis to `TopologicalSpace.Opens` is `CoverDense`, that open maps
induce `CoverPreserving` functors, and that open embeddings induce `CompatiblePreserving` functors.

-/


noncomputable section

set_option linter.uppercaseLean3 false -- Porting note: Added because of too many false positives

universe w v u

open CategoryTheory TopologicalSpace

namespace TopCat.Presheaf

variable {X : TopCat.{w}}

/-- Given a presieve `R` on `U`, we obtain a covering family of open sets in `X`, by taking as index
type the type of dependent pairs `(V, f)`, where `f : V ⟶ U` is in `R`.
-/
def coveringOfPresieve (U : Opens X) (R : Presieve U) : (ΣV, { f : V ⟶ U // R f }) → Opens X :=
  fun f => f.1
#align Top.presheaf.covering_of_presieve TopCat.Presheaf.coveringOfPresieve

@[simp]
theorem coveringOfPresieve_apply (U : Opens X) (R : Presieve U) (f : ΣV, { f : V ⟶ U // R f }) :
    coveringOfPresieve U R f = f.1 := rfl
#align Top.presheaf.covering_of_presieve_apply TopCat.Presheaf.coveringOfPresieve_apply

namespace coveringOfPresieve

variable (U : Opens X) (R : Presieve U)

/-- If `R` is a presieve in the grothendieck topology on `Opens X`, the covering family associated
to `R` really is _covering_, i.e. the union of all open sets equals `U`.
-/
theorem iSup_eq_of_mem_grothendieck (hR : Sieve.generate R ∈ Opens.grothendieckTopology X U) :
    iSup (coveringOfPresieve U R) = U := by
  apply le_antisymm
  · refine' iSup_le _
    intro f
    exact f.2.1.le
  intro x hxU
  rw [Opens.coe_iSup, Set.mem_iUnion]
  obtain ⟨V, iVU, ⟨W, iVW, iWU, hiWU, -⟩, hxV⟩ := hR x hxU
  exact ⟨⟨W, ⟨iWU, hiWU⟩⟩, iVW.le hxV⟩
#align Top.presheaf.covering_of_presieve.supr_eq_of_mem_grothendieck TopCat.Presheaf.coveringOfPresieve.iSup_eq_of_mem_grothendieck

end coveringOfPresieve

/-- Given a family of opens `U : ι → Opens X` and any open `Y : Opens X`, we obtain a presieve
on `Y` by declaring that a morphism `f : V ⟶ Y` is a member of the presieve if and only if
there exists an index `i : ι` such that `V = U i`.
-/
def presieveOfCoveringAux {ι : Type v} (U : ι → Opens X) (Y : Opens X) : Presieve Y :=
  fun V _ => ∃ i, V = U i
#align Top.presheaf.presieve_of_covering_aux TopCat.Presheaf.presieveOfCoveringAux

/-- Take `Y` to be `iSup U` and obtain a presieve over `iSup U`. -/
def presieveOfCovering {ι : Type v} (U : ι → Opens X) : Presieve (iSup U) :=
  presieveOfCoveringAux U (iSup U)
#align Top.presheaf.presieve_of_covering TopCat.Presheaf.presieveOfCovering

/-- Given a presieve `R` on `Y`, if we take its associated family of opens via
    `coveringOfPresieve` (which may not cover `Y` if `R` is not covering), and take
    the presieve on `Y` associated to the family of opens via `presieveOfCoveringAux`,
    then we get back the original presieve `R`. -/
@[simp]
theorem covering_presieve_eq_self {Y : Opens X} (R : Presieve Y) :
    presieveOfCoveringAux (coveringOfPresieve Y R) Y = R := by
  funext Z
  ext f
  exact ⟨fun ⟨⟨_, f', h⟩, rfl⟩ => by rwa [Subsingleton.elim f f'], fun h => ⟨⟨Z, f, h⟩, rfl⟩⟩
#align Top.presheaf.covering_presieve_eq_self TopCat.Presheaf.covering_presieve_eq_self

namespace presieveOfCovering

variable {ι : Type v} (U : ι → Opens X)

/-- The sieve generated by `presieveOfCovering U` is a member of the grothendieck topology.
-/
theorem mem_grothendieckTopology :
    Sieve.generate (presieveOfCovering U) ∈ Opens.grothendieckTopology X (iSup U) := by
  intro x hx
  obtain ⟨i, hxi⟩ := Opens.mem_iSup.mp hx
  exact ⟨U i, Opens.leSupr U i, ⟨U i, 𝟙 _, Opens.leSupr U i, ⟨i, rfl⟩, Category.id_comp _⟩, hxi⟩
#align Top.presheaf.presieve_of_covering.mem_grothendieck_topology TopCat.Presheaf.presieveOfCovering.mem_grothendieckTopology

/-- An index `i : ι` can be turned into a dependent pair `(V, f)`, where `V` is an open set and
`f : V ⟶ iSup U` is a member of `presieveOfCovering U f`.
-/
def homOfIndex (i : ι) : ΣV, { f : V ⟶ iSup U // presieveOfCovering U f } :=
  ⟨U i, Opens.leSupr U i, i, rfl⟩
#align Top.presheaf.presieve_of_covering.hom_of_index TopCat.Presheaf.presieveOfCovering.homOfIndex

/-- By using the axiom of choice, a dependent pair `(V, f)` where `f : V ⟶ iSup U` is a member of
`presieveOfCovering U f` can be turned into an index `i : ι`, such that `V = U i`.
-/
def indexOfHom (f : ΣV, { f : V ⟶ iSup U // presieveOfCovering U f }) : ι :=
  f.2.2.choose
#align Top.presheaf.presieve_of_covering.index_of_hom TopCat.Presheaf.presieveOfCovering.indexOfHom

theorem indexOfHom_spec (f : ΣV, { f : V ⟶ iSup U // presieveOfCovering U f }) :
    f.1 = U (indexOfHom U f) :=
  f.2.2.choose_spec
#align Top.presheaf.presieve_of_covering.index_of_hom_spec TopCat.Presheaf.presieveOfCovering.indexOfHom_spec

end presieveOfCovering

end TopCat.Presheaf

namespace TopCat.Opens

variable {X : TopCat} {ι : Type*}

theorem coverDense_iff_isBasis [Category ι] (B : ι ⥤ Opens X) :
    CoverDense (Opens.grothendieckTopology X) B ↔ Opens.IsBasis (Set.range B.obj) := by
  rw [Opens.isBasis_iff_nbhd]
  constructor; intro hd U x hx; rcases hd.1 U x hx with ⟨V, f, ⟨i, f₁, f₂, _⟩, hV⟩
  exact ⟨B.obj i, ⟨i, rfl⟩, f₁.le hV, f₂.le⟩
  intro hb; constructor; intro U x hx; rcases hb hx with ⟨_, ⟨i, rfl⟩, hx, hi⟩
  exact ⟨B.obj i, ⟨⟨hi⟩⟩, ⟨⟨i, 𝟙 _, ⟨⟨hi⟩⟩, rfl⟩⟩, hx⟩
#align Top.opens.cover_dense_iff_is_basis TopCat.Opens.coverDense_iff_isBasis

theorem coverDense_inducedFunctor {B : ι → Opens X} (h : Opens.IsBasis (Set.range B)) :
    CoverDense (Opens.grothendieckTopology X) (inducedFunctor B) :=
  (coverDense_iff_isBasis _).2 h
#align Top.opens.cover_dense_induced_functor TopCat.Opens.coverDense_inducedFunctor

end TopCat.Opens

section OpenEmbedding

open TopCat.Presheaf Opposite

variable {C : Type u} [Category.{v} C]

variable {X Y : TopCat.{w}} {f : X ⟶ Y} {F : Y.Presheaf C}

theorem OpenEmbedding.compatiblePreserving (hf : OpenEmbedding f) :
    CompatiblePreserving (Opens.grothendieckTopology Y) hf.isOpenMap.functor := by
  haveI : Mono f := (TopCat.mono_iff_injective f).mpr hf.inj
  apply compatiblePreservingOfDownwardsClosed
  intro U V i
  refine' ⟨(Opens.map f).obj V, eqToIso <| Opens.ext <| Set.image_preimage_eq_of_subset fun x h ↦ _⟩
  obtain ⟨_, _, rfl⟩ := i.le h
  exact ⟨_, rfl⟩
#align open_embedding.compatible_preserving OpenEmbedding.compatiblePreserving

theorem IsOpenMap.coverPreserving (hf : IsOpenMap f) :
    CoverPreserving (Opens.grothendieckTopology X) (Opens.grothendieckTopology Y) hf.functor := by
  constructor
  rintro U S hU _ ⟨x, hx, rfl⟩
  obtain ⟨V, i, hV, hxV⟩ := hU x hx
  exact ⟨_, hf.functor.map i, ⟨_, i, 𝟙 _, hV, rfl⟩, Set.mem_image_of_mem f hxV⟩
#align is_open_map.cover_preserving IsOpenMap.coverPreserving

theorem TopCat.Presheaf.isSheaf_of_openEmbedding (h : OpenEmbedding f) (hF : F.IsSheaf) :
    IsSheaf (h.isOpenMap.functor.op ⋙ F) :=
  pullback_isSheaf_of_coverPreserving h.compatiblePreserving h.isOpenMap.coverPreserving ⟨_, hF⟩
#align Top.presheaf.is_sheaf_of_open_embedding TopCat.Presheaf.isSheaf_of_openEmbedding

end OpenEmbedding

namespace TopCat.Sheaf

open TopCat Opposite

variable {C : Type u} [Category.{v} C]

variable {X : TopCat.{w}} {ι : Type*} {B : ι → Opens X}

variable (F : X.Presheaf C) (F' : Sheaf C X) (h : Opens.IsBasis (Set.range B))

/-- The empty component of a sheaf is terminal. -/
def isTerminalOfEmpty (F : Sheaf C X) : Limits.IsTerminal (F.val.obj (op ⊥)) :=
  F.isTerminalOfBotCover ⊥ (fun _ h => h.elim)
#align Top.sheaf.is_terminal_of_empty TopCat.Sheaf.isTerminalOfEmpty

/-- A variant of `isTerminalOfEmpty` that is easier to `apply`. -/
def isTerminalOfEqEmpty (F : X.Sheaf C) {U : Opens X} (h : U = ⊥) :
    Limits.IsTerminal (F.val.obj (op U)) := by
  convert F.isTerminalOfEmpty
#align Top.sheaf.is_terminal_of_eq_empty TopCat.Sheaf.isTerminalOfEqEmpty

/-- If a family `B` of open sets forms a basis of the topology on `X`, and if `F'`
    is a sheaf on `X`, then a homomorphism between a presheaf `F` on `X` and `F'`
    is equivalent to a homomorphism between their restrictions to the indexing type
    `ι` of `B`, with the induced category structure on `ι`. -/
def restrictHomEquivHom : ((inducedFunctor B).op ⋙ F ⟶ (inducedFunctor B).op ⋙ F'.1) ≃ (F ⟶ F'.1) :=
  @CoverDense.restrictHomEquivHom _ _ _ _ _ _ _ _ (Opens.coverDense_inducedFunctor h) _ F F'
#align Top.sheaf.restrict_hom_equiv_hom TopCat.Sheaf.restrictHomEquivHom

@[simp]
theorem extend_hom_app (α : (inducedFunctor B).op ⋙ F ⟶ (inducedFunctor B).op ⋙ F'.1) (i : ι) :
    (restrictHomEquivHom F F' h α).app (op (B i)) = α.app (op i) := by
  nth_rw 2 [← (restrictHomEquivHom F F' h).left_inv α]
  rfl
#align Top.sheaf.extend_hom_app TopCat.Sheaf.extend_hom_app

theorem hom_ext {α β : F ⟶ F'.1} (he : ∀ i, α.app (op (B i)) = β.app (op (B i))) : α = β := by
  apply (restrictHomEquivHom F F' h).symm.injective
  ext i
  exact he i.unop
#align Top.sheaf.hom_ext TopCat.Sheaf.hom_ext

end TopCat.Sheaf
