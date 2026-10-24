import GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.TreeBounds
import GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.BitLength
import GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.CheckedBuild

/-!
# Discharged Huffman source bounds

The inventory length bound, histogram construction and 256-symbol tree
construction discharge the numerical premises of the source-facing loops.
For the new Rust bit-position conversion, a separate theorem uses the actual
conversion guard on any platform, without pretending byte capacity implies
bit-position capacity. Heap API and language representation boundaries remain
the explicit ones in `CheckedBuild` and the source function map.
-/
namespace GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.SourceBounds

open CheckedArithmetic BitLength Bounds

theorem codeLength_le (weights : UInt8 → Nat) (tree : Tree)
    (built : fromWeights weights = some tree) (a : UInt8) :
    codeLength tree a ≤ maxCodeBits := by
  cases h : tree.word a with
  | none => simp [codeLength, h]
  | some word =>
    rw [codeLength_of_word h]
    exact fromWeights_word_length_le weights tree a word built h

theorem weightCodePairs_lengths (weights : UInt8 → Nat) (tree : Tree)
    (built : fromWeights weights = some tree) :
    ∀ pair ∈ weightCodePairs weights tree, pair.2 ≤ maxCodeBits := by
  intro pair hp
  have he : weightCodePairs weights tree =
      alphabet.map (fun a => (weights a, codeLength tree a)) := by
    simp only [weightCodePairs, List.zip_map']
  rw [he] at hp
  obtain ⟨a, _, rfl⟩ := List.mem_map.mp hp
  exact codeLength_le weights tree built a

/-- Every checked increment in `encode` succeeds on an inventory-admitted
source, and its result is the exact 256-cell histogram. -/
theorem inventory_histogram (source : List UInt8) (size : source.length ≤ maxFileBytes) :
    FrequencyRefinement.checkedCountLoop source (fun _ => 0) = some (frequencies source) := by
  apply (FrequencyRefinement.checkedCountLoop_zero_iff source _).mpr
  refine ⟨rfl, fun a => ?_⟩
  have hc : frequencies source a ≤ source.length := List.count_le_length
  have hm : maxFileBytes ≤ maxU64 := by decide
  omega

theorem built_source_bit_bound (source : List UInt8) (tree : Tree)
    (built : build source = some tree) (size : source.length ≤ maxFileBytes) :
    (encodedBits source).length ≤ maxFileBits := by
  have hsum : weightSum (weightCodePairs (frequencies source) tree) = source.length :=
    weightCodePairs_total source tree
  have hp := inventory_products_bound (weightCodePairs (frequencies source) tree)
    (by rw [hsum]; exact size) (weightCodePairs_lengths _ tree built)
  simpa only [products_weightCodePairs, weightedLength_encodedBits source tree built] using hp

/-- All checked multiplications and additions in `Tree::bit_len` succeed,
and their result equals the length of the actual emitted code stream. -/
theorem inventory_bit_length (source : List UInt8) (tree : Tree)
    (built : build source = some tree) (size : source.length ≤ maxFileBytes) :
    checkedBitLength (frequencies source) tree = some (encodedBits source).length := by
  rw [checkedBitLength_encodedBits source tree built]
  exact if_pos (Nat.le_trans (built_source_bit_bound source tree built size) maxFileBits_le_u64)

theorem encodedBits_bound (source : List UInt8) (size : source.length ≤ maxFileBytes) :
    (encodedBits source).length ≤ maxFileBits := by
  cases built : build source with
  | some tree => exact built_source_bit_bound source tree built size
  | none =>
    have hempty : encodedBits source = [] := by simp [encodedBits, built]
    simp [hempty]

theorem encodedBytes_bound (source : List UInt8) (size : source.length ≤ maxFileBytes) :
    (encode source).bytes.length ≤ maxFileCompressedBytes := by
  have h := inventory_compressed_bound (encodedBits source).length (encodedBits_bound source size)
  simpa only [encode, Wire.pack_length, compressedByteLen_eq_ceil] using h

/-- A valid 64-bit inventory call passes the new bit-position conversion.
On another platform the actual conversion guard, not this corollary, applies. -/
theorem inventory_position_guard (source : List UInt8) (size : source.length ≤ maxFileBytes) :
    checkedUsize 64 (encode source).bitCount = some (encode source).bitCount := by
  apply (checkedUsize_eq_some_iff _ _ _).mpr
  exact ⟨inventory_position_64 _ (encodedBits_bound source size), rfl⟩

/-- Any heap run satisfying the exposed library API has the exact abstract
tree, with every checked merge discharged by the source length bound. -/
theorem inventory_heap (source : List UInt8) (size : source.length ≤ maxFileBytes)
    {result : Option Tree}
    (run : HeapRefinement.HeapBuild (sourceEntries source).length
      (sourceEntries source).length (sourceEntries source) result) :
    build source = result ∧
      CheckedBuild.CheckedHeapBuild (sourceEntries source).length
        (sourceEntries source).length (sourceEntries source) result := by
  apply CheckedBuild.fromWeights_refinement (frequencies source) ?_ run
  rw [frequency_total]
  have hm : maxFileBytes ≤ maxU64 := by decide
  omega

def counterAfter (bits : List Bool) (start : Nat) : Nat :=
  bits.foldl (fun position _ => position + 1) start

theorem counterAfter_eq (bits : List Bool) (start : Nat) :
    counterAfter bits start = start + bits.length := by
  induction bits generalizing start with
  | nil => simp [counterAfter]
  | cons bit tail ih =>
    change counterAfter tail (start + 1) = _
    rw [ih]
    simp only [List.length_cons]
    omega

/-- The emitted codewords pass the final Rust counter check. This is a length
consistency check, not a characterization or authentication of those words. -/
theorem final_counter_check (source : List UInt8) :
    counterAfter (encodedBits source) 0 = (encode source).bitCount := by
  simp [counterAfter_eq, encode]

/-- On every platform, a successful actual bit-count conversion makes each
unchecked counter increment, byte index and shift numerically safe. -/
theorem emitted_bit_access (source : List UInt8) (wordBits position : Nat)
    (guard : checkedUsize wordBits (encode source).bitCount = some (encode source).bitCount)
    (beforeEnd : position < (encode source).bitCount) :
    position + 1 < 2 ^ wordBits ∧ position / 8 < (encode source).bytes.length ∧
      7 - position % 8 < 8 := by
  have capacity := ((checkedUsize_eq_some_iff _ _ _).mp guard).1
  refine ⟨position_successor_fits wordBits position _ capacity beforeEnd, ?_,
    packed_shift_bound position⟩
  have hi := packed_index_bound position (encode source).bitCount beforeEnd
  simpa only [encode, Wire.pack_length, compressedByteLen_eq_ceil] using hi

/-- The decoder's next valid output prefix cannot overflow its observed
histogram or exceed the final declared symbol frequency. -/
theorem observed_prefix_increment (processed suffix : List UInt8) (a : UInt8)
    (size : (processed ++ a :: suffix).length ≤ maxU64) :
    checkedSucc (frequencies processed a) = some (frequencies processed a + 1) ∧
      frequencies processed a + 1 ≤ frequencies (processed ++ a :: suffix) a := by
  have hc : frequencies processed a ≤ processed.length := List.count_le_length
  have hp : processed.length < (processed ++ a :: suffix).length := by simp
  refine ⟨increment_before_end _ _ _ hc hp size, ?_⟩
  simp only [frequencies, List.count_append, List.count_cons_self]
  omega

end GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.SourceBounds
