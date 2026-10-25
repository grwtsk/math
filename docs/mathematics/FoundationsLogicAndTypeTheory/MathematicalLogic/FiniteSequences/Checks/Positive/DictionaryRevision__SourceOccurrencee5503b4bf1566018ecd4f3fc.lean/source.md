# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.Checks.Positive.DictionaryRevision

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea52704311782d9429cbe4ae1dcf4b745ed86b8a` · SHA-256 `df724acdb847cfcafb8a1bf8294cd8f2dde99296da288cd48d9825040e6f8613`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.DictionaryRevision

open GRWTSK.Logic.FiniteSequences.IndexedDictionary
open GRWTSK.Logic.FiniteSequences.DictionaryRevision

set_option autoImplicit false

example {Key Payload : Type*} (before after : List Payload)
    (references : List (Key × Nat))
    (h : AgreesOnReferences before after references) :
    unpack (⟨before, references⟩ : Packed Key Payload) = unpack ⟨after, references⟩ :=
  unpack_eq_of_agreement before after references h

example {Key Payload : Type*} (certificate : RevisionCertificate Key Payload) :
    unpack (⟨certificate.before, certificate.references⟩ : Packed Key Payload) =
      unpack ⟨certificate.after, certificate.references⟩ :=
  certificate.unpack_preserved

-- Adding an unused dictionary slot preserves all referenced payloads.
example :
    unpack (replaceDictionary
      (pack ([(11, 7), (12, 8)] : List (Nat × Nat))) [7, 8, 9]) =
      some [(11, 7), (12, 8)] := by
  apply unpack_pack_after
  intro reference hreference
  simp [pack] at hreference
  rcases hreference with rfl | rfl <;> rfl

-- An unused slot may change; agreement is required only at referenced slots.
example :
    unpack (⟨[7, 8], [(11, 0)]⟩ : Packed Nat Nat) =
      unpack ⟨[7, 99], [(11, 0)]⟩ := by
  apply unpack_eq_of_agreement
  intro reference hreference
  simp only [List.mem_singleton] at hreference
  subst reference
  rfl

example :
    ∃ before after : Packed Nat Nat,
      before.dictionary.length = after.dictionary.length ∧
      before.references = after.references ∧ Valid before ∧ Valid after ∧
      unpack before = some [(11, 7), (12, 8)] ∧
      unpack after = some [(11, 8), (12, 7)] ∧
      unpack before ≠ unpack after :=
  stale_slots_counterexample

example :
    ∃ before after : List Nat, ∃ references : List (Nat × Nat),
      unpack (⟨before, references⟩ : Packed Nat Nat) = unpack ⟨after, references⟩ ∧
      ¬ AgreesOnReferences before after references :=
  failed_decoders_do_not_imply_agreement
```
