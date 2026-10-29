-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatCast.Variantc026135a0ec4ef0bd7cb866815a91167d0bde268aab4db1a5d46c986061f9a69","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c026135a0ec4ef0bd7cb866815a91167d0bde268aab4db1a5d46c986061f9a69","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.NatCast.Variantc026135a0ec4ef0bd7cb866815a91167d0bde268aab4db1a5d46c986061f9a69","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"c026135a0ec4ef0bd7cb866815a91167d0bde268aab4db1a5d46c986061f9a69","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Cast.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Gabriel Ebner
-/
module

prelude
public import Init.Coe


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatCast.Variantc026135a0ec4ef0bd7cb866815a91167d0bde268aab4db1a5d46c986061f9a69

public section

/-!
# `NatCast`

We introduce the typeclass `NatCast R` for a type `R` with a "canonical
homomorphism" `Nat → R`. The typeclass carries the data of the function,
but no required axioms.

This typeclass was introduced to support a uniform `simp` normal form
for such morphisms.

Without such a typeclass, we would have specific coercions such as
`Int.ofNat`, but also later the generic coercion from `Nat` into any
Mathlib semiring (including `Int`), and we would need to use `simp` to
move between them. However `simp` lemmas expressed using a non-normal
form on the LHS would then not fire.

Typically different instances of this class for the same target type `R`
are definitionally equal, and so differences in the instance do not
block `simp` or `rw`.

This logic also applies to `Int` and so we also introduce `IntCast` alongside
`Int.

## Note about coercions into arbitrary types:

Coercions such as `Nat.cast` that go from a concrete structure such as
`Nat` to an arbitrary type `R` should be set up as follows:
```lean
instance : CoeTail Nat R where coe := ...
instance : CoeHTCT Nat R where coe := ...
```

It needs to be `CoeTail` instead of `Coe` because otherwise type-class
inference would loop when constructing the transitive coercion `Nat →
Nat → Nat → ...`. Sometimes we also need to declare the `CoeHTCT`
instance if we need to shadow another coercion.
-/

/--
The canonical homomorphism `Nat → R`. In most use cases, the target type will have a (semi)ring
structure, and this homomorphism should be a (semi)ring homomorphism.

`NatCast` and `IntCast` exist to allow different libraries with their own types that can be notated
as natural numbers to have consistent `simp` normal forms without needing to create coercion
simplification sets that are aware of all combinations. Libraries should make it easy to work with
`NatCast` where possible. For instance, in Mathlib there will be such a homomorphism (and thus a
`NatCast R` instance) whenever `R` is an additive monoid with a `1`.

The prototypical example is `Int.ofNat`.
-/
class NatCast (R : Type u) where
  /-- The canonical map `Nat → R`. -/
  protected natCast : Nat → R

instance : NatCast Nat where natCast n := n

@[coe, expose, reducible, match_pattern, inherit_doc NatCast]
protected def Nat.cast {R : Type u} [NatCast R] : Nat → R :=
  NatCast.natCast

-- see the notes about coercions into arbitrary types in the module doc-string
instance [NatCast R] : CoeTail Nat R where coe := Nat.cast

-- see the notes about coercions into arbitrary types in the module doc-string
instance [NatCast R] : CoeHTCT Nat R where coe := Nat.cast
