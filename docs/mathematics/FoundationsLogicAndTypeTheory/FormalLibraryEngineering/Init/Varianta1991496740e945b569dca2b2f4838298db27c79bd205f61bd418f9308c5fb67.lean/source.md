# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Varianta1991496740e945b569dca2b2f4838298db27c79bd205f61bd418f9308c5fb67

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e6b7d9c8deea82b401734731da838f40e1b73d2` · SHA-256 `252080fdcd4ce86db92d43ae6e5ee963ca10ec4a07f45c79d8375a78b046a2a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NNRatCast.Variant6ea2f83ab0b6b84b5009fd4ab53ee059c5229d474a15ae147b6d353388e3a4cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ea2f83ab0b6b84b5009fd4ab53ee059c5229d474a15ae147b6d353388e3a4cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.NNRatCast.Variant6ea2f83ab0b6b84b5009fd4ab53ee059c5229d474a15ae147b6d353388e3a4cd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6ea2f83ab0b6b84b5009fd4ab53ee059c5229d474a15ae147b6d353388e3a4cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Rat/Init.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Yaël Dillies
-/
import Mathlib.Data.Nat.Notation
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.TypeStar
import Batteries.Classes.RatCast

/-!
# Basic definitions around the rational numbers

This file declares `ℚ` notation for the rationals and defines the nonnegative rationals `ℚ≥0`.

This file is eligible to upstreaming to Batteries.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NNRatCast.Variant6ea2f83ab0b6b84b5009fd4ab53ee059c5229d474a15ae147b6d353388e3a4cd

@[inherit_doc] notation "ℚ" => Rat

/-- Nonnegative rational numbers. -/
def NNRat := {q : ℚ // 0 ≤ q}

@[inherit_doc] notation "ℚ≥0" => NNRat

/-!
### Cast from `NNRat`

This section sets up the typeclasses necessary to declare the canonical embedding `ℚ≥0` to any
semifield.
-/

/-- Typeclass for the canonical homomorphism `ℚ≥0 → K`.

This should be considered as a notation typeclass. The sole purpose of this typeclass is to be
extended by `DivisionSemiring`. -/
class NNRatCast (K : Type*) where
  /-- The canonical homomorphism `ℚ≥0 → K`.

  Do not use directly. Use the coercion instead. -/
  protected nnratCast : ℚ≥0 → K

instance NNRat.instNNRatCast : NNRatCast ℚ≥0 where nnratCast q := q

variable {K : Type*} [NNRatCast K]

/-- Canonical homomorphism from `ℚ≥0` to a division semiring `K`.

This is just the bare function in order to aid in creating instances of `DivisionSemiring`. -/
@[coe, reducible, match_pattern] protected def NNRat.cast : ℚ≥0 → K := NNRatCast.nnratCast

-- See note [coercion into rings]
instance NNRatCast.toCoeTail [NNRatCast K] : CoeTail ℚ≥0 K where coe := NNRat.cast

-- See note [coercion into rings]
instance NNRatCast.toCoeHTCT [NNRatCast K] : CoeHTCT ℚ≥0 K where coe := NNRat.cast

instance Rat.instNNRatCast : NNRatCast ℚ := ⟨Subtype.val⟩

/-! ### Numerator and denominator of a nonnegative rational -/

namespace NNRat

/-- The numerator of a nonnegative rational. -/
def num (q : ℚ≥0) : ℕ := (q : ℚ).num.natAbs

/-- The denominator of a nonnegative rational. -/
def den (q : ℚ≥0) : ℕ := (q : ℚ).den

@[simp] lemma num_mk (q : ℚ) (hq : 0 ≤ q) : num ⟨q, hq⟩ = q.num.natAbs := rfl
@[simp] lemma den_mk (q : ℚ) (hq : 0 ≤ q) : den ⟨q, hq⟩ = q.den := rfl

@[norm_cast] lemma cast_id (n : ℚ≥0) : NNRat.cast n = n := rfl
@[simp] lemma cast_eq_id : NNRat.cast = id := rfl

end NNRat

namespace Rat

@[norm_cast] lemma cast_id (n : ℚ) : Rat.cast n = n := rfl
@[simp] lemma cast_eq_id : Rat.cast = id := rfl

end Rat
```
