# Complete source: GRWTSK.Geometry.AlgebraicGeometry.Sigma.Varianta88e16be1c978420d9314af8999a38e9425664989ccc038c1fe092a0feb08147

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0c1a4669363a743b3af5b36531ece8cbd9bc552` · SHA-256 `3c46cbaf9229b396242917e1e95f51c80a1ab8bd26adf98c3ae69c6d3acf3aac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.Sigma.Variant2bf515599cf29c54283f8c8acf3003710d69a13a67fe08a5418cd9ea5faa919b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2bf515599cf29c54283f8c8acf3003710d69a13a67fe08a5418cd9ea5faa919b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.Sigma.Variant2bf515599cf29c54283f8c8acf3003710d69a13a67fe08a5418cd9ea5faa919b","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"2bf515599cf29c54283f8c8acf3003710d69a13a67fe08a5418cd9ea5faa919b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicGeometry/Cover/Sigma.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
import Mathlib.AlgebraicGeometry.Morphisms.Basic

/-!
# Collapsing covers

We define the endofunctor on `Scheme.Cover P` that collapses a cover to a single object cover.
-/


namespace GRWTSK.Geometry.AlgebraicGeometry.Sigma.Variant2bf515599cf29c54283f8c8acf3003710d69a13a67fe08a5418cd9ea5faa919b

universe v u

open CategoryTheory Limits

namespace AlgebraicGeometry.Scheme.Cover

variable {P : MorphismProperty Scheme.{u}} {S : Scheme.{u}} [IsLocalAtSource P] [UnivLE.{v, u}]

/-- If `𝒰` is a cover of `S`, this is the single object cover where the covering
object is the disjoint union. -/
@[simps]
noncomputable def sigma (𝒰 : Cover.{v} P S) : S.Cover P where
  J := PUnit.{v + 1}
  obj _ := ∐ 𝒰.obj
  map _ := Sigma.desc 𝒰.map
  f _ := default
  covers s := by
    obtain ⟨i, y, rfl⟩ := 𝒰.exists_eq s
    refine ⟨(Sigma.ι 𝒰.obj i).base y, by simp [← Scheme.comp_base_apply]⟩
  map_prop _ := IsLocalAtSource.sigmaDesc 𝒰.map_prop

variable [P.IsMultiplicative] {𝒰 𝒱 : Scheme.Cover.{v} P S}

variable (𝒰) in
instance : Unique 𝒰.sigma.J := inferInstanceAs <| Unique PUnit.{v + 1}

/-- `𝒰` refines the single object cover defined by `𝒰`. -/
@[simps]
noncomputable def toSigma (𝒰 : Cover.{v} P S) : 𝒰 ⟶ 𝒰.sigma where
  idx _ := default
  app i := Sigma.ι _ i
  app_prop _ := IsLocalAtSource.of_isOpenImmersion _

/-- A refinement of coverings induces a refinement on the single object coverings. -/
@[simps]
noncomputable def Hom.sigma (f : 𝒰 ⟶ 𝒱) : 𝒰.sigma ⟶ 𝒱.sigma where
  idx _ := default
  app _ := Sigma.desc fun j ↦ f.app j ≫ Sigma.ι _ (f.idx j)
  w _ := Sigma.hom_ext _ _ (by simp)
  app_prop _ := by
    simp only [sigma_obj, sigma_J, PUnit.default_eq_unit,
      IsLocalAtSource.iff_of_openCover (sigmaOpenCover _), sigmaOpenCover_obj, sigmaOpenCover_map,
      colimit.ι_desc, Cofan.mk_pt, Cofan.mk_ι_app]
    intro i
    exact P.comp_mem _ _ (f.app_prop i) (IsLocalAtSource.of_isOpenImmersion _)

/-- Collapsing a cover to a single object cover is functorial. -/
@[simps]
noncomputable def sigmaFunctor : S.Cover P ⥤ S.Cover P where
  obj 𝒰 := 𝒰.sigma
  map f := f.sigma
  map_id 𝒰 := Scheme.Cover.Hom.ext rfl <| by
    simp only [sigma_J, sigma_obj, Hom.sigma_idx, PUnit.default_eq_unit, id_idx_apply, heq_eq_eq]
    ext j : 1
    exact Sigma.hom_ext _ _ (by simp)
  map_comp f g := Scheme.Cover.Hom.ext rfl <| by
    simp only [sigma_J, sigma_obj, Hom.sigma_idx, PUnit.default_eq_unit, comp_idx_apply, heq_eq_eq]
    ext j : 1
    exact Sigma.hom_ext _ _ (by simp)

end AlgebraicGeometry.Scheme.Cover
```
