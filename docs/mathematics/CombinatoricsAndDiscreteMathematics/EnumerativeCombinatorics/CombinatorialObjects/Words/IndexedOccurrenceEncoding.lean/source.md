# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Words.IndexedOccurrenceEncoding

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90df4f453b58a2f5c61a1e8401725cb8026e9974` · SHA-256 `2d4d447979c11d069c1c7506d12cc3ee282a702aedf9373cd28d4c13f78e36f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Words.TaggedOccurrenceProjection
import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Words.BoundedWordPartitions
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IndexedDictionary

/-!
# Composition with the existing GRWTSK indexed dictionary

Taxonomy projection, bounded ordered scheduling and payload interning preserve
the complete source occurrence list. Evidence applies only through an actual
proof of its predicate on that exact list. No storage operation manufactures it.
-/

namespace GRWTSK.PipelineContracts

open TaxonomyProjection BoundedShards
open Logic.FiniteSequences.IndexedDictionary

variable {Key Payload Directory : Type*} [DecidableEq Payload]

/-- The mathematical source pipeline, without hashes, serialization or I/O. -/
def encode (route : Key → Directory) (width : Nat) (entries : List (Key × Payload)) :
    Packed Key Payload :=
  pack (((shard width (project route entries)).flatten).map Placement.original)

theorem decode_encode (route : Key → Directory) (width : Nat)
    (entries : List (Key × Payload)) : unpack (encode route width entries) = some entries := by
  simp [encode, flatten_shard, forget_project, unpack_pack]

theorem encode_injective (route : Key → Directory) (width : Nat) :
    Function.Injective (encode (Payload := Payload) route width) := by
  intro left right equal
  have := congrArg unpack equal
  simpa only [decode_encode, Option.some.injEq] using this

theorem encoded_reference_count (route : Key → Directory) (width : Nat)
    (entries : List (Key × Payload)) : (encode route width entries).references.length = entries.length := by
  simp [encode, flatten_shard, forget_project, pack_references_length]

/-- The decoded premises are the exact premises for which evidence was given. -/
theorem evidence_applicability (route : Key → Directory) (width : Nat)
    (entries decoded : List (Key × Payload)) (predicate : List (Key × Payload) → Prop)
    (proof : predicate entries) (readback : unpack (encode route width entries) = some decoded) :
    predicate decoded := by
  rw [decode_encode, Option.some.injEq] at readback
  subst decoded
  exact proof

/-- Storage round trips alone cannot establish an arbitrary mathematical claim. -/
theorem roundtrip_does_not_manufacture_evidence :
    ¬ ∀ (predicate : List (Nat × Nat) → Prop) (entries : List (Nat × Nat)),
      unpack (pack entries) = some entries → predicate entries := by
  intro manufactures
  exact manufactures (fun _ => False) [] (unpack_pack [])

end GRWTSK.PipelineContracts
```
