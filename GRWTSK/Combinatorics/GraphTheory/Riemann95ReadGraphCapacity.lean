/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Cryptids.Semantics.Riemann95
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


private theorem path_of_native_steps {start finish : Configuration} {n : ℕ}
    (trace : Riemann95.nSteps n start = some finish) :
    ∃ word, WordPath readGraph start word finish := by
  induction n generalizing start with
  | zero =>
    cases Option.some.inj trace
    exact ⟨[], .nil _⟩
  | succ n ih =>
    rw [Riemann95.nSteps] at trace
    cases edge : step Riemann95.machine start with
    | none => simp [edge] at trace
    | some next =>
      obtain ⟨word, path⟩ := ih (by simpa only [edge, Option.bind_some] using trace)
      exact ⟨start.tape.head :: word, .cons _ _ ⟨rfl, edge⟩ path⟩

private theorem native_destination_unique {start a b : Configuration} {word : List Read}
    (x : WordPath readGraph start word a) (y : WordPath readGraph start word b) : a = b := by
  induction x generalizing b with
  | nil => cases y; rfl
  | cons label word edge tail ih =>
    cases y with
    | cons _ _ other rest =>
      obtain rfl := Option.some.inj (edge.2.symm.trans other.2)
      exact ih rest

private def scanTape (left : ListBlank Read) (right : List Read) : Tape Read :=
  Tape.mk' left (ListBlank.mk right)

private theorem scan31_marker (n : ℕ) (left : ListBlank Read) (rest : List Read) :
    ∃ finish, WordPath readGraph
      ⟨31, scanTape left (List.replicate n 0 ++ 1 :: rest)⟩
      (List.replicate n 0 ++ [1]) finish := by
  induction n generalizing left with
  | zero =>
    exact ⟨⟨54, scanTape (left.cons 0) rest⟩,
      .cons 1 [] ⟨rfl, rfl⟩ (.nil _)⟩
  | succ n ih =>
    obtain ⟨finish, path⟩ := ih (left.cons 1)
    rw [List.replicate_succ, List.cons_append, List.cons_append]
    exact ⟨finish, .cons 0 _ ⟨rfl, rfl⟩ path⟩

/-- The actual physical root reads its entire pad as zeros and then
reads the delimiter one. No claim about the remaining register tape is needed. -/
theorem physical_root_reads_pad (n : ℕ) (bank : List ℕ) :
    ∃ finish, WordPath readGraph (Riemann95.Physical.rootCfg (n + 2) [] bank)
      (List.replicate (n + 2) 0 ++ [1]) finish := by
  let left : ListBlank Read := ListBlank.cons 1 default
  let rest := 0 :: Semantics.Riemann.Layer1.encodeRegs bank
  obtain ⟨finish, path⟩ := scan31_marker n ((left.cons 0).cons 0) rest
  refine ⟨finish, ?_⟩
  simp only [Riemann95.Physical.rootCfg, List.length_nil, Nat.sub_zero, List.nil_append,
    List.replicate_succ, List.cons_append, List.append_assoc, List.nil_append]
  exact .cons 0 _ ⟨rfl, rfl⟩ (.cons 0 _ ⟨rfl, rfl⟩ path)

private theorem blank_reaches_padded_root (nonhalt : ¬ ConjectureMachines.BundledMachine.Halts Riemann95.candidate)
    (stage : ℕ) :
    ∃ pad ≥ stage + 21, ∃ bank time,
      Riemann95.nSteps time (init : Configuration) =
        some (Riemann95.Physical.rootCfg pad [] ([0,0,0,stage,0] ++ bank)) := by
  induction stage with
  | zero =>
    exact ⟨22, by decide, Riemann95.initialExtra, 3634,
      by simpa only [Riemann95.Physical.initialRoot_eq_rootCfg, Riemann95.initialRegs] using
        Riemann95.BootCertificate.boot_reaches_initialRoot⟩
  | succ stage ih =>
    obtain ⟨pad, room, bank, time, reached⟩ := ih
    have safe : ¬ Riemann120.ShuniaCounterexample (stage + 2) :=
      fun bad => nonhalt (Riemann95.halts_candidate_iff_counterexample.mpr ⟨stage, bad⟩)
    obtain ⟨nextPad, grew, ticks, _, extra, trace⟩ :=
      (Riemann95.physical_stage_outcomes stage pad room bank).1 safe
    refine ⟨nextPad, by omega, extra, time + ticks, ?_⟩
    rw [Riemann95.Dispatch.nSteps_composition, reached, Option.bind_some]
    exact trace

