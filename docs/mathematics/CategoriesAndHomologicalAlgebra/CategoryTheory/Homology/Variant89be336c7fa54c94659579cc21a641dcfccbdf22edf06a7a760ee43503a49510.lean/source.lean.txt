-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomologyData.Variant06459fddf57533f7b504f98168b4b7f9cacceadc27b40ed01a2e4d6165b95c62","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"06459fddf57533f7b504f98168b4b7f9cacceadc27b40ed01a2e4d6165b95c62","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HomologyData.Variant06459fddf57533f7b504f98168b4b7f9cacceadc27b40ed01a2e4d6165b95c62","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"06459fddf57533f7b504f98168b4b7f9cacceadc27b40ed01a2e4d6165b95c62","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Homology/ShortComplex/Homology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/

import Mathlib.Algebra.Homology.ShortComplex.RightHomology

/-! Homology of short complexes

In this file, we shall define the homology of short complexes `S`, i.e. diagrams
`f : X₁ ⟶ X₂` and `g : X₂ ⟶ X₃` such that `f ≫ g = 0`. We shall say that
`[S.HasHomology]` when there exists `h : S.HomologyData` (TODO). A homology data
for `S` consists of compatible left/right homology data `left` and `right`. The
left homology data `left` involves an object `left.H` that is a cokernel of the canonical
map `S.X₁ ⟶ K` where `K` is a kernel of `g`. On the other hand, the dual notion `right.H`
is a kernel of the canonical morphism `Q ⟶ S.X₃` when `Q` is a cokernel of `f`.
The compatibility that is required involves an isomorphism `left.H ≅ right.H` which
makes a certain pentagon commute.

This definition requires very little assumption on the category (only the existence
of zero morphisms). We shall prove that in abelian categories, all short complexes
have homology data.

Note: This definition arose by the end of the Liquid Tensor Experiment which
contained a structure `has_homology` which is quite similar to `S.HomologyData`.
After the category `ShortComplex C` was introduced by J. Riou, A. Topaz suggested
such a structure could be used as a basis for the *definition* of homology.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomologyData.Variant06459fddf57533f7b504f98168b4b7f9cacceadc27b40ed01a2e4d6165b95c62

namespace CategoryTheory

open Category Limits

variable {C : Type*} [Category C] [HasZeroMorphisms C] (S : ShortComplex C)

namespace ShortComplex

/-- A homology data for a short complex consists of two compatible left and
right homology data -/
structure HomologyData where
  left : S.LeftHomologyData
  right : S.RightHomologyData
  /-- the compatibility isomorphism relating the two dual notions of
    `LeftHomologyData` and `RightHomologyData`  -/
  iso : left.H ≅ right.H
  comm : left.π ≫ iso.hom ≫ right.ι = left.i ≫ right.p := by aesop_cat

attribute [reassoc (attr := simp)] HomologyData.comm

end ShortComplex

end CategoryTheory
