/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.DynamicalSystemsAndErgodicTheory.ExactSoficLanguageCover

/-!
# Exact capacity for a rooted singleton prefix language

For an infinite trace, a rooted graph with at most `b` vertices presents
exactly its finite prefixes if and only if two of its first `b + 1` tails
agree. The graph may have nondeterministic edges. Agreement gives a finite
path followed by a loop. In the reverse direction, one sufficiently long
path simultaneously tests all proposed equalities of visited vertices.

A period in the read labels does not assert recurrence of source states.
-/

set_option autoImplicit false

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficSingletonPrefixCapacity

open ExactSoficLanguageCover

universe u v

variable {A : Type u} {V : Type v}

def tracePrefix (trace : ℕ → A) (n : ℕ) : List A :=
  List.ofFn fun i : Fin n => trace i

def ExactRoot (G : LabeledGraph V A) (root : V) (trace : ℕ → A) : Prop :=
  ∀ word, (∃ finish, WordPath G root word finish) ↔ word = tracePrefix trace word.length

private theorem tracePrefix_succ (trace : ℕ → A) (n : ℕ) :
    tracePrefix trace (n + 1) = trace 0 :: tracePrefix (fun k => trace (k + 1)) n := by
  simp [tracePrefix, List.ofFn_succ]

private theorem tracePrefix_append (trace : ℕ → A) (i n : ℕ) :
    tracePrefix trace (i + n) = tracePrefix trace i ++ tracePrefix (fun k => trace (i + k)) n := by
  induction i generalizing trace with
  | zero => simp [tracePrefix]
  | succ i ih =>
    rw [show i + 1 + n = (i + n) + 1 by omega, tracePrefix_succ, tracePrefix_succ, ih]
    simp [tracePrefix, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]

private theorem cuts {G : LabeledGraph V A} {s t : V} {word : List A}
    (path : WordPath G s word t) :
    ∃ visit : ℕ → V, ∀ k ≤ word.length,
      WordPath G s (word.take k) (visit k) ∧ WordPath G (visit k) (word.drop k) t := by
  induction path with
  | nil s =>
    refine ⟨fun _ => s, ?_⟩
    intro k _
    exact ⟨by simpa using (WordPath.nil s : WordPath G s [] s),
      by simpa using (WordPath.nil s : WordPath G s [] s)⟩
  | @cons s t u a word edge path ih =>
    obtain ⟨visit, split⟩ := ih
    refine ⟨(fun | 0 => s | k + 1 => visit k), ?_⟩
    intro k bound
    cases k with
    | zero => exact ⟨.nil s, .cons a word edge path⟩
    | succ k =>
      obtain ⟨before, after⟩ := split k (by simpa using bound)
      exact ⟨.cons a (word.take k) edge before, after⟩

/-- A chosen finite observation can witness a lower bound without proving
that the source ever runs farther. Distinguishing reads must occur within
this very word, after each pair of candidate cut positions. -/
theorem card_ge_of_distinguished_cuts [Fintype V]
    {G : LabeledGraph V A} {root finish : V} {trace : ℕ → A} {n b : ℕ}
    (bounds : b ≤ n)
    (run : WordPath G root (tracePrefix trace n) finish)
    (sound : ∀ {word : List A} {t : V}, WordPath G root word t →
      word.length ≤ n → word = tracePrefix trace word.length)
    (different : ∀ i j, i < j → j ≤ b →
      ∃ k, j + k < n ∧ trace (i + k) ≠ trace (j + k)) :
    b + 1 ≤ Fintype.card V := by
  have length_prefix (f : ℕ → A) (m : ℕ) : (tracePrefix f m).length = m := by simp [tracePrefix]
  have split (k : ℕ) (h : k ≤ n) :
      tracePrefix trace n = tracePrefix trace k ++ tracePrefix (fun l => trace (k + l)) (n - k) := by
    have add : k + (n - k) = n := by omega
    exact (congrArg (tracePrefix trace) add).symm.trans (tracePrefix_append trace k (n - k))
  obtain ⟨visit, splitPath⟩ := cuts run
  have atCut (k : ℕ) (h : k ≤ n) :
      WordPath G root (tracePrefix trace k) (visit k) ∧
        WordPath G (visit k) (tracePrefix (fun l => trace (k + l)) (n - k)) finish := by
    have hk : k ≤ (tracePrefix trace n).length := by simpa only [length_prefix] using h
    specialize splitPath k hk
    rw [split k h] at splitPath
    simpa [List.take_append_of_le_length, List.drop_append_of_le_length, length_prefix] using splitPath
  let f : Fin (b + 1) → V := fun k => visit k
  have separated (i j : Fin (b + 1)) (ordered : i < j) : f i ≠ f j := by
    intro same
    change visit i.val = visit j.val at same
    have ib : i.val ≤ b := by have := i.isLt; omega
    have jb : j.val ≤ b := by have := j.isLt; omega
    obtain ⟨k, beforeEnd, differs⟩ := different i j ordered jb
    have left := (atCut i (ib.trans bounds)).1
    have right := (atCut j (jb.trans bounds)).2
    rw [same] at left
    have equality := sound (wordPath_append left right) (by
      rw [List.length_append, length_prefix, length_prefix]
      have : i.val < j.val := ordered
      omega)
    rw [List.length_append, length_prefix, length_prefix, tracePrefix_append] at equality
    have tails := List.append_cancel_left equality
    have atLetter := congrArg (fun w : List A => w[k]?) tails
    have inside : k < n - j.val := by omega
    simp [tracePrefix, inside] at atLetter
    exact differs atLetter.symm
  have injective : Function.Injective f := by
    intro i j same
    rcases lt_trichotomy i j with lt | eq | gt
    · exact (separated i j lt same).elim
    · exact eq
    · exact (separated j i gt same.symm).elim
  simpa using Fintype.card_le_of_injective f injective

