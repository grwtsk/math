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

/-- On a nonhalting native run, any finite rooted graph covering every native
read prefix accepts a spurious word. The word deletes at least one and at most
the vertex count of zeros from a genuine prefix ending at a padded-root marker. -/
theorem spurious_padded_prefix_of_nonhalt_of_cover {V : Type*} [Fintype V]
    (G : LabeledGraph V Read) (root : V)
    (nonhalt : ¬ ConjectureMachines.BundledMachine.Halts Riemann95.candidate)
    (covers : ∀ word, (∃ d, WordPath readGraph init word d) → ∃ t, WordPath G root word t) :
    ∃ (entryWord : List Read) (pad count : ℕ),
      count < pad ∧ pad - count ≤ Fintype.card V ∧
      (∃ d, WordPath readGraph init (entryWord ++ (List.replicate pad 0 ++ [1])) d) ∧
      (∃ t, WordPath G root (entryWord ++ (List.replicate count 0 ++ [1])) t) ∧
      ¬ ∃ d, WordPath readGraph init (entryWord ++ (List.replicate count 0 ++ [1])) d := by
  classical
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
  have sourceWord := wordPath_append entry native
  obtain ⟨target, whole⟩ := covers _ ⟨finish, sourceWord⟩
  obtain ⟨entryVertex, entryPath, tail⟩ := wordPath_split_append G _ _ whole
  have cuts (i : Fin (Fintype.card V + 1)) :
      ∃ v, WordPath G entryVertex (List.replicate i.val 0) v ∧
        WordPath G v (List.replicate (pad - i.val) 0 ++ [1]) target := by
    have split : pad = i.val + (pad - i.val) := by omega
    have ht : WordPath G entryVertex
        (List.replicate i.val 0 ++ (List.replicate (pad - i.val) 0 ++ [1])) target := by
      rw [← List.append_assoc, ← List.replicate_add, ← split]
      exact tail
    exact wordPath_split_append G _ _ ht
  choose vertex cut using cuts
  have collision : ¬ Function.Injective vertex := by
    intro inj
    have big := Fintype.card_le_of_injective vertex inj
    simp at big
  have repeated : ∃ i j, vertex i = vertex j ∧ i ≠ j := by
    by_contra missing
    apply collision
    intro i j same
    by_contra ne
    exact missing ⟨i, j, same, ne⟩
  obtain ⟨i, j, same, ne⟩ := repeated
  suffices spliceWitness : ∀ (i j : Fin (Fintype.card V + 1)), i < j → vertex i = vertex j → _ by
    rcases lt_or_gt_of_ne ne with less | greater
    · exact spliceWitness i j less same
    · exact spliceWitness j i greater same.symm
  intro i j lt same
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
  refine ⟨entryWord, pad, count, short, ?_, ⟨finish, sourceWord⟩, ⟨target, pumped⟩, ?_⟩
  · dsimp [count]
    have bound := j.isLt
    omega
  rintro ⟨dest, impossible⟩
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
/-- Any exact rooted graph for the native blank-start read prefixes
would force the native machine to halt. -/
theorem halts_of_finite_exact_rooted_read_graph {V : Type*} [Fintype V]
    (G : LabeledGraph V Read) (root : V)
    (exactRoot : ∀ word, (∃ t, WordPath G root word t) ↔ ∃ d, WordPath readGraph init word d) :
    ConjectureMachines.BundledMachine.Halts Riemann95.candidate := by
  classical
  by_contra nonhalt
  obtain ⟨entryWord, _, count, _, _, _, accepted, rejected⟩ :=
    spurious_padded_prefix_of_nonhalt_of_cover G root nonhalt (fun word => (exactRoot word).mpr)
  exact rejected ((exactRoot (entryWord ++ (List.replicate count 0 ++ [1]))).mp accepted)

/-- Exact finite presentation of the native blank read prefixes would refute RH. -/
theorem not_riemannHypothesis_of_finite_exact_rooted_read_graph {V : Type*} [Fintype V]
    (G : LabeledGraph V Read) (root : V)
    (exactRoot : ∀ word, (∃ t, WordPath G root word t) ↔ ∃ d, WordPath readGraph init word d) :
    ¬ RiemannHypothesis :=
  Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis.mp
    (halts_of_finite_exact_rooted_read_graph G root exactRoot)


