# Complete source: GRWTSK.Geometry.AlgebraicGeometry.Dominant.Variant8dd49632a9e9fe4b3eef7f92d1ef276b8c8db852bf606bffd38fff8a24de01ea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3fe6df1938136a164e754a143b94c2dd4136aa55` · SHA-256 `26d35b246f30ba3dca36a3e27716cf7fea0154b6473cb2089f25e9d5abadbde7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.RationalMapIsDominant.Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.RationalMapIsDominant.Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicGeometry/Birational/Dominant.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Justus Springer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Justus Springer
-/
module

public import Mathlib.AlgebraicGeometry.Birational.RationalMap
/-!

# Dominant rational maps

This file defines `RationalMap.IsDominant` and establishes its connection to
`IsDominant` on the underlying partial maps.

## Main definition

- `Scheme.RationalMap.IsDominant`: a rational map is dominant if some (equivalently, any)
  representative partial map has dominant underlying morphism.

-/


namespace GRWTSK.Geometry.AlgebraicGeometry.RationalMapIsDominant.Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a

public section

universe u

open CategoryTheory

namespace AlgebraicGeometry

variable {X Y : Scheme.{u}}

namespace Scheme

namespace PartialMap

set_option backward.defeqAttrib.useBackward true in
/-- Restricting a dominant partial map to a dense open yields a dominant partial map. -/
instance isDominant_restrict_hom (f : X.PartialMap Y) [IsDominant f.hom] (U : X.Opens)
    (hU : Dense (U : Set X)) (hU' : U ≤ f.domain) : IsDominant (f.restrict U hU hU').hom := by
  dsimp only [restrict_domain, restrict_hom]
  have : IsDominant (X.homOfLE hU') := Opens.isDominant_homOfLE hU hU'
  rwa [IsDominant.comp_iff]

/-- If a restriction of `f` is dominant, then `f` is dominant. -/
lemma isDominant_hom_of_isDominant_restrict_hom (f : X.PartialMap Y) (U : X.Opens)
    (hU : Dense (U : Set X)) (hU' : U ≤ f.domain) [H : IsDominant (f.restrict U hU hU').hom] :
    IsDominant f.hom :=
  IsDominant.of_comp (X.homOfLE hU') f.hom (H := H)

/-- `f.hom` is dominant iff any restriction of `f` is. -/
lemma isDominant_hom_iff_isDominant_restrict_hom (f : X.PartialMap Y) (U : X.Opens)
    (hU : Dense (U : Set X)) (hU' : U ≤ f.domain) :
    IsDominant f.hom ↔ IsDominant (f.restrict U hU hU').hom :=
  ⟨fun _ ↦ f.isDominant_restrict_hom U hU hU',
    fun _ ↦ f.isDominant_hom_of_isDominant_restrict_hom U hU hU'⟩

set_option backward.defeqAttrib.useBackward true in
/-- Dominance of the underlying morphism is invariant under equivalence of partial maps. -/
lemma isDominant_hom_iff_of_equiv (f g : X.PartialMap Y) (h : f.equiv g) :
    IsDominant f.hom ↔ IsDominant g.hom := by
  obtain ⟨W, hW, hWl, hWr, h⟩ := h
  have e₁ := isDominant_hom_iff_isDominant_restrict_hom f W hW hWl
  have e₂ := isDominant_hom_iff_isDominant_restrict_hom g W hW hWr
  dsimp only [restrict_domain, restrict_hom] at ⊢ e₁ e₂ h
  rw [e₁, h, ← e₂]

end PartialMap

/-- A rational map is dominant if some (equivalently, any) representative partial map has
dominant underlying morphism. -/
@[mk_iff, stacks 0A1Z]
protected class RationalMap.IsDominant (f : X ⤏ Y) : Prop where
  out : Quotient.liftOn f (fun g ↦ IsDominant g.hom) <| fun _ _ h ↦
    propext (PartialMap.isDominant_hom_iff_of_equiv _ _ h)

@[simp]
lemma PartialMap.isDominant_toRationalMap_iff (f : X.PartialMap Y) :
    f.toRationalMap.IsDominant ↔ IsDominant f.hom :=
  f.toRationalMap.isDominant_iff

instance (f : X.PartialMap Y) [IsDominant f.hom] :
    f.toRationalMap.IsDominant := by
  rwa [f.isDominant_toRationalMap_iff]

instance (f : X ⤏ Y) [f.IsDominant] :
    IsDominant f.representative.hom := by
  rwa [← f.representative.isDominant_toRationalMap_iff, f.toRationalMap_representative]

end Scheme

end AlgebraicGeometry
```
