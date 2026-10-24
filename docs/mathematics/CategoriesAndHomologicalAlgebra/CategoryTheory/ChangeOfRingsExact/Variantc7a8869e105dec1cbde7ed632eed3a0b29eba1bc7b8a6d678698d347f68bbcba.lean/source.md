# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ChangeOfRingsExact.Variantc7a8869e105dec1cbde7ed632eed3a0b29eba1bc7b8a6d678698d347f68bbcba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f3996c231fb05e5ff32733aa3c7e5f7c977f26a` · SHA-256 `a3014dd3b82402bbc2e0a49e7143d9b5e6b9e8ecebf2c4bda9346dff1d21b427`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ModuleCatRestrictScalarsMapExact.Variant1b5b1003abb72b551391884dc36954290bf886b09fb826f070f0e997c2a9b03c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1b5b1003abb72b551391884dc36954290bf886b09fb826f070f0e997c2a9b03c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ModuleCatRestrictScalarsMapExact.Variant1b5b1003abb72b551391884dc36954290bf886b09fb826f070f0e997c2a9b03c","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"1b5b1003abb72b551391884dc36954290bf886b09fb826f070f0e997c2a9b03c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/ModuleCat/ChangeOfRingsExact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Nailin Guan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nailin Guan
-/
module

public import Mathlib.Algebra.Category.ModuleCat.ChangeOfRings
public import Mathlib.Algebra.Homology.ShortComplex.ExactFunctor
public import Mathlib.Algebra.Homology.ShortComplex.ModuleCat

/-!

# Exactness of functors for change of rings.

In this file we provide exactness of restrictScalars for general universe level using it preserves
short exact sequences.
Note : previously exactness of `ModuleCat.restrictScalars` is synthesized via being adjoint functor,
however this needs the universe level to be some `max u v`, where `u` is the universe level
of the ring.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ModuleCatRestrictScalarsMapExact.Variant1b5b1003abb72b551391884dc36954290bf886b09fb826f070f0e997c2a9b03c

public section

universe v u u'

variable {R : Type u} [CommRing R] {R' : Type u'} [CommRing R']

open CategoryTheory

section

variable (f : R →+* R')

lemma ModuleCat.restrictScalars_map_exact (S : ShortComplex (ModuleCat.{v} R')) (h : S.Exact) :
    (S.map (ModuleCat.restrictScalars.{v} f)).Exact := by
  rw [CategoryTheory.ShortComplex.ShortExact.moduleCat_exact_iff_function_exact] at h ⊢
  exact h

instance : Limits.PreservesFiniteLimits (ModuleCat.restrictScalars.{v} f) := by
  have := ((CategoryTheory.Functor.exact_tfae (ModuleCat.restrictScalars.{v} f)).out 2 4).mp
    (ModuleCat.restrictScalars_map_exact f)
  exact this.1

instance : Limits.PreservesFiniteColimits (ModuleCat.restrictScalars.{v} f) := by
  have := ((CategoryTheory.Functor.exact_tfae (ModuleCat.restrictScalars.{v} f)).out 2 4).mp
    (ModuleCat.restrictScalars_map_exact f)
  exact this.2

end
```
