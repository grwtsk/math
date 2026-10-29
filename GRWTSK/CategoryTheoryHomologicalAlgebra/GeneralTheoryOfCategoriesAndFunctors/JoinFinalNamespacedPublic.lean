-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CostructuredArrowEquiv.Variantcd25fc625e497b2e189bcb33e755c586631efb9d7e640ae14a13bf2411a80629","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cd25fc625e497b2e189bcb33e755c586631efb9d7e640ae14a13bf2411a80629","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CostructuredArrowEquiv.Variantcd25fc625e497b2e189bcb33e755c586631efb9d7e640ae14a13bf2411a80629","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"cd25fc625e497b2e189bcb33e755c586631efb9d7e640ae14a13bf2411a80629","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Join/Final.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Robin Carlier. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robin Carlier
-/
module

public import Mathlib.CategoryTheory.Join.Basic
public import Mathlib.CategoryTheory.Limits.Final
public import Mathlib.CategoryTheory.Limits.IsConnected

/-!
# (Co)Finality of the inclusions in joins of categories

This file records the fact that `inclLeft C D : C ⥤ C ⋆ D` is initial if `C` is connected.
Dually, `inclRight : C ⥤ C ⋆ D` is final if `D` is connected.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CostructuredArrowEquiv.Variantcd25fc625e497b2e189bcb33e755c586631efb9d7e640ae14a13bf2411a80629

@[expose] public section

namespace CategoryTheory.Join

variable (C D : Type*) [Category* C] [Category* D]

set_option backward.defeqAttrib.useBackward true in
/-- The category of `Join.inclLeft C D`-costructured arrows with target `right d` is equivalent to
`C`. -/
def costructuredArrowEquiv (d : D) : CostructuredArrow (inclLeft C D) (right d) ≌ C where
  functor := CostructuredArrow.proj (inclLeft C D) (right d)
  inverse :=
    { obj c := .mk (edge c d)
      map f := CostructuredArrow.homMk f }
  unitIso := NatIso.ofComponents (fun _ ↦ CostructuredArrow.isoMk (Iso.refl _))
  counitIso := NatIso.ofComponents (fun _ ↦ Iso.refl _)

set_option backward.defeqAttrib.useBackward true in
/-- The category of `Join.inclRight C D`-structured arrows with source `left c` is equivalent to
`D`. -/
def structuredArrowEquiv (c : C) : StructuredArrow (left c) (inclRight C D) ≌ D where
  functor := StructuredArrow.proj (left c) (inclRight C D)
  inverse :=
    { obj d := .mk (edge c d)
      map f := StructuredArrow.homMk f }
  unitIso := NatIso.ofComponents (fun _ ↦ StructuredArrow.isoMk (Iso.refl _))
  counitIso := NatIso.ofComponents (fun _ ↦ Iso.refl _)

instance [IsConnected C] : (inclLeft C D).Initial where
  out x := match x with
    | .left _ => isConnected_of_isTerminal _ CostructuredArrow.mkIdTerminal
    | .right d => isConnected_of_equivalent (costructuredArrowEquiv C D d).symm

instance [IsConnected D] : (inclRight C D).Final where
  out x := match x with
    | .left c => isConnected_of_equivalent (structuredArrowEquiv C D c).symm
    | .right _ => isConnected_of_isInitial _ (StructuredArrow.mkIdInitial (T := inclRight C D))

end CategoryTheory.Join
