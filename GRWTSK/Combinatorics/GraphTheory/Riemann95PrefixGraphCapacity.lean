/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.Combinatorics.GraphTheory.Riemann95ConfigurationLanguage

/-!
# A finite capacity obstruction for the rooted Riemann95 read language

The native blank-start source emits at most one prefix of each length.
A small graph that admits a long prefix has a repeated vertex among the
first graph-capacity-plus-one visit positions. Deleting the intervening
loop gives another word admitted by that graph. An exact graph must send
that shorter word back to the native prefix of the same length.

The first 263 native reads suffice to rule out every rooted graph with at
most 256 vertices, including nondeterministic graphs and the control table.
This bound uses the scanned-symbol language from the blank root.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Riemann95PrefixGraphCapacity

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Riemann95ConfigurationLanguage

/-- For each word cut, record its vertex and the two genuine partial paths. -/
private theorem cuts_of_wordPath {V A : Type*} {G : LabeledGraph V A}
    {start finish : V} {word : List A} (path : WordPath G start word finish) :
    ∃ visit : ℕ → V, ∀ i ≤ word.length,
      WordPath G start (word.take i) (visit i) ∧
      WordPath G (visit i) (word.drop i) finish := by
  induction path with
  | nil s =>
    refine ⟨fun _ => s, ?_⟩
    intro i _
    simp only [List.take_nil, List.drop_nil]
    exact ⟨.nil s, .nil s⟩
  | @cons s t u bit word edge tail ih =>
    obtain ⟨visit, cuts⟩ := ih
    let extended : ℕ → V
      | 0 => s
      | i + 1 => visit i
    refine ⟨extended, ?_⟩
    intro i h
    cases i with
    | zero => exact ⟨.nil s, .cons bit word edge tail⟩
    | succ i =>
      obtain ⟨before, after⟩ := cuts i (by simpa only [List.length_cons, Nat.succ_le_succ_iff] using h)
      exact ⟨.cons bit (word.take i) edge before, after⟩

/-- In a finite rooted graph, an admitted word can be shortened at two
different visit positions among the first `cap+1` vertices. -/
theorem shortened_path {V A : Type*} [Fintype V] {G : LabeledGraph V A}
    {start finish : V} {word : List A} (path : WordPath G start word finish)
    {cap : ℕ} (size : Fintype.card V ≤ cap) (long : cap ≤ word.length) :
    ∃ i j : ℕ, i < j ∧ j ≤ cap ∧
      WordPath G start (word.take i ++ word.drop j) finish := by
  classical
  obtain ⟨visit, cuts⟩ := cuts_of_wordPath path
  let f : Fin (cap + 1) → V := fun i => visit i.val
  have notInjective : ¬ Function.Injective f := by
    intro injective
    have h := Fintype.card_le_of_injective f injective
    rw [Fintype.card_fin] at h
    omega
  obtain ⟨a, b, same, different⟩ := Function.not_injective_iff.mp notInjective
  have splice (i j : Fin (cap + 1)) (ordered : i < j) (same : f i = f j) :
      ∃ i' j' : ℕ, i' < j' ∧ j' ≤ cap ∧
        WordPath G start (word.take i' ++ word.drop j') finish := by
    have ile : i.val ≤ cap := by have := i.isLt; omega
    have jle : j.val ≤ cap := by have := j.isLt; omega
    have before := (cuts i.val (ile.trans long)).1
    have after := (cuts j.val (jle.trans long)).2
    change visit i.val = visit j.val at same
    rw [← same] at after
    exact ⟨i.val, j.val, ordered, jle, wordPath_append before after⟩
  rcases lt_or_gt_of_ne different with ordered | ordered
  · exact splice a b ordered same
  · exact splice b a ordered same.symm

/-- Paths in a graph with a unique labeled successor have compatible words. -/
private theorem forced_prefix {V A : Type*} {G : LabeledGraph V A}
    (unique : ∀ {c d e : V} {a b : A}, G.edge c a d → G.edge c b e → a = b ∧ d = e)
    {start a b : V} {short long : List A}
    (first : WordPath G start short a) (second : WordPath G start long b)
    (size : short.length ≤ long.length) : short = long.take short.length := by
  induction first generalizing long b with
  | nil s => rfl
  | cons bit rest edge _ ih =>
    cases second with
    | nil => simp at size
    | cons other longer next _ =>
      obtain ⟨rfl, rfl⟩ := unique edge next
      have h := ih ‹WordPath G _ longer _› (by simpa only [List.length_cons, Nat.succ_le_succ_iff] using size)
      exact congrArg (List.cons bit) h

theorem native_prefix_forced {short long : List ReadSymbol} (first : Prefix short)
    (second : Prefix long) (size : short.length ≤ long.length) :
    short = long.take short.length := by
  obtain ⟨a, first⟩ := first
  obtain ⟨b, second⟩ := second
  apply forced_prefix (G := sourceGraph) _ first second size
  intro _ _ _ _ _ stepA stepB
  exact ⟨stepA.1.symm.trans stepB.1, Option.some.inj (stepA.2.symm.trans stepB.2)⟩

