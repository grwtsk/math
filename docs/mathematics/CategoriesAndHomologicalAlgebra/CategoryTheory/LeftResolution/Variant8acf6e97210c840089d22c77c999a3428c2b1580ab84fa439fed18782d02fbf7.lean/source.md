# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftResolution.Variant8acf6e97210c840089d22c77c999a3428c2b1580ab84fa439fed18782d02fbf7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b3ce9a8175412df47aef40db5b1b2377b583cc4` · SHA-256 `f0b026ba38256bd083b13dffecb110a5528ae0af8d07f5d7a61be3d722f1d07d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ProjectiveResolution.Variantca7dee740d901fe4d8e419bc8d644bed257fab6f7c4f92e9128b217bf620142a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca7dee740d901fe4d8e419bc8d644bed257fab6f7c4f92e9128b217bf620142a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ProjectiveResolution.Variantca7dee740d901fe4d8e419bc8d644bed257fab6f7c4f92e9128b217bf620142a","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ca7dee740d901fe4d8e419bc8d644bed257fab6f7c4f92e9128b217bf620142a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/ModuleCat/LeftResolution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Category.ModuleCat.Adjunctions
public import Mathlib.Algebra.Category.ModuleCat.EpiMono
public import Mathlib.Algebra.Homology.LeftResolution.Basic

/-!
# Functorial projective resolutions of modules

The fact that an `R`-module `M` can be functorially written as a quotient of a
projective `R`-module is expressed as the definition `ModuleCat.projectiveResolution`.
Using the construction in the file `Mathlib/Algebra/Homology/LeftResolution/Basic.lean`,
we may obtain a functor `(projectiveResolution R).chainComplexFunctor` which
sends `M : ModuleCat R` to a projective resolution.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ProjectiveResolution.Variantca7dee740d901fe4d8e419bc8d644bed257fab6f7c4f92e9128b217bf620142a

@[expose] public section

universe u

variable (R : Type u) [Ring R]

namespace ModuleCat

open CategoryTheory Abelian

instance (X : Type u) : Projective ((free R).obj X) where
  factors {M N} f p hp := by
    rw [epi_iff_surjective] at hp
    obtain ⟨s, hs⟩ := hp.hasRightInverse
    exact ⟨freeDesc (↾fun x ↦ s (f (freeMk x))), by cat_disch⟩

set_option backward.defeqAttrib.useBackward true in
/-- An `R`-module `M` can be functorially written as a quotient of a
projective `R`-module. -/
noncomputable def projectiveResolution :
    LeftResolution (ObjectProperty.ι (isProjective (ModuleCat.{u} R))) where
  F := ObjectProperty.lift _ (forget _ ⋙ free R) (by dsimp; infer_instance)
  π := (adj R).counit

end ModuleCat
```
