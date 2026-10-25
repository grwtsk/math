# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cast.Variant7a69441ec281b35b8eb0537d298a1f23fc6b7486c78566bf00250dc92a9ab01c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ddd240031b51573ae6e0d62188dff6e689eab12b` · SHA-256 `3eb65772b6ec8e3b2ff7d55e144524d9272de702747988a83cff4d4470aa726c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatCast.Variant51a55ea3a9c0ee686cb3e0a648fbc4562ea2fcb821d12c38a42a110cea39daee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"51a55ea3a9c0ee686cb3e0a648fbc4562ea2fcb821d12c38a42a110cea39daee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.NatCast.Variant51a55ea3a9c0ee686cb3e0a648fbc4562ea2fcb821d12c38a42a110cea39daee","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"51a55ea3a9c0ee686cb3e0a648fbc4562ea2fcb821d12c38a42a110cea39daee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Classes/Cast.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Gabriel Ebner
-/
import Std.Tactic.CoeExt
import Std.Util.LibraryNote


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatCast.Variant51a55ea3a9c0ee686cb3e0a648fbc4562ea2fcb821d12c38a42a110cea39daee

/-- Type class for the canonical homomorphism `Nat → R`. -/
class NatCast (R : Type u) where
  /-- The canonical map `Nat → R`. -/
  protected natCast : Nat → R

instance : NatCast Nat where natCast n := n
instance : NatCast Int where natCast n := Int.ofNat n

/-- Canonical homomorphism from `Nat` to a additive monoid `R` with a `1`.
This is just the bare function in order to aid in creating instances of `AddMonoidWithOne`. -/
@[coe, reducible, match_pattern] protected def Nat.cast {R : Type u} [NatCast R] : Nat → R :=
  NatCast.natCast

-- see note [coercion into rings]
instance [NatCast R] : CoeTail Nat R where coe := Nat.cast

-- see note [coercion into rings]
instance [NatCast R] : CoeHTCT Nat R where coe := Nat.cast

/-- This instance is needed to ensure that `instCoeNatInt` from core is not used. -/
instance : Coe Nat Int where coe := Nat.cast

/-- Type class for the canonical homomorphism `Int → R`. -/
class IntCast (R : Type u) where
  /-- The canonical map `Int → R`. -/
  protected intCast : Int → R

instance : IntCast Int where intCast n := n

/-- Canonical homomorphism from `Int` to a additive group `R` with a `1`.
This is just the bare function in order to aid in creating instances of `AddGroupWithOne`. -/
@[coe, reducible, match_pattern] protected def Int.cast {R : Type u} [IntCast R] : Int → R :=
  IntCast.intCast

-- see note [coercion into rings]
instance [IntCast R] : CoeTail Int R where coe := Int.cast

-- see note [coercion into rings]
instance [IntCast R] : CoeHTCT Int R where coe := Int.cast

library_note "coercion into rings"
/--
Coercions such as `Nat.castCoe` that go from a concrete structure such as
`Nat` to an arbitrary ring `R` should be set up as follows:
```lean
instance : CoeTail Nat R where coe := ...
instance : CoeHTCT Nat R where coe := ...
```

It needs to be `CoeTail` instead of `Coe` because otherwise type-class
inference would loop when constructing the transitive coercion `Nat → Nat → Nat → ...`.
Sometimes we also need to declare the `CoeHTCT` instance
if we need to shadow another coercion
(e.g. `Nat.cast` should be used over `Int.ofNat`).
-/
````
