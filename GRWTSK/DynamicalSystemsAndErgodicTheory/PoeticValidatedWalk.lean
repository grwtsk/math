/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
SOURCE_ONLY / COMPILATION_NOT_RUN / KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.PoeticSoficLanguage
import GRWTSK.NumberTheory.OrderedPrimeGroupAddress
import Mathlib

/-!
# A walk-first sofic poem with prime-addressed phrase ports

The supplied walk is verified BEFORE phrase construction. Each routed occurrence
carries source, label, literal words, and target. CheckedWalk witnesses the full
finite-graph path; ThreePhraseAssembly additionally checks exact reconstruction
of all original occurrences, five spoken lines per stanza, role transitions,
and typed prime fiber-port joins.

The prime-17 port is a concrete injective 16-state address fixture using the
repository's ordered-prime dependent group. It is not an assertion that every
text is already prime-addressed, or that English meaning was automatically parsed.
This graph's language is not equated to an arbitrary external factor language.
-/

set_option autoImplicit false

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.NumberTheory.OrderedPrimeGroupAddress

structure WalkEdge where
  source : Vertex
  label : Beat
  words : String
  target : Vertex
  deriving Repr

structure WalkInput where
  start : Vertex
  finish : Vertex
  edges : List WalkEdge
  deriving Repr

def walkLabels (edges : List WalkEdge) : List Beat :=
  edges.map WalkEdge.label

def walkWords (edges : List WalkEdge) : List String :=
  edges.map WalkEdge.words

/-- Gate one: reject even one incorrect source, target or join. -/
def validateEdges (current : Vertex) : List WalkEdge → Option Vertex
  | [] => some current
  | edge :: rest =>
      if edge.source = current ∧
         transition current edge.label = some edge.target then
        validateEdges edge.target rest
      else none

def WalkValid (walk : WalkInput) : Prop :=
  validateEdges walk.start walk.edges = some walk.finish

structure CheckedWalk where
  input : WalkInput
  validation : WalkValid input

def checkWalk (input : WalkInput) : Option CheckedWalk :=
  if h : WalkValid input then some ⟨input, h⟩ else none

/-- Success of the executable walk gate gives a path in the existing
inductive edge-labeled graph. -/
theorem validateEdges_sound :
    ∀ (edges : List WalkEdge) (start finish : Vertex),
      validateEdges start edges = some finish →
        WordPath graph start (walkLabels edges) finish := by
  intro edges
  induction edges with
  | nil =>
      intro start finish h
      simp [validateEdges] at h
      subst finish
      exact WordPath.nil start
  | cons edge rest ih =>
      intro start finish h
      by_cases hg : edge.source = start ∧
          transition start edge.label = some edge.target
      · have htail : validateEdges edge.target rest = some finish := by
          simpa [validateEdges, hg] using h
        have hp := ih edge.target finish htail
        change WordPath graph start (edge.label :: walkLabels rest) finish
        exact WordPath.cons edge.label (walkLabels rest) hg.2 hp
      · simp [validateEdges, hg] at h

theorem CheckedWalk.sound (checked : CheckedWalk) :
    WordPath graph checked.input.start
      (walkLabels checked.input.edges) checked.input.finish :=
  validateEdges_sound checked.input.edges checked.input.start
    checked.input.finish checked.validation

/-- An actual prime index, local residue group, and typed dependent address. -/
def portAxes : OrderedPrimeAxes where
  length := 1
  primeAt := fun _ => ⟨17, by decide⟩

abbrev PrimeFiberPort := portAxes.Address

def addressOf (vertex : Vertex) : PrimeFiberPort :=
  fun _ => (vertex.val : ZMod 17)

/-- No two of the sixteen graph states collide modulo prime 17. -/
theorem addressOf_injective : Function.Injective addressOf := by
  intro left right h
  have hcoord : (left.val : ZMod 17) = (right.val : ZMod 17) :=
    congrFun h (0 : Fin 1)
  have hval := congrArg ZMod.val hcoord
  have hl : left.val < 17 := by omega
  have hr : right.val < 17 := by omega
  have hlval : ((left.val : ZMod 17)).val = left.val :=
    ZMod.val_natCast_of_lt hl
  have hrval : ((right.val : ZMod 17)).val = right.val :=
    ZMod.val_natCast_of_lt hr
  have heq : left.val = right.val := by
    simpa only [hlval, hrval] using hval
  exact Fin.ext heq

