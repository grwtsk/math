import FormalResearch.MathematicalTooling.Semantics.Atlas.RecoverabilityAdapter
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Setoid.Basic

/-!
# Finite source-local occurrences and explicit targets

Source identity is bookkeeping, not a semantic equality test. The finite
inventory indexes occurrences independently of declaration names. A family has
finitely many targets with potentially different codomains; decidable equality
supports exhaustive checks on a finite occurrence universe.
-/

namespace FormalResearch.MathematicalTooling.Semantics.Atlas

universe u v

/-- Identity of one occurrence within one source; printed mathematical names are separate. -/
structure OccurrenceId where
  /-- Provenance identity of the source containing this occurrence. -/
  source : String
  /-- Identifier of this occurrence within its source. -/
  localId : String
  deriving DecidableEq, Repr

/-- An explicitly finite inventory with no duplicate source-local identities. -/
structure OccurrenceUniverse where
  /-- Number of source-local occurrences in the declared inventory. -/
  size : ℕ
  /-- Source-local identity assigned to each finite inventory position. -/
  identity : Fin size → OccurrenceId
  unique : Function.Injective identity

/-- Finite heterogeneous targets, relative to which a quotient may be taken. -/
structure TargetFamily (X : Type u) where
  /-- Number of explicitly declared semantic targets. -/
  count : ℕ
  /-- The target-specific codomain, allowing heterogeneous observations. -/
  Value : Fin count → Type v
  /-- Exact equality decision for each target's values. -/
  valueEquality : ∀ i, DecidableEq (Value i)
  /-- Observation required to survive semantic identification for each target. -/
  value : (i : Fin count) → X → Value i

instance {X : Type u} (targets : TargetFamily.{u, v} X) (i : Fin targets.count) :
    DecidableEq (targets.Value i) := targets.valueEquality i

/-- A coordinate is its decidable equality relation on occurrences. Its values
are the actual quotient, avoiding arbitrary unused values in an index codomain. -/
structure Coordinate (X : Type u) where
  /-- The equivalence relation recording exactly which inputs this coordinate merges. -/
  relation : Setoid X
  /-- Exact decision procedure for the coordinate's equivalence relation. -/
  relationDecidable : DecidableRel relation.r

/-- Use the exact relation decision procedure supplied by the coordinate. -/
instance coordinateRelationDecidable {X : Type u} (coordinate : Coordinate X) :
    DecidableRel coordinate.relation.r :=
  coordinate.relationDecidable

/-- Observe only the equivalence class admitted by this coordinate. -/
def Coordinate.observe {X : Type u} (coordinate : Coordinate X) :
    X → Quotient coordinate.relation := Quotient.mk coordinate.relation

/-- `Refines fine coarse` means equality at the finer coordinate implies
equality at the coarser coordinate. No order notation is overloaded. -/
def Refines {X : Type u} (fine coarse : Coordinate X) : Prop :=
  fine.relation ≤ coarse.relation

theorem refines_refl {X : Type u} (coordinate : Coordinate X) :
    Refines coordinate coordinate := le_refl _

theorem refines_trans {X : Type u} {fine middle coarse : Coordinate X}
    (first : Refines fine middle) (second : Refines middle coarse) :
    Refines fine coarse := le_trans first second

/-- Refinement recovers the old observation through a quotient lift. -/
def refinementMap {X : Type u} {fine coarse : Coordinate X}
    (refinement : Refines fine coarse) :
    Quotient fine.relation → Quotient coarse.relation :=
  Quotient.lift coarse.observe (fun _ _ related => Quotient.sound (refinement related))

/-- The atlas wrapper delegates recovery to the existing factorization theorem. -/
theorem recoverable_of_refinement {X : Type u} {Y : Type v}
    {fine coarse : Coordinate X} {target : X → Y}
    (recovery : RecoverableFrom coarse.observe target)
    (refinement : Refines fine coarse) : RecoverableFrom fine.observe target :=
  recovery.of_factorization fine.observe (refinementMap refinement) (fun _ => rfl)

/-- A collision surviving at fine resolution obstructs the coarser coordinate. -/
def obstructionToCoarser {X : Type u} {Y : Type v}
    {fine coarse : Coordinate X} {target : X → Y}
    (refinement : Refines fine coarse)
    (obstruction : RecoveryObstruction fine.observe target) :
    RecoveryObstruction coarse.observe target where
  left := obstruction.left
  right := obstruction.right
  sameObservation := Quotient.sound (refinement (Quotient.exact obstruction.sameObservation))
  differentTarget := obstruction.differentTarget

end FormalResearch.MathematicalTooling.Semantics.Atlas
