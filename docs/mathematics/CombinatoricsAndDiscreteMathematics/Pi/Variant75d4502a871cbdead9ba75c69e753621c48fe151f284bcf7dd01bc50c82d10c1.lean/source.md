# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variant75d4502a871cbdead9ba75c69e753621c48fe151f284bcf7dd01bc50c82d10c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `607593dcdb281fe132dfb46b574337356f1a305a` · SHA-256 `d049e342a0f730dd74e5b9a5755a35afb36f092f04ddcd09c907b4b4f91609e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ProdUnivPi.Variant30c09e51b4891d985602ec6be5be8a57fb8c9b02c7429959be4f1519b7011ea5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"30c09e51b4891d985602ec6be5be8a57fb8c9b02c7429959be4f1519b7011ea5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ProdUnivPi.Variant30c09e51b4891d985602ec6be5be8a57fb8c9b02c7429959be4f1519b7011ea5","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"30c09e51b4891d985602ec6be5be8a57fb8c9b02c7429959be4f1519b7011ea5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/BigOperators/Group/Finset/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
module

public import Mathlib.Data.Fintype.Pi
public import Mathlib.Algebra.BigOperators.Group.Finset.Defs


/-!
# Products over `univ.pi`

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ProdUnivPi.Variant30c09e51b4891d985602ec6be5be8a57fb8c9b02c7429959be4f1519b7011ea5

public section

assert_not_exists MonoidWithZero MulAction IsOrderedMonoid

variable {ι β : Type*}

namespace Finset

variable [CommMonoid β]

/-- Taking a product over `univ.pi t` is the same as taking the product over `Fintype.piFinset t`.
`univ.pi t` and `Fintype.piFinset t` are essentially the same `Finset`, but differ
in the type of their element, `univ.pi t` is a `Finset (Π a ∈ univ, t a)` and
`Fintype.piFinset t` is a `Finset (Π a, t a)`. -/
@[to_additive /-- Taking a sum over `univ.pi t` is the same as taking the sum over
`Fintype.piFinset t`. `univ.pi t` and `Fintype.piFinset t` are essentially the same `Finset`,
but differ in the type of their element, `univ.pi t` is a `Finset (Π a ∈ univ, t a)` and
`Fintype.piFinset t` is a `Finset (Π a, t a)`. -/]
lemma prod_univ_pi [DecidableEq ι] [Fintype ι] {κ : ι → Type*} (t : ∀ i, Finset (κ i))
    (f : (∀ i ∈ (univ : Finset ι), κ i) → β) :
    ∏ x ∈ univ.pi t, f x = ∏ x ∈ Fintype.piFinset t, f fun a _ ↦ x a := by
  apply prod_nbij' (fun x i ↦ x i <| mem_univ _) (fun x i _ ↦ x i) <;> simp

end Finset
```