/-- Existing ordered-prime serialization is source-address injective here. -/
theorem serialized_port_injective :
    Function.Injective (fun v : Vertex => portAxes.serialize (addressOf v)) := by
  intro v w h
  exact addressOf_injective (portAxes.serialize_injective h)

inductive PhraseRole where
  | setup | forecast | payoff
  deriving DecidableEq, Repr

def RoleFollows (first second : PhraseRole) : Prop :=
  (first = .setup ∧ second = .forecast) ∨
  (first = .forecast ∧ second = .payoff) ∨
  (first = .payoff ∧ second = .setup)

structure PhraseModel where
  role : PhraseRole
  entry : Vertex
  exit : Vertex
  edges : List WalkEdge
  deriving Repr

def PhraseModel.inPort (phrase : PhraseModel) : PrimeFiberPort :=
  addressOf phrase.entry

def PhraseModel.outPort (phrase : PhraseModel) : PrimeFiberPort :=
  addressOf phrase.exit

def PhraseModel.Valid (phrase : PhraseModel) : Prop :=
  validateEdges phrase.entry phrase.edges = some phrase.exit

/-- Pauses and restart labels are not additional spoken lines. -/
def PhraseModel.spokenCount (phrase : PhraseModel) : ℕ :=
  (phrase.edges.filter (fun e =>
    decide (e.label ≠ .pause ∧ e.label ≠ .restart))).length

theorem port_eq_iff_boundary_eq (first second : PhraseModel) :
    first.outPort = second.inPort ↔ first.exit = second.entry := by
  constructor
  · exact addressOf_injective
  · intro h
    exact congrArg addressOf h

/-- Match both exact vertex and prime-dependent address, then rhetorical role. -/
def PhraseModel.Glues (first second : PhraseModel) : Prop :=
  first.exit = second.entry ∧
  first.outPort = second.inPort ∧
  RoleFollows first.role second.role

theorem no_setup_payoff_shortcut : ¬ RoleFollows .setup .payoff := by decide

/-- A verified source is REQUIRED to construct a verified three-cell model. -/
structure ThreePhraseAssembly (checked : CheckedWalk) where
  opening : PhraseModel
  forecast : PhraseModel
  payoff : PhraseModel
  openingRole : opening.role = .setup
  forecastRole : forecast.role = .forecast
  payoffRole : payoff.role = .payoff
  openingValid : opening.Valid
  forecastValid : forecast.Valid
  payoffValid : payoff.Valid
  openingFive : opening.spokenCount = 5
  forecastFive : forecast.spokenCount = 5
  payoffFive : payoff.spokenCount = 5
  firstJoin : opening.Glues forecast
  secondJoin : forecast.Glues payoff
  beginsAtSource : opening.entry = checked.input.start
  endsAtSource : payoff.exit = checked.input.finish
  exactEdges : opening.edges ++ forecast.edges ++ payoff.edges = checked.input.edges

theorem ThreePhraseAssembly.reconstructEdges
    {checked : CheckedWalk} (assembly : ThreePhraseAssembly checked) :
    assembly.opening.edges ++ assembly.forecast.edges ++
      assembly.payoff.edges = checked.input.edges :=
  assembly.exactEdges

/-- Exact reconstruction includes literal English strings, not only labels. -/
theorem ThreePhraseAssembly.reconstructWords
    {checked : CheckedWalk} (assembly : ThreePhraseAssembly checked) :
    walkWords (assembly.opening.edges ++ assembly.forecast.edges ++
      assembly.payoff.edges) = walkWords checked.input.edges :=
  congrArg walkWords assembly.exactEdges

theorem ThreePhraseAssembly.reconstitutesPath
    {checked : CheckedWalk} (assembly : ThreePhraseAssembly checked) :
    WordPath graph assembly.opening.entry
      (walkLabels (assembly.opening.edges ++ assembly.forecast.edges ++
        assembly.payoff.edges)) assembly.payoff.exit := by
  rw [assembly.exactEdges, assembly.beginsAtSource, assembly.endsAtSource]
  exact checked.sound

structure PhraseProposal where
  opening : PhraseModel
  forecast : PhraseModel
  payoff : PhraseModel

