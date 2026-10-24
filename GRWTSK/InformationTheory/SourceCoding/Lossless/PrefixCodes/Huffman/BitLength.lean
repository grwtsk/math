import GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.RoundTrip
import GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.FrequencyRefinement

/-!
# Weighted Huffman bit length

Rust `Tree::bit_len` zips the 256 weights with the 256 code vectors and sums
`weight * code.len()`. This proves that natural-number expression is exactly
the bit-stream length produced by `encodeWith`, rather than assuming the two
calculations agree. Rust checked multiplication/addition is a separate layer.
-/

namespace GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.BitLength

def codeLength (tree : Tree) (a : UInt8) : Nat :=
  ((tree.word a).map List.length).getD 0

def weightedLength (weights : UInt8 → Nat) (tree : Tree) : Nat :=
  (alphabet.map (fun a => weights a * codeLength tree a)).sum

theorem codeLength_of_word {tree : Tree} {a : UInt8} {word : List Bool}
    (h : tree.word a = some word) : codeLength tree a = word.length := by
  simp [codeLength, h]

theorem encodeWith_length (tree : Tree) (source : List UInt8) (bits : List Bool)
    (encoded : encodeWith tree source = some bits) :
    bits.length = (source.map (codeLength tree)).sum := by
  induction source generalizing bits with
  | nil => simpa [encodeWith] using encoded.symm
  | cons a source ih =>
    cases hw : tree.word a with
    | none => simp [encodeWith, hw] at encoded
    | some word =>
      cases hr : encodeWith tree source with
      | none => simp [encodeWith, hw, hr] at encoded
      | some rest =>
        have heq : word ++ rest = bits := by
          simpa [encodeWith, hw, hr] using encoded
        subst bits
        simp [ih rest hr, codeLength_of_word hw]

private theorem sum_map_add (bytes : List UInt8) (f g : UInt8 → Nat) :
    (bytes.map (fun a => f a + g a)).sum =
      (bytes.map f).sum + (bytes.map g).sum := by
  induction bytes with
  | nil => rfl
  | cons a tail ih => simp [ih, Nat.add_assoc, Nat.add_left_comm]

private theorem sum_single (bytes : List UInt8) (a : UInt8) (f : UInt8 → Nat)
    (distinct : bytes.Nodup) (member : a ∈ bytes) :
    (bytes.map (fun b => if b = a then f b else 0)).sum = f a := by
  induction bytes with
  | nil => simp at member
  | cons b tail ih =>
    simp only [List.nodup_cons] at distinct
    by_cases h : b = a
    · subst b
      have hz : (tail.map (fun b => if b = a then f b else 0)).sum = 0 := by
        apply List.sum_eq_zero_iff_forall_eq_nat.mpr
        intro n hn
        obtain ⟨b, hb, rfl⟩ := List.mem_map.mp hn
        have hba : b ≠ a := by intro h; subst b; exact distinct.1 hb
        simp [hba]
      simp [hz]
    · have ha : a ∈ tail := by simpa [Ne.symm h] using member
      simp [h, ih distinct.2 ha]

theorem alphabet_nodup : alphabet.Nodup := by
  have hmap : alphabet.map UInt8.toNat = List.range 256 := by
    unfold alphabet
    rw [List.map_map]
    calc
      (List.range 256).map (UInt8.toNat ∘ UInt8.ofNat) =
          (List.range 256).map id := by
        apply List.map_inj_left.mpr
        intro n hn
        exact UInt8.toNat_ofNat_of_lt' (List.mem_range.mp hn)
      _ = List.range 256 := List.map_id _
  have hnodup : (alphabet.map UInt8.toNat).Nodup := by
    rw [hmap]
    exact List.nodup_range
  exact List.Pairwise.of_map UInt8.toNat
    (fun a b hne hab => hne (congrArg UInt8.toNat hab)) hnodup

