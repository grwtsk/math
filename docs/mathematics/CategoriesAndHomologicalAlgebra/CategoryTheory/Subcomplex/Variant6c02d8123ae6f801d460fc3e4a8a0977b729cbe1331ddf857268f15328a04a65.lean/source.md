# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subcomplex.Variant6c02d8123ae6f801d460fc3e4a8a0977b729cbe1331ddf857268f15328a04a65

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e811c34ba058675df698a5bce849c62637426a3c` · SHA-256 `f68857526ad0564bfec39c2be6711217b6546cd8e70abc265038bf8f7714d54e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subcomplex.Variante4eeac691a33a5ef54c28e4f06f9e0748377bf29c1eb233e82e034687f226a1e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e4eeac691a33a5ef54c28e4f06f9e0748377bf29c1eb233e82e034687f226a1e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Subcomplex.Variante4eeac691a33a5ef54c28e4f06f9e0748377bf29c1eb233e82e034687f226a1e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e4eeac691a33a5ef54c28e4f06f9e0748377bf29c1eb233e82e034687f226a1e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicTopology/SimplicialSet/Subcomplex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.AlgebraicTopology.SimplicialSet.Basic
import Mathlib.CategoryTheory.Subpresheaf.Basic

/-!
# Subcomplexes of a simplicial set

Given a simplicial set `X`, this file defines the type `X.Subcomplex`
of subcomplexes of `X` as an abbreviation for `Subpresheaf X`.
It also introduces a coercion from `X.Subcomplex` to `SSet`.

## Implementation note

`SSet.{u}` is defined as `Cᵒᵖ ⥤ Type u`, but it is not an abbreviation.
This is the reason why `Subpresheaf.ι` is redefined here as `Subcomplex.ι`
so that this morphism appears as a morphism in `SSet` instead of a morphism
in the category of presheaves.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subcomplex.Variante4eeac691a33a5ef54c28e4f06f9e0748377bf29c1eb233e82e034687f226a1e

universe u

open CategoryTheory

namespace SSet

variable (X : SSet.{u})

/-- The complete lattice of subcomplexes of a simplicial set. -/
abbrev Subcomplex := Subpresheaf X

variable {X}

/-- The underlying simplicial set of a subcomplex. -/
abbrev Subcomplex.toSSet (A : X.Subcomplex) : SSet.{u} := A.toPresheaf

instance : CoeOut X.Subcomplex SSet.{u} where
  coe := fun S ↦ S.toSSet

/-- If `A : Subcomplex X`, this is the inclusion `A ⟶ X` in the category `SSet`. -/
abbrev Subcomplex.ι (A : Subcomplex X) : Quiver.Hom (V := SSet) A X := Subpresheaf.ι A

instance (A : X.Subcomplex) : Mono A.ι :=
  inferInstanceAs (Mono (Subpresheaf.ι A))

end SSet
```
