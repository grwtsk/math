-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScrambleHash.Variant1306a77117e7c8528cd67729147355b63537d6ece7761bd6d223d834cd999f42","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1306a77117e7c8528cd67729147355b63537d6ece7761bd6d223d834cd999f42","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ScrambleHash.Variant1306a77117e7c8528cd67729147355b63537d6ece7761bd6d223d834cd999f42","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"1306a77117e7c8528cd67729147355b63537d6ece7761bd6d223d834cd999f42","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/DHashMap/Internal/Index.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Init.Data.UInt.Bitwise
import Init.ByCases
import Init.Data.UInt.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScrambleHash.Variant1306a77117e7c8528cd67729147355b63537d6ece7761bd6d223d834cd999f42

public section

/-!
This is an internal implementation file of the hash map. Users of the hash map should not rely on
the contents of this file.

File contents: mapping a hash to a hash map bucket
-/

set_option linter.missingDocs true
set_option autoImplicit false

namespace Std.DHashMap.Internal

/--
Scramble the hash code in order to protect against bad hash functions.

Example: if `Hashable Float` was implemented using the "identity" reinterpreting the bit pattern as
a `UInt64`, then the hash codes of all small positive or negative integers would end in around 50
zeroes, meaning that they all land in bucket 0 in reasonably-sized hash maps.

To counteract this, we xor the hash code with some shifted-down versions of itself, to make sure
that all of the entropy of the hash code appears in the lower 16 bits at least.

The scrambling operation is very fast. It does not have a measurable impact on performance in the
insert benchmark.
-/
@[inline]
def scrambleHash (hash : UInt64) : UInt64 :=
  let fold := hash ^^^ (hash >>> 32)
  fold ^^^ (fold >>> 16)

-- Note that this indexing scheme always produces a valid index, but it only has a chance of
-- returning every index if sz is a power of two.
/--
`sz` is an explicit parameter because having it inferred from `h` can lead to suboptimal IR,
cf. https://github.com/leanprover/lean4/issues/4157
-/
@[irreducible, inline, expose] def mkIdx (sz : Nat) (h : 0 < sz) (hash : UInt64) :
    { u : USize // u.toNat < sz } :=
  ⟨(scrambleHash hash).toUSize &&& (USize.ofNat sz - 1), by
    -- This proof is a good test for our USize API
    by_cases h' : sz < USize.size
    · rw [USize.toNat_and, USize.toNat_sub_of_le, USize.toNat_ofNat_of_lt' h']
      · exact Nat.lt_of_le_of_lt Nat.and_le_right (Nat.sub_lt h (by simp))
      · simp [USize.le_iff_toNat_le, Nat.mod_eq_of_lt h', Nat.succ_le_of_lt h]
    · exact Nat.lt_of_lt_of_le (USize.toNat_lt_size _) (Nat.le_of_not_lt h')⟩

end Std.DHashMap.Internal