/-- Counting by symbol and counting by source position give the same sum. -/
theorem frequency_sum (source : List UInt8) (f : UInt8 → Nat) :
    (alphabet.map (fun a => frequencies source a * f a)).sum =
      (source.map f).sum := by
  induction source with
  | nil => simp [frequencies, List.map_const', List.sum_replicate_nat]
  | cons a source ih =>
    have hterm : (fun b => frequencies (a :: source) b * f b) =
        (fun b => (if b = a then f b else 0) + frequencies source b * f b) := by
      funext b
      by_cases h : b = a
      · subst b
        simp [frequencies, Nat.add_mul, Nat.add_comm]
      · have h' : a ≠ b := Ne.symm h
        simp [frequencies, h, List.count_cons_of_ne h']
    rw [hterm, sum_map_add, sum_single alphabet a f alphabet_nodup (mem_alphabet a), ih]
    rfl

/-- The frequency-total fold checked by Rust `huffman::decode` equals the
original byte count. This also bounds every partial merge weight. -/
theorem frequency_total (source : List UInt8) :
    (alphabet.map (frequencies source)).sum = source.length := by
  have h := frequency_sum source (fun _ => 1)
  simpa [List.map_const', List.sum_replicate_nat] using h

theorem weightedLength_frequencies (source : List UInt8) (tree : Tree) :
    weightedLength (frequencies source) tree = (source.map (codeLength tree)).sum :=
  frequency_sum source (codeLength tree)

/-- The exact natural arithmetic performed by `Tree::bit_len` equals the
length of the actual concatenated codewords. -/
theorem weightedLength_encodeWith (source : List UInt8) (tree : Tree)
    (bits : List Bool) (encoded : encodeWith tree source = some bits) :
    weightedLength (frequencies source) tree = bits.length := by
  rw [weightedLength_frequencies]
  exact (encodeWith_length tree source bits encoded).symm

/-- Main source-facing equality for a tree built from the source histogram. -/
theorem weightedLength_encodedBits (source : List UInt8) (tree : Tree)
    (built : build source = some tree) :
    weightedLength (frequencies source) tree = (encodedBits source).length :=
  weightedLength_encodeWith source tree (encodedBits source) (encodedBits_spec built)

/-- The two 256-element arrays zipped by Rust `Tree::bit_len`. -/
def weightCodePairs (weights : UInt8 → Nat) (tree : Tree) : List (Nat × Nat) :=
  (alphabet.map weights).zip (alphabet.map (codeLength tree))

theorem products_weightCodePairs (weights : UInt8 → Nat) (tree : Tree) :
    CheckedArithmetic.products (weightCodePairs weights tree) = weightedLength weights tree := by
  simp only [weightCodePairs, List.zip_map', CheckedArithmetic.products,
    List.map_map, weightedLength]
  rfl

theorem weightCodePairs_fst (weights : UInt8 → Nat) (tree : Tree) :
    (weightCodePairs weights tree).map Prod.fst = alphabet.map weights := by
  simp only [weightCodePairs, List.zip_map', List.map_map]
  rfl

theorem weightCodePairs_total (source : List UInt8) (tree : Tree) :
    ((weightCodePairs (frequencies source) tree).map Prod.fst).sum = source.length := by
  rw [weightCodePairs_fst]
  exact frequency_total source

def checkedBitLength (weights : UInt8 → Nat) (tree : Tree) : Option Nat :=
  CheckedArithmetic.dotFrom 0 (weightCodePairs weights tree)

/-- Exact success/refusal theorem for the multiplication/addition part of
`Tree::bit_len`, in source order. The separate code-length conversion guard
is included by `CheckedCodes`; source-built trees discharge it by the
255-bit structural bound. -/
theorem checkedBitLength_spec (weights : UInt8 → Nat) (tree : Tree) :
    checkedBitLength weights tree =
      if weightedLength weights tree ≤ CheckedArithmetic.maxU64
      then some (weightedLength weights tree) else none := by
  simp only [checkedBitLength, CheckedArithmetic.dotFrom_spec _ _ (Nat.zero_le _),
    products_weightCodePairs, Nat.zero_add]

/-- For an actual source-built tree, the checked multiplication/addition fold
succeeds exactly when the emitted bit-stream length is representable in
`u64`. The code-length conversion is a separate guard, not modeled here. -/
theorem checkedBitLength_encodedBits (source : List UInt8) (tree : Tree)
    (built : build source = some tree) :
    checkedBitLength (frequencies source) tree =
      if (encodedBits source).length ≤ CheckedArithmetic.maxU64
      then some (encodedBits source).length else none := by
  rw [checkedBitLength_spec, weightedLength_encodedBits source tree built]

theorem checkedBitLength_some_iff (source : List UInt8) (tree : Tree)
    (built : build source = some tree) (result : Nat) :
    checkedBitLength (frequencies source) tree = some result ↔
      (encodedBits source).length ≤ CheckedArithmetic.maxU64 ∧
        result = (encodedBits source).length := by
  rw [checkedBitLength_encodedBits source tree built]
  split <;> simp_all [eq_comm] <;> omega

theorem checkedBitLength_none_iff (source : List UInt8) (tree : Tree)
    (built : build source = some tree) :
    checkedBitLength (frequencies source) tree = none ↔
      CheckedArithmetic.maxU64 < (encodedBits source).length := by
  rw [checkedBitLength_encodedBits source tree built]
  split <;> simp_all

end GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.BitLength
