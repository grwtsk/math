# Complete source: GRWTSK.InformationTheory.Huffman.Builder

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cbaee12eb4084f25f0e46fa0bfa91a719191050a` · SHA-256 `f488f2210b6a5e9bf21caa58d9f90d2eddecb11d1983b52b65e6abc367000ddf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.InformationTheory.Huffman.Tree

/-!
# Deterministic Huffman construction

This is the positive-frequency byte enumeration and least-two merge used by
Rust `huffman.rs` and Python `huffman.py`. A sorted list is the executable
priority-queue representation. Its key is frequency, least contained symbol,
then construction index; a newly merged left/right pair gets the next index.
Weights are natural numbers: correspondence with Rust's checked `u64` adds
requires their explicit no-overflow precondition, not an inverse-codec axiom.
-/

namespace GRWTSK.InformationTheory.Huffman

structure Entry where
  weight : Nat
  minimum : Nat
  order : Nat
  tree : Tree
  deriving Repr

/-- Lexicographic priority order, matching the Rust reverse-heap tuple. -/
def Entry.before (x y : Entry) : Bool :=
  x.weight < y.weight || (x.weight == y.weight &&
    (x.minimum < y.minimum || (x.minimum == y.minimum && x.order ≤ y.order)))

def insertEntry (entry : Entry) : List Entry → List Entry
  | [] => [entry]
  | head :: tail =>
    if entry.before head then entry :: head :: tail
    else head :: insertEntry entry tail

def orderEntries : List Entry → List Entry
  | [] => []
  | head :: tail => insertEntry head (orderEntries tail)

def queueSymbols (queue : List Entry) : List UInt8 :=
  queue.flatMap (fun entry => entry.tree.symbols)

@[simp] theorem insertEntry_length (entry : Entry) (queue : List Entry) :
    (insertEntry entry queue).length = queue.length + 1 := by
  induction queue with
  | nil => simp [insertEntry]
  | cons head tail ih =>
    simp only [insertEntry]
    split <;> simp_all

theorem mem_insertEntry_symbols (entry : Entry) (queue : List Entry) (a : UInt8) :
    a ∈ queueSymbols (insertEntry entry queue) ↔
      a ∈ entry.tree.symbols ∨ a ∈ queueSymbols queue := by
  induction queue with
  | nil => simp [insertEntry, queueSymbols]
  | cons head tail ih =>
    simp only [insertEntry]
    split
    · simp [queueSymbols, List.mem_append]
    · simp only [queueSymbols, List.flatMap_cons, List.mem_append] at *
      rw [ih]
      exact or_left_comm

@[simp] theorem orderEntries_length (queue : List Entry) :
    (orderEntries queue).length = queue.length := by
  induction queue with
  | nil => rfl
  | cons head tail ih => simp [orderEntries, ih]

@[simp] theorem mem_orderEntries_symbols (queue : List Entry) (a : UInt8) :
    a ∈ queueSymbols (orderEntries queue) ↔ a ∈ queueSymbols queue := by
  induction queue with
  | nil => rfl
  | cons head tail ih =>
    rw [orderEntries, mem_insertEntry_symbols, ih]
    simp only [queueSymbols, List.flatMap_cons, List.mem_append]

def mergeEntry (order : Nat) (left right : Entry) : Entry where
  weight := left.weight + right.weight
  minimum := min left.minimum right.minimum
  order := order
  tree := .branch left.tree right.tree

/-- Each merge reduces the queue length by one; fuel bounds only this finite
construction. It is unrelated to execution of any archived Python program. -/
def buildFuel : Nat → Nat → List Entry → Option Tree
  | _, _, [] => none
  | _, _, [entry] => some entry.tree
  | 0, _, _ :: _ :: _ => none
  | fuel + 1, order, left :: right :: tail =>
    buildFuel fuel (order + 1) (insertEntry (mergeEntry order left right) tail)