/-- Any exact rooted graph for the native blank-start read prefixes
would force the native machine to halt. If it runs forever, its exact
physical roots expose arbitrarily long zero runs followed by one. -/
theorem halts_of_finite_exact_rooted_read_graph {V : Type*} [Fintype V]
    (G : LabeledGraph V Read) (root : V)
    (exactRoot : ∀ word, (∃ t, WordPath G root word t) ↔ ∃ d, WordPath readGraph init word d) :
    ConjectureMachines.BundledMachine.Halts Riemann95.candidate := by
  classical
  by_contra nonhalt
  obtain ⟨pad, room, bank, time, reached⟩ :=
    blank_reaches_padded_root nonhalt (Fintype.card V)
  let c := Riemann95.Physical.rootCfg pad [] ([0,0,0,Fintype.card V,0] ++ bank)
  obtain ⟨entryWord, entry⟩ := path_of_native_steps reached
  obtain ⟨n, pEq⟩ : ∃ n, pad = n + 2 := ⟨pad - 2, by omega⟩
  have readPad : ∃ fin, WordPath readGraph c (List.replicate pad 0 ++ [1]) fin := by
    unfold c
    rw [pEq]
    exact physical_root_reads_pad _ _
  obtain ⟨finish, native⟩ := readPad
  obtain ⟨target, whole⟩ := (exactRoot _).2 ⟨finish, wordPath_append entry native⟩
  obtain ⟨entryVertex, entryPath, tail⟩ := wordPath_split_append G _ _ whole
  have cuts (i : Fin (pad + 1)) :
      ∃ v, WordPath G entryVertex (List.replicate i.val 0) v ∧
        WordPath G v (List.replicate (pad - i.val) 0 ++ [1]) target := by
    have split : pad = i.val + (pad - i.val) := by omega
    have ht : WordPath G entryVertex
        (List.replicate i.val 0 ++ (List.replicate (pad - i.val) 0 ++ [1])) target := by
      rw [← List.append_assoc, ← List.replicate_add, ← split]
      exact tail
    exact wordPath_split_append G _ _ ht
  choose vertex cut using cuts
  have distinguish (i j : Fin (pad + 1)) (lt : i < j) : vertex i ≠ vertex j := by
    intro same
    have first := (cut i).1
    rw [same] at first
    let count := i.val + (pad - j.val)
    have short : count < pad := by
      have less : i.val < j.val := lt
      dsimp [count]
      omega
    have pumped : WordPath G root (entryWord ++ (List.replicate count 0 ++ [1])) target := by
      have splice := wordPath_append entryPath (wordPath_append first (cut j).2)
      simpa only [count, List.replicate_add, List.append_assoc] using splice
    obtain ⟨dest, impossible⟩ := (exactRoot _).mp ⟨target, pumped⟩
    obtain ⟨middle, before, after⟩ := wordPath_split_append readGraph _ _ impossible
    have middleEq := native_destination_unique before entry
    subst middle
    have sameWord := forced_prefix (G := readGraph)
      (fun ha hb => ⟨ha.1.trans hb.1.symm, Option.some.inj (ha.2.symm.trans hb.2)⟩)
      after native (by simp; omega)
    have atMarker := congrArg (fun word : List Read => word[count]?) sameWord
    rw [List.getElem?_append_right (by simp), List.length_replicate, Nat.sub_self] at atMarker
    rw [List.getElem?_take_of_lt (by simp), List.getElem?_append_left (by simpa using short),
      List.getElem?_replicate_of_lt short] at atMarker
    exact (by decide : (some (1 : Read)) ≠ some 0) atMarker
  have inj : Function.Injective vertex := by
    intro i j same
    rcases lt_trichotomy i j with lt | eq | gt
    · exact (distinguish i j lt same).elim
    · exact eq
    · exact (distinguish j i gt same.symm).elim
  have big : pad + 1 ≤ Fintype.card V := by
    simpa using Fintype.card_le_of_injective vertex inj
  omega

/-- Exact finite presentation of the native blank read prefixes would refute RH. -/
theorem not_riemannHypothesis_of_finite_exact_rooted_read_graph {V : Type*} [Fintype V]
    (G : LabeledGraph V Read) (root : V)
    (exactRoot : ∀ word, (∃ t, WordPath G root word t) ↔ ∃ d, WordPath readGraph init word d) :
    ¬ RiemannHypothesis :=
  Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis.mp
    (halts_of_finite_exact_rooted_read_graph G root exactRoot)

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Riemann95ReadGraphCapacity
