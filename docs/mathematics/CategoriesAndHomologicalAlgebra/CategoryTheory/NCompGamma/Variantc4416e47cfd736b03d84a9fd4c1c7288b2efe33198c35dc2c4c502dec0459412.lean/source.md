# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NCompGamma.Variantc4416e47cfd736b03d84a9fd4c1c7288b2efe33198c35dc2c4c502dec0459412

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `613ee2aabf79d0d9b14293d00abc8f4b93ea9a1a` · SHA-256 `c4416e47cfd736b03d84a9fd4c1c7288b2efe33198c35dc2c4c502dec0459412`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.AlgebraicTopology.DoldKan.GammaCompN
import Mathlib.AlgebraicTopology.DoldKan.NReflectsIso

#align_import algebraic_topology.dold_kan.n_comp_gamma from "leanprover-community/mathlib"@"32a7e535287f9c73f2e4d2aef306a39190f0b504"

/-! The unit isomorphism of the Dold-Kan equivalence

In order to construct the unit isomorphism of the Dold-Kan equivalence,
we first construct natural transformations
`Γ₂N₁.natTrans : N₁ ⋙ Γ₂ ⟶ toKaroubi (simplicial_object C)` and
`Γ₂N₂.natTrans : N₂ ⋙ Γ₂ ⟶ 𝟭 (SimplicialObject C)`.
It is then shown that `Γ₂N₂.natTrans` is an isomorphism by using
that it becomes an isomorphism after the application of the functor
`N₂ : Karoubi (SimplicialObject C) ⥤ Karoubi (ChainComplex C ℕ)`
which reflects isomorphisms.

(See `Equivalence.lean` for the general strategy of proof of the Dold-Kan equivalence.)

-/


noncomputable section

open CategoryTheory CategoryTheory.Category CategoryTheory.Limits CategoryTheory.Idempotents
  SimplexCategory Opposite SimplicialObject Simplicial DoldKan

namespace AlgebraicTopology

namespace DoldKan

variable {C : Type*} [Category C] [Preadditive C]