/-- Replay a certified terminal trace into a finite graph of at most
one vertex per time, with exactly the native rooted read language. -/
theorem exists_exact_read_graph_of_terminal_trace {n : ℕ} {stop : Configuration}
    (reached : Riemann95.nSteps n init = some stop)
    (terminal : step Riemann95.machine stop = none) :
    ∃ (V : Type) (finite : Fintype V) (G : LabeledGraph V Read) (root : V),
      @Fintype.card V finite ≤ n + 1 ∧
        ∀ word, (∃ t, WordPath G root word t) ↔ ∃ d, WordPath readGraph init word d := by
  classical
  have noMore : Riemann95.nSteps (n + 1) init = none := by
    rw [Riemann95.Dispatch.nSteps_composition, reached, Option.bind_some, Riemann95.nSteps, terminal]
    rfl
  have bounded {t : ℕ} {c : Configuration} (trace : Riemann95.nSteps t init = some c) : t ≤ n := by
    by_contra excess
    obtain ⟨extra, eq⟩ := Nat.exists_eq_add_of_le (by omega : n + 1 ≤ t)
    rw [eq, Riemann95.Dispatch.nSteps_composition, noMore] at trace
    cases trace
  let states := (Finset.univ : Finset (Fin (n + 1))).image
    (fun i => Riemann95.nSteps i.val init)
  let V := ↥states
  have belongs {t : ℕ} {c : Configuration} (trace : Riemann95.nSteps t init = some c) :
      some c ∈ states :=
    Finset.mem_image.mpr ⟨⟨t, by have := bounded trace; omega⟩, Finset.mem_univ _, trace⟩
  let root : V := ⟨some init, belongs (t := 0) rfl⟩
  let G : LabeledGraph V Read :=
    ⟨fun u a v => ∃ c d, u.val = some c ∧ v.val = some d ∧ readGraph.edge c a d⟩
  have sound {u v : V} {word : List Read} (walk : WordPath G u word v) :
      ∀ c, u.val = some c → ∃ d, v.val = some d ∧ WordPath readGraph c word d := by
    induction walk with
    | nil u => exact fun c hu => ⟨c, hu, .nil c⟩
    | cons a word edge _ ih =>
      intro c hu
      obtain ⟨source, next, hs, hn, native⟩ := edge
      have same : c = source := Option.some.inj (hu.symm.trans hs)
      subst source
      obtain ⟨d, hd, tail⟩ := ih next hn
      exact ⟨d, hd, .cons a word native tail⟩
  have complete {c d : Configuration} {word : List Read} (walk : WordPath readGraph c word d) :
      ∀ (t : ℕ) (u : V), u.val = some c → Riemann95.nSteps t init = some c →
        ∃ v, WordPath G u word v := by
    induction walk with
    | nil _ => exact fun _ u _ _ => ⟨u, .nil u⟩
    | @cons c next finish a word edge _ ih =>
      intro t u hu trace
      have progressed : Riemann95.nSteps (t + 1) init = some next := by
        rw [Riemann95.Dispatch.nSteps_composition, trace, Option.bind_some,
          Riemann95.nSteps, edge.2]
        rfl
      let nextVertex : V := ⟨some next, belongs progressed⟩
      obtain ⟨v, tail⟩ := ih (t + 1) nextVertex rfl progressed
      exact ⟨v, .cons a word ⟨c, next, hu, rfl, edge⟩ tail⟩
  have cap : Fintype.card V ≤ n + 1 := by
    change Fintype.card ↥states ≤ n + 1
    rw [Fintype.card_coe]
    exact Finset.card_image_le.trans (by simp)
  refine ⟨V, inferInstance, G, root, cap, fun word => ⟨?_, ?_⟩⟩
  · rintro ⟨v, walk⟩
    obtain ⟨d, _, path⟩ := sound walk init rfl
    exact ⟨d, path⟩
  · rintro ⟨d, walk⟩
    exact complete walk 0 root rfl rfl

