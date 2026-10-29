-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.QuadraticModuleCatCliffordAlgebra.Variantea375a1f3d19935f25897920aff6ccdb77d33cdd8f819050d11ec20991e0a863","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea375a1f3d19935f25897920aff6ccdb77d33cdd8f819050d11ec20991e0a863","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.QuadraticModuleCatCliffordAlgebra.Variantea375a1f3d19935f25897920aff6ccdb77d33cdd8f819050d11ec20991e0a863","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"ea375a1f3d19935f25897920aff6ccdb77d33cdd8f819050d11ec20991e0a863","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/CliffordAlgebra/CategoryTheory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
module

public import Mathlib.LinearAlgebra.CliffordAlgebra.Basic
public import Mathlib.LinearAlgebra.QuadraticForm.QuadraticModuleCat
public import Mathlib.Algebra.Category.AlgCat.Basic

/-! # Category-theoretic interpretations of `CliffordAlgebra`

## Main definitions

* `QuadraticModuleCat.cliffordAlgebra`: the functor from quadratic modules to algebras
-/


namespace GRWTSK.Algebra.LinearAlgebra.QuadraticModuleCatCliffordAlgebra.Variantea375a1f3d19935f25897920aff6ccdb77d33cdd8f819050d11ec20991e0a863

@[expose] public section

universe v u
open CategoryTheory

variable {R : Type u} [CommRing R]

/-- The "clifford algebra" functor, sending a quadratic `R`-module `V` to the clifford algebra on
`V`.

This is `CliffordAlgebra.map` through the lens of category theory. -/
@[simps]
def QuadraticModuleCat.cliffordAlgebra : QuadraticModuleCat.{u} R ⥤ AlgCat.{u} R where
  obj M := ↧(CliffordAlgebra M.form)
  map {_M _N} f := AlgCat.ofHom <| CliffordAlgebra.map f.toIsometry
  map_id _M := by simp
  map_comp {_M _N _P} f g := by ext; simp