/-- Gate two checks the proposed cuts, roles, prime-typed ports, all subwalks,
five spoken lines per phrase cell, and an exact source round trip. -/
def PhraseProposal.ValidFor (proposal : PhraseProposal)
    (checked : CheckedWalk) : Prop :=
  proposal.opening.role = .setup ∧
  proposal.forecast.role = .forecast ∧
  proposal.payoff.role = .payoff ∧
  proposal.opening.Valid ∧
  proposal.forecast.Valid ∧
  proposal.payoff.Valid ∧
  proposal.opening.spokenCount = 5 ∧
  proposal.forecast.spokenCount = 5 ∧
  proposal.payoff.spokenCount = 5 ∧
  proposal.opening.Glues proposal.forecast ∧
  proposal.forecast.Glues proposal.payoff ∧
  proposal.opening.entry = checked.input.start ∧
  proposal.payoff.exit = checked.input.finish ∧
  proposal.opening.edges ++ proposal.forecast.edges ++
    proposal.payoff.edges = checked.input.edges

def PhraseProposal.toAssembly (checked : CheckedWalk)
    (proposal : PhraseProposal) (h : proposal.ValidFor checked) :
    ThreePhraseAssembly checked := by
  rcases h with ⟨h₁, h₂, h₃, h₄, h₅, h₆, h₇, h₈, h₉, h₁₀, h₁₁, h₁₂, h₁₃, h₁₄⟩
  exact {
    opening := proposal.opening
    forecast := proposal.forecast
    payoff := proposal.payoff
    openingRole := h₁
    forecastRole := h₂
    payoffRole := h₃
    openingValid := h₄
    forecastValid := h₅
    payoffValid := h₆
    openingFive := h₇
    forecastFive := h₈
    payoffFive := h₉
    firstJoin := h₁₀
    secondJoin := h₁₁
    beginsAtSource := h₁₂
    endsAtSource := h₁₃
    exactEdges := h₁₄ }

def checkProposal (checked : CheckedWalk) (proposal : PhraseProposal) :
    Option (ThreePhraseAssembly checked) :=
  if h : proposal.ValidFor checked then
    some (proposal.toAssembly checked h)
  else none

/-- The public entry point strictly validates the raw walk FIRST. -/
def validateThenFit (raw : WalkInput) (proposal : PhraseProposal) :
    Option (Σ checked : CheckedWalk, ThreePhraseAssembly checked) :=
  match checkWalk raw with
  | none => none
  | some checked =>
      match checkProposal checked proposal with
      | none => none
      | some assembly => some ⟨checked, assembly⟩

def textEdge (source target : Vertex) (label : Beat) : WalkEdge where
  source := source
  label := label
  words := surface label
  target := target

/-- The previously authored complete poem, as a single raw addressed walk. -/
def poemWalk : WalkInput where
  start := 0
  finish := 15
  edges :=
    [textEdge 0 1 .introduction,
     textEdge 1 2 .prairie,
     textEdge 2 3 .razorOffer,
     textEdge 3 4 .confidentRefusal,
     textEdge 4 5 .foresight,
     textEdge 5 6 .defend,
     textEdge 6 7 .listen,
     textEdge 7 8 .playfulRebuff,
     textEdge 8 9 .forecast,
     textEdge 9 10 .market,
     textEdge 10 11 .spring,
     textEdge 11 12 .confirmation,
     textEdge 12 13 .communalChange,
     textEdge 13 14 .naturalFashion,
     textEdge 14 15 .teasePresent]

theorem poemWalk_valid : WalkValid poemWalk := by decide

def poemChecked : CheckedWalk := ⟨poemWalk, poemWalk_valid⟩

theorem poemWalk_labels :
    walkLabels poemWalk.edges = prefix ++ [.teasePresent] := by decide

def openingPhrase : PhraseModel where
  role := .setup
  entry := 0
  exit := 5
  edges := poemWalk.edges.take 5

def predictionPhrase : PhraseModel where
  role := .forecast
  entry := 5
  exit := 10
  edges := (poemWalk.edges.drop 5).take 5

def payoffPhrase : PhraseModel where
  role := .payoff
  entry := 10
  exit := 15
  edges := poemWalk.edges.drop 10

theorem openingPhrase_valid : openingPhrase.Valid := by decide
theorem predictionPhrase_valid : predictionPhrase.Valid := by decide
theorem payoffPhrase_valid : payoffPhrase.Valid := by decide

theorem openingPhrase_five : openingPhrase.spokenCount = 5 := by decide
theorem predictionPhrase_five : predictionPhrase.spokenCount = 5 := by decide
theorem payoffPhrase_five : payoffPhrase.spokenCount = 5 := by decide