private theorem observe_isSome_eq_steps (n : ℕ) (c : Configuration) :
    (observe n c).isSome = (Riemann95.nSteps n c).isSome := by
  induction n generalizing c with
  | zero => rfl
  | succ n ih =>
    cases h : step Riemann95.machine c <;> simp [observe, Riemann95.nSteps, h, ih]

/-- A terminal trace admits an exact graph with precisely the minimum
number of vertices, even allowing nondeterministic alternatives. -/
theorem exact_read_graph_capacity_at_terminal {n : ℕ} {stop : Configuration}
    (reached : Riemann95.nSteps n init = some stop)
    (terminal : step Riemann95.machine stop = none) :
    ∃ (V : Type) (finite : Fintype V) (G : LabeledGraph V Read) (root : V),
      @Fintype.card V finite = n + 1 ∧
        ∀ word, (∃ t, WordPath G root word t) ↔ ∃ d, WordPath readGraph init word d := by
  obtain ⟨V, finite, G, root, upper, exactRoot⟩ :=
    exists_exact_read_graph_of_terminal_trace reached terminal
  have noMore : Riemann95.nSteps (n + 1) init = none := by
    rw [Riemann95.Dispatch.nSteps_composition, reached, Option.bind_some, Riemann95.nSteps, terminal]
    rfl
  have observed : ∃ word, observe n init = some word := by
    apply Option.isSome_iff_exists.mp
    rw [observe_isSome_eq_steps, reached]
    rfl
  have stopped : observe (n + 1) init = none := by
    cases h : observe (n + 1) init with
    | none => rfl
    | some word =>
      have eq := observe_isSome_eq_steps (n + 1) init
      simp [h, noMore] at eq
  obtain ⟨word, result⟩ := observed
  have lower := @halted_rooted_graph_capacity V finite G root _ _ result stopped
    ((exactRoot _).mpr ((observe_iff_path _ _ _).mp result).2)
    (fun w _ admitted => (exactRoot w).mp admitted)
  exact ⟨V, finite, G, root, le_antisymm upper lower, exactRoot⟩

/-- A halted native run admits an exact finite presentation. Its vertices
are the replayed configurations up to the terminal receipt, and every
edge is a literal source step between retained vertices. -/
theorem exists_finite_exact_rooted_read_graph_of_halts
    (halts : ConjectureMachines.BundledMachine.Halts Riemann95.candidate) :
    ∃ (V : Type) (_ : Fintype V) (G : LabeledGraph V Read) (root : V),
      ∀ word, (∃ t, WordPath G root word t) ↔ ∃ d, WordPath readGraph init word d := by
  classical
  change (StateTransition.eval (step Riemann95.machine) (init : Configuration)).Dom at halts
  obtain ⟨stop, member⟩ := Part.dom_iff_mem.mp halts
  obtain ⟨reaches, terminal⟩ := StateTransition.mem_eval.mp member
  have finiteTrace : ∃ n, Riemann95.nSteps n init = some stop := by
    clear member terminal
    induction reaches with
    | refl => exact ⟨0, rfl⟩
    | @tail before after _ edge ih =>
      obtain ⟨n, hn⟩ := ih
      refine ⟨n + 1, ?_⟩
      rw [Riemann95.Dispatch.nSteps_composition, hn, Option.bind_some, Riemann95.nSteps]
      rw [show step Riemann95.machine before = some after from edge]
      rfl
  obtain ⟨n, reached⟩ := finiteTrace
  obtain ⟨V, finite, G, root, _, exactRoot⟩ := exists_exact_read_graph_of_terminal_trace reached terminal
  exact ⟨V, finite, G, root, exactRoot⟩

