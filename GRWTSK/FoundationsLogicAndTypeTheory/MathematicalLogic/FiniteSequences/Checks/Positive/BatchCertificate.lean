import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.BatchCertificate

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IndexedDictionary
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IncrementalDictionary
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.DecisionCertificate
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.BatchCertificate

set_option autoImplicit false

example {Key Payload : Type*} [DecidableEq Payload]
    (original : Packed Key Payload) (first second : List (Key × Payload))
    (hvalid : Valid original) (predicate : List (Key × Payload) → Prop) :
    DecodesSatisfying (appendEntries (appendEntries original first) second) predicate ↔
      DecodesSatisfying (appendEntries original (first ++ second)) predicate :=
  decodesSatisfying_sequential_iff_combined original first second hvalid predicate

example {Key Payload : Type*} [DecidableEq Payload]
    (certificate : Certificate Key Payload) (oldRows first second : List (Key × Payload))
    (hentries : certificate.entries = oldRows ++ (first ++ second)) :
    DecodesSatisfying (appendEntries (appendEntries (pack oldRows) first) second)
      certificate.predicate ∧
      DecodesSatisfying (appendEntries (pack oldRows) (first ++ second))
        certificate.predicate :=
  ⟨reuse_sequential certificate oldRows first second hentries,
    reuse_combined certificate oldRows first second hentries⟩

-- The concrete certificate proves length three of the FULL decoded history.
example :
    DecodesSatisfying (appendEntries
      (appendEntries (pack ([] : List (Nat × Nat))) [(11, 7), (12, 8)]) [(13, 7)])
      completeHistoryCertificate.predicate :=
  reuse_sequential completeHistoryCertificate [] _ _ rfl

-- A true criterion about the old empty history becomes false after actual successful append.
example :
    ¬ DecodesSatisfying (appendEntries emptyHistoryCertificate.packed [(11, 7)])
      emptyHistoryCertificate.predicate :=
  old_evidence_not_append_stable.2

example :
    unpack (appendEntries emptyHistoryCertificate.packed [(11, 7)]) = some [(11, 7)] :=
  unpack_appendEntries_pack [] [(11, 7)]
