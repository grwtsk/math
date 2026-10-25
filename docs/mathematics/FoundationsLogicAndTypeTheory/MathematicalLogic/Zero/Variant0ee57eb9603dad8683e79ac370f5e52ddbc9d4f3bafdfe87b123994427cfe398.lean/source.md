# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Zero.Variant0ee57eb9603dad8683e79ac370f5e52ddbc9d4f3bafdfe87b123994427cfe398

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e410ee454c7a61981d2e1d5f14fc79505c292af` · SHA-256 `46461de3d5e7b031c5826cf9fe5a2e52df0df863952dad81b358a4fcc1640357`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsZeroOfSubsingleton.Variantcc36f4407477cfc0ca7a251a3bc9ed1d2f7197c82aee17c272953904c2d57bd3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cc36f4407477cfc0ca7a251a3bc9ed1d2f7197c82aee17c272953904c2d57bd3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.IsZeroOfSubsingleton.Variantcc36f4407477cfc0ca7a251a3bc9ed1d2f7197c82aee17c272953904c2d57bd3","mathematical_subject":"Logic.Foundations","original_sha256":"cc36f4407477cfc0ca7a251a3bc9ed1d2f7197c82aee17c272953904c2d57bd3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/Grp/Zero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Algebra.Category.Grp.Basic
public import Mathlib.CategoryTheory.Limits.Shapes.ZeroObjects

/-!
# The category of (commutative) (additive) groups has a zero object.

`AddCommGroup` also has zero morphisms. For definitional reasons, we infer this from preadditivity
rather than from the existence of a zero object.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsZeroOfSubsingleton.Variantcc36f4407477cfc0ca7a251a3bc9ed1d2f7197c82aee17c272953904c2d57bd3

public section

open CategoryTheory Limits

universe u

namespace GrpCat

@[to_additive]
theorem isZero_of_subsingleton (G : GrpCat) [Subsingleton G] : IsZero G := by
  refine ⟨fun X => ⟨⟨⟨1⟩, fun f => ?_⟩⟩, fun X => ⟨⟨⟨1⟩, fun f => ?_⟩⟩⟩
  · ext x
    have : x = 1 := Subsingleton.elim _ _
    rw [this, map_one, map_one]
  · ext
    subsingleton

@[to_additive AddGrpCat.hasZeroObject]
instance : HasZeroObject GrpCat :=
  ⟨⟨of PUnit, isZero_of_subsingleton _⟩⟩

@[to_additive]
lemma subsingleton_of_isZero {G : GrpCat} (h : Limits.IsZero G) :
    Subsingleton G :=
  (h.iso (isZero_of_subsingleton ↧PUnit)).groupIsoToMulEquiv.subsingleton

@[to_additive]
lemma isZero_iff_subsingleton {G : GrpCat} : Limits.IsZero G ↔ Subsingleton G :=
  ⟨fun h ↦ subsingleton_of_isZero h, fun _ ↦ isZero_of_subsingleton G⟩

@[to_additive]
lemma isZero_of_iff_subsingleton {G : Type*} [Group G] :
    Limits.IsZero (GrpCat.of G) ↔ Subsingleton G :=
  isZero_iff_subsingleton

end GrpCat

namespace CommGrpCat

@[to_additive]
theorem isZero_of_subsingleton (G : CommGrpCat) [Subsingleton G] : IsZero G := by
  refine ⟨fun X => ⟨⟨⟨1⟩, fun f => ?_⟩⟩, fun X => ⟨⟨⟨1⟩, fun f => ?_⟩⟩⟩
  · ext x
    have : x = 1 := Subsingleton.elim _ _
    rw [this, map_one, map_one]
  · ext
    subsingleton

@[to_additive AddCommGrpCat.hasZeroObject]
instance : HasZeroObject CommGrpCat :=
  ⟨⟨of PUnit, isZero_of_subsingleton _⟩⟩

@[to_additive]
lemma subsingleton_of_isZero {G : CommGrpCat} (h : Limits.IsZero G) :
    Subsingleton G :=
  (h.iso (isZero_of_subsingleton ↧PUnit)).commGroupIsoToMulEquiv.subsingleton

@[to_additive]
lemma isZero_iff_subsingleton {G : CommGrpCat} : Limits.IsZero G ↔ Subsingleton G :=
  ⟨fun h ↦ subsingleton_of_isZero h, fun _ ↦ isZero_of_subsingleton G⟩

@[to_additive]
lemma isZero_of_iff_subsingleton {G : Type*} [CommGroup G] :
    Limits.IsZero (CommGrpCat.of G) ↔ Subsingleton G :=
  isZero_iff_subsingleton

end CommGrpCat
```