theorem PInfty_comp_map_mono_eq_zero (X : SimplicialObject C) {n : ℕ} {Δ' : SimplexCategory}
    (i : Δ' ⟶ [n]) [hi : Mono i] (h₁ : Δ'.len ≠ n) (h₂ : ¬Isδ₀ i) :
    PInfty.f n ≫ X.map i.op = 0 := by
  induction' Δ' using SimplexCategory.rec with m
  obtain ⟨k, hk⟩ := Nat.exists_eq_add_of_lt (len_lt_of_mono i fun h => by
        rw [← h] at h₁
        exact h₁ rfl)
  simp only [len_mk] at hk
  rcases k with _|k
  · change n = m + 1 at hk
    subst hk
    obtain ⟨j, rfl⟩ := eq_δ_of_mono i
    rw [Isδ₀.iff] at h₂
    have h₃ : 1 ≤ (j : ℕ) := by
      by_contra h
      exact h₂ (by simpa only [Fin.ext_iff, not_le, Nat.lt_one_iff] using h)
    exact (HigherFacesVanish.of_P (m + 1) m).comp_δ_eq_zero j h₂ (by linarith)
  · simp only [Nat.succ_eq_add_one, ← add_assoc] at hk
    clear h₂ hi
    subst hk
    obtain ⟨j₁ : Fin (_ + 1), i, rfl⟩ :=
      eq_comp_δ_of_not_surjective i fun h => by
        have h' := len_le_of_epi (SimplexCategory.epi_iff_surjective.2 h)
        dsimp at h'
        linarith
    obtain ⟨j₂, i, rfl⟩ :=
      eq_comp_δ_of_not_surjective i fun h => by
        have h' := len_le_of_epi (SimplexCategory.epi_iff_surjective.2 h)
        dsimp at h'
        linarith
    by_cases hj₁ : j₁ = 0
    · subst hj₁
      rw [assoc, ← SimplexCategory.δ_comp_δ'' (Fin.zero_le _)]
      simp only [op_comp, X.map_comp, assoc, PInfty_f]
      erw [(HigherFacesVanish.of_P _ _).comp_δ_eq_zero_assoc _ j₂.succ_ne_zero, zero_comp]
      simp only [Nat.succ_eq_add_one, Nat.add, Fin.succ]
      linarith
    · simp only [op_comp, X.map_comp, assoc, PInfty_f]
      erw [(HigherFacesVanish.of_P _ _).comp_δ_eq_zero_assoc _ hj₁, zero_comp]
      by_contra
      exact hj₁ (by simp only [Fin.ext_iff, Fin.val_zero]; linarith)
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.P_infty_comp_map_mono_eq_zero AlgebraicTopology.DoldKan.PInfty_comp_map_mono_eq_zero

@[reassoc]
theorem Γ₀_obj_termwise_mapMono_comp_PInfty (X : SimplicialObject C) {Δ Δ' : SimplexCategory}
    (i : Δ ⟶ Δ') [Mono i] :
    Γ₀.Obj.Termwise.mapMono (AlternatingFaceMapComplex.obj X) i ≫ PInfty.f Δ.len =
      PInfty.f Δ'.len ≫ X.map i.op := by
  induction' Δ using SimplexCategory.rec with n
  induction' Δ' using SimplexCategory.rec with n'
  dsimp
  -- We start with the case `i` is an identity
  by_cases n = n'
  · subst h
    simp only [SimplexCategory.eq_id_of_mono i, Γ₀.Obj.Termwise.mapMono_id, op_id, X.map_id]
    dsimp
    simp only [id_comp, comp_id]
  by_cases hi : Isδ₀ i
  -- The case `i = δ 0`
  · have h' : n' = n + 1 := hi.left
    subst h'
    simp only [Γ₀.Obj.Termwise.mapMono_δ₀' _ i hi]
    dsimp
    rw [← PInfty.comm _ n, AlternatingFaceMapComplex.obj_d_eq]
    simp only [eq_self_iff_true, id_comp, if_true, Preadditive.comp_sum]
    rw [Finset.sum_eq_single (0 : Fin (n + 2))]
    rotate_left
    · intro b _ hb
      rw [Preadditive.comp_zsmul]
      erw [PInfty_comp_map_mono_eq_zero X (SimplexCategory.δ b) h
          (by
            rw [Isδ₀.iff]
            exact hb),
        zsmul_zero]
    · simp only [Finset.mem_univ, not_true, IsEmpty.forall_iff]
    · simp only [hi.eq_δ₀, Fin.val_zero, pow_zero, one_zsmul]
      rfl
  -- The case `i ≠ δ 0`
  · rw [Γ₀.Obj.Termwise.mapMono_eq_zero _ i _ hi, zero_comp]
    swap
    · by_contra h'
      exact h (congr_arg SimplexCategory.len h'.symm)
    rw [PInfty_comp_map_mono_eq_zero]
    · exact h
    · by_contra h'
      exact hi h'
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.Γ₀_obj_termwise_map_mono_comp_P_infty AlgebraicTopology.DoldKan.Γ₀_obj_termwise_mapMono_comp_PInfty

variable [HasFiniteCoproducts C]

namespace Γ₂N₁

/-- The natural transformation `N₁ ⋙ Γ₂ ⟶ toKaroubi (SimplicialObject C)`. -/
@[simps]
def natTrans : (N₁ : SimplicialObject C ⥤ _) ⋙ Γ₂ ⟶ toKaroubi _ where
  app X :=
    { f :=
        { app := fun Δ => (Γ₀.splitting K[X]).desc Δ fun A => PInfty.f A.1.unop.len ≫ X.map A.e.op
          naturality := fun Δ Δ' θ => by
            apply (Γ₀.splitting K[X]).hom_ext'
            intro A
            change _ ≫ (Γ₀.obj K[X]).map θ ≫ _ = _
            simp only [Splitting.ι_desc_assoc, assoc, Γ₀.Obj.map_on_summand'_assoc,
              Splitting.ι_desc]
            erw [Γ₀_obj_termwise_mapMono_comp_PInfty_assoc X (image.ι (θ.unop ≫ A.e))]
            dsimp only [toKaroubi]
            simp only [← X.map_comp]
            congr 2
            simp only [eqToHom_refl, id_comp, comp_id, ← op_comp]
            exact Quiver.Hom.unop_inj (A.fac_pull θ) }
      comm := by
        apply (Γ₀.splitting K[X]).hom_ext
        intro n
        dsimp [N₁]
        simp only [← Splitting.ιSummand_id, Splitting.ι_desc, comp_id, Splitting.ι_desc_assoc,
          assoc, PInfty_f_idem_assoc] }
  naturality {X Y} f := by
    ext1
    apply (Γ₀.splitting K[X]).hom_ext
    intro n
    dsimp [N₁, toKaroubi]
    simp only [← Splitting.ιSummand_id, Splitting.ι_desc, Splitting.ι_desc_assoc, assoc,
      PInfty_f_idem_assoc, Karoubi.comp_f, NatTrans.comp_app, Γ₂_map_f_app,
      HomologicalComplex.comp_f, AlternatingFaceMapComplex.map_f, PInfty_f_naturality_assoc,
      NatTrans.naturality, Splitting.IndexSet.id_fst, unop_op, len_mk]
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.Γ₂N₁.nat_trans AlgebraicTopology.DoldKan.Γ₂N₁.natTrans

-- Porting note: added to speed up elaboration
attribute [irreducible] natTrans

end Γ₂N₁

-- porting note: removed @[simps] attribute because it was creating timeouts
/-- The compatibility isomorphism relating `N₂ ⋙ Γ₂` and `N₁ ⋙ Γ₂`. -/
def compatibility_Γ₂N₁_Γ₂N₂ : toKaroubi (SimplicialObject C) ⋙ N₂ ⋙ Γ₂ ≅ N₁ ⋙ Γ₂ :=
  eqToIso (by rw [← Functor.assoc, compatibility_N₁_N₂])
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.compatibility_Γ₂N₁_Γ₂N₂ AlgebraicTopology.DoldKan.compatibility_Γ₂N₁_Γ₂N₂

-- porting note: no @[simp] attribute because this would trigger a timeout
lemma compatibility_Γ₂N₁_Γ₂N₂_hom_app (X : SimplicialObject C) :
    compatibility_Γ₂N₁_Γ₂N₂.hom.app X =
      eqToHom (by rw [← Functor.assoc, compatibility_N₁_N₂]) := by
  dsimp only [compatibility_Γ₂N₁_Γ₂N₂, CategoryTheory.eqToIso]
  apply eqToHom_app

-- Porting note: added to speed up elaboration
attribute [irreducible] compatibility_Γ₂N₁_Γ₂N₂

lemma compatibility_Γ₂N₁_Γ₂N₂_inv_app (X : SimplicialObject C) :
    compatibility_Γ₂N₁_Γ₂N₂.inv.app X =
      eqToHom (by rw [← Functor.assoc, compatibility_N₁_N₂]) := by
  rw [← cancel_mono (compatibility_Γ₂N₁_Γ₂N₂.hom.app X), Iso.inv_hom_id_app,
    compatibility_Γ₂N₁_Γ₂N₂_hom_app, eqToHom_trans, eqToHom_refl]

namespace Γ₂N₂

/-- The natural transformation `N₂ ⋙ Γ₂ ⟶ 𝟭 (SimplicialObject C)`. -/
def natTrans : (N₂ : Karoubi (SimplicialObject C) ⥤ _) ⋙ Γ₂ ⟶ 𝟭 _ :=
  ((whiskeringLeft _ _ _).obj (toKaroubi (SimplicialObject C))).preimage
    (by exact compatibility_Γ₂N₁_Γ₂N₂.hom ≫ Γ₂N₁.natTrans)
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.Γ₂N₂.nat_trans AlgebraicTopology.DoldKan.Γ₂N₂.natTrans

theorem natTrans_app_f_app (P : Karoubi (SimplicialObject C)) :
    Γ₂N₂.natTrans.app P = by
      exact (N₂ ⋙ Γ₂).map P.decompId_i ≫
        (compatibility_Γ₂N₁_Γ₂N₂.hom ≫ Γ₂N₁.natTrans).app P.X ≫ P.decompId_p := by
  dsimp only [natTrans]
  rw [whiskeringLeft_obj_preimage_app
    (compatibility_Γ₂N₁_Γ₂N₂.hom ≫ Γ₂N₁.natTrans : _ ⟶ toKaroubi _ ⋙ 𝟭 _) P, Functor.id_map]
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.Γ₂N₂.nat_trans_app_f_app AlgebraicTopology.DoldKan.Γ₂N₂.natTrans_app_f_app

-- Porting note: added to speed up elaboration
attribute [irreducible] natTrans

end Γ₂N₂

theorem compatibility_Γ₂N₁_Γ₂N₂_natTrans (X : SimplicialObject C) :
    Γ₂N₁.natTrans.app X =
      (compatibility_Γ₂N₁_Γ₂N₂.app X).inv ≫
        Γ₂N₂.natTrans.app ((toKaroubi (SimplicialObject C)).obj X) := by
  rw [Γ₂N₂.natTrans_app_f_app]
  dsimp only [Karoubi.decompId_i_toKaroubi, Karoubi.decompId_p_toKaroubi, Functor.comp_map,
    NatTrans.comp_app]
  rw [N₂.map_id, Γ₂.map_id, Iso.app_inv]
  dsimp only [toKaroubi]
  erw [id_comp]
  rw [comp_id, Iso.inv_hom_id_app_assoc]

theorem identity_N₂_objectwise (P : Karoubi (SimplicialObject C)) :
  (N₂Γ₂.inv.app (N₂.obj P) : N₂.obj P ⟶ N₂.obj (Γ₂.obj (N₂.obj P))) ≫ N₂.map (Γ₂N₂.natTrans.app P) =
    𝟙 (N₂.obj P) := by
  ext n
  have eq₁ : (N₂Γ₂.inv.app (N₂.obj P)).f.f n = PInfty.f n ≫ P.p.app (op [n]) ≫
      (Γ₀.splitting (N₂.obj P).X).ιSummand (Splitting.IndexSet.id (op [n])) := by
    simp only [N₂Γ₂_inv_app_f_f, N₂_obj_p_f, assoc]
  have eq₂ : (Γ₀.splitting (N₂.obj P).X).ιSummand (Splitting.IndexSet.id (op [n])) ≫
      (N₂.map (Γ₂N₂.natTrans.app P)).f.f n = PInfty.f n ≫ P.p.app (op [n]) := by
    dsimp
    simp only [assoc, Γ₂N₂.natTrans_app_f_app, Functor.comp_map, NatTrans.comp_app,
      Karoubi.comp_f, compatibility_Γ₂N₁_Γ₂N₂_hom_app, eqToHom_refl, Karoubi.eqToHom_f,
      PInfty_on_Γ₀_splitting_summand_eq_self_assoc, Functor.comp_obj]
    dsimp [N₂]
    simp only [Splitting.ι_desc_assoc, assoc, id_comp, unop_op,
      Splitting.IndexSet.id_fst, len_mk, Splitting.IndexSet.e,
      Splitting.IndexSet.id_snd_coe, op_id, P.X.map_id, id_comp,
      PInfty_f_naturality_assoc, PInfty_f_idem_assoc, app_idem]
  simp only [Karoubi.comp_f, HomologicalComplex.comp_f, Karoubi.id_eq, N₂_obj_p_f, assoc,
    eq₁, eq₂, PInfty_f_naturality_assoc, app_idem, PInfty_f_idem_assoc]
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.identity_N₂_objectwise AlgebraicTopology.DoldKan.identity_N₂_objectwise

-- porting note: `Functor.associator` was added to the statement in order to prevent a timeout
theorem identity_N₂ :
  (𝟙 (N₂ : Karoubi (SimplicialObject C) ⥤ _) ◫ N₂Γ₂.inv) ≫
    (Functor.associator _ _ _).inv ≫ Γ₂N₂.natTrans ◫ 𝟙 (@N₂ C _ _) = 𝟙 N₂ := by
  ext P : 2
  dsimp only [NatTrans.comp_app, NatTrans.hcomp_app, Functor.comp_map, Functor.associator,
    NatTrans.id_app, Functor.comp_obj]
  rw [Γ₂.map_id, N₂.map_id, comp_id, id_comp, id_comp, identity_N₂_objectwise P]
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.identity_N₂ AlgebraicTopology.DoldKan.identity_N₂

instance : IsIso (Γ₂N₂.natTrans : (N₂ : Karoubi (SimplicialObject C) ⥤ _) ⋙ _ ⟶ _) := by
  have : ∀ P : Karoubi (SimplicialObject C), IsIso (Γ₂N₂.natTrans.app P) := by
    intro P
    have : IsIso (N₂.map (Γ₂N₂.natTrans.app P)) := by
      have h := identity_N₂_objectwise P
      erw [hom_comp_eq_id] at h
      rw [h]
      infer_instance
    exact isIso_of_reflects_iso _ N₂
  apply NatIso.isIso_of_isIso_app

instance : IsIso (Γ₂N₁.natTrans : (N₁ : SimplicialObject C ⥤ _) ⋙ _ ⟶ _) := by
  have : ∀ X : SimplicialObject C, IsIso (Γ₂N₁.natTrans.app X) := by
    intro X
    rw [compatibility_Γ₂N₁_Γ₂N₂_natTrans]
    infer_instance
  apply NatIso.isIso_of_isIso_app

/-- The unit isomorphism of the Dold-Kan equivalence. -/
@[simps! inv]
def Γ₂N₂ : 𝟭 _ ≅ (N₂ : Karoubi (SimplicialObject C) ⥤ _) ⋙ Γ₂ :=
  (asIso Γ₂N₂.natTrans).symm
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.Γ₂N₂ AlgebraicTopology.DoldKan.Γ₂N₂

/-- The natural isomorphism `toKaroubi (SimplicialObject C) ≅ N₁ ⋙ Γ₂`. -/
@[simps! inv]
def Γ₂N₁ : toKaroubi _ ≅ (N₁ : SimplicialObject C ⥤ _) ⋙ Γ₂ :=
  (asIso Γ₂N₁.natTrans).symm
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.Γ₂N₁ AlgebraicTopology.DoldKan.Γ₂N₁

end DoldKan

end AlgebraicTopology
```
