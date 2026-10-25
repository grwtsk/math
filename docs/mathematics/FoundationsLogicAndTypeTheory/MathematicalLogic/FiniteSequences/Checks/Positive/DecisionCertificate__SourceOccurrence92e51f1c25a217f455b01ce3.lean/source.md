# Complete source: GRWTSK.Logic.FiniteSequences.Checks.Positive.DecisionCertificate

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8008bf6333e817a14b0b0736f8e42459a140c495` · SHA-256 `26c9f09e818342dd7906060f0f2b45c56584d88fce64a8237e39b56ba5f5b00f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.FiniteSequences.DecisionCertificate

open GRWTSK.Logic.FiniteSequences.IndexedDictionary
open GRWTSK.Logic.FiniteSequences.DictionaryRevision
open GRWTSK.Logic.FiniteSequences.DecisionCertificate

set_option autoImplicit false

example {Key Payload : Type*} [DecidableEq Payload]
    (certificate : Certificate Key Payload) :
    DecodesSatisfying certificate.packed certificate.predicate :=
  certificate.decodesSatisfying

example {Key Payload : Type*} [DecidableEq Payload]
    (certificate : Certificate Key Payload) (revised : Packed Key Payload)
    {decoded : List (Key × Payload)}
    (hsuccess : unpack revised = some decoded)
    (hequal : unpack revised = unpack certificate.packed) :
    certificate.predicate decoded :=
  certificate.predicate_of_successful_equal_decoding revised hsuccess hequal

example {Key Payload : Type*} [DecidableEq Payload]
    (certificate : Certificate Key Payload) (after : List Payload)
    (h : AgreesOnReferences certificate.packed.dictionary after
      certificate.packed.references) :
    DecodesSatisfying (replaceDictionary certificate.packed after) certificate.predicate :=
  certificate.reuse_of_agreement after h

private def boundedPremise : Certificate Nat Nat :=
  ⟨[(11, 7)], (fun entries => ∀ entry ∈ entries, entry.2 ≤ 7), by simp⟩

-- An unused slot can be appended while the actual decoded arithmetic premise remains valid.
example : DecodesSatisfying (replaceDictionary boundedPremise.packed [7, 99])
    boundedPremise.predicate := by
  apply boundedPremise.reuse_of_agreement
  intro reference hreference
  simp [Certificate.packed, boundedPremise, pack] at hreference
  subst reference
  rfl

example :
    ∃ original revised : Packed Nat Nat,
      original.references = revised.references ∧
      original.references.length = revised.references.length ∧
      original.dictionary.length = revised.dictionary.length ∧
      Valid original ∧ Valid revised ∧
      DecodesSatisfying original (fun entries => ∀ entry ∈ entries, entry.2 ≤ 7) ∧
      ¬ DecodesSatisfying revised (fun entries => ∀ entry ∈ entries, entry.2 ≤ 7) :=
  stale_premise_counterexample
```