/-- A marker at cut `b` that differs from every shorter translate
distinguishes all pairs among the first `b + 1` cuts. -/
theorem distinguished_cuts_of_marker {trace : ℕ → A} {b m : ℕ}
    (separates : ∀ j < b, ∃ k < m, trace (j + k) ≠ trace (b + k)) :
    ∀ i j, i < j → j ≤ b → ∃ k, j + k < b + m ∧ trace (i + k) ≠ trace (j + k) := by
  intro i j less bound
  obtain ⟨k, hk, different⟩ := separates (b - j + i) (by omega)
  refine ⟨b - j + k, by omega, ?_⟩
  rwa [show i + (b - j + k) = b - j + i + k by omega, show j + (b - j + k) = b + k by omega]

/-- A source with a unique labeled successor fixes the read prefix at
every length. Agreement up to the shorter length requires only a finite run. -/
theorem forced_prefix {G : LabeledGraph V A}
    (unique : ∀ {s t u : V} {a b : A}, G.edge s a t → G.edge s b u → a = b ∧ t = u)
    {s t u : V} {small large : List A}
    (first : WordPath G s small t) (second : WordPath G s large u)
    (length_le : small.length ≤ large.length) : small = large.take small.length := by
  induction first generalizing large u with
  | nil _ => rfl
  | cons a word edge _ ih =>
    cases second with
    | nil => simp at length_le
    | cons b rest next tail =>
      obtain ⟨rfl, rfl⟩ := unique edge next
      exact congrArg (List.cons a) (ih tail (by simpa using length_le))

/-- If a prefix language is exact on a finite graph, its infinite read
trace has equal tails at two positions no later than the graph size. -/
theorem equal_tails_of_exactRoot [Fintype V]
    {G : LabeledGraph V A} {root : V} {trace : ℕ → A} (exactRoot : ExactRoot G root trace) :
    ∃ i j, i < j ∧ j ≤ Fintype.card V ∧ ∀ k, trace (i + k) = trace (j + k) := by
  classical
  by_contra h
  push Not at h
  let b := Fintype.card V
  have chooseDiff (ij : Fin (b + 1) × Fin (b + 1)) :
      ij.1.val < ij.2.val → ∃ k, trace (ij.1.val + k) ≠ trace (ij.2.val + k) :=
    fun less => h _ _ less (by have := ij.2.isLt; omega)
  let lag (ij : Fin (b + 1) × Fin (b + 1)) : ℕ :=
    if less : ij.1.val < ij.2.val then ij.2.val + Classical.choose (chooseDiff ij less) + 1 else 0
  let n := max b (Finset.univ.sup lag)
  have bound : b ≤ n := le_max_left _ _
  obtain ⟨finish, path⟩ := (exactRoot (tracePrefix trace n)).2 (by simp [tracePrefix])
  have tooMany := card_ge_of_distinguished_cuts bound path
    (fun p _ => (exactRoot _).1 ⟨_, p⟩) (by
      intro i j less jBound
      let ij : Fin (b + 1) × Fin (b + 1) := (⟨i, by omega⟩, ⟨j, by omega⟩)
      have hs : lag ij ≤ Finset.univ.sup lag := Finset.le_sup (Finset.mem_univ ij)
      have hs' : lag ij ≤ n := hs.trans (le_max_right _ _)
      have hless : ij.1.val < ij.2.val := less
      rw [show lag ij = j + Classical.choose (chooseDiff ij hless) + 1 by
        simp only [lag, dite_eq_left hless]; rfl] at hs'
      exact ⟨Classical.choose (chooseDiff ij hless), by omega,
        Classical.choose_spec (chooseDiff ij hless)⟩)
  change b + 1 ≤ b at tooMany
  omega


