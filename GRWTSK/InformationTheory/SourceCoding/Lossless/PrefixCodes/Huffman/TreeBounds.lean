import GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.Builder

/-!
# Structural bounds for the byte Huffman constructor

The 256-byte enumeration and preservation of leaf count bound every complete
codeword by 255 bits (one bit for a singleton), and every constructed full
binary tree by 511 nodes. Neither bound assumes compression optimality.
-/

namespace GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman

theorem Tree.symbols_length_pos (tree : Tree) : 0 < tree.symbols.length := by
  induction tree with
  | leaf a => simp [Tree.symbols]
  | branch left right ihl ihr => simp only [Tree.symbols, List.length_append]; omega

theorem Tree.path_length_lt (tree : Tree) (a : UInt8) (bits : List Bool)
    (encoded : tree.path a = some bits) : bits.length < tree.symbols.length := by
  induction tree generalizing bits with
  | leaf b =>
    simp only [Tree.path] at encoded
    split at encoded
    · cases encoded; simp [Tree.symbols]
    · simp at encoded
  | branch left right ihl ihr =>
    simp only [Tree.path] at encoded
    cases hl : left.path a with
    | some word =>
      simp only [hl] at encoded
      cases encoded
      have h := ihl word hl
      have hr := right.symbols_length_pos
      simp only [List.length_cons, Tree.symbols, List.length_append]
      omega
    | none =>
      simp only [hl] at encoded
      cases hr : right.path a with
      | none => simp [hr] at encoded
      | some word =>
        simp only [hr, Option.map_some] at encoded
        cases encoded
        have h := ihr word hr
        have hlp := left.symbols_length_pos
        simp only [List.length_cons, Tree.symbols, List.length_append]
        omega

def queueLeafCount (queue : List Entry) : Nat :=
  (queue.map (fun entry => entry.tree.symbols.length)).sum

theorem queueLeafCount_insert (entry : Entry) (queue : List Entry) :
    queueLeafCount (insertEntry entry queue) =
      entry.tree.symbols.length + queueLeafCount queue := by
  induction queue with
  | nil => simp [insertEntry, queueLeafCount]
  | cons head tail ih =>
    simp only [insertEntry]
    split
    · simp [queueLeafCount]
    · simp only [queueLeafCount, List.map_cons, List.sum_cons] at *
      rw [ih]
      omega

theorem queueLeafCount_order (queue : List Entry) :
    queueLeafCount (orderEntries queue) = queueLeafCount queue := by
  induction queue with
  | nil => rfl
  | cons head tail ih =>
    simp only [orderEntries, queueLeafCount_insert, ih]
    rfl

theorem buildFuel_leafCount (fuel order : Nat) (queue : List Entry) (tree : Tree)
    (built : buildFuel fuel order queue = some tree) :
    tree.symbols.length = queueLeafCount queue := by
  induction fuel generalizing order queue with
  | zero =>
    cases queue with
    | nil => simp [buildFuel] at built
    | cons head tail =>
      cases tail with
      | nil => cases built; simp [queueLeafCount]
      | cons right tail => simp [buildFuel] at built
  | succ fuel ih =>
    cases queue with
    | nil => simp [buildFuel] at built
    | cons head tail =>
      cases tail with
      | nil => cases built; simp [queueLeafCount]
      | cons right tail =>
        have h := ih (order + 1) (insertEntry (mergeEntry order head right) tail) built
        rw [queueLeafCount_insert] at h
        simpa [mergeEntry, Tree.symbols, queueLeafCount, List.length_append,
          Nat.add_assoc] using h

theorem seedEntries_leafCount_le (weights : UInt8 → Nat) (order : Nat)
    (bytes : List UInt8) : queueLeafCount (seedEntries weights order bytes) ≤ bytes.length := by
  induction bytes generalizing order with
  | nil => simp [seedEntries, queueLeafCount]
  | cons a tail ih =>
    simp only [seedEntries]
    split
    · have h := ih (order + 1)
      simp only [queueLeafCount, List.map_cons, List.sum_cons, Tree.symbols,
        List.length_cons, List.length_nil] at *
      omega
    · have h := ih order
      simp only [List.length_cons]
      omega

theorem fromWeights_leafCount_le (weights : UInt8 → Nat) (tree : Tree)
    (built : fromWeights weights = some tree) : tree.symbols.length ≤ 256 := by
  unfold fromWeights at built
  have h := buildFuel_leafCount _ _ _ tree built
  rw [queueLeafCount_order] at h
  have hs := seedEntries_leafCount_le weights 0 alphabet
  have ha : alphabet.length = 256 := by simp [alphabet]
  omega

/-- The source-level bound for every code assigned by `Tree::from_weights`. -/
theorem fromWeights_word_length_le (weights : UInt8 → Nat) (tree : Tree)
    (a : UInt8) (word : List Bool) (built : fromWeights weights = some tree)
    (encoded : tree.word a = some word) : word.length ≤ 255 := by
  have hc := fromWeights_leafCount_le weights tree built
  cases tree with
  | leaf b =>
    simp only [Tree.word] at encoded
    split at encoded
    · cases encoded; decide
    · simp at encoded
  | branch left right =>
    have hp := Tree.path_length_lt (.branch left right) a word encoded
    omega

def Tree.nodeCount : Tree → Nat
  | .leaf _ => 1
  | .branch left right => 1 + left.nodeCount + right.nodeCount

theorem Tree.nodeCount_eq (tree : Tree) :
    tree.nodeCount + 1 = 2 * tree.symbols.length := by
  induction tree with
  | leaf a => rfl
  | branch left right ihl ihr =>
    simp only [Tree.nodeCount, Tree.symbols, List.length_append]
    omega

theorem fromWeights_nodeCount_le (weights : UInt8 → Nat) (tree : Tree)
    (built : fromWeights weights = some tree) : tree.nodeCount ≤ 511 := by
  have hl := fromWeights_leafCount_le weights tree built
  have hn := tree.nodeCount_eq
  omega

end GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman
