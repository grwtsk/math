-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Not.Variantf188f67845f3e1047265918f5929a90af8c0972b8727239582a883129c92c75b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f188f67845f3e1047265918f5929a90af8c0972b8727239582a883129c92c75b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Not.Variantf188f67845f3e1047265918f5929a90af8c0972b8727239582a883129c92c75b","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"f188f67845f3e1047265918f5929a90af8c0972b8727239582a883129c92c75b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Int/Bitwise/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

prelude
public import Init.Data.Int.Basic
public import Init.Data.Nat.Bitwise.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Not.Variantf188f67845f3e1047265918f5929a90af8c0972b8727239582a883129c92c75b

public section

namespace Int

/-! ## bit operations -/

/--
Bitwise not, usually accessed via the `~~~` prefix operator.

Interprets the integer as an infinite sequence of bits in two's complement and complements each bit.

Examples:
 * `~~~(0 : Int) = -1`
 * `~~~(1 : Int) = -2`
 * `~~~(-1 : Int) = 0`
-/
protected def not : Int → Int
  | Int.ofNat n => Int.negSucc n
  | Int.negSucc n => Int.ofNat n

instance : Complement Int := ⟨.not⟩

/--
Bitwise right shift, usually accessed via the `>>>` operator.

Interprets the integer as an infinite sequence of bits in two's complement and shifts the value to
the right.

Examples:
* `( 0b0111 : Int) >>> 1 =  0b0011`
* `( 0b1000 : Int) >>> 1 =  0b0100`
* `(-0b1000 : Int) >>> 1 = -0b0100`
* `(-0b0111 : Int) >>> 1 = -0b0100`
-/
@[expose, implicit_reducible]
protected def shiftRight : Int → Nat → Int
  | Int.ofNat n, s => Int.ofNat (n >>> s)
  | Int.negSucc n, s => Int.negSucc (n >>> s)

instance : HShiftRight Int Nat Int := ⟨.shiftRight⟩

/--
Bitwise left shift, usually accessed via the `<<<` operator.

Examples:
 * `1 <<< 2 = 4`
 * `1 <<< 3 = 8`
 * `0 <<< 3 = 0`
 * `0xf1 <<< 4 = 0xf10`
 * `(-1) <<< 3 = -8`
-/
@[expose]
protected def shiftLeft : Int → Nat → Int
  | Int.ofNat n, s => Int.ofNat (n <<< s)
  | Int.negSucc n, s => Int.negSucc (((n + 1) <<< s) - 1)

instance : HShiftLeft Int Nat Int := ⟨.shiftLeft⟩

end Int