/-- Exact finite presentability of blank-start read prefixes is equivalent
to failure of RH for the original pinned machine. -/
theorem finite_exact_rooted_read_graph_iff_not_riemannHypothesis :
    (∃ (V : Type) (_ : Fintype V) (G : LabeledGraph V Read) (root : V),
      ∀ word, (∃ t, WordPath G root word t) ↔ ∃ d, WordPath readGraph init word d) ↔
        ¬ RiemannHypothesis := by
  constructor
  · rintro ⟨V, finite, G, root, exactRoot⟩
    exact @not_riemannHypothesis_of_finite_exact_rooted_read_graph V finite G root exactRoot
  · intro bad
    exact exists_finite_exact_rooted_read_graph_of_halts
      (Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis.mpr bad)

/-- Once the native terminal word is known, one covered word and
soundness up to the first failed budget certify the whole rooted language.
No finiteness assumption on the graph is needed for this reduction. -/
theorem exactRoot_iff_terminal_horizon {V : Type*} (G : LabeledGraph V Read) (root : V)
    {n : ℕ} {word : List Read}
    (observed : observe n (init : Configuration) = some word)
    (stopped : observe (n + 1) (init : Configuration) = none) :
    (∀ w, (∃ t, WordPath G root w t) ↔ ∃ d, WordPath readGraph init w d) ↔
      (∃ t, WordPath G root word t) ∧
        ∀ w : List Read, w.length ≤ n + 1 →
          (∃ t, WordPath G root w t) → ∃ d, WordPath readGraph init w d := by
  obtain ⟨length, finish, native⟩ := (observe_iff_path _ _ _).mp observed
  have noNativeAtFailure {w : List Read} (size : w.length = n + 1)
      (lift : ∃ d, WordPath readGraph init w d) : False := by
    have read := (observe_iff_path (n + 1) _ _).mpr ⟨size, lift⟩
    rw [stopped] at read
    cases read
  have cutoff {w : List Read} (large : n < w.length) :
      (w.take (n + 1)).length = n + 1 := by
    rw [List.length_take, Nat.min_eq_left (by omega)]
  constructor
  · intro exactRoot
    exact ⟨(exactRoot word).mpr ⟨finish, native⟩, fun w _ => (exactRoot w).mp⟩
  · rintro ⟨⟨target, admitted⟩, sound⟩ w
    constructor
    · rintro ⟨t, path⟩
      by_cases short : w.length ≤ n + 1
      · exact sound w short ⟨t, path⟩
      · obtain ⟨mid, prefixPath, _⟩ := splitAt path (n + 1)
        have size := cutoff (w := w) (by omega)
        exact (noNativeAtFailure size (sound _ size.le ⟨mid, prefixPath⟩)).elim
    · rintro ⟨d, path⟩
      have short : w.length ≤ n := by
        by_contra large
        obtain ⟨mid, prefixPath, _⟩ := splitAt path (n + 1)
        exact noNativeAtFailure (cutoff (w := w) (by omega)) ⟨mid, prefixPath⟩
      have prefixEq : w = word.take w.length := forced_prefix (G := readGraph)
        (fun ha hb => ⟨ha.1.trans hb.1.symm, Option.some.inj (ha.2.symm.trans hb.2)⟩)
        path native (by omega)
      obtain ⟨mid, prefixPath, _⟩ := splitAt admitted w.length
      exact ⟨mid, prefixEq.symm ▸ prefixPath⟩

/-- The first forbidden prefix on each branch away from a terminal binary
read word, including both extensions of the terminal word. -/
def terminalFrontier : List Read → List (List Read)
  | [] => [[0], [1]]
  | a :: word => [1 - a] :: (terminalFrontier word).map (List.cons a)

theorem terminalFrontier_length (word : List Read) :
    (terminalFrontier word).length = word.length + 2 := by
  induction word with
  | nil => rfl
  | cons a word ih => simp only [terminalFrontier, List.length_cons, List.length_map, ih]

private theorem opposite_ne (a : Read) : 1 - a ≠ a := by
  fin_cases a <;> decide

private theorem eq_opposite_of_ne {a b : Read} (different : b ≠ a) : b = 1 - a := by
  fin_cases a <;> fin_cases b <;> first | rfl | exact (different rfl).elim

