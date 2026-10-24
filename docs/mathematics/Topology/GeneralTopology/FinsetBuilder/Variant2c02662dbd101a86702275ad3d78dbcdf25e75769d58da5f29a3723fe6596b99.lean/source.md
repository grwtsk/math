# Complete source: GRWTSK.Topology.GeneralTopology.FinsetBuilder.Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5d40296391e552a70029ccb3da9612fd9a172fe` · SHA-256 `18f694cbf2674b8de153f6cdb05e12d7c8d2896ad9186bc6ef40762cf1dcfcf2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Finset.Variantcd190e7bef3b4c6e23330e7ba74d8c99b452749abb9fe07e91af781ffbde89c8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cd190e7bef3b4c6e23330e7ba74d8c99b452749abb9fe07e91af781ffbde89c8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Finset.Variantcd190e7bef3b4c6e23330e7ba74d8c99b452749abb9fe07e91af781ffbde89c8","mathematical_subject":"Topology.GeneralTopology","original_sha256":"cd190e7bef3b4c6e23330e7ba74d8c99b452749abb9fe07e91af781ffbde89c8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/finset_builder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Order.Interval.Finset.Basic

/-!
# Examples of finset builder notation
-/


namespace GRWTSK.Topology.GeneralTopology.Finset.Variantcd190e7bef3b4c6e23330e7ba74d8c99b452749abb9fe07e91af781ffbde89c8

open Finset

variable {α : Type*} (p : α → Prop) [DecidablePred p]

/-! ## `Data.Finset.Basic` -/

example (s : Finset α) : {x ∈ s | p x} = s.filter p := rfl

/-! ## `Data.Fintype.Basic` -/

section Fintype
variable [Fintype α]

example : ({x | p x} : Finset α) = univ.filter p := rfl
example : ({x : α | p x} : Finset α) = univ.filter p := rfl

-- If the type of `s` (or the entire expression) is `Finset ?α`, elaborate as `Finset`;
-- otherwise as `Set`
example (s : Finset α) : {x ∈ s | p x} = s.filter p := rfl
example (s : Finset α) : ({x ∈ s | p x} : Set α) = setOf fun x => x ∈ s ∧ p x := rfl
example (s : Finset α) : {x ∈ (s : Set α) | p x} = setOf fun x => x ∈ s ∧ p x := rfl

-- elaborate as `Set` if no expected type present
example : {x | p x} = setOf p := rfl
example : {x : α | p x} = setOf p := rfl

variable [DecidableEq α]

example (s : Finset α) : {x ∉ s | p x} = sᶜ.filter p := rfl
example (a : α) : ({x ≠ a | p x} : Finset α) = ({a}ᶜ : Finset α).filter p := rfl

-- elaborate as `Set` if the `s` or the expected type is not `Finset ?α`
example (s : Set α) : {x ∉ s | p x} = setOf fun x => x ∉ s ∧ p x := rfl
example (a : α) : {x ≠ a | p x} = setOf fun x => x ≠ a ∧ p x := rfl

end Fintype

/-! ## `Order.Interval.Finset.Basic` -/

section LocallyFiniteOrderBot
variable [Preorder α] [LocallyFiniteOrderBot α]

example (a : α) : ({x ≤ a | p x} : Finset α) = (Iic a).filter p := rfl
example (a : α) : ({x < a | p x} : Finset α) = (Iio a).filter p := rfl

-- elaborate as `Set` if the expected type is not `Finset ?α`
example (a : α) : {x ≤ a | p x} = setOf fun x => x ≤ a ∧ p x := rfl
example (a : α) : {x < a | p x} = setOf fun x => x < a ∧ p x := rfl

end LocallyFiniteOrderBot

section LocallyFiniteOrderTop
variable [Preorder α] [LocallyFiniteOrderTop α]

example (a : α) : ({x ≥ a | p x} : Finset α) = (Ici a).filter p := rfl
example (a : α) : ({x > a | p x} : Finset α) = (Ioi a).filter p := rfl

-- elaborate as `Set` if the expected type is not `Finset ?α`
example (a : α) : {x ≥ a | p x} = setOf fun x => x ≥ a ∧ p x := rfl
example (a : α) : {x > a | p x} = setOf fun x => x > a ∧ p x := rfl

end LocallyFiniteOrderTop

```
