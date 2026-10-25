# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.DecisionCertificate

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32ebaa0270ec25ea3646ebe7375462396f05e346` · SHA-256 `5e28c369bba810348918d6794d07ceba8cfc5f4e21f746114d8172aba08e400c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.DictionaryRevision

/-!
# Semantic certificates for decoded finite sequences

A `Certificate` binds an exact finite key-payload list to a predicate and a proof
of that predicate. Its packed representation is constructed by the actual
`IndexedDictionary.pack`; the reconstruction law is the proved `unpack_pack`.
An exact successful decoding can therefore reuse the semantic proof. Replacing
the dictionary also permits reuse when all referenced optional lookups agree.

These are conditional mathematical decisions about finite lists. A semantic
predicate and its proof must be supplied. A stored reason, hash, count, identifier,
or communication event is not such a proof. No byte encoding, external decision
record, compression, filesystem, or runtime-adapter refinement is asserted.
-/

set_option autoImplicit false

namespace GRWTSK.Logic.FiniteSequences.DecisionCertificate

open IndexedDictionary DictionaryRevision

variable {Key Payload : Type*}

/-- The actual checked decoder succeeds and its decoded premises satisfy a predicate. -/
def DecodesSatisfying (packed : Packed Key Payload)
    (predicate : List (Key × Payload) → Prop) : Prop :=
  ∃ decoded, unpack packed = some decoded ∧ predicate decoded

/-- Exact original premise entries, their semantic criterion, and an actual proof.
No decidability, provenance, or external acceptance is inferred from this record. -/
structure Certificate (Key Payload : Type*) where
  entries : List (Key × Payload)
  predicate : List (Key × Payload) → Prop
  evidence : predicate entries

variable [DecidableEq Payload]

/-- The packed premises are constructed by the proved codec, not an assumed serializer. -/
def Certificate.packed (certificate : Certificate Key Payload) : Packed Key Payload :=
  pack certificate.entries

/-- The certificate's actual packed premises reconstruct exactly. -/
theorem Certificate.unpack_packed (certificate : Certificate Key Payload) :
    unpack certificate.packed = some certificate.entries :=
  unpack_pack certificate.entries

/-- Certificate soundness connects successful actual decoding to the stored semantic proof. -/
theorem Certificate.decodesSatisfying (certificate : Certificate Key Payload) :
    DecodesSatisfying certificate.packed certificate.predicate :=
  ⟨certificate.entries, certificate.unpack_packed, certificate.evidence⟩

/-- A successful decoding equal to the certificate's decoding satisfies its criterion. -/
theorem Certificate.predicate_of_successful_equal_decoding
    (certificate : Certificate Key Payload) (revised : Packed Key Payload)
    {decoded : List (Key × Payload)}
    (hsuccess : unpack revised = some decoded)
    (hequal : unpack revised = unpack certificate.packed) :
    certificate.predicate decoded := by
  have hentries : decoded = certificate.entries :=
    Option.some.inj (hsuccess.symm.trans (hequal.trans certificate.unpack_packed))
  rw [hentries]
  exact certificate.evidence

/-- Equality with the exact original decoding entails success and permits proof reuse. -/
theorem Certificate.reuse_of_same_decoding (certificate : Certificate Key Payload)
    (revised : Packed Key Payload)
    (hequal : unpack revised = unpack certificate.packed) :
    DecodesSatisfying revised certificate.predicate :=
  ⟨certificate.entries, hequal.trans certificate.unpack_packed, certificate.evidence⟩

/-- A dictionary revision preserves a certified decision under exact referenced-slot agreement. -/
theorem Certificate.reuse_of_agreement (certificate : Certificate Key Payload)
    (after : List Payload)
    (h : AgreesOnReferences certificate.packed.dictionary after
      certificate.packed.references) :
    DecodesSatisfying (replaceDictionary certificate.packed after) certificate.predicate :=
  certificate.reuse_of_same_decoding _
    (unpack_replaceDictionary certificate.packed after h)

/-- Every successful revised decoding under that agreement satisfies the original criterion. -/
theorem Certificate.predicate_after_agreement (certificate : Certificate Key Payload)
    (after : List Payload)
    (h : AgreesOnReferences certificate.packed.dictionary after
      certificate.packed.references)
    {decoded : List (Key × Payload)}
    (hsuccess : unpack (replaceDictionary certificate.packed after) = some decoded) :
    certificate.predicate decoded :=
  certificate.predicate_of_successful_equal_decoding _ hsuccess
    (unpack_replaceDictionary certificate.packed after h)

/-- Same ordered references, counts and valid bounds can hide a changed semantic premise.
The original payload meets the bound seven, whereas the revised payload eight does not. -/
theorem stale_premise_counterexample :
    ∃ original revised : Packed Nat Nat,
      original.references = revised.references ∧
      original.references.length = revised.references.length ∧
      original.dictionary.length = revised.dictionary.length ∧
      Valid original ∧ Valid revised ∧
      DecodesSatisfying original (fun entries => ∀ entry ∈ entries, entry.2 ≤ 7) ∧
      ¬ DecodesSatisfying revised (fun entries => ∀ entry ∈ entries, entry.2 ≤ 7) := by
  refine ⟨pack [(11, 7)], ⟨[8], [(11, 0)]⟩, rfl, rfl, rfl, pack_valid _, ?_, ?_, ?_⟩
  · simp [Valid]
  · exact ⟨[(11, 7)], unpack_pack _, by simp⟩
  · rintro ⟨decoded, hdecoded, hpredicate⟩
    have hentries : decoded = [(11, 8)] :=
      Option.some.inj (hdecoded.symm.trans (by rfl))
    subst decoded
    simp at hpredicate

end GRWTSK.Logic.FiniteSequences.DecisionCertificate
```
