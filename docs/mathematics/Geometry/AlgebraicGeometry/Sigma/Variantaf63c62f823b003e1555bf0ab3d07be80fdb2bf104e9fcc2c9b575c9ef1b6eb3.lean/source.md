# Complete source: GRWTSK.Geometry.AlgebraicGeometry.Sigma.Variantaf63c62f823b003e1555bf0ab3d07be80fdb2bf104e9fcc2c9b575c9ef1b6eb3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdb7f62083d9c4653ff1c8a3c0e428e0ffc69a35` · SHA-256 `dff6eeb8ea171e7d978d1a39b1512cf647d20d54398b518bd78c6795ce2bbb28`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.Sigma.Variant2c2af39860f002a25118eca33e70b83e70781e00e52c70d075a62e4ad26f681a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2c2af39860f002a25118eca33e70b83e70781e00e52c70d075a62e4ad26f681a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.Sigma.Variant2c2af39860f002a25118eca33e70b83e70781e00e52c70d075a62e4ad26f681a","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"2c2af39860f002a25118eca33e70b83e70781e00e52c70d075a62e4ad26f681a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicGeometry/Cover/Sigma.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
module

public import Mathlib.AlgebraicGeometry.Morphisms.Basic

/-!
# Collapsing covers

We define the endofunctor on `Scheme.Cover P` that collapses a cover to a single object cover.
-/


namespace GRWTSK.Geometry.AlgebraicGeometry.Sigma.Variant2c2af39860f002a25118eca33e70b83e70781e00e52c70d075a62e4ad26f681a

@[expose] public section

universe v u

open CategoryTheory Limits

namespace AlgebraicGeometry.Scheme.Cover

variable {P : MorphismProperty Scheme.{u}} {S : Scheme.{u}} [IsZariskiLocalAtSource P]
  [UnivLE.{v, u}]

/-- If `𝒰` is a cover of `S`, this is the single object cover where the covering
object is the disjoint union. -/
@[simps]
noncomputable def sigma (𝒰 : Cover.{v} (precoverage P) S) : S.Cover (precoverage P) where
  I₀ := PUnit.{v + 1}
  X _ := ∐ 𝒰.X
  f _ := Sigma.desc 𝒰.f
  mem₀ := by
    rw [presieve₀_mem_precoverage_iff]
    refine ⟨fun s ↦ ?_, fun _ ↦ IsZariskiLocalAtSource.sigmaDesc 𝒰.map_prop⟩
    obtain ⟨i, y, rfl⟩ := 𝒰.exists_eq s
    refine ⟨default, Sigma.ι 𝒰.X i y, by simp [← Scheme.Hom.comp_apply]⟩

@[simp]
lemma presieve₀_sigma {S : Scheme.{u}} (𝒰 : Cover.{v} (precoverage P) S) :
    𝒰.sigma.presieve₀ = Presieve.singleton (Sigma.desc 𝒰.f) := by
  refine le_antisymm ?_ fun T g ⟨⟩ ↦ ⟨⟨⟩⟩
  rw [Presieve.ofArrows_le_iff]
  intro i
  exact Presieve.singleton_self _

variable [P.IsMultiplicative] {𝒰 𝒱 : Scheme.Cover.{v} (precoverage P) S}

variable (𝒰) in
instance : Unique 𝒰.sigma.I₀ := inferInstanceAs <| Unique PUnit.{v + 1}

set_option backward.isDefEq.respectTransparency false in
/-- `𝒰` refines the single object cover defined by `𝒰`. -/
@[simps]
noncomputable def toSigma (𝒰 : Cover.{v} (precoverage P) S) : 𝒰 ⟶ 𝒰.sigma where
  s₀ _ := default
  h₀ i := Sigma.ι _ i

set_option backward.isDefEq.respectTransparency false in
/-- A refinement of coverings induces a refinement on the single object coverings. -/
@[simps]
noncomputable def Hom.sigma (f : 𝒰 ⟶ 𝒱) : 𝒰.sigma ⟶ 𝒱.sigma where
  s₀ _ := default
  h₀ _ := Sigma.desc fun j ↦ f.h₀ j ≫ Sigma.ι _ (f.s₀ j)
  w₀ _ := Sigma.hom_ext _ _ (by simp)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- Collapsing a cover to a single object cover is functorial. -/
@[simps]
noncomputable def sigmaFunctor : S.Cover (precoverage P) ⥤ S.Cover (precoverage P) where
  obj 𝒰 := 𝒰.sigma
  map f := Scheme.Cover.Hom.sigma f
  map_id 𝒰 := PreZeroHypercover.Hom.ext rfl <| by
    simp only [sigma_I₀, sigma_X, heq_eq_eq]
    ext j : 1
    exact Sigma.hom_ext _ _ (by simp)
  map_comp f g := PreZeroHypercover.Hom.ext rfl <| by
    simp only [sigma_I₀, sigma_X, heq_eq_eq]
    ext j : 1
    exact Sigma.hom_ext _ _ (by simp)

end AlgebraicGeometry.Scheme.Cover
```