theorem buildFuel_complete (fuel order : Nat) (queue : List Entry)
    (nonempty : queue ≠ []) (enough : queue.length ≤ fuel + 1) :
    ∃ tree, buildFuel fuel order queue = some tree ∧
      ∀ a, a ∈ tree.symbols ↔ a ∈ queueSymbols queue := by
  induction fuel generalizing order queue with
  | zero =>
    cases queue with
    | nil => exact False.elim (nonempty rfl)
    | cons head tail =>
      cases tail with
      | nil => exact ⟨head.tree, rfl, by intro a; simp [queueSymbols]⟩
      | cons head' tail' => simp at enough
  | succ fuel ih =>
    cases queue with
    | nil => contradiction
    | cons head tail =>
      cases tail with
      | nil => exact ⟨head.tree, rfl, by intro a; simp [queueSymbols]⟩
      | cons right tail =>
        have hlength : (insertEntry (mergeEntry order head right) tail).length ≤ fuel + 1 := by
          simp only [insertEntry_length, List.length_cons] at *
          omega
        have hnonempty : insertEntry (mergeEntry order head right) tail ≠ [] := by
          intro h
          have := insertEntry_length (mergeEntry order head right) tail
          rw [h] at this
          simp at this
        obtain ⟨tree, ht, hs⟩ := ih (order + 1) _ hnonempty hlength
        refine ⟨tree, ht, fun a => ?_⟩
        rw [hs, mem_insertEntry_symbols]
        simp [mergeEntry, Tree.symbols, queueSymbols, or_assoc]

/-- The exact ascending byte enumeration used to initialize both runtimes. -/
def alphabet : List UInt8 := (List.range 256).map UInt8.ofNat

theorem mem_alphabet (a : UInt8) : a ∈ alphabet := by
  apply List.mem_map.mpr
  refine ⟨a.toNat, ?_, ?_⟩
  · exact List.mem_range.mpr a.toNat_lt
  · exact UInt8.ofNat_toNat

/-- Indices advance only for positive-frequency leaves, as Rust nodes.len(). -/
def seedEntries (weights : UInt8 → Nat) : Nat → List UInt8 → List Entry
  | _, [] => []
  | order, a :: tail =>
    if 0 < weights a then
      { weight := weights a, minimum := a.toNat, order := order, tree := .leaf a } ::
        seedEntries weights (order + 1) tail
    else seedEntries weights order tail

theorem mem_seedEntries_symbols (weights : UInt8 → Nat) (order : Nat)
    (bytes : List UInt8) (a : UInt8) :
    a ∈ queueSymbols (seedEntries weights order bytes) ↔ a ∈ bytes ∧ 0 < weights a := by
  induction bytes generalizing order with
  | nil => simp [seedEntries, queueSymbols]
  | cons head tail ih =>
    simp only [seedEntries]
    split
    · rename_i hpositive
      simp only [queueSymbols, List.flatMap_cons, Tree.symbols, List.singleton_append,
        List.mem_cons] at *
      rw [ih]
      constructor
      · rintro (rfl | h)
        · exact ⟨by simp, hpositive⟩
        · exact ⟨by simp [h.1], h.2⟩
      · rintro ⟨hmem, hweight⟩
        rcases hmem with rfl | hmem
        · exact Or.inl rfl
        · exact Or.inr ⟨hmem, hweight⟩
    · rename_i hzero
      rw [ih]
      simp only [List.mem_cons]
      constructor
      · rintro ⟨hmem, hweight⟩
        exact ⟨Or.inr hmem, hweight⟩
      · rintro ⟨rfl | hmem, hweight⟩
        · exact False.elim (hzero hweight)
        · exact ⟨hmem, hweight⟩

def frequencies (source : List UInt8) (a : UInt8) : Nat := source.count a

def sourceEntries (source : List UInt8) : List Entry :=
  seedEntries (frequencies source) 0 alphabet