private theorem frontier_not_prefix {word bad : List Read}
    (member : bad ∈ terminalFrontier word) : ¬ bad <+: word := by
  induction word generalizing bad with
  | nil =>
    simp [terminalFrontier] at member
    rcases member with rfl | rfl <;> simp
  | cons a word ih =>
    simp only [terminalFrontier, List.mem_cons, List.mem_map] at member
    rcases member with rfl | ⟨tail, present, rfl⟩
    · simp [opposite_ne]
    · intro pref
      exact ih present (List.cons_prefix_cons.mp pref).2

private theorem exists_frontier_prefix_of_not_prefix {word attempted : List Read}
    (wrong : ¬ attempted <+: word) :
    ∃ bad ∈ terminalFrontier word, bad <+: attempted := by
  induction word generalizing attempted with
  | nil =>
    cases attempted with
    | nil => exact (wrong List.nil_prefix).elim
    | cons b rest =>
      refine ⟨[b], ?_, List.cons_prefix_cons.mpr ⟨rfl, List.nil_prefix⟩⟩
      fin_cases b <;> simp [terminalFrontier]
  | cons a word ih =>
    cases attempted with
    | nil => exact (wrong List.nil_prefix).elim
    | cons b rest =>
      by_cases same : b = a
      · subst b
        obtain ⟨bad, member, pref⟩ := ih (fun p => wrong (List.cons_prefix_cons.mpr ⟨rfl, p⟩))
        exact ⟨a :: bad, List.mem_cons_of_mem _ (List.mem_map.mpr ⟨bad, member, rfl⟩),
          List.cons_prefix_cons.mpr ⟨rfl, pref⟩⟩
      · exact ⟨[1 - a], List.mem_cons_self,
          List.cons_prefix_cons.mpr ⟨(eq_opposite_of_ne same).symm, List.nil_prefix⟩⟩

/-- A certified terminal observation reduces exactness to one positive
path check and one negative path check for each first forbidden prefix. -/
theorem exactRoot_iff_terminal_frontier {V : Type*} (G : LabeledGraph V Read) (root : V)
    {n : ℕ} {word : List Read}
    (observed : observe n (init : Configuration) = some word)
    (stopped : observe (n + 1) (init : Configuration) = none) :
    (∀ w, (∃ t, WordPath G root w t) ↔ ∃ d, WordPath readGraph init w d) ↔
      (∃ t, WordPath G root word t) ∧
        ∀ bad ∈ terminalFrontier word, ¬ ∃ t, WordPath G root bad t := by
  obtain ⟨size, finish, native⟩ := (observe_iff_path _ _ _).mp observed
  have native_prefix (w : List Read) :
      (∃ d, WordPath readGraph init w d) ↔ w <+: word := by
    constructor
    · rintro ⟨d, path⟩
      have short : w.length ≤ n := by
        by_contra longer
        obtain ⟨mid, pref, _⟩ := splitAt path (n + 1)
        have length : (w.take (n + 1)).length = n + 1 := by
          rw [List.length_take, Nat.min_eq_left (by omega)]
        have next := (observe_iff_path _ _ _).mpr ⟨length, mid, pref⟩
        rw [stopped] at next
        cases next
      apply List.prefix_iff_eq_take.mpr
      exact forced_prefix (G := readGraph)
        (fun ha hb => ⟨ha.1.trans hb.1.symm, Option.some.inj (ha.2.symm.trans hb.2)⟩)
        path native (by omega)
    · intro pref
      obtain ⟨mid, path, _⟩ := splitAt native w.length
      exact ⟨mid, (List.prefix_iff_eq_take.mp pref).symm ▸ path⟩
  constructor
  · intro exactRoot
    exact ⟨(exactRoot word).mpr ⟨finish, native⟩, fun bad member admitted =>
      frontier_not_prefix member ((native_prefix bad).mp ((exactRoot bad).mp admitted))⟩
  · rintro ⟨⟨target, full⟩, forbidden⟩ w
    rw [native_prefix]
    constructor
    · rintro ⟨t, path⟩
      by_contra wrong
      obtain ⟨bad, member, pref⟩ := exists_frontier_prefix_of_not_prefix wrong
      obtain ⟨mid, initial, _⟩ := splitAt path bad.length
      exact forbidden bad member ⟨mid, (List.prefix_iff_eq_take.mp pref).symm ▸ initial⟩
    · intro pref
      obtain ⟨mid, initial, _⟩ := splitAt full w.length
      exact ⟨mid, (List.prefix_iff_eq_take.mp pref).symm ▸ initial⟩

