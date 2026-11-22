/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Cryptids.Riemann95
import GRWTSK.DynamicalSystemsAndErgodicTheory.ExactSoficLanguageCover
import GRWTSK.NumberTheory.SpecificationAndPrimeEnumeration

/-!
# Exact configuration language of Cryptids' 95-state machine

The vertices retain the native head-relative tape, including both half tapes.
A label records the scanned symbol of one successful native step. The blank-rooted
executable prefixes and the words ending at a halt use this same path relation.

The control projection admits additional words, even from the blank control.
The prime-address graph transports the full configuration graph by an equivalence.
Use the isolated Cryptids package at the pins recorded beside this source.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Riemann95ConfigurationLanguage

open ConjectureMachines
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeAndFiniteAddressData.Variant46f3923eb08b8087.SequentialPrimeSpecification

abbrev Configuration := Cfg 95 2
abbrev ReadSymbol := Fin 2

abbrev blank : Configuration := ConjectureMachines.init
abbrev step95 : Configuration → Option Configuration := step Riemann95.machine

/-- Each edge traces one successful native step and its actual scanned symbol. -/
def sourceGraph : LabeledGraph Configuration ReadSymbol :=
  ⟨fun c bit d => c.tape.head = bit ∧ step95 c = some d⟩

/-- The partial executor for a proposed sequence of reads. -/
def follow : List ReadSymbol → Configuration → Option Configuration
  | [], c => some c
  | bit :: word, c =>
    if c.tape.head = bit then (step95 c).bind (follow word) else none

theorem wordPath_iff_follow (word : List ReadSymbol) (c d : Configuration) :
    WordPath sourceGraph c word d ↔ follow word c = some d := by
  constructor
  · intro path
    induction path with
    | nil => rfl
    | cons bit word edge _ ih =>
      exact (show _ from by simp only [follow, ite_eq_left edge.1, edge.2, Option.bind_some, ih])
  · induction word generalizing c with
    | nil =>
      intro h
      have eq : c = d := Option.some.inj h
      subst d
      exact .nil c
    | cons bit word ih =>
      intro h
      by_cases hbit : c.tape.head = bit
      · cases hs : step95 c with
        | none => simp [follow, hbit, hs] at h
        | some mid =>
          exact .cons bit word ⟨hbit, hs⟩ (ih mid (by simpa [follow, hbit, hs] using h))
      · simp [follow, hbit] at h

theorem native_steps_of_path {c d : Configuration} {word : List ReadSymbol}
    (path : WordPath sourceGraph c word d) :
    Riemann95.nSteps word.length c = some d := by
  induction path with
  | nil => rfl
  | cons bit word edge _ ih =>
    simp only [List.length_cons, Riemann95.nSteps, edge.2, Option.bind_some, ih]

theorem native_steps_iff_exists_word (n : ℕ) (c d : Configuration) :
    Riemann95.nSteps n c = some d ↔
      ∃ word : List ReadSymbol, word.length = n ∧ WordPath sourceGraph c word d := by
  constructor
  · induction n generalizing c with
    | zero =>
      intro h
      have eq : c = d := Option.some.inj h
      subst d
      exact ⟨[], rfl, .nil c⟩
    | succ n ih =>
      intro h
      cases hs : step95 c with
      | none => simp [Riemann95.nSteps, hs] at h
      | some mid =>
        obtain ⟨word, hlen, hword⟩ := ih mid (by simpa [Riemann95.nSteps, hs] using h)
        exact ⟨c.tape.head :: word, by simp [hlen], .cons _ _ ⟨rfl, hs⟩ hword⟩
  · rintro ⟨word, rfl, path⟩
    exact native_steps_of_path path

theorem reaches_iff_exists_word (c d : Configuration) :
    StateTransition.Reaches step95 c d ↔ ∃ word, WordPath sourceGraph c word d := by
  constructor
  · intro reach
    induction reach with
    | refl => exact ⟨[], .nil c⟩
    | @tail mid last _ next ih =>
      obtain ⟨word, path⟩ := ih
      exact ⟨word ++ [mid.tape.head],
        wordPath_append path (.cons _ [] ⟨rfl, next⟩ (.nil last))⟩
  · rintro ⟨word, path⟩
    induction path with
    | nil => exact Relation.ReflTransGen.refl
    | cons bit word edge _ ih => exact Relation.ReflTransGen.head edge.2 ih