/-- The decoder rebuilds its tree from stored frequencies, without source bytes
or a stored tree. This is also the encoder's tree construction. -/
def fromWeights (weights : UInt8 → Nat) : Option Tree :=
  let entries := seedEntries weights 0 alphabet
  buildFuel entries.length entries.length (orderEntries entries)

def build (source : List UInt8) : Option Tree :=
  fromWeights (frequencies source)

@[simp] theorem sourceEntries_symbols (source : List UInt8) (a : UInt8) :
    a ∈ queueSymbols (sourceEntries source) ↔ a ∈ source := by
  simp only [sourceEntries, mem_seedEntries_symbols, mem_alphabet, true_and,
    frequencies, List.count_pos_iff]

theorem seedEntries_zero (order : Nat) (bytes : List UInt8) :
    seedEntries (fun _ => 0) order bytes = [] := by
  induction bytes generalizing order with
  | nil => rfl
  | cons head tail ih => simp [seedEntries, ih]

@[simp] theorem fromWeights_zero : fromWeights (fun _ => 0) = none := by
  simp only [fromWeights, seedEntries_zero, List.length_nil, orderEntries, buildFuel]

@[simp] theorem build_nil : build [] = none := by
  have hweights : frequencies [] = (fun _ => 0) := by funext a; rfl
  simp only [build, hweights, fromWeights_zero]

/-- A tree rebuilt from any nonzero frequency table has exactly the positive
frequency symbols. No source list is used by the construction or its result. -/
theorem fromWeights_complete (weights : UInt8 → Nat)
    (positive : ∃ a, 0 < weights a) :
    ∃ tree, fromWeights weights = some tree ∧
      ∀ a, a ∈ tree.symbols ↔ 0 < weights a := by
  let entries := seedEntries weights 0 alphabet
  have hentries : entries ≠ [] := by
    intro hempty
    obtain ⟨a, ha⟩ := positive
    have : a ∈ queueSymbols entries :=
      (mem_seedEntries_symbols weights 0 alphabet a).mpr ⟨mem_alphabet a, ha⟩
    rw [hempty] at this
    exact List.not_mem_nil this
  have hordered : orderEntries entries ≠ [] := by
    intro hempty
    have hlength := orderEntries_length entries
    rw [hempty] at hlength
    exact hentries (List.length_eq_zero_iff.mp hlength.symm)
  obtain ⟨tree, ht, hs⟩ := buildFuel_complete
    entries.length entries.length (orderEntries entries) hordered (by simp)
  refine ⟨tree, ht, fun a => ?_⟩
  rw [hs, mem_orderEntries_symbols]
  exact (mem_seedEntries_symbols weights 0 alphabet a).trans
    (and_iff_right (mem_alphabet a))

/-- Actual tree construction covers every input byte. There is no left-inverse
or decoder assumption: the invariant is preservation of positive-weight leaves. -/
theorem build_complete (source : List UInt8) (nonempty : source ≠ []) :
    ∃ tree, build source = some tree ∧
      ∀ a, a ∈ tree.symbols ↔ a ∈ source := by
  have hpositive : ∃ a, 0 < frequencies source a := by
    cases source with
    | nil => exact False.elim (nonempty rfl)
    | cons a tail =>
      exact ⟨a, List.count_pos_iff.mpr List.mem_cons_self⟩
  obtain ⟨tree, ht, hs⟩ := fromWeights_complete (frequencies source) hpositive
  exact ⟨tree, ht, fun a => (hs a).trans List.count_pos_iff⟩

/-- The membership statement convenient for composing construction with the
proved tree-path and stream decoder laws. -/
theorem build_covers {source : List UInt8} {tree : Tree}
    (h : build source = some tree) (a : UInt8) (ha : a ∈ source) :
    a ∈ tree.symbols := by
  have hnonempty : source ≠ [] := by intro hempty; simp [hempty] at ha
  obtain ⟨built, hb, hc⟩ := build_complete source hnonempty
  rw [h] at hb
  cases hb
  exact (hc a).mpr ha

end GRWTSK.InformationTheory.Huffman
```
