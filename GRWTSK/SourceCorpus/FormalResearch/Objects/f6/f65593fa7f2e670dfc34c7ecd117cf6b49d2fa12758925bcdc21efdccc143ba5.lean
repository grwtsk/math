module

public import Surface.Core.NetworkSurgery.Identity
public import Mathlib.Tactic

/-!
# Finite interface-boundary ledger

Each coefficient is an exact operational obligation at an excision/graft
frontier.  This is finite algebraic accounting, not a claim about homology,
cohomology, chain homotopy, or program semantics.
-/

public section

namespace Surface.Core.NetworkSurgery

@[surface_novel]
inductive InterfaceKind where
  | delimiter
  | ownership
  | importDependency
  | symbolReference
  | publicExport
  | theoremStatement
  | buildTarget
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure InterfaceAtom where
  kind : InterfaceKind
  source : StableCode
  target : StableCode
  label : StableCode
deriving DecidableEq, Repr

@[surface_novel]
structure BoundaryTerm where
  atom : InterfaceAtom
  coefficient : Int
deriving DecidableEq, Repr

abbrev BoundaryLedger := List BoundaryTerm

namespace BoundaryLedger

@[expose] def zero : BoundaryLedger := []

@[expose] def add (left right : BoundaryLedger) : BoundaryLedger :=
  left ++ right

@[expose] def neg (ledger : BoundaryLedger) : BoundaryLedger :=
  ledger.map (fun term => { term with coefficient := -term.coefficient })

@[expose] def sub (left right : BoundaryLedger) : BoundaryLedger :=
  add left (neg right)

@[expose] def coefficient (ledger : BoundaryLedger) (atom : InterfaceAtom) : Int :=
  (ledger.filter (fun term => term.atom = atom)).foldl
    (fun total term => total + term.coefficient) 0

@[expose] def support (declaredAtoms : List InterfaceAtom)
    (ledger : BoundaryLedger) : List InterfaceAtom :=
  declaredAtoms.filter (fun atom => coefficient ledger atom ≠ 0)

@[expose] def IsZero (ledger : BoundaryLedger) : Prop :=
  ∀ term ∈ ledger, coefficient ledger term.atom = 0

@[simp] theorem coefficient_zero (atom : InterfaceAtom) :
    coefficient zero atom = 0 := by
  simp [coefficient, zero]

@[simp] theorem add_zero (ledger : BoundaryLedger) : add ledger zero = ledger := by
  simp [add, zero]

@[simp] theorem zero_add (ledger : BoundaryLedger) : add zero ledger = ledger := by
  simp [add, zero]

end BoundaryLedger

@[surface_novel]
structure PreparedBoundaryLedger where
  excision : BoundaryLedger
  graft : BoundaryLedger
  rewrite : BoundaryLedger
deriving DecidableEq, Repr

@[expose] def PreparedBoundaryLedger.totalBoundary
    (prepared : PreparedBoundaryLedger) : BoundaryLedger :=
  BoundaryLedger.add (BoundaryLedger.add prepared.excision prepared.graft)
    prepared.rewrite

@[expose] def BoundaryBalanced (prepared : PreparedBoundaryLedger) : Prop :=
  BoundaryLedger.IsZero prepared.totalBoundary

@[surface_novel, surface_published]
theorem boundaryLedger_zero_of_balanced_excision_graft
    (prepared : PreparedBoundaryLedger)
    (discharged : ∀ term ∈ prepared.totalBoundary,
      BoundaryLedger.coefficient prepared.totalBoundary term.atom = 0) :
    BoundaryBalanced prepared := by
  exact discharged

end Surface.Core.NetworkSurgery
