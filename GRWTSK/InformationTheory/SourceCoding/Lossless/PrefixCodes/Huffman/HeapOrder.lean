import GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.Builder

/-!
# Huffman heap keys

Rust `Tree::from_weights` stores `Reverse((weight, minimum, node_index))`.
Python `_huffman_tree` stores `(weight, minimum, tree_payload)`.  The latter
payload is not generally orderable.  The companion refinement proves distinct
live minima, so comparison stops before either third component is inspected.
This file proves key algebra and sorted-list normalization, not the semantics
of either language's heap standard library.
-/
namespace GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman
namespace HeapOrder

def KeyLE (x y : Entry) : Prop :=
  x.weight < y.weight ∨ (x.weight = y.weight ∧
    (x.minimum < y.minimum ∨ (x.minimum = y.minimum ∧ x.order ≤ y.order)))

def PairLE (x y : Entry) : Prop :=
  x.weight < y.weight ∨ (x.weight = y.weight ∧ x.minimum ≤ y.minimum)

instance (x y : Entry) : Decidable (KeyLE x y) := by unfold KeyLE; infer_instance
instance (x y : Entry) : Decidable (PairLE x y) := by unfold PairLE; infer_instance

theorem before_iff (x y : Entry) : x.before y = true ↔ KeyLE x y := by
  simp [Entry.before, KeyLE]

theorem keyLE_refl (x : Entry) : KeyLE x x := by simp [KeyLE]
theorem keyLE_total (x y : Entry) : KeyLE x y ∨ KeyLE y x := by
  unfold KeyLE
  omega

theorem keyLE_trans {x y z : Entry} (hxy : KeyLE x y) (hyz : KeyLE y z) :
    KeyLE x z := by
  unfold KeyLE at *
  omega

theorem keyLE_minimum_eq {x y : Entry} (hxy : KeyLE x y) (hyx : KeyLE y x) :
    x.minimum = y.minimum := by
  unfold KeyLE at *
  omega

/-- When live subtree minima differ, the Rust construction index and Python
payload are irrelevant: both compare just weight and minimum symbol. -/
theorem distinct_minima_key_iff (x y : Entry) (hne : x.minimum ≠ y.minimum) :
    KeyLE x y ↔ PairLE x y := by
  unfold KeyLE PairLE
  omega

/-- The key's third component may be replaced arbitrarily on distinct minima. -/
theorem third_component_irrelevant (x y : Entry) (i j : Nat)
    (hne : x.minimum ≠ y.minimum) :
    ({ x with order := i }).before ({ y with order := j }) = x.before y := by
  apply Bool.eq_iff_iff.mpr
  simp only [before_iff]
  change KeyLE { x with order := i } { y with order := j } ↔ KeyLE x y
  unfold KeyLE
  dsimp
  omega

/-- Python tuple `<` compares the first unequal field, and calls the final
payload comparison only if both numeric fields are equal. `none` models an
unorderable heterogeneous payload; the proof below permits any such function. -/
def pythonTupleLess (payloadLess : Entry → Entry → Option Bool) (x y : Entry) : Option Bool :=
  if x.weight = y.weight then
    if x.minimum = y.minimum then payloadLess x y
    else some (decide (x.minimum < y.minimum))
  else some (decide (x.weight < y.weight))

/-- Rust's ordinary tuple `Ord::lt`, before `Reverse` changes heap direction. -/
def rustTupleLess (x y : Entry) : Bool :=
  x.weight < y.weight || (x.weight == y.weight &&
    (x.minimum < y.minimum || (x.minimum == y.minimum && x.order < y.order)))

/-- The arbitrary Python payload comparator is never consulted for different
live minima; its result, exception, or inability to compare cannot matter. -/
theorem python_payload_unreachable (payloadLess : Entry → Entry → Option Bool)
    (x y : Entry) (hne : x.minimum ≠ y.minimum) :
    pythonTupleLess payloadLess x y = some (rustTupleLess x y) := by
  by_cases hw : x.weight = y.weight
  · simp [pythonTupleLess, rustTupleLess, hw, hne]
  · simp only [pythonTupleLess, hw, ↓reduceIte]
    congr 1
    apply Bool.eq_iff_iff.mpr
    simp [rustTupleLess, hw]

/-- At distinct live minima the sorted-list `≤` convention agrees with the
strict tuple comparison used by both heap libraries. -/
theorem rustTupleLess_eq_before (x y : Entry) (hne : x.minimum ≠ y.minimum) :
    rustTupleLess x y = x.before y := by
  apply Bool.eq_iff_iff.mpr
  simp only [rustTupleLess, Entry.before, Bool.or_eq_true, Bool.and_eq_true,
    decide_eq_true_eq, beq_iff_eq]
  omega

/-- Every insertion preserves the multiset, with no ordering premise. -/
theorem insertEntry_perm (entry : Entry) (queue : List Entry) :
    (insertEntry entry queue).Perm (entry :: queue) := by
  induction queue with
  | nil => exact List.Perm.refl _
  | cons head tail ih =>
    simp only [insertEntry]
    split
    · exact List.Perm.refl _
    · exact (ih.cons head).trans (List.Perm.swap entry head tail)

theorem orderEntries_perm (queue : List Entry) : (orderEntries queue).Perm queue := by
  induction queue with
  | nil => exact List.Perm.refl _
  | cons head tail ih =>
    exact (insertEntry_perm head _).trans (ih.cons head)

theorem insertEntry_sorted (entry : Entry) (queue : List Entry)
    (hs : queue.Pairwise KeyLE) : (insertEntry entry queue).Pairwise KeyLE := by
  induction queue with
  | nil => simp [insertEntry]
  | cons head tail ih =>
    obtain ⟨hh, ht⟩ := List.pairwise_cons.mp hs
    simp only [insertEntry]
    split
    · rename_i hbefore
      have heh := (before_iff entry head).mp hbefore
      apply List.pairwise_cons.mpr
      refine ⟨?_, hs⟩
      intro x hx
      rcases List.mem_cons.mp hx with rfl | hx
      · exact heh
      · exact keyLE_trans heh (hh x hx)
    · rename_i hbefore
      apply List.pairwise_cons.mpr
      refine ⟨?_, ih ht⟩
      intro x hx
      have hx' := (insertEntry_perm entry tail).subset hx
      rcases List.mem_cons.mp hx' with hxe | hx'
      · subst x
        exact (keyLE_total head entry).resolve_right
          (fun heh => hbefore ((before_iff entry head).mpr heh))
      · exact hh x hx'

theorem orderEntries_sorted (queue : List Entry) : (orderEntries queue).Pairwise KeyLE := by
  induction queue with
  | nil => simp [orderEntries]
  | cons head tail ih => exact insertEntry_sorted _ _ ih

end HeapOrder
end GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman
