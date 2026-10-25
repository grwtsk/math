# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.BatchCertificate

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09e5fd0bd51486d10423d9a29438c1eaf26fc929` · SHA-256 `e0f9a9061e22c66194c6f76d506123b9e17059eec3913a9b0d8236e76f922765`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib and Lean imports retain upstream authorship and licensing. -/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.DecisionCertificate
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IncrementalComposition

/-!
# Semantic certificates across incremental batch representations

Sequential and combined batches have the same actual decoder under valid original
references, so they satisfy the same decoded-list predicates. A certificate about
the complete appended history can be reused for either actual representation by
the existing checked codec and certificate theorems.

The certificate must prove its predicate of the complete history. No assumption
here makes an arbitrary predicate of the old history stable under append. A
checked counterexample demonstrates that boundary, and another fixture reuses a
complete-history certificate for an unequal numeric representation.

No new encoder law, runtime/byte refinement, external authorization, hash or
filesystem correctness assumption is introduced.
-/

set_option autoImplicit false

namespace GRWTSK.Logic.FiniteSequences.BatchCertificate

open IndexedDictionary IncrementalDictionary IncrementalComposition DecisionCertificate

variable {Key Payload : Type*} [DecidableEq Payload]

/-- Equal actual batch decodings give exactly the same decoded-predicate satisfaction. -/
theorem decodesSatisfying_sequential_iff_combined (original : Packed Key Payload)
    (first second : List (Key × Payload)) (hvalid : Valid original)
    (predicate : List (Key × Payload) → Prop) :
    DecodesSatisfying (appendEntries (appendEntries original first) second) predicate ↔
      DecodesSatisfying (appendEntries original (first ++ second)) predicate := by
  unfold DecodesSatisfying
  rw [unpack_appendEntries_compose original first second hvalid]

/-- Reuse requires evidence for every original and appended occurrence in its exact order. -/
theorem reuse_sequential (certificate : Certificate Key Payload)
    (oldRows first second : List (Key × Payload))
    (hentries : certificate.entries = oldRows ++ (first ++ second)) :
    DecodesSatisfying (appendEntries (appendEntries (pack oldRows) first) second)
      certificate.predicate := by
  apply certificate.reuse_of_same_decoding
  rw [unpack_appendEntries_twice_pack, certificate.unpack_packed, hentries]

/-- The same complete-history proof also applies to the actual combined-batch representation. -/
theorem reuse_combined (certificate : Certificate Key Payload)
    (oldRows first second : List (Key × Payload))
    (hentries : certificate.entries = oldRows ++ (first ++ second)) :
    DecodesSatisfying (appendEntries (pack oldRows) (first ++ second))
      certificate.predicate := by
  apply certificate.reuse_of_same_decoding
  rw [unpack_appendEntries_pack, certificate.unpack_packed, hentries]

/-- An actual proof about the complete three-row history, with repeated payload seven. -/
def completeHistoryCertificate : Certificate Nat Nat :=
  ⟨[(11, 7), (12, 8), (13, 7)], (fun entries => entries.length = 3), rfl⟩

/-- A complete-history certificate can be reused despite different actual numeric slots. -/
theorem complete_history_reuse :
    let first : List (Nat × Nat) := [(11, 7), (12, 8)]
    let second : List (Nat × Nat) := [(13, 7)]
    let sequential := appendEntries (appendEntries (pack []) first) second
    let combined := appendEntries (pack []) (first ++ second)
    DecodesSatisfying sequential completeHistoryCertificate.predicate ∧
      DecodesSatisfying combined completeHistoryCertificate.predicate ∧
      unpack sequential = unpack completeHistoryCertificate.packed ∧
      sequential ≠ completeHistoryCertificate.packed := by
  refine ⟨reuse_sequential completeHistoryCertificate [] _ _ rfl,
    reuse_combined completeHistoryCertificate [] _ _ rfl, rfl, ?_⟩
  intro hequal
  have hdictionary := congrArg Packed.dictionary hequal
  change ([7, 8] : List Nat) = [8, 7] at hdictionary
  simp at hdictionary

/-- A valid proof about the empty original history, whose criterion is not append-stable. -/
def emptyHistoryCertificate : Certificate Nat Nat :=
  ⟨[], (fun entries => entries.length = 0), rfl⟩

/-- Evidence about the old history need not certify the actual successfully decoded extension. -/
theorem old_evidence_not_append_stable :
    DecodesSatisfying emptyHistoryCertificate.packed emptyHistoryCertificate.predicate ∧
      ¬ DecodesSatisfying (appendEntries emptyHistoryCertificate.packed [(11, 7)])
        emptyHistoryCertificate.predicate := by
  refine ⟨emptyHistoryCertificate.decodesSatisfying, ?_⟩
  rintro ⟨decoded, hdecoded, hpredicate⟩
  have hrows : decoded = [(11, 7)] :=
    Option.some.inj (hdecoded.symm.trans (unpack_appendEntries_pack [] [(11, 7)]))
  subst decoded
  simp [emptyHistoryCertificate] at hpredicate

end GRWTSK.Logic.FiniteSequences.BatchCertificate
```
