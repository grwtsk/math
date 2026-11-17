/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Cryptids.Riemann95Definition
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficSingletonPrefixCapacity

/-!
# Native read-prefix capacity of Riemann95

The finite test observes the pinned blank-start run with the original tape
executor. Among the windows of length 22 starting at positions 0–4096
in the first 4118 reads, the last window is distinct from all earlier ones.
A rooted labeled graph that admits this observation and whose shorter words
are all executable from blank must have at least 4097 vertices.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Riemann95ReadGraphCapacity

open ConjectureMachines
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics
open ExactSoficLanguageCover SoficSingletonPrefixCapacity

abbrev Configuration := Cfg 95 2
abbrev Read := Fin 2

def readGraph : LabeledGraph Configuration Read :=
  ⟨fun c a d => a = c.tape.head ∧ step Riemann95.machine c = some d⟩

/-- Observe exactly `n` successful transitions. A halted observation fails. -/
def observe : ℕ → Configuration → Option (List Read)
  | 0, _ => some []
  | n + 1, c =>
    (step Riemann95.machine c).bind fun d => (observe n d).map (List.cons c.tape.head)

theorem observe_iff_path (n : ℕ) (c : Configuration) (w : List Read) :
    observe n c = some w ↔ w.length = n ∧ ∃ d, WordPath readGraph c w d := by
  induction n generalizing c w with
  | zero =>
    cases w with
    | nil => exact ⟨fun _ => ⟨rfl, c, .nil c⟩, fun _ => rfl⟩
    | cons a w => simp [observe]
  | succ n ih =>
    cases w with
    | nil =>
      cases h : step Riemann95.machine c <;> simp [observe, h]
    | cons a w =>
      constructor
      · intro result
        cases hs : step Riemann95.machine c with
        | none => simp [observe, hs] at result
        | some next =>
          cases hr : observe n next with
          | none => simp [observe, hs, hr] at result
          | some u =>
            have eq : c.tape.head = a ∧ u = w := by simpa [observe, hs, hr] using result
            obtain ⟨ha, rfl⟩ := eq
            obtain ⟨len, d, tail⟩ := (ih next u).1 hr
            exact ⟨by simp [len], d, .cons a u ⟨ha.symm, hs⟩ tail⟩
      · rintro ⟨len, d, hp⟩
        cases hp with
        | cons a w edge tail =>
          obtain ⟨ha, hs⟩ := edge
          have h := (ih _ w).2 ⟨by simpa using len, d, tail⟩
          simp [observe, hs, h, ha]

/-- Compare a marker with the first `n` windows in one forward pass. -/
private def avoids (marker : List Read) : ℕ → List Read → Bool
  | 0, _ => true
  | n + 1, w => decide (marker ≠ w.take marker.length) && avoids marker n w.tail

private theorem marker_ne {marker w : List Read} {n : ℕ}
    (checked : avoids marker n w = true) {j : ℕ} (before : j < n) :
    marker ≠ (w.drop j).take marker.length := by
  induction n generalizing w j with
  | zero => omega
  | succ n ih =>
    have eq := Bool.and_eq_true_iff.mp checked
    cases j with
    | zero => exact of_decide_eq_true eq.1
    | succ j =>
      rw [show j + 1 = 1 + j by omega, ← List.drop_drop, List.drop_one]
      exact ih eq.2 (by omega)

private def checkMarker (w : List Read) : Bool :=
  avoids ((w.drop 4096).take 22) 4096 w

set_option maxRecDepth 60000 in
set_option maxHeartbeats 60000000 in
/-- Typed certificate evaluated by the kernel from the original transition
table and tape executor. It checks all 4096 earlier starting positions. -/
theorem native_marker :
    ∃ w, observe 4118 (init : Configuration) = some w ∧ checkMarker w = true := by
  have checked : ((observe 4118 (init : Configuration)).map checkMarker) = some true := by
    decide +kernel
  cases h : observe 4118 (init : Configuration) with
  | none => simp [h] at checked
  | some w => exact ⟨w, rfl, by simpa [h] using checked⟩

private theorem window_eq_prefix (w : List Read) (j m : ℕ) (fits : j + m ≤ w.length) :
    (w.drop j).take m = tracePrefix (fun k => w[j + k]?.getD 0) m := by
  apply List.ext_getElem
  · simp [tracePrefix, Nat.min_eq_left (show m ≤ w.length - j by omega)]
  · intro k hk hk'
    have kin : j + k < w.length := by simp [tracePrefix] at hk'; omega
    simp [tracePrefix, List.getElem?_eq_getElem kin]