/-- Executable prefixes of the single native blank-start computation. -/
def Prefix (word : List ReadSymbol) : Prop :=
  ∃ d, WordPath sourceGraph blank word d

/-- A complete finite word ends at a native terminal configuration. -/
def Accepts (word : List ReadSymbol) : Prop :=
  ∃ d, WordPath sourceGraph blank word d ∧ step95 d = none

theorem accepts_iff_eval (word : List ReadSymbol) :
    Accepts word ↔
      ∃ d, follow word blank = some d ∧ d ∈ StateTransition.eval step95 blank := by
  constructor
  · rintro ⟨d, path, stop⟩
    exact ⟨d, (wordPath_iff_follow _ _ _).1 path,
      mem_eval'.2 ⟨(reaches_iff_exists_word _ _).2 ⟨word, path⟩, stop⟩⟩
  · rintro ⟨d, run, terminal⟩
    exact ⟨d, (wordPath_iff_follow _ _ _).2 run, (mem_eval'.1 terminal).2⟩

theorem exists_accepts_iff_halts :
    (∃ word, Accepts word) ↔ Riemann95.candidate.Halts := by
  change (∃ word, Accepts word) ↔ (StateTransition.eval step95 blank).Dom
  constructor
  · rintro ⟨word, accepted⟩
    obtain ⟨d, _, hd⟩ := (accepts_iff_eval word).1 accepted
    exact hd.1
  · intro dom
    let result := StateTransition.eval step95 blank
    obtain ⟨reach, stop⟩ := mem_eval'.1 (show result.get dom ∈ result from ⟨dom, rfl⟩)
    obtain ⟨word, path⟩ := (reaches_iff_exists_word _ _).1 reach
    exact ⟨word, result.get dom, path, stop⟩

theorem exists_accepts_iff_shunia :
    (∃ word, Accepts word) ↔ ∃ m : ℕ, Riemann120.ShuniaCounterexample (m + 2) :=
  exists_accepts_iff_halts.trans Riemann95.halts_candidate_iff_counterexample

private theorem map_wordPath {V W A : Type*}
    {G : LabeledGraph V A} {H : LabeledGraph W A} (f : V → W)
    (mapEdge : ∀ c a d, G.edge c a d → H.edge (f c) a (f d))
    {c d : V} {word : List A} (path : WordPath G c word d) :
    WordPath H (f c) word (f d) := by
  induction path with
  | nil => exact .nil _
  | cons bit word edge _ ih => exact .cons bit word (mapEdge _ _ _ edge) ih

/-- Table edges with a freely chosen read, forgetting both half tapes. -/
def controlGraph : LabeledGraph (Fin 95) ReadSymbol :=
  ⟨fun q bit r => ∃ (write : Fin 2) (move : Turing.Dir),
    Riemann95.machine.transition q bit = some (write, move, r)⟩

theorem source_edge_to_control {c d : Configuration} {bit : ReadSymbol}
    (edge : sourceGraph.edge c bit d) : controlGraph.edge c.state bit d.state := by
  rcases c with ⟨q, tape⟩
  have hs := edge.2
  have hbit : tape.head = bit := edge.1
  change (Riemann95.machine.transition q tape.head).map
    (fun (w, dir, r) => (⟨r, (tape.write w).move dir⟩ : Configuration)) = some d at hs
  rw [hbit] at hs
  cases ht : Riemann95.machine.transition q bit with
  | none => simp [ht] at hs
  | some action =>
    rcases action with ⟨w, dir, r⟩
    have target := Option.some.inj (by simpa only [ht, Option.map_some] using hs)
    subst d
    exact ⟨w, dir, ht⟩

theorem source_path_to_control {c d : Configuration} {word : List ReadSymbol}
    (path : WordPath sourceGraph c word d) :
    WordPath controlGraph c.state word d.state :=
  map_wordPath Cfg.state (fun _ _ _ => source_edge_to_control) path

/-- The complete instruction label records what was read and the executed action.
Source and destination control are already part of the path's vertices. -/
structure InstructionLabel where
  read : ReadSymbol
  write : ReadSymbol
  direction : Turing.Dir

def instructionGraph : LabeledGraph Configuration InstructionLabel :=
  ⟨fun c a d => sourceGraph.edge c a.read d ∧
    Riemann95.machine.transition c.state a.read = some (a.write, a.direction, d.state)⟩

theorem instruction_path_to_reads {c d : Configuration} {instructions : List InstructionLabel}
    (path : WordPath instructionGraph c instructions d) :
    WordPath sourceGraph c (instructions.map InstructionLabel.read) d := by
  induction path with
  | nil => exact .nil _
  | cons instruction word edge _ ih => exact .cons instruction.read _ edge.1 ih

theorem read_path_iff_exists_instructions (c d : Configuration) (word : List ReadSymbol) :
    WordPath sourceGraph c word d ↔
      ∃ instructions, instructions.map InstructionLabel.read = word ∧
        WordPath instructionGraph c instructions d := by
  constructor
  · intro path
    induction path with
    | nil => exact ⟨[], rfl, .nil _⟩
    | cons bit word edge _ ih =>
      obtain ⟨write, move, cell⟩ := source_edge_to_control edge
      obtain ⟨rest, hrest, tail⟩ := ih
      let label : InstructionLabel := ⟨bit, write, move⟩
      exact ⟨label :: rest, by simp [label, hrest], .cons label rest ⟨edge, cell⟩ tail⟩
  · rintro ⟨instructions, rfl, path⟩
    exact instruction_path_to_reads path

/-- The upper relation on the full carrier keeps only the table condition. -/
def admissibleGraph : LabeledGraph Configuration ReadSymbol :=
  ⟨fun c bit d => controlGraph.edge c.state bit d.state⟩

/-- A certificate predicate selects a subrelation of the exact machine edges. -/
def certifiedGraph (certified : Configuration → ReadSymbol → Configuration → Prop) :
    LabeledGraph Configuration ReadSymbol :=
  ⟨fun c bit d => certified c bit d ∧ sourceGraph.edge c bit d⟩

theorem certified_path_to_source
    {certified : Configuration → ReadSymbol → Configuration → Prop}
    {c d : Configuration} {word : List ReadSymbol}
    (path : WordPath (certifiedGraph certified) c word d) :
    WordPath sourceGraph c word d :=
  map_wordPath (G := certifiedGraph certified) (H := sourceGraph) id
    (fun _ _ _ edge => edge.2) path

theorem source_path_to_admissible {c d : Configuration} {word : List ReadSymbol}
    (path : WordPath sourceGraph c word d) :
    WordPath admissibleGraph c word d :=
  map_wordPath id (fun _ _ _ => source_edge_to_control) path

/-- Certifying every outgoing edge at a reachable configuration suffices
for equality of the two blank-rooted prefix languages. -/
theorem certified_prefix_iff_of_reachable_edges
    (certified : Configuration → ReadSymbol → Configuration → Prop)
    (complete : ∀ c bit d, StateTransition.Reaches step95 blank c →
      sourceGraph.edge c bit d → certified c bit d) (word : List ReadSymbol) :
    (∃ d, WordPath (certifiedGraph certified) blank word d) ↔ Prefix word := by
  constructor
  · rintro ⟨d, path⟩
    exact ⟨d, certified_path_to_source path⟩
  · rintro ⟨d, path⟩
    have lift {c d' : Configuration} {w : List ReadSymbol} (run : WordPath sourceGraph c w d') :
        StateTransition.Reaches step95 blank c →
          WordPath (certifiedGraph certified) c w d' := by
      induction run with
      | nil => intro _; exact .nil _
      | cons bit word edge _ ih =>
        intro reach
        exact .cons bit word ⟨complete _ _ _ reach edge, edge⟩ (ih (reach.tail edge.2))
    exact ⟨d, lift path Relation.ReflTransGen.refl⟩

/-- The table permits an impossible second read from the actual blank start. -/
theorem blank_control_spurious_word :
    WordPath controlGraph blank.state [0, 1] (48 : Fin 95) ∧ ¬ Prefix [0, 1] := by
  refine ⟨.cons 0 [1] ⟨1, .left, rfl⟩ (.cons 1 [] ⟨1, .left, rfl⟩ (.nil _)), ?_⟩
  rintro ⟨d, path⟩
  have h := (wordPath_iff_follow _ _ _).1 path
  change none = some d at h
  cases h

theorem full_shift_admits_spurious_blank_word :
    GraphLanguage (fullShiftGraph ReadSymbol) [0, 1] ∧ ¬ Prefix [0, 1] :=
  ⟨fullShiftGraph_language_all _, blank_control_spurious_word.2⟩

/-- Even retaining the scanned symbol with control does not determine the next view. -/
theorem state_head_insufficient :
    ¬ ∃ f : Fin 95 × ReadSymbol → Option (Fin 95 × ReadSymbol),
      ∀ c : Configuration,
        (step95 c).map (fun d => (d.state, d.tape.head)) = f (c.state, c.tape.head) := by
  rintro ⟨f, respects⟩
  let leftOne : Configuration := ⟨0, ConjectureMachines.Tape.mk₂ [1] [0]⟩
  have h₀ : some (48, 0) = f (0, 0) := respects blank
  have h₁ : some (48, 1) = f (0, 0) := respects leftOne
  cases h₀.trans h₁.symm

/-- A fixed point is a genuine one-edge loop carrying the scanned symbol. -/
theorem fixed_iff_loop (c : Configuration) :
    step95 c = some c ↔ WordPath sourceGraph c [c.tape.head] c := by
  rw [wordPath_iff_follow]
  simp [follow]

/-- A full return through 95 steps is a closed word of length exactly 95. -/
theorem return95_iff_closed_word (c : Configuration) :
    Riemann95.nSteps 95 c = some c ↔
      ∃ word : List ReadSymbol, word.length = 95 ∧ WordPath sourceGraph c word c :=
  native_steps_iff_exists_word 95 c c

/-- Powers of a genuine closed path are genuine closed paths at the same source state. -/
theorem closed_word_copies {c : Configuration} {word : List ReadSymbol}
    (path : WordPath sourceGraph c word c) (n : ℕ) :
    WordPath sourceGraph c ((List.replicate n word).flatten) c := by
  induction n with
  | zero => exact .nil c
  | succ n ih =>
    simpa only [List.replicate_succ, List.flatten_cons] using wordPath_append path ih

/-- State 1 reading blank writes a 1, moves right, and returns to state 1. -/
def rightWalker (n : ℕ) : Configuration :=
  ⟨1, ConjectureMachines.Tape.mk₂ (List.replicate n 1) []⟩

theorem rightWalker_step (n : ℕ) : step95 (rightWalker n) = some (rightWalker (n + 1)) := by
  rfl

theorem rightWalker_path (n m : ℕ) :
    WordPath sourceGraph (rightWalker m) (List.replicate n 0) (rightWalker (m + n)) := by
  induction n generalizing m with
  | zero => exact .nil _
  | succ n ih =>
    rw [List.replicate_succ, show m + (n + 1) = (m + 1) + n by omega]
    exact .cons 0 _ ⟨rfl, rightWalker_step m⟩ (ih (m + 1))

theorem rightWalker_no_return95 :
    WordPath controlGraph (1 : Fin 95) (List.replicate 95 0) 1 ∧
      Riemann95.nSteps 95 (rightWalker 0) ≠ some (rightWalker 0) := by
  have full := rightWalker_path 95 0
  refine ⟨source_path_to_control full, ?_⟩
  intro ret
  have h := (native_steps_of_path full).symm.trans ret
  have left := congrArg (fun c : Configuration => c.tape.left.head) (Option.some.inj h)
  change (1 : Fin 2) = 0 at left
  exact (by decide : (1 : Fin 2) ≠ 0) left

/-- The ordinary prime at global slot 95 * window + q. -/
noncomputable def primeAddress (window : ℕ) (q : Fin 95) : ℕ :=
  canonicalPrimeEnumeration.value (95 * window + q.val)

theorem primeAddress_prime (window : ℕ) (q : Fin 95) : Nat.Prime (primeAddress window q) :=
  canonicalPrimeEnumeration_prime _

theorem primeAddress_strictMono (window : ℕ) : StrictMono (primeAddress window) :=
  fun _ _ h => canonicalPrimeEnumeration_strictlyIncreasing (Nat.add_lt_add_left h _)

/-- A prime address replaces only the control coordinate. -/
abbrev PrimeConfiguration (window : ℕ) :=
  Set.range (primeAddress window) × ConjectureMachines.Tape ReadSymbol

noncomputable def encode (window : ℕ) : Configuration ≃ PrimeConfiguration window :=
  let addr := Equiv.ofInjective (primeAddress window) (primeAddress_strictMono window).injective
  { toFun := fun c => (addr c.state, c.tape)
    invFun := fun c => ⟨addr.symm c.1, c.2⟩
    left_inv := fun ⟨q, tape⟩ => by simp
    right_inv := fun ⟨p, tape⟩ => by simp }

private def relabelGraph {V W A : Type*} (e : V ≃ W) (G : LabeledGraph V A) :
    LabeledGraph W A :=
  ⟨fun c label d => G.edge (e.symm c) label (e.symm d)⟩

private theorem relabel_path_iff {V W A : Type*} (e : V ≃ W) (G : LabeledGraph V A)
    (c d : V) (word : List A) :
    WordPath (relabelGraph e G) (e c) word (e d) ↔ WordPath G c word d := by
  constructor
  · intro path
    simpa only [Equiv.symm_apply_apply] using
      map_wordPath (H := G) e.symm (fun _ _ _ h => h) path
  · intro path
    apply map_wordPath (G := G) e (fun c label d h => ?_) path
    simpa only [relabelGraph, Equiv.symm_apply_apply] using h

noncomputable def primeGraph (window : ℕ) : LabeledGraph (PrimeConfiguration window) ReadSymbol :=
  relabelGraph (encode window) sourceGraph

noncomputable def primeInstructionGraph (window : ℕ) :
    LabeledGraph (PrimeConfiguration window) InstructionLabel :=
  relabelGraph (encode window) instructionGraph

theorem prime_path_iff (window : ℕ) (c d : Configuration) (word : List ReadSymbol) :
    WordPath (primeGraph window) (encode window c) word (encode window d) ↔
      WordPath sourceGraph c word d :=
  relabel_path_iff (encode window) sourceGraph c d word

theorem prime_instruction_path_iff (window : ℕ) (c d : Configuration)
    (word : List InstructionLabel) :
    WordPath (primeInstructionGraph window) (encode window c) word (encode window d) ↔
      WordPath instructionGraph c word d :=
  relabel_path_iff (encode window) instructionGraph c d word

theorem prime_prefix_iff (window : ℕ) (word : List ReadSymbol) :
    (∃ d, WordPath (primeGraph window) (encode window blank) word d) ↔ Prefix word := by
  constructor
  · rintro ⟨d, path⟩
    exact ⟨(encode window).symm d, (prime_path_iff window blank ((encode window).symm d) word).1
      (by simpa only [Equiv.apply_symm_apply] using path)⟩
  · rintro ⟨d, path⟩
    exact ⟨encode window d, (prime_path_iff _ _ _ _).2 path⟩

theorem prime_accepts_iff (window : ℕ) (word : List ReadSymbol) :
    (∃ d, WordPath (primeGraph window) (encode window blank) word d ∧
      step95 ((encode window).symm d) = none) ↔ Accepts word := by
  constructor
  · rintro ⟨d, path, stop⟩
    exact ⟨(encode window).symm d,
      (prime_path_iff window blank ((encode window).symm d) word).1
        (by simpa only [Equiv.apply_symm_apply] using path), stop⟩
  · rintro ⟨d, path, stop⟩
    exact ⟨encode window d, (prime_path_iff window blank d word).2 path,
      by simpa only [Equiv.symm_apply_apply] using stop⟩

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Riemann95ConfigurationLanguage
