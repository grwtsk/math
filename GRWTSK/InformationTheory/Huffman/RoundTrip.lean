import GRWTSK.InformationTheory.Huffman.Builder
import GRWTSK.InformationTheory.Huffman.Machine

/-!
# Concrete byte-level Huffman round trip

The packet contains frequencies, exact byte/bit counts and packed UInt8 bytes.
It stores neither the original source nor the tree. The decoder rebuilds its
tree from frequencies and executes the per-bit root-reset machine. The final
theorem has no codec-law, alphabet-coverage, prefix-freedom or tree hypothesis.

Natural metadata has no overflow; relating it to bounded external integers,
allocation and language heap semantics remains an explicit refinement task.
-/

namespace GRWTSK.InformationTheory.Huffman

structure Packet where
  weights : UInt8 → Nat
  byteCount : Nat
  bitCount : Nat
  bytes : List UInt8

def encodedBits (source : List UInt8) : List Bool :=
  match build source with
  | none => []
  | some tree => (encodeWith tree source).getD []

theorem encodedBits_spec {source : List UInt8} {tree : Tree}
    (built : build source = some tree) :
    encodeWith tree source = some (encodedBits source) := by
  obtain ⟨bits, hb⟩ := encodeWith_exists tree source (fun a ha => build_covers built a ha)
  simp [encodedBits, built, hb]

def encode (source : List UInt8) : Packet where
  weights := frequencies source
  byteCount := source.length
  bitCount := (encodedBits source).length
  bytes := Wire.pack (encodedBits source)

def zeroPadding (bytes : List UInt8) (bitCount : Nat) : Bool :=
  ((bytes.flatMap Wire.octetBits).drop bitCount).all (fun bit => !bit)

theorem zeroPadding_pack (bits : List Bool) :
    zeroPadding (Wire.pack bits) bits.length = true := by
  obtain ⟨padding, _, h⟩ := Wire.storedBits_padding bits
  simp [zeroPadding, h]

def validResult (packet : Packet) (root node : Tree) (source : List UInt8) : Bool :=
  decide (node = root) && source.length == packet.byteCount &&
    alphabet.all (fun a => frequencies source a == packet.weights a) &&
    packet.bytes.length == (packet.bitCount + 7) / 8 &&
    zeroPadding packet.bytes packet.bitCount

def decode (packet : Packet) : Option (List UInt8) :=
  match fromWeights packet.weights with
  | none =>
    if packet.byteCount = 0 ∧ packet.bitCount = 0 ∧ packet.bytes = []
    then some [] else none
  | some tree => do
    let (node, source) ← Machine.run tree (tree, []) (Wire.unpack packet.bytes packet.bitCount)
    if validResult packet tree node source then some source else none

/-- Every encoded source passes the metadata and zero-padding checks. -/
theorem validResult_encode (source : List UInt8) (tree : Tree) :
    validResult (encode source) tree tree source = true := by
  simp [validResult, encode, Wire.pack_length, zeroPadding_pack]

theorem decode_of_run (packet : Packet) (tree : Tree) (source : List UInt8)
    (htree : fromWeights packet.weights = some tree)
    (hrun : Machine.run tree (tree, []) (Wire.unpack packet.bytes packet.bitCount) =
      some (tree, source))
    (hvalid : validResult packet tree tree source = true) :
    decode packet = some source := by
  unfold decode
  simp only [htree]
  rw [hrun]
  change (if validResult packet tree tree source then some source else none) = some source
  rw [hvalid]
  rfl

/-- Concrete Huffman byte-level round trip, including the empty source and
singleton alphabet. Every prerequisite follows from the definitions above. -/
theorem decode_encode (source : List UInt8) : decode (encode source) = some source := by
  cases built : build source with
  | none =>
    cases source with
    | nil =>
      have hzero : fromWeights (frequencies []) = none := by
        change fromWeights (fun _ => 0) = none
        exact fromWeights_zero
      have hbits : encodedBits [] = [] := by simp [encodedBits]
      simp [decode, encode, hzero, hbits, Wire.pack]
    | cons a tail =>
      obtain ⟨tree, ht, _⟩ := build_complete (a :: tail) (by simp)
      simp [built] at ht
  | some tree =>
    have htree : fromWeights (frequencies source) = some tree := built
    have hmachine := Machine.run_packed_encoding tree source (encodedBits source)
      (encodedBits_spec built)
    exact decode_of_run (encode source) tree source htree hmachine
      (validResult_encode source tree)

/-- The fixed-frequency encoded packet, rather than a source or stored tree,
is sufficient to determine the original source. -/
theorem encode_injective : Function.Injective encode := by
  intro left right h
  have := congrArg decode h
  simpa only [decode_encode, Option.some.injEq] using this

end GRWTSK.InformationTheory.Huffman
