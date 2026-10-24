import GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.HeapOrder

/-!
# Representation-independent least-two heap construction

`UniqueMinima` is proved for enumeration and every merge, not assumed for the
source frequency table.  It makes Python's heterogeneous third tuple component
unreachable in comparison.  `Pop` and `HeapBuild` below expose the precise
standard-library contract: removal preserves the multiset and returns a least
key; insertion preserves the multiset.  Their refinement theorem proves all
heap representations satisfying that API construct exactly `fromWeights`.
It does not encode Rust/Python language or library operational semantics.
-/
namespace GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman
namespace HeapRefinement
open HeapOrder

def UniqueMinima (queue : List Entry) : Prop :=
  queue.Pairwise (fun x y => x.minimum ≠ y.minimum)

theorem uniqueMinima_perm {queue other : List Entry} (hu : UniqueMinima queue)
    (hp : queue.Perm other) : UniqueMinima other :=
  hu.perm hp (fun h => Ne.symm h)

theorem unique_minimum {queue : List Entry} (hu : UniqueMinima queue)
    {x y : Entry} (hx : x ∈ queue) (hy : y ∈ queue)
    (he : x.minimum = y.minimum) : x = y := by
  induction queue with
  | nil => simp at hx
  | cons head tail ih =>
    obtain ⟨hh, ht⟩ := List.pairwise_cons.mp hu
    rcases List.mem_cons.mp hx with hxh | hxt
    · subst x
      rcases List.mem_cons.mp hy with hyh | hyt
      · exact hyh.symm
      · exact False.elim ((hh y hyt) he)
    · rcases List.mem_cons.mp hy with hyh | hyt
      · subst y
        exact False.elim ((hh x hxt) he.symm)
      · exact ih ht hxt hyt

theorem seedEntries_minimum_mem (weights : UInt8 → Nat) (order : Nat)
    (bytes : List UInt8) {entry : Entry} (he : entry ∈ seedEntries weights order bytes) :
    entry.minimum ∈ bytes.map UInt8.toNat := by
  induction bytes generalizing order with
  | nil => simp [seedEntries] at he
  | cons a tail ih =>
    simp only [seedEntries] at he
    split at he
    · rcases List.mem_cons.mp he with rfl | he
      · simp
      · exact List.mem_cons_of_mem _ (ih _ he)
    · exact List.mem_cons_of_mem _ (ih _ he)

theorem seedEntries_unique (weights : UInt8 → Nat) (order : Nat)
    (bytes : List UInt8) (hn : (bytes.map UInt8.toNat).Nodup) :
    UniqueMinima (seedEntries weights order bytes) := by
  induction bytes generalizing order with
  | nil => simp [seedEntries, UniqueMinima]
  | cons a tail ih =>
    obtain ⟨ha, ht⟩ := List.nodup_cons.mp hn
    simp only [seedEntries]
    split
    · apply List.pairwise_cons.mpr
      refine ⟨?_, ih _ ht⟩
      intro entry he hmin
      have hm := seedEntries_minimum_mem weights (order + 1) tail he
      change a.toNat = entry.minimum at hmin
      rw [← hmin] at hm
      exact ha hm
    · exact ih _ ht

theorem alphabet_minima_nodup : (alphabet.map UInt8.toNat).Nodup := by
  have hmap : alphabet.map UInt8.toNat = List.range 256 := by
    unfold alphabet
    rw [List.map_map]
    calc
      (List.range 256).map (UInt8.toNat ∘ UInt8.ofNat) =
          (List.range 256).map id := by
        apply List.map_congr_left
        intro n hn
        have hlt := List.mem_range.mp hn
        exact UInt8.toNat_ofNat_of_lt hlt
      _ = List.range 256 := List.map_id _
  rw [hmap]
  exact List.nodup_range

theorem initial_unique (weights : UInt8 → Nat) :
    UniqueMinima (seedEntries weights 0 alphabet) :=
  seedEntries_unique weights 0 alphabet alphabet_minima_nodup

