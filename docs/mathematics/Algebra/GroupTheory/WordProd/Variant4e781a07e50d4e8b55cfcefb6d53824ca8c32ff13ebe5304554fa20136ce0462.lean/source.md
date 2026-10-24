# Complete source: GRWTSK.Algebra.GroupTheory.WordProd.Variant4e781a07e50d4e8b55cfcefb6d53824ca8c32ff13ebe5304554fa20136ce0462

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a71249754e9d94a1b1a2604c8c5e6c08eb0630f8` · SHA-256 `39cc96629d636e95301e9128c62df81f225ca42eb04e10220dd41fed73216ec7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.WordProd.Variant601f7f9ded83a0532e115166bb86f1ad140c85a2dc9ede87b82fece7351620c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"601f7f9ded83a0532e115166bb86f1ad140c85a2dc9ede87b82fece7351620c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.WordProd.Variant601f7f9ded83a0532e115166bb86f1ad140c85a2dc9ede87b82fece7351620c6","mathematical_subject":"Algebra.Groups","original_sha256":"601f7f9ded83a0532e115166bb86f1ad140c85a2dc9ede87b82fece7351620c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Geometry/Group/WordProd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Hang Lu Su. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Hang Lu Su
-/
module

public import Mathlib.GroupTheory.Generators

/-!
# Evaluation of words

A generating family `P : Group.Generators G ι` indexed by `ι` gives rise to an evaluation map
`P.wordProd : List (ι × Bool) → G`.

## Main definitions

* `Group.Generators.wordProd`: the canonical map from a word `List (ι × Bool)` over a generating
  family `ι` to the corresponding group `G`. It sends each `(i, true)` to `P.val i` and
  `(i, false)` to `(P.val i)⁻¹`.

## Implementation notes

* The API in this file is modelled on the word API for Coxeter groups (`CoxeterSystem.wordProd`).
* `List (ι × Bool)` is the canonical way to write words which evaluate to `FreeGroup` elements
  through `FreeGroup.mk`.

## Tags

word, generating set, geometric group theory
-/


namespace GRWTSK.Algebra.GroupTheory.WordProd.Variant601f7f9ded83a0532e115166bb86f1ad140c85a2dc9ede87b82fece7351620c6

@[expose] public section

variable {G ι : Type*} [Group G]

namespace Group.Generators

variable (P : Group.Generators G ι) (i : ι) (b : Bool) (l l₁ l₂ : List (ι × Bool))

/-- The canonical map from a word `List (ι × Bool)` over a generating family `ι` to its
corresponding group `G`. -/
def wordProd : G := P.lift (FreeGroup.mk l)

/-- Every element of `G` is the product of some word over a generating family. -/
theorem wordProd_surjective : Function.Surjective P.wordProd :=
  P.lift_surjective.comp Quot.mk_surjective

@[simp]
lemma wordProd_nil : P.wordProd [] = 1 := by
  simp [wordProd]

@[simp]
lemma wordProd_singleton : P.wordProd [(i, b)] = cond b (P.val i) (P.val i)⁻¹ := by
  simp [wordProd]

lemma wordProd_cons : P.wordProd ((i, b) :: l) = cond b (P.val i) (P.val i)⁻¹ * P.wordProd l := by
  simp [wordProd]

lemma wordProd_append : P.wordProd (l₁ ++ l₂) = P.wordProd l₁ * P.wordProd l₂ := by
  simp [wordProd]

lemma wordProd_invRev : P.wordProd (FreeGroup.invRev l) = (P.wordProd l)⁻¹ := by
  simp [wordProd, ← FreeGroup.inv_mk]

end Group.Generators
```