private theorem proper_prefix_of_frontier_is_prefix
    {word bad pre : List Read} (member : bad ∈ terminalFrontier word)
    (pref : pre <+: bad) (short : pre.length < bad.length) : pre <+: word := by
  induction word generalizing bad pre with
  | nil =>
    simp [terminalFrontier] at member
    rcases member with rfl | rfl <;>
      cases pre <;> simp_all
  | cons a word ih =>
    simp only [terminalFrontier, List.mem_cons, List.mem_map] at member
    rcases member with rfl | ⟨tail, present, rfl⟩
    · cases pre <;> simp_all
    · cases pre with
      | nil => exact List.nil_prefix
      | cons b rest =>
        obtain ⟨rfl, initial⟩ := List.cons_prefix_cons.mp pref
        exact List.cons_prefix_cons.mpr ⟨rfl, ih present initial (by simpa using short)⟩

/-- The finite test lists precisely the minimal forbidden prefixes of
the terminal read word. Removing any entry leaves its own branch untested. -/
theorem mem_terminalFrontier_iff_minimal {word bad : List Read} :
    bad ∈ terminalFrontier word ↔
      ¬ bad <+: word ∧
        ∀ pre, pre <+: bad → pre.length < bad.length → pre <+: word := by
  constructor
  · intro member
    exact ⟨frontier_not_prefix member, fun _ => proper_prefix_of_frontier_is_prefix member⟩
  · rintro ⟨wrong, minimal⟩
    obtain ⟨first, member, pref⟩ := exists_frontier_prefix_of_not_prefix wrong
    have equal : first.length = bad.length := by
      apply le_antisymm pref.length_le
      by_contra! lt
      exact frontier_not_prefix member (minimal first pref lt)
    have same : first = bad := by
      rw [List.prefix_iff_eq_take.mp pref, equal, List.take_length]
    exact same ▸ member

/-- Every spurious attempted read has exactly one first forbidden prefix. -/
theorem exists_unique_terminalFrontier_prefix {word attempted : List Read}
    (wrong : ¬ attempted <+: word) :
    ∃! bad, bad ∈ terminalFrontier word ∧ bad <+: attempted := by
  obtain ⟨bad, member, initial⟩ := exists_frontier_prefix_of_not_prefix wrong
  refine ⟨bad, ⟨member, initial⟩, ?_⟩
  rintro other ⟨otherMember, otherInitial⟩
  have compare {left right : List Read} (hl : left <+: attempted)
      (hr : right <+: attempted) (size : left.length ≤ right.length) : left <+: right := by
    rw [List.prefix_iff_eq_take.mp hl, List.prefix_iff_eq_take.mp hr, List.prefix_iff_eq_take,
      List.length_take, Nat.min_eq_left hl.length_le, List.take_take, Nat.min_eq_left size]
  have notShort {left right : List Read} (hl : left ∈ terminalFrontier word)
      (hr : right ∈ terminalFrontier word) (hl' : left <+: attempted)
      (hr' : right <+: attempted) (short : left.length < right.length) : False :=
    frontier_not_prefix hl (proper_prefix_of_frontier_is_prefix hr (compare hl' hr' short.le) short)
  have equal : other.length = bad.length := by
    exact le_antisymm (le_of_not_gt (notShort member otherMember initial otherInitial))
      (le_of_not_gt (notShort otherMember member otherInitial initial))
  calc
    other = attempted.take other.length := List.prefix_iff_eq_take.mp otherInitial
    _ = bad := equal ▸ (List.prefix_iff_eq_take.mp initial).symm

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Riemann95ReadGraphCapacity