/-- The merged minimum is one of the two removed minima, hence cannot collide
with any remaining live entry. This argument uses no weight bounds. -/
theorem merge_unique (order : Nat) (left right : Entry) (tail : List Entry)
    (hu : UniqueMinima (left :: right :: tail)) :
    UniqueMinima (mergeEntry order left right :: tail) := by
  obtain ⟨hl, hr⟩ := List.pairwise_cons.mp hu
  obtain ⟨hr, ht⟩ := List.pairwise_cons.mp hr
  apply List.pairwise_cons.mpr
  refine ⟨?_, ht⟩
  intro entry he
  have hleft := hl entry (List.mem_cons_of_mem _ he)
  have hright := hr entry he
  simp only [mergeEntry]
  omega

theorem insert_unique (order : Nat) (left right : Entry) (tail : List Entry)
    (hu : UniqueMinima (left :: right :: tail)) :
    UniqueMinima (insertEntry (mergeEntry order left right) tail) :=
  uniqueMinima_perm (merge_unique order left right tail hu)
    (insertEntry_perm _ _).symm

/-- Canonical sorting is independent of the heap's internal array order. -/
theorem normalize_perm {queue other : List Entry} (hu : UniqueMinima queue)
    (hp : queue.Perm other) : orderEntries queue = orderEntries other := by
  have hs := orderEntries_sorted queue
  have ht := orderEntries_sorted other
  have hperm := (orderEntries_perm queue).trans (hp.trans (orderEntries_perm other).symm)
  apply hperm.eq_of_pairwise _ hs ht
  intro x y hx hy hxy hyx
  exact unique_minimum hu ((orderEntries_perm queue).subset hx)
    (hp.symm.subset ((orderEntries_perm other).subset hy)) (keyLE_minimum_eq hxy hyx)

/-- The source heap API contract for one successful minimum removal. -/
structure Pop (queue : List Entry) (head : Entry) (tail : List Entry) : Prop where
  permutation : queue.Perm (head :: tail)
  least : ∀ entry ∈ queue, KeyLE head entry

theorem normalize_pop {queue : List Entry} {head : Entry} {tail : List Entry}
    (hu : UniqueMinima queue) (hp : Pop queue head tail) :
    orderEntries queue = head :: orderEntries tail := by
  have hs : (head :: orderEntries tail).Pairwise KeyLE := by
    apply List.pairwise_cons.mpr
    refine ⟨?_, orderEntries_sorted tail⟩
    intro entry he
    exact hp.least entry (hp.permutation.symm.subset
      (List.mem_cons_of_mem _ ((orderEntries_perm tail).subset he)))
  have hperm : (orderEntries queue).Perm (head :: orderEntries tail) :=
    (orderEntries_perm queue).trans
      (hp.permutation.trans ((orderEntries_perm tail).cons head).symm)
  apply hperm.eq_of_pairwise _ (orderEntries_sorted queue) hs
  intro x y hx hy hxy hyx
  exact unique_minimum hu ((orderEntries_perm queue).subset hx)
    ((orderEntries_perm queue).subset (hperm.symm.subset hy)) (keyLE_minimum_eq hxy hyx)

