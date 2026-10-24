# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variant68eac09ec3b9d0da3e51f0fbb6ad6756555c8fce5ca635187161defc97b632c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b7d2949781f91d339f5d30eedd9735762f72fad` · SHA-256 `6d3bf2a1f63c2046da520fc3f48552cf5c79d9d50a64260df7b4ca2f91e6f764`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ProdUnivPi.Variantff1ee1a695b6b6adc641be6742255b883896d58279f785dc860ee692bb898948","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ff1ee1a695b6b6adc641be6742255b883896d58279f785dc860ee692bb898948","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ProdUnivPi.Variantff1ee1a695b6b6adc641be6742255b883896d58279f785dc860ee692bb898948","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"ff1ee1a695b6b6adc641be6742255b883896d58279f785dc860ee692bb898948","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/BigOperators/Group/Finset/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
import Mathlib.Data.Fintype.Pi
import Mathlib.Algebra.BigOperators.Group.Finset.Defs


/-!
# Products over `univ.pi`

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ProdUnivPi.Variantff1ee1a695b6b6adc641be6742255b883896d58279f785dc860ee692bb898948

assert_not_exists MonoidWithZero MulAction OrderedCommMonoid

variable {ι β : Type*}

open Fin Function

namespace Finset

variable [CommMonoid β]

/-- Taking a product over `univ.pi t` is the same as taking the product over `Fintype.piFinset t`.
`univ.pi t` and `Fintype.piFinset t` are essentially the same `Finset`, but differ
in the type of their element, `univ.pi t` is a `Finset (Π a ∈ univ, t a)` and
`Fintype.piFinset t` is a `Finset (Π a, t a)`. -/
@[to_additive "Taking a sum over `univ.pi t` is the same as taking the sum over
`Fintype.piFinset t`. `univ.pi t` and `Fintype.piFinset t` are essentially the same `Finset`,
but differ in the type of their element, `univ.pi t` is a `Finset (Π a ∈ univ, t a)` and
`Fintype.piFinset t` is a `Finset (Π a, t a)`."]
lemma prod_univ_pi [DecidableEq ι] [Fintype ι] {κ : ι → Type*} (t : ∀ i, Finset (κ i))
    (f : (∀ i ∈ (univ : Finset ι), κ i) → β) :
    ∏ x ∈ univ.pi t, f x = ∏ x ∈ Fintype.piFinset t, f fun a _ ↦ x a := by
  apply prod_nbij' (fun x i ↦ x i <| mem_univ _) (fun x i _ ↦ x i) <;> simp

end Finset
```