/-- Every graph with at most 4096 vertices that admits the checked native
observation also admits a shorter successful-read word rejected by the source. -/
theorem small_graph_admits_spurious_word {V : Type*} [Fintype V]
    (G : LabeledGraph V Read) (root : V) (small : Fintype.card V ≤ 4096)
    (coverage : ∀ word, (∃ d, WordPath readGraph init word d) →
      ∃ t, WordPath G root word t) :
    ∃ word, word.length ≤ 4118 ∧ (∃ t, WordPath G root word t) ∧
      ¬ ∃ d, WordPath readGraph init word d := by
  classical
  obtain ⟨w, observed, marker⟩ := native_marker
  obtain ⟨len, d, run⟩ := (observe_iff_path _ _ _).1 observed
  let trace (k : ℕ) := w[k]?.getD 0
  have word_eq : w = tracePrefix trace 4118 := by
    simpa [trace, List.take_of_length_le len.le] using window_eq_prefix w 0 4118 (by omega)
  have markerLen : ((w.drop 4096).take 22).length = 22 := by simp [len]
  have different : ∀ j < 4096, ∃ k < 22, trace (j + k) ≠ trace (4096 + k) := by
    intro j before
    by_contra h
    push Not at h
    have bad := marker_ne marker before
    rw [markerLen, window_eq_prefix w j 22 (by omega)] at bad
    apply bad
    rw [window_eq_prefix w 4096 22 (by omega)]
    exact congrArg (List.ofFn (n := 22)) (funext (fun k => (h k k.isLt).symm))
  obtain ⟨t, admitted⟩ := coverage w ⟨d, run⟩
  rw [word_eq] at admitted
  by_contra h
  have sound {word : List Read} {finish : V} (gp : WordPath G root word finish)
      (size : word.length ≤ 4118) : word = tracePrefix trace word.length := by
    have lift : ∃ c, WordPath readGraph init word c := by
      by_contra rejected
      exact h ⟨word, size, ⟨finish, gp⟩, rejected⟩
    obtain ⟨c, native⟩ := lift
    calc
      word = w.take word.length := forced_prefix (G := readGraph)
        (fun ha hb => ⟨ha.1.trans hb.1.symm, Option.some.inj (ha.2.symm.trans hb.2)⟩)
        native run (by omega)
      _ = _ := by simpa [trace] using window_eq_prefix w 0 word.length (by omega)
  have large := card_ge_of_distinguished_cuts (by decide : 4096 ≤ 4118)
    admitted sound (distinguished_cuts_of_marker different)
  omega

theorem rooted_graph_capacity {V : Type*} [Fintype V] (G : LabeledGraph V Read) (root : V)
    (exactRoot : ∀ word, (∃ t, WordPath G root word t) ↔ ∃ d, WordPath readGraph init word d) :
    4097 ≤ Fintype.card V := by
  by_contra h
  obtain ⟨word, _, hp, impossible⟩ := small_graph_admits_spurious_word G root (by omega)
    (fun word => (exactRoot word).2)
  exact impossible ((exactRoot word).1 hp)

private theorem splitAt {V : Type*} {G : LabeledGraph V Read}
    {root finish : V} {word : List Read} (path : WordPath G root word finish) (k : ℕ) :
    ∃ middle, WordPath G root (word.take k) middle ∧ WordPath G middle (word.drop k) finish :=
  wordPath_split_append G _ _ (by simpa only [List.take_append_drop] using path)

/-- A terminal native read prefix of length n requires n+1 distinct cuts.
A repeated vertex would admit a longer word, whose (n+1)-prefix is already
rejected by the native executor. The labels need no distinguishing marker. -/
theorem halted_rooted_graph_capacity {V : Type*} [Fintype V]
    (G : LabeledGraph V Read) (root : V) {n : ℕ} {word : List Read}
    (observed : observe n (init : Configuration) = some word)
    (stopped : observe (n + 1) (init : Configuration) = none)
    (admits : ∃ finish, WordPath G root word finish)
    (sound : ∀ w : List Read, w.length = n + 1 →
      (∃ t, WordPath G root w t) → ∃ d, WordPath readGraph init w d) :
    n + 1 ≤ Fintype.card V := by
  classical
  obtain ⟨finish, path⟩ := admits
  have len := (observe_iff_path n _ word).mp observed |>.1
  have allCuts (k : Fin (n + 1)) :
      ∃ middle, WordPath G root (word.take k.val) middle ∧
        WordPath G middle (word.drop k.val) finish := splitAt path k.val
  choose visit paths using allCuts
  have separates (i j : Fin (n + 1)) (ordered : i < j) : visit i ≠ visit j := by
    intro same
    have before := (paths j).1
    rw [← same] at before
    have longer := wordPath_append before (paths i).2
    let extended := word.take j.val ++ word.drop i.val
    have hi : i.val < j.val := ordered
    have hj := j.isLt
    have hlen : n + 1 ≤ extended.length := by
      simp only [extended, List.length_append, List.length_take, List.length_drop, len]
      rw [Nat.min_eq_left (by omega : j.val ≤ n)]
      omega
    obtain ⟨mid, tested, _⟩ := splitAt longer (n + 1)
    have size : (extended.take (n + 1)).length = n + 1 := by
      rw [List.length_take, Nat.min_eq_left hlen]
    have native := sound _ size ⟨mid, tested⟩
    have result := (observe_iff_path (n + 1) _ _).mpr ⟨size, native⟩
    rw [stopped] at result
    cases result
  have injective : Function.Injective visit := by
    intro i j same
    rcases lt_trichotomy i j with lt | eq | gt
    · exact (separates i j lt same).elim
    · exact eq
    · exact (separates j i gt same.symm).elim
  simpa using Fintype.card_le_of_injective visit injective

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Riemann95ReadGraphCapacity