/-- Exactly two API pops choose exactly the first two canonical entries. -/
theorem normalize_two_pops {queue : List Entry} {left right : Entry}
    {afterLeft tail : List Entry} (hu : UniqueMinima queue)
    (hl : Pop queue left afterLeft) (hr : Pop afterLeft right tail) :
    orderEntries queue = left :: right :: orderEntries tail := by
  rw [normalize_pop hu hl]
  have hu' := uniqueMinima_perm hu hl.permutation
  rw [normalize_pop (List.pairwise_cons.mp hu').2 hr]

/-- An already sorted valid queue is its own canonical representation. -/
theorem normalize_sorted {queue : List Entry} (hu : UniqueMinima queue)
    (hs : queue.Pairwise KeyLE) : orderEntries queue = queue := by
  apply (orderEntries_perm queue).eq_of_pairwise _ (orderEntries_sorted queue) hs
  intro x y hx hy hxy hyx
  exact unique_minimum hu ((orderEntries_perm queue).subset hx) hy
    (keyLE_minimum_eq hxy hyx)

/-- The heap API semantics, independent of the internal array representation.
No law is assumed for the Huffman encoder/decoder. `Pop` states minimum removal;
the `pushed` permutation states the exact insertion multiset. -/
inductive HeapBuild : Nat → Nat → List Entry → Option Tree → Prop where
  | empty (fuel order) : HeapBuild fuel order [] none
  | singleton (fuel order) (entry) : HeapBuild fuel order [entry] (some entry.tree)
  | exhausted (order) (left right) (tail) : HeapBuild 0 order (left :: right :: tail) none
  | step {fuel order queue left afterLeft right tail pushed result}
      (leftPop : Pop queue left afterLeft) (rightPop : Pop afterLeft right tail)
      (push : pushed.Perm (mergeEntry order left right :: tail))
      (rest : HeapBuild fuel (order + 1) pushed result) :
      HeapBuild (fuel + 1) order queue result

/-- Every implementation satisfying the exposed heap API chooses exactly the
same trees as the concrete sorted-list constructor. This theorem universally
quantifies over heap layouts and all frequency values. -/
theorem heapBuild_refines {fuel order queue result}
    (hrun : HeapBuild fuel order queue result) (hu : UniqueMinima queue) :
    buildFuel fuel order (orderEntries queue) = result := by
  induction hrun with
  | empty fuel order => cases fuel <;> rfl
  | singleton fuel order entry => cases fuel <;> rfl
  | exhausted order left right tail =>
    have hlen := orderEntries_length (left :: right :: tail)
    cases he : orderEntries (left :: right :: tail) with
    | nil => simp [he] at hlen
    | cons a rest =>
      cases rest with
      | nil => simp [he] at hlen
      | cons b rest => rfl
  | @step fuel order queue left afterLeft right tail pushed result hl hr hp rest ih =>
    have huLR : UniqueMinima (left :: right :: tail) := by
      exact uniqueMinima_perm hu
        (hl.permutation.trans (hr.permutation.cons left))
    have huMerged := merge_unique order left right tail huLR
    have huPushed := uniqueMinima_perm huMerged hp.symm
    have hnPush : orderEntries pushed =
        insertEntry (mergeEntry order left right) (orderEntries tail) := by
      exact normalize_perm huPushed hp
    rw [normalize_two_pops hu hl hr]
    change buildFuel fuel (order + 1)
      (insertEntry (mergeEntry order left right) (orderEntries tail)) = result
    rw [← hnPush]
    exact ih huPushed

/-- Initial heap enumeration and least-two heap processing refine exactly the
stored-frequency tree reconstruction used by both Lean codec directions. -/
theorem fromWeights_heap_refines (weights : UInt8 → Nat) {result : Option Tree}
    (hrun : HeapBuild (seedEntries weights 0 alphabet).length
      (seedEntries weights 0 alphabet).length (seedEntries weights 0 alphabet) result) :
    fromWeights weights = result :=
  heapBuild_refines hrun (initial_unique weights)

/-- Source heap mass before or after any permutation or insertion. -/
def queueMass : List Entry → Nat
  | [] => 0
  | entry :: tail => entry.weight + queueMass tail

theorem queueMass_perm {queue other : List Entry} (hp : queue.Perm other) :
    queueMass queue = queueMass other := by
  induction hp with
  | nil => rfl
  | cons a hp ih => simp only [queueMass, ih]
  | swap a b tail => simp only [queueMass]; omega
  | trans hp hq ihp ihq => exact ihp.trans ihq

theorem queueMass_insert (entry : Entry) (queue : List Entry) :
    queueMass (insertEntry entry queue) = entry.weight + queueMass queue :=
  queueMass_perm (insertEntry_perm entry queue)

theorem queueMass_order (queue : List Entry) : queueMass (orderEntries queue) = queueMass queue :=
  queueMass_perm (orderEntries_perm queue)

/-- A merge conserves exact natural-number mass. Together with the checked
integer bridge this discharges every Rust checked_add in tree construction. -/
theorem queueMass_merge (order : Nat) (left right : Entry) (tail : List Entry) :
    queueMass (insertEntry (mergeEntry order left right) tail) =
      queueMass (left :: right :: tail) := by
  rw [queueMass_insert]
  simp only [mergeEntry, queueMass]
  omega

/-- Two successful API pops cannot have combined weight larger than the total
mass. No positivity assumption or machine wraparound arithmetic is used. -/
theorem popped_pair_le_mass {queue : List Entry} {left right : Entry}
    {afterLeft tail : List Entry} (hl : Pop queue left afterLeft)
    (hr : Pop afterLeft right tail) : left.weight + right.weight ≤ queueMass queue := by
  have hm := queueMass_perm (hl.permutation.trans (hr.permutation.cons left))
  simp only [queueMass] at hm
  omega

/-- One exact source heap loop conserves mass for arbitrary heap layouts. -/
theorem heap_step_mass {order : Nat} {queue : List Entry} {left right : Entry}
    {afterLeft tail pushed : List Entry} (hl : Pop queue left afterLeft)
    (hr : Pop afterLeft right tail)
    (hp : pushed.Perm (mergeEntry order left right :: tail)) :
    queueMass pushed = queueMass queue := by
  have hremoved := queueMass_perm (hl.permutation.trans (hr.permutation.cons left))
  have hpushed := queueMass_perm hp
  simp only [queueMass, mergeEntry] at *
  omega

/-- One exact source heap loop preserves distinct minima for arbitrary heap
layouts, including layouts changed by heap push and pop operations. -/
theorem heap_step_unique {order : Nat} {queue : List Entry} {left right : Entry}
    {afterLeft tail pushed : List Entry} (hu : UniqueMinima queue)
    (hl : Pop queue left afterLeft) (hr : Pop afterLeft right tail)
    (hp : pushed.Perm (mergeEntry order left right :: tail)) : UniqueMinima pushed := by
  have huLR := uniqueMinima_perm hu
    (hl.permutation.trans (hr.permutation.cons left))
  exact uniqueMinima_perm (merge_unique order left right tail huLR) hp.symm

/-- Initial mass includes every frequency once; filtering zero-frequency
leaves changes neither the mass nor the machine integer obligation. -/
theorem seedEntries_mass (weights : UInt8 → Nat) (order : Nat) (bytes : List UInt8) :
    queueMass (seedEntries weights order bytes) = (bytes.map weights).sum := by
  induction bytes generalizing order with
  | nil => rfl
  | cons a tail ih =>
    simp only [seedEntries]
    split
    · simp only [queueMass, List.map_cons, List.sum_cons, ih]
    · rename_i hz
      have hw : weights a = 0 := by omega
      simp only [List.map_cons, List.sum_cons, hw, Nat.zero_add, ih]

theorem initial_mass (weights : UInt8 → Nat) :
    queueMass (seedEntries weights 0 alphabet) = (alphabet.map weights).sum :=
  seedEntries_mass weights 0 alphabet

/-- Every pair of distinct live heap entries has distinct minima, so Python
never has to compare heterogeneous tree payloads to choose between them. -/
theorem live_minima_distinct {queue : List Entry} (hu : UniqueMinima queue)
    {x y : Entry} (hx : x ∈ queue) (hy : y ∈ queue) (hne : x ≠ y) :
    x.minimum ≠ y.minimum := fun he => hne (unique_minimum hu hx hy he)

/-- The actual Rust key and the Python first-two-component key agree on every
pair of distinct live entries, throughout all invariant-preserving merges. -/
theorem live_rust_python_key (queue : List Entry) (hu : UniqueMinima queue)
    (x y : Entry) (hx : x ∈ queue) (hy : y ∈ queue) (hne : x ≠ y) :
    x.before y = true ↔ PairLE x y := by
  rw [before_iff]
  exact distinct_minima_key_iff x y (live_minima_distinct hu hx hy hne)

/-- Literal short-circuit tuple comparison agrees in the two source languages
for every different pair of live entries, even if their Python payloads cannot
be compared at all. -/
theorem live_python_tuple_comparison (payloadLess : Entry → Entry → Option Bool)
    (queue : List Entry) (hu : UniqueMinima queue) (x y : Entry)
    (hx : x ∈ queue) (hy : y ∈ queue) (hne : x ≠ y) :
    pythonTupleLess payloadLess x y = some (x.before y) := by
  have hd := live_minima_distinct hu hx hy hne
  rw [python_payload_unreachable payloadLess x y hd, rustTupleLess_eq_before x y hd]

end HeapRefinement
end GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman
