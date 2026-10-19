import Mathlib.Data.Real.Basic
import Mathlib.Tactic.NormNum

/-!
# Rhetorical coordinate semantics

The coordinate, presentation, and semantic layers are distinct.  Classification
changes presentation metadata only; semantic invariance is a separate proof.
-/

namespace BitMatrix.Rhetorical

universe u

/-- A point of the closed rhetorical square `[-1,1]²`. -/
structure RhetoricalCoordinate where
  structuralHierarchy : ℝ
  interpreterPrecision : ℝ
  structuralLower : -1 ≤ structuralHierarchy
  structuralUpper : structuralHierarchy ≤ 1
  precisionLower : -1 ≤ interpreterPrecision
  precisionUpper : interpreterPrecision ≤ 1

/-- The neutral reference point of the executable rhetorical frame. -/
def origin : RhetoricalCoordinate where
  structuralHierarchy := 0
  interpreterPrecision := 0
  structuralLower := by norm_num
  structuralUpper := by norm_num
  precisionLower := by norm_num
  precisionUpper := by norm_num

/-- The four open rhetorical modes. -/
inductive RhetoricalMode where
  | formalHypotaxis
  | formalParataxis
  | pragmaticParataxis
  | pragmaticHypotaxis
  deriving DecidableEq, Repr

/-- Four quadrants, four transition rays, and the selected equilibrium. -/
inductive RhetoricalRegion where
  | formalHypotaxis
  | formalParataxis
  | pragmaticParataxis
  | pragmaticHypotaxis
  | positiveStructuralAxis
  | negativeStructuralAxis
  | positivePrecisionAxis
  | negativePrecisionAxis
  | equilibrium
  deriving DecidableEq, Repr

/-- Classify a point relative to a selected reference point. -/
noncomputable def classify
    (reference point : RhetoricalCoordinate) : RhetoricalRegion :=
  let horizontal := point.structuralHierarchy - reference.structuralHierarchy
  let vertical := point.interpreterPrecision - reference.interpreterPrecision
  if horizontal = 0 ∧ vertical = 0 then .equilibrium
  else if horizontal = 0 ∧ 0 < vertical then .positivePrecisionAxis
  else if horizontal = 0 then .negativePrecisionAxis
  else if vertical = 0 ∧ 0 < horizontal then .positiveStructuralAxis
  else if vertical = 0 then .negativeStructuralAxis
  else if 0 < horizontal ∧ 0 < vertical then .formalHypotaxis
  else if horizontal < 0 ∧ 0 < vertical then .formalParataxis
  else if horizontal < 0 ∧ vertical < 0 then .pragmaticParataxis
  else .pragmaticHypotaxis

/-- An exposition carries rhetorical metadata and one semantic value. -/
structure Exposition (Theory : Type u) where
  mode : RhetoricalMode
  coordinate : RhetoricalCoordinate
  semanticValue : Theory

/-- Faithfulness means equality of meaning, not proximity of coordinates. -/
def Exposition.Faithful
    {Theory : Type u}
    (exposition : Exposition Theory)
    (invariant : Theory) : Prop :=
  exposition.semanticValue = invariant

/-- One semantic object presented in all four open rhetorical modes. -/
structure FourModePresentation (Theory : Type u) where
  invariant : Theory
  formalHypotactic : Exposition Theory
  formalParatactic : Exposition Theory
  pragmaticParatactic : Exposition Theory
  pragmaticHypotactic : Exposition Theory
  formalHypotactic_mode : formalHypotactic.mode = .formalHypotaxis
  formalParatactic_mode : formalParatactic.mode = .formalParataxis
  pragmaticParatactic_mode : pragmaticParatactic.mode = .pragmaticParataxis
  pragmaticHypotactic_mode : pragmaticHypotactic.mode = .pragmaticHypotaxis
  formalHypotactic_semantic : formalHypotactic.semanticValue = invariant
  formalParatactic_semantic : formalParatactic.semanticValue = invariant
  pragmaticParatactic_semantic : pragmaticParatactic.semanticValue = invariant
  pragmaticHypotactic_semantic : pragmaticHypotactic.semanticValue = invariant

namespace FourModePresentation

/-- All four expositions retain exactly the same mathematical object. -/
theorem semantic_invariance
    {Theory : Type u}
    (presentations : FourModePresentation Theory) :
    presentations.formalHypotactic.semanticValue =
        presentations.formalParatactic.semanticValue ∧
      presentations.formalParatactic.semanticValue =
        presentations.pragmaticParatactic.semanticValue ∧
      presentations.pragmaticParatactic.semanticValue =
        presentations.pragmaticHypotactic.semanticValue := by
  constructor
  · exact presentations.formalHypotactic_semantic.trans
      presentations.formalParatactic_semantic.symm
  constructor
  · exact presentations.formalParatactic_semantic.trans
      presentations.pragmaticParatactic_semantic.symm
  · exact presentations.pragmaticParatactic_semantic.trans
      presentations.pragmaticHypotactic_semantic.symm

end FourModePresentation

/-- A communication-efficiency objective remains data, not a dynamics. -/
structure CommunicationObjective where
  evaluate : RhetoricalCoordinate → ℝ

/-- Conditional unique optimum of an expository objective. -/
structure ObjectiveEquilibrium (objective : CommunicationObjective) where
  point : RhetoricalCoordinate
  formalHypotactic : 0 < point.structuralHierarchy ∧
    0 < point.interpreterPrecision
  uniquelyMaximal : ∀ other, other ≠ point →
    objective.evaluate other < objective.evaluate point

/-- A fixed point belongs to a separately supplied dynamics. -/
structure InterpreterFixedPoint where
  State : Type
  dynamics : State → State
  point : State
  fixed : dynamics point = point

end BitMatrix.Rhetorical
