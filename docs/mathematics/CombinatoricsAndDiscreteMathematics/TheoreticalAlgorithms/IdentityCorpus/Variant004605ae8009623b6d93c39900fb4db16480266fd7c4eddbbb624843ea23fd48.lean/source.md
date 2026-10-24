# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IdentityCorpus.Variant004605ae8009623b6d93c39900fb4db16480266fd7c4eddbbb624843ea23fd48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3b00efb916bcbaf25e9a1142b29322e8f6cbd53` · SHA-256 `004605ae8009623b6d93c39900fb4db16480266fd7c4eddbbb624843ea23fd48`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Boolean.Corpus
import Mathematics.Boolean.Identity

/-!
# Boolean identity corpus links

The ten elementary identities are proved from the canonical bounded
distributive lattice structure and linked to their exact retained declarations.
-/

namespace Mathematics.Boolean.IdentityCorpus

open Mathematics
open Mathematics.Discovery

private def theoremLink
    (ordinal : Nat)
    (sourceName : String)
    (sourceName_nonempty : sourceName ≠ "")
    (sourceDigest : Digest)
    (sourceDigest_valid : sourceDigest.Valid)
    (target : String)
    (target_nonempty : target ≠ "") :
    CorpusSubsumptionLink :=
  Corpus.lawsModule.subsumption
    { value := "ideas:boolean-laws:identity:" ++ toString ordinal }
    (by simp [StableId.Valid])
    ordinal
    sourceName
    sourceName_nonempty
    .theorem
    sourceDigest
    sourceDigest_valid
    target
    target_nonempty
    .theoremReconstruction
    "Derive the retained identity from Mathlib's canonical Boolean algebra."

def botJoin := theoremLink
  0 "bot_join" (by decide)
  { value := "a8ecfc7ba5e8e25f15bff9bc8eb05522a2f76cf70af8e19336bd9febc250eb4a" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.bot_join" (by decide)

def topMeet := theoremLink
  1 "top_meet" (by decide)
  { value := "aebbb9e67c8995b284cfd4eab2ec6652953f2bf447c3e8d31c7e91f18e7c3292" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.top_meet" (by decide)

def complementJoin := theoremLink
  2 "compl_join" (by decide)
  { value := "95e9f5a985da56eb8d447e335ba717746dce83d05bf47f26c47ad9c975fccf0c" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.complement_join" (by decide)

def complementMeet := theoremLink
  3 "compl_meet" (by decide)
  { value := "321bc3dd07e424b1cba740860f838f898698da97e52120c8df30e62362c1cb4d" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.complement_meet" (by decide)

def joinIdempotent := theoremLink
  4 "join_idem" (by decide)
  { value := "745662b3608ad33df55df91edc14b15f60073cac8724121cffd788e01e04e534" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.join_idempotent" (by decide)

def meetIdempotent := theoremLink
  5 "meet_idem" (by decide)
  { value := "66e3da5d321ad6aae58535966264fdb79e556b59d3a4d3fb2b94b21962ade1df" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.meet_idempotent" (by decide)

def joinTop := theoremLink
  6 "join_top" (by decide)
  { value := "2af80ee4c1eb6d365169b438dc36ce44ca2b75eb527bf10c8b4cc76477bedd33" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.join_top" (by decide)

def topJoin := theoremLink
  7 "top_join" (by decide)
  { value := "e1c14aac3f470c3abba66d230b09e50fb1e1120882100b7b467880e42f465098" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.top_join" (by decide)

def meetBot := theoremLink
  8 "meet_bot" (by decide)
  { value := "c44b9a4f42a2524d71cd47b2495bb86edf66964a62f3f1f9fcda14da0321cfb8" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.meet_bot" (by decide)

def botMeet := theoremLink
  9 "bot_meet" (by decide)
  { value := "4e148b5a6e68d438941d8259329f3589b94dedb1ac750c0245ed745db87fc544" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.bot_meet" (by decide)

def links : List CorpusSubsumptionLink := [
  botJoin,
  topMeet,
  complementJoin,
  complementMeet,
  joinIdempotent,
  meetIdempotent,
  joinTop,
  topJoin,
  meetBot,
  botMeet
]

@[simp] theorem links_length : links.length = 10 := by decide

end Mathematics.Boolean.IdentityCorpus
```