/-- Deleting a nonempty segment inside the first `cap` symbols shifts the
guarded tail by exactly the deletion length. -/
private theorem delete_before_tail {A : Type*} (word : List A) {i j cap : ℕ}
    (ordered : i < j) (bounded : j ≤ cap) (long : cap ≤ word.length) :
    (word.take i ++ word.drop j).length = word.length - (j - i) ∧
    (word.take i ++ word.drop j).drop (cap - (j - i)) = word.drop cap := by
  have len : (word.take i).length = i := by
    rw [List.length_take, Nat.min_eq_left (by omega)]
  have cut : (word.take i).length ≤ cap - (j - i) := by omega
  constructor
  · rw [List.length_append, len, List.length_drop]
    omega
  · rw [List.drop_append, List.drop_eq_nil_of_le cut, List.nil_append, List.drop_drop, len]
    congr 1
    omega

/-- Exact read bits of the first 263 successful steps, independently generated
from the pinned table and then checked by the native executor. -/
def bootRead263 : List ReadSymbol :=
  ("00000000001010100000100000101000001010011010000100101010101000001010101101010011" ++
    "01011000101000001011101000001000101101011000110101100100100000110010110101101000" ++
    "10100001101001100000110010111111101001100000110010110001010000110110100110000011" ++
    "00110000010101000100111").toList.map fun c => if c = '0' then 0 else 1

set_option maxRecDepth 12000 in
set_option maxHeartbeats 12000000 in
theorem bootRead263_length : bootRead263.length = 263 := by
  decide +kernel

set_option maxRecDepth 12000 in
set_option maxHeartbeats 12000000 in
theorem bootRead263_native : Prefix bootRead263 := by
  have success : (follow bootRead263 blank).isSome = true := by decide +kernel
  cases eq : follow bootRead263 blank with
  | none => simp [eq] at success
  | some finish => exact ⟨finish, (wordPath_iff_follow _ _ _).mpr eq⟩

set_option maxRecDepth 12000 in
set_option maxHeartbeats 12000000 in
/-- The seven-bit tail at position 256 differs from each of its 256 earlier
translates within this same source word. -/
theorem bootRead263_tail_separates :
    ∀ period : Fin 256,
      bootRead263.drop 256 ≠
        (bootRead263.take (bootRead263.length - (period.val + 1))).drop (256 - (period.val + 1)) := by
  decide +kernel

/-- Any graph of at most 256 vertices that admits the observed native word at
its chosen root also admits a shorter word the native source rejects. -/
theorem small_graph_admits_spurious_word {V : Type*} [Fintype V]
    (G : LabeledGraph V ReadSymbol) (root : V) (small : Fintype.card V ≤ 256)
    (admits : ∃ finish, WordPath G root bootRead263 finish) :
    ∃ word, word.length < bootRead263.length ∧
      (∃ finish, WordPath G root word finish) ∧ ¬ Prefix word := by
  obtain ⟨finish, path⟩ := admits
  have long : 256 ≤ bootRead263.length := by rw [bootRead263_length]; decide
  obtain ⟨i, j, ordered, bounded, stitched⟩ := shortened_path path small long
  obtain ⟨len, tail⟩ := delete_before_tail bootRead263 ordered bounded long
  have short : (bootRead263.take i ++ bootRead263.drop j).length < bootRead263.length := by
    rw [len]
    omega
  refine ⟨_, short, ⟨finish, stitched⟩, ?_⟩
  intro actual
  have same := native_prefix_forced actual bootRead263_native short.le
  rw [len] at same
  have shifted := congrArg (List.drop (256 - (j - i))) same
  rw [tail] at shifted
  let period : Fin 256 := ⟨j - i - 1, by omega⟩
  have lag : period.val + 1 = j - i := by dsimp [period]; omega
  exact (bootRead263_tail_separates period) (by simpa only [lag] using shifted)

/-- Every finite graph presenting the exact blank-rooted native prefix
language has at least 257 vertices. -/
theorem rooted_prefix_graph_capacity {V : Type*} [Fintype V]
    (G : LabeledGraph V ReadSymbol) (root : V)
    (exactPresentation : ∀ word, (∃ finish, WordPath G root word finish) ↔ Prefix word) :
    257 ≤ Fintype.card V := by
  by_contra h
  have small : Fintype.card V ≤ 256 := by omega
  obtain ⟨word, _, graph, impossible⟩ := small_graph_admits_spurious_word G root small
    ((exactPresentation bootRead263).mpr bootRead263_native)
  exact impossible ((exactPresentation word).mp graph)

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Riemann95PrefixGraphCapacity
