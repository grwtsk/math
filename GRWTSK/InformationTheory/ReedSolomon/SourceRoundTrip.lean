import GRWTSK.InformationTheory.Huffman.RoundTrip
import GRWTSK.InformationTheory.ReedSolomon.Wire
import GRWTSK.InformationTheory.ReedSolomon.Runtime

/-!
# Concrete Huffman, RS and source-byte composition

The encoded source stores only the frequency/length metadata and six samples
per stripe. In particular it retains neither the original source, a Huffman
tree nor the intermediate compressed bytes. Recovery selects a certified
four-node profile, computes its actual interpolation rows, unpacks little-
endian words, trims padding and invokes the proved Huffman byte decoder.
-/

namespace GRWTSK.InformationTheory.ReedSolomon

open GRWTSK.Algebra.FiniteField.GF128

def fourOfWords : List Word → Four
  | a :: b :: c :: d :: _ => ⟨a, b, c, d⟩
  | _ => ⟨0, 0, 0, 0⟩

def wordsOfFour (words : Four) : List Word := [words.a, words.b, words.c, words.d]

theorem wordsOfFour_fourOfWords (words : List Word) (shape : words.length = 4) :
    wordsOfFour (fourOfWords words) = words := by
  cases words with
  | nil => simp at shape
  | cons a tail =>
    cases tail with
    | nil => simp at shape
    | cons b tail =>
      cases tail with
      | nil => simp at shape
      | cons c tail =>
        cases tail with
        | nil => simp at shape
        | cons d tail =>
          have hempty : tail = [] := by
            apply List.length_eq_zero_iff.mp
            simp only [List.length_cons] at shape
            omega
          subst tail
          rfl

def encodeStripes (stripes : List (List Word)) : List (Fin 6 → Word) :=
  stripes.map (fun words => fullEncode (fourOfWords words))

def decodeStripes (profile : Fin 15) :
    List (Fin 6 → Word) → Option (List (List Word))
  | [] => some []
  | samples :: tail => do
    let words ← decodeRuntime profile (selectProfile profile samples)
    let rest ← decodeStripes profile tail
    pure (wordsOfFour words :: rest)

theorem decodeStripes_encodeStripes (profile : Fin 15) (stripes : List (List Word))
    (shape : ∀ words ∈ stripes, words.length = 4) :
    decodeStripes profile (encodeStripes stripes) = some stripes := by
  induction stripes with
  | nil => rfl
  | cons words tail ih =>
    have hw := shape words (by simp)
    have ht := ih (fun row hr => shape row (by simp [hr]))
    have ht' : decodeStripes profile
        (tail.map (fun row => fullEncode (fourOfWords row))) = some tail := ht
    simp only [encodeStripes, List.map_cons, decodeStripes]
    rw [decode_selected_fullEncode]
    simp [ht', wordsOfFour_fourOfWords words hw]

structure SourcePacket where
  weights : UInt8 → Nat
  byteCount : Nat
  bitCount : Nat
  shards : List (Fin 6 → Word)

def encodeSource (source : List UInt8) : SourcePacket :=
  let packed := Huffman.encode source
  { weights := packed.weights, byteCount := packed.byteCount,
    bitCount := packed.bitCount,
    shards := encodeStripes (Wire.packPayload packed.bytes) }

def decodeSource (profile : Fin 15) (packet : SourcePacket) : Option (List UInt8) := do
  let stripes ← decodeStripes profile packet.shards
  Huffman.decode
    { weights := packet.weights, byteCount := packet.byteCount,
      bitCount := packet.bitCount,
      bytes := Wire.unpackPayload stripes ((packet.bitCount + 7) / 8) }

/-- The entire concrete byte pipeline is a left inverse for every source and
every certified four-of-six recovery profile, without a supplied codec law. -/
theorem source_roundtrip (profile : Fin 15) (source : List UInt8) :
    decodeSource profile (encodeSource source) = some source := by
  have hshape : ∀ words ∈ Wire.packPayload (Huffman.encode source).bytes,
      words.length = 4 := by
    exact Wire.packStripes_shape _ _
  have hrecovered := decodeStripes_encodeStripes profile
    (Wire.packPayload (Huffman.encode source).bytes) hshape
  have hlength : (Huffman.encode source).bytes.length =
      ((Huffman.encode source).bitCount + 7) / 8 := by
    exact Huffman.Wire.pack_length _
  unfold decodeSource encodeSource
  rw [hrecovered]
  change Huffman.decode
    { weights := (Huffman.encode source).weights,
      byteCount := (Huffman.encode source).byteCount,
      bitCount := (Huffman.encode source).bitCount,
      bytes := Wire.unpackPayload (Wire.packPayload (Huffman.encode source).bytes)
        (((Huffman.encode source).bitCount + 7) / 8) } = some source
  rw [← hlength, Wire.unpackPayload_packPayload]
  exact Huffman.decode_encode source

theorem encodeSource_injective : Function.Injective encodeSource := by
  intro a b h
  have decoded := congrArg (decodeSource 0) h
  simpa only [source_roundtrip, Option.some.injEq] using decoded

end GRWTSK.InformationTheory.ReedSolomon
