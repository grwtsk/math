# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Full.Variant0f21c0bb6e62a723f17e0bce8890b2942fe4e9eff20d06ca3d8e88b80375a4df

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7848a9cdb7a371f728f4e90f5890640abc687ca2` · SHA-256 `b09d0d87fc92a55d1e13bb592e3f6544d2c2053a888a93f16e2e45a97d854f71`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExistsLiftOfMonoOfIsConnected.Variant0edeb0bf3831115d4394a244392476e9069e9a4a6010de39c950b49b6429be1e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0edeb0bf3831115d4394a244392476e9069e9a4a6010de39c950b49b6429be1e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ExistsLiftOfMonoOfIsConnected.Variant0edeb0bf3831115d4394a244392476e9069e9a4a6010de39c950b49b6429be1e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0edeb0bf3831115d4394a244392476e9069e9a4a6010de39c950b49b6429be1e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Galois/Full.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
module

public import Mathlib.CategoryTheory.Galois.Action

/-!

# Fiber functors are (faithfully) full

Any (fiber) functor `F : C ⥤ FintypeCat` factors via the forgetful functor
from finite `Aut F`-sets to finite sets. The induced functor
`H : C ⥤ Action FintypeCat (Aut F)` is faithfully full. The faithfulness
follows easily from the faithfulness of `F`. In this file we show that `H` is also full.

## Main results

- `PreGaloisCategory.exists_lift_of_mono`: If `Y` is a sub-`Aut F`-set of `F.obj X`, there exists
  a sub-object `Z` of `X` such that `F.obj Z ≅ Y` as `Aut F`-sets.
- `PreGaloisCategory.functorToAction_full`: The induced functor `H` from above is full.

The main input for this is that the induced functor `H : C ⥤ Action FintypeCat (Aut F)`
preserves connectedness, which translates to the fact that `Aut F` acts transitively on
the fibers of connected objects.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExistsLiftOfMonoOfIsConnected.Variant0edeb0bf3831115d4394a244392476e9069e9a4a6010de39c950b49b6429be1e

public section

universe u

namespace CategoryTheory

namespace PreGaloisCategory

open Limits CategoryTheory.Functor

variable {C : Type*} [Category* C] (F : C ⥤ FintypeCat.{u}) [GaloisCategory C] [FiberFunctor F]

/--
Let `X` be an object of a Galois category with fiber functor `F` and `Y` a sub-`Aut F`-set
of `F.obj X`, on which `Aut F` acts transitively (i.e. which is connected in the Galois category
of finite `Aut F`-sets). Then there exists a connected sub-object `Z` of `X` and an isomorphism
`Y ≅ F.obj X` as `Aut F`-sets such that the obvious triangle commutes.

For a version without the connectedness assumption, see `exists_lift_of_mono`.
-/
lemma exists_lift_of_mono_of_isConnected (X : C) (Y : Action FintypeCat.{u} (Aut F))
    (i : Y ⟶ (functorToAction F).obj X) [Mono i] [IsConnected Y] : ∃ (Z : C) (f : Z ⟶ X)
    (u : Y ≅ (functorToAction F).obj Z),
    IsConnected Z ∧ Mono f ∧ i = u.hom ≫ (functorToAction F).map f := by
  obtain ⟨y⟩ := nonempty_fiber_of_isConnected (forget₂ _ FintypeCat) Y
  obtain ⟨Z, f, z, hz, hc, hm⟩ := fiber_in_connected_component F X (i.hom y)
  have : IsConnected ((functorToAction F).obj Z) := PreservesIsConnected.preserves
  obtain ⟨u, hu⟩ := connected_component_unique
    (forget₂ (Action FintypeCat (Aut F)) FintypeCat) (B := (functorToAction F).obj Z)
    y z i ((functorToAction F).map f) hz.symm
  refine ⟨Z, f, u, hc, hm, ?_⟩
  apply evaluation_injective_of_isConnected
    (forget₂ (Action FintypeCat (Aut F)) FintypeCat) Y ((functorToAction F).obj X) y
  suffices h : i.hom y = F.map f z by simpa [hu]
  exact hz.symm

/--
Let `X` be an object of a Galois category with fiber functor `F` and `Y` a sub-`Aut F`-set
of `F.obj X`. Then there exists a sub-object `Z` of `X` and an isomorphism
`Y ≅ F.obj X` as `Aut F`-sets such that the obvious triangle commutes.
-/
lemma exists_lift_of_mono (X : C) (Y : Action FintypeCat.{u} (Aut F))
    (i : Y ⟶ (functorToAction F).obj X) [Mono i] : ∃ (Z : C) (f : Z ⟶ X)
    (u : Y ≅ (functorToAction F).obj Z), Mono f ∧ u.hom ≫ (functorToAction F).map f = i := by
  obtain ⟨ι, hf, f, t, hc⟩ := has_decomp_connected_components' Y
  let i' (j : ι) : f j ⟶ (functorToAction F).obj X := Sigma.ι f j ≫ t.hom ≫ i
  choose gZ gf gu _ _ h using fun i ↦ exists_lift_of_mono_of_isConnected F X (f i) (i' i)
  let is2 : (functorToAction F).obj (∐ gZ) ≅ ∐ fun i => (functorToAction F).obj (gZ i) :=
    PreservesCoproduct.iso (functorToAction F) gZ
  let u' : ∐ f ≅ ∐ fun i => (functorToAction F).obj (gZ i) := Sigma.mapIso gu
  have heq : (functorToAction F).map (Sigma.desc gf) = (t.symm ≪≫ u' ≪≫ is2.symm).inv ≫ i := by
    simp only [Iso.trans_inv, Iso.symm_inv, Category.assoc]
    rw [← Iso.inv_comp_eq]
    refine Sigma.hom_ext _ _ (fun j ↦ ?_)
    suffices (functorToAction F).map (gf j) = (gu j).inv ≫ i' j by
      simpa [is2, u']
    simp only [h, Iso.inv_hom_id_assoc]
  refine ⟨∐ gZ, Sigma.desc gf, t.symm ≪≫ u' ≪≫ is2.symm, ?_, by simp [heq]⟩
  · exact mono_of_mono_map (functorToAction F) (heq ▸ mono_comp _ _)

/-- The by a fiber functor `F : C ⥤ FintypeCat` induced functor `functorToAction F` to
finite `Aut F`-sets is full. -/
instance functorToAction_full : Functor.Full (functorToAction F) where
  map_surjective {X Y} f := by
    let u : (functorToAction F).obj X ⟶ (functorToAction F).obj X ⨯ (functorToAction F).obj Y :=
      prod.lift (𝟙 _) f
    let i : (functorToAction F).obj X ⟶ (functorToAction F).obj (X ⨯ Y) :=
      u ≫ (PreservesLimitPair.iso (functorToAction F) X Y).inv
    have : Mono i := by
      have : Mono (u ≫ prod.fst) := prod.lift_fst (𝟙 _) f ▸ inferInstance
      have : Mono u := mono_of_mono u prod.fst
      apply mono_comp u _
    obtain ⟨Z, g, v, _, hvgi⟩ := exists_lift_of_mono F (Limits.prod X Y)
      ((functorToAction F).obj X) i
    let ψ : Z ⟶ X := g ≫ prod.fst
    have hgvi : (functorToAction F).map g = v.inv ≫ i := by simp [← hvgi]
    have : IsIso ((functorToAction F).map ψ) := by
      simp only [map_comp, hgvi, Category.assoc, ψ]
      have : IsIso (i ≫ (functorToAction F).map prod.fst) := by
        suffices h : IsIso (𝟙 ((functorToAction F).obj X)) by simpa [i, u]
        infer_instance
      apply IsIso.comp_isIso
    have : IsIso ψ := isIso_of_reflects_iso ψ (functorToAction F)
    use inv ψ ≫ g ≫ prod.snd
    rw [← cancel_epi ((functorToAction F).map ψ)]
    ext (z : F.obj Z)
    simp [-FintypeCat.comp_apply, -Action.comp_hom, i, u, ψ, hgvi]

end PreGaloisCategory

end CategoryTheory
```
