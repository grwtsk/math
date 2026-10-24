# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Over.Variant1ee987a5c28d1523e0831fd1f266f91149afd99e1efb480e998e24db84fe1c2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `561f1a2a5b54a07ddd55ca895e3ac3a562b8eb81` · SHA-256 `078940e36932e431562a85fd58d636d58a407ed2a50cf7472e8850c6076b5ab7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoversTopOver.Variante0511325b7a009b6c529476215fca0859425e501be62e35ae00e83815bccb211","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e0511325b7a009b6c529476215fca0859425e501be62e35ae00e83815bccb211","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CoversTopOver.Variante0511325b7a009b6c529476215fca0859425e501be62e35ae00e83815bccb211","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e0511325b7a009b6c529476215fca0859425e501be62e35ae00e83815bccb211","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Sites/CoversTop/Over.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Justus Springer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Justus Springer
-/
module

public import Mathlib.CategoryTheory.Sites.CoversTop.Basic
public import Mathlib.CategoryTheory.Sites.Over

/-!
# CoversTop in over-categories

This file contains a transitivity lemma for `GrothendieckTopology.CoversTop`: if a family
`X : I → C` covers the top for `J`, and for each `i` a family `Y i` covers the top for the
induced topology on `Over (X i)`, then the combined family covers the top for `J`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoversTopOver.Variante0511325b7a009b6c529476215fca0859425e501be62e35ae00e83815bccb211

public section

universe u

namespace CategoryTheory.GrothendieckTopology

variable {C : Type*} [Category* C] {J : GrothendieckTopology C}

lemma CoversTop.over {I : Type*} {X : I → C} (hX : J.CoversTop X) {I' : I → Type u}
    {Y : (i : I) → I' i → Over (X i)} (hY : ∀ i, (J.over (X i)).CoversTop (Y i)) :
    J.CoversTop (fun (j : (i : I) × I' i) ↦ (Y j.1 j.2).left) :=
  fun j ↦ J.transitive (hX j) _ fun Z f ⟨i, ⟨g⟩⟩ ↦ J.superset_covering
    ((Sieve.functorPushforward_ofObjects_le _ _ _).trans (Sieve.ofObjects_mono fun i' ↦ by aesop))
    (hY _ (.mk g))

end CategoryTheory.GrothendieckTopology
```