theorem phrases_exact :
    openingPhrase.edges ++ predictionPhrase.edges ++ payoffPhrase.edges =
      poemWalk.edges := by decide

theorem opening_prediction_glue : openingPhrase.Glues predictionPhrase := by
  exact ⟨rfl, rfl, by simp [RoleFollows]⟩

theorem prediction_payoff_glue : predictionPhrase.Glues payoffPhrase := by
  exact ⟨rfl, rfl, by simp [RoleFollows]⟩

def poemAssembly : ThreePhraseAssembly poemChecked where
  opening := openingPhrase
  forecast := predictionPhrase
  payoff := payoffPhrase
  openingRole := rfl
  forecastRole := rfl
  payoffRole := rfl
  openingValid := openingPhrase_valid
  forecastValid := predictionPhrase_valid
  payoffValid := payoffPhrase_valid
  openingFive := openingPhrase_five
  forecastFive := predictionPhrase_five
  payoffFive := payoffPhrase_five
  firstJoin := opening_prediction_glue
  secondJoin := prediction_payoff_glue
  beginsAtSource := rfl
  endsAtSource := rfl
  exactEdges := phrases_exact

def poemProposal : PhraseProposal where
  opening := openingPhrase
  forecast := predictionPhrase
  payoff := payoffPhrase

theorem poemProposal_valid : poemProposal.ValidFor poemChecked := by
  exact ⟨rfl, rfl, rfl,
    openingPhrase_valid, predictionPhrase_valid, payoffPhrase_valid,
    openingPhrase_five, predictionPhrase_five, payoffPhrase_five,
    opening_prediction_glue, prediction_payoff_glue, rfl, rfl, phrases_exact⟩

theorem poem_two_gates_accept :
    (validateThenFit poemWalk poemProposal).isSome = true := by
  simp [validateThenFit, checkWalk, checkProposal,
    poemWalk_valid, poemProposal_valid]

theorem poem_exact_words :
    walkWords (openingPhrase.edges ++ predictionPhrase.edges ++ payoffPhrase.edges) =
      walkWords poemWalk.edges :=
  congrArg walkWords phrases_exact

def wrongStart : WalkInput where
  start := 0
  finish := 1
  edges := [textEdge 1 2 .prairie]

theorem wrongStart_rejected : ¬ WalkValid wrongStart := by decide

theorem wrongStart_pipeline_rejected :
    validateThenFit wrongStart poemProposal = none := by
  simp [validateThenFit, checkWalk, wrongStart_rejected]

def wrongTarget : WalkInput where
  start := 0
  finish := 2
  edges := [textEdge 0 2 .introduction]

theorem wrongTarget_rejected : ¬ WalkValid wrongTarget := by decide

/-- A new surface expression uses the SAME typed edge label and endpoints. -/
def alternateTease : WalkEdge where
  source := 14
  target := 15
  label := .teasePresent
  words := "She nudged me: ‘I'm growing on you ... aren't I?’"

def alternateWalk : WalkInput where
  start := 0
  finish := 15
  edges := poemWalk.edges.take 14 ++ [alternateTease]

theorem alternateWalk_valid : WalkValid alternateWalk := by decide

theorem alternateWalk_same_beats :
    walkLabels alternateWalk.edges = walkLabels poemWalk.edges := by decide

def alternateChecked : CheckedWalk := ⟨alternateWalk, alternateWalk_valid⟩

/-- Source fidelity forbids accidentally reusing the original text proposal. -/
theorem old_proposal_rejected_after_rewrite :
    ¬ poemProposal.ValidFor alternateChecked := by decide

def alternatePayoffPhrase : PhraseModel where
  role := .payoff
  entry := 10
  exit := 15
  edges := alternateWalk.edges.drop 10

def alternateProposal : PhraseProposal where
  opening := openingPhrase
  forecast := predictionPhrase
  payoff := alternatePayoffPhrase

theorem alternateProposal_valid :
    alternateProposal.ValidFor alternateChecked := by decide

theorem alternate_two_gates_accept :
    (validateThenFit alternateWalk alternateProposal).isSome = true := by
  simp [validateThenFit, checkWalk, checkProposal,
    alternateWalk_valid, alternateProposal_valid]

theorem alternateWalk_changes_words :
    walkWords alternateWalk.edges ≠ walkWords poemWalk.edges := by decide

theorem poemChecked_graph_path :
    WordPath graph 0 (walkLabels poemWalk.edges) 15 :=
  poemChecked.sound

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage
