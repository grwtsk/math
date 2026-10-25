# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.DictionaryRevision

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c275139d4666485c32dbb2243badfb9be93c7857` · SHA-256 `ab3fbf62b819b3b1cc352028e99450c6e5edff994d96f93b8d13ad442d12e217`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IndexedDictionary

/-!
# Revision of indexed finite dictionaries

Keeping dictionary lengths and reference counts does not keep the meaning of an
indexed representation. A sufficient revision condition is exact agreement of
the old and new optional lookups at every referenced index. This file proves that
condition preserves the actual `IndexedDictionary.unpack`, and shows why equality
of two failing decoders cannot replace the per-reference agreement condition.

These statements concern finite Lean lists. They do not certify source hashes,
compression, serialization, filesystem updates, or external revision machinery.
-/

set_option autoImplicit false

namespace GRWTSK.Logic.FiniteSequences.DictionaryRevision

open IndexedDictionary

variable {Key Payload : Type*}

/-- A dictionary revision agrees exactly on the indices used by the reference list.
Optional lookup equality also records absence; there is no assumed index validity. -/
def AgreesOnReferences (before after : List Payload)
    (references : List (Key × Nat)) : Prop :=
  ∀ reference ∈ references, before[reference.2]? = after[reference.2]?

/-- Replace just the dictionary, keeping the complete ordered reference sequence. -/
def replaceDictionary (packed : Packed Key Payload) (dictionary : List Payload) :
    Packed Key Payload :=
  ⟨dictionary, packed.references⟩

/-- At an individual reference, equality of decoded pairs is exactly lookup equality. -/
theorem decodeReference_eq_iff_lookup_eq (before after : List Payload)
    (reference : Key × Nat) :
    decodeReference before reference = decodeReference after reference ↔
      before[reference.2]? = after[reference.2]? := by
  cases hbefore : before[reference.2]? <;>
    cases hafter : after[reference.2]? <;>
    simp [decodeReference, hbefore, hafter]

theorem agrees_refl (dictionary : List Payload) (references : List (Key × Nat)) :
    AgreesOnReferences dictionary dictionary references :=
  fun _ _ => rfl

theorem agrees_symm {before after : List Payload} {references : List (Key × Nat)}
    (h : AgreesOnReferences before after references) :
    AgreesOnReferences after before references :=
  fun reference hreference => (h reference hreference).symm

/-- Successive exact revision agreements compose on the same reference sequence. -/
theorem agrees_trans {before middle after : List Payload}
    {references : List (Key × Nat)}
    (h₁ : AgreesOnReferences before middle references)
    (h₂ : AgreesOnReferences middle after references) :
    AgreesOnReferences before after references :=
  fun reference hreference => (h₁ reference hreference).trans (h₂ reference hreference)

/-- The actual sequential checked decoder is preserved by agreement on all references. -/
theorem unpack_eq_of_agreement (before after : List Payload)
    (references : List (Key × Nat))
    (h : AgreesOnReferences before after references) :
    unpack (⟨before, references⟩ : Packed Key Payload) = unpack ⟨after, references⟩ := by
  change references.mapM (decodeReference before) = references.mapM (decodeReference after)
  induction references with
  | nil => rfl
  | cons reference references ih =>
    have hhead := (decodeReference_eq_iff_lookup_eq before after reference).mpr
      (h reference (List.mem_cons_self ..))
    have htail : AgreesOnReferences before after references :=
      fun r hr => h r (List.mem_cons_of_mem _ hr)
    rw [List.mapM_cons, List.mapM_cons, hhead, ih htail]

/-- Replacing a dictionary under exact reference agreement preserves decoded contents. -/
theorem unpack_replaceDictionary (packed : Packed Key Payload) (after : List Payload)
    (h : AgreesOnReferences packed.dictionary after packed.references) :
    unpack (replaceDictionary packed after) = unpack packed :=
  (unpack_eq_of_agreement packed.dictionary after packed.references h).symm

/-- A revision certificate carries the mathematical agreement proof, with its exact data. -/
structure RevisionCertificate (Key Payload : Type*) where
  before : List Payload
  after : List Payload
  references : List (Key × Nat)
  agreement : AgreesOnReferences before after references

/-- Certificate soundness uses its agreement proof, rather than hashes or inventory counts. -/
theorem RevisionCertificate.unpack_preserved (certificate : RevisionCertificate Key Payload) :
    unpack (⟨certificate.before, certificate.references⟩ : Packed Key Payload) =
      unpack ⟨certificate.after, certificate.references⟩ :=
  unpack_eq_of_agreement _ _ _ certificate.agreement

/-- Exact packing remains exact after any dictionary revision satisfying the agreement. -/
theorem unpack_pack_after [DecidableEq Payload] (entries : List (Key × Payload))
    (after : List Payload)
    (h : AgreesOnReferences (pack entries).dictionary after (pack entries).references) :
    unpack (replaceDictionary (pack entries) after) = some entries := by
  rw [unpack_replaceDictionary _ _ h, unpack_pack]

/-- Same dictionary length and identical valid references do not prevent stale-slot corruption. -/
theorem stale_slots_counterexample :
    ∃ before after : Packed Nat Nat,
      before.dictionary.length = after.dictionary.length ∧
      before.references = after.references ∧
      Valid before ∧ Valid after ∧
      unpack before = some [(11, 7), (12, 8)] ∧
      unpack after = some [(11, 8), (12, 7)] ∧
      unpack before ≠ unpack after := by
  refine ⟨⟨[7, 8], [(11, 0), (12, 1)]⟩, ⟨[8, 7], [(11, 0), (12, 1)]⟩,
    rfl, rfl, ?_, ?_, rfl, rfl, ?_⟩
  · simp [Valid]
  · simp [Valid]
  · decide

/-- Both decoders can fail before reaching a later reference where the dictionaries disagree. -/
theorem failed_decoders_do_not_imply_agreement :
    ∃ before after : List Nat, ∃ references : List (Nat × Nat),
      unpack (⟨before, references⟩ : Packed Nat Nat) = unpack ⟨after, references⟩ ∧
      ¬ AgreesOnReferences before after references := by
  refine ⟨[], [7], [(11, 1), (12, 0)], rfl, ?_⟩
  intro h
  have hlookup := h (12, 0) (by simp)
  simp at hlookup

end GRWTSK.Logic.FiniteSequences.DictionaryRevision
```