/-- Equal tails give an exact graph with precisely `j` positions. Its
last edge leads back to `i`, and every vertex has a unique labeled successor. -/
theorem exactRoot_of_equal_tails {trace : ℕ → A} {i j : ℕ}
    (ordered : i < j) (tails : ∀ k, trace (i + k) = trace (j + k)) :
    ∃ (G : LabeledGraph (Fin j) A) (root : Fin j), ExactRoot G root trace := by
  let next (s : Fin j) : Fin j :=
    if h : s.val + 1 < j then ⟨s.val + 1, h⟩ else ⟨i, ordered⟩
  let G : LabeledGraph (Fin j) A := ⟨fun s a t => a = trace s.val ∧ t = next s⟩
  have next_tail (s : Fin j) (k : ℕ) : trace ((next s).val + k) = trace (s.val + 1 + k) := by
    by_cases h : s.val + 1 < j
    · simp [next, h]
    · have e : s.val + 1 = j := by have := s.isLt; omega
      simpa [next, h, e] using tails k
  have path_iff (w : List A) (s : Fin j) :
      (∃ t, WordPath G s w t) ↔ w = tracePrefix (fun k => trace (s.val + k)) w.length := by
    induction w generalizing s with
    | nil =>
      simp only [tracePrefix, List.length_nil, List.ofFn_zero, iff_true]
      exact ⟨s, .nil s⟩
    | cons a w ih =>
      have path_cons : (∃ t, WordPath G s (a :: w) t) ↔
          a = trace s.val ∧ ∃ t, WordPath G (next s) w t := by
        constructor
        · rintro ⟨t, hp⟩
          cases hp with
          | cons _ _ edge tail =>
            change a = trace s.val ∧ _ = next s at edge
            exact ⟨edge.1, _, edge.2 ▸ tail⟩
        · rintro ⟨eq, t, tail⟩
          exact ⟨t, .cons a w ⟨eq, rfl⟩ tail⟩
      rw [path_cons, ih, List.length_cons, tracePrefix_succ]
      simp only [Nat.add_zero, List.cons.injEq]
      have e : (fun k => trace ((next s).val + k)) = fun k => trace (s.val + (k + 1)) := by
        funext k
        simpa [Nat.add_assoc, Nat.add_comm 1 k] using next_tail s k
      rw [e]
  let root : Fin j := ⟨0, by omega⟩
  refine ⟨G, root, fun word => ?_⟩
  simpa [root] using path_iff word root

/-- Quantitative characterization valid even for nondeterministic candidates. -/
theorem exactRoot_capacity_iff {trace : ℕ → A} (b : ℕ) :
    (∃ (n : ℕ) (_ : n ≤ b) (G : LabeledGraph (Fin n) A) (root : Fin n),
      ExactRoot G root trace) ↔
    ∃ i j, i < j ∧ j ≤ b ∧ ∀ k, trace (i + k) = trace (j + k) := by
  constructor
  · rintro ⟨n, hn, G, root, exactRoot⟩
    obtain ⟨i, j, order, bound, tails⟩ := equal_tails_of_exactRoot exactRoot
    exact ⟨i, j, order, (by simpa using bound : j ≤ n).trans hn, tails⟩
  · rintro ⟨i, j, order, bound, tails⟩
    obtain ⟨G, root, exactRoot⟩ := exactRoot_of_equal_tails order tails
    exact ⟨j, bound, G, root, exactRoot⟩

/-- A single true symbol at position b requires exactly b+2 vertices.
The final vertex continuously emits false. This tests a long transient
even though the ultimate period is one. -/
theorem single_marker_capacity_iff (b cap : ℕ) :
    (∃ (n : ℕ) (_ : n ≤ cap) (G : LabeledGraph (Fin n) Bool) (root : Fin n),
      ExactRoot G root (fun k => decide (k = b))) ↔ b + 2 ≤ cap := by
  rw [exactRoot_capacity_iff]
  constructor
  · rintro ⟨i, j, order, bound, same⟩
    have after : b < i := by
      by_contra h
      have first : i + (b - i) = b := by omega
      have other : j + (b - i) ≠ b := by omega
      have clash := same (b - i)
      simp [first, other] at clash
    omega
  · intro room
    refine ⟨b + 1, b + 2, by omega, room, ?_⟩
    intro k
    have left : b + 1 + k ≠ b := by omega
    have right : b + 2 + k ≠ b := by omega
    simp [left, right]

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficSingletonPrefixCapacity
