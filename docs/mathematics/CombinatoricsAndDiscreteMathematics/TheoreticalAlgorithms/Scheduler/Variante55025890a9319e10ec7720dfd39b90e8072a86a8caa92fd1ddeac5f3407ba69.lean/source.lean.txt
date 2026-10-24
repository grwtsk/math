import Think.Kernel.Checked

set_option autoImplicit false

namespace FWR.Manuscript.Scheduler

/-
This module formalizes the finite directional scheduler. It is a bounded
controller with explicit coverage and energy guards, not a theorem about the
true Navier-Stokes equations or continuum Kakeya geometry.
-/

universe u

inductive DirectionAnchor where
  | zero
  | one
  | prime (p : Nat)
deriving DecidableEq, Repr

structure Context where
  X : Type u
  State : Type u
  stateAt : Nat -> State
  covers : State -> X -> DirectionAnchor -> Prop
  coverage : Nat -> Nat
  energy : Nat -> Nat
  residueMass : Nat -> Nat
  uncoveredMass : Nat -> Nat
  overload : Nat -> Nat
  Tmax : Nat
  Umax : Nat
  Lmin : Nat
  HasFiniteCarrier : Prop
  HasFiniteDirectionSet : Prop
  HasMoveScore : Prop
  HasForbiddenResidueGuard : Prop

def admissibilityGuard (ctx : Context) : Prop :=
  (∀ t : Nat, t ≤ ctx.Tmax -> ctx.energy t ≤ ctx.Umax) ∧
  ctx.Lmin ≤ ctx.coverage ctx.Tmax

def guardWitness (ctx : Context) (h : admissibilityGuard ctx) :
    Checked (admissibilityGuard ctx) :=
  Checked.proved h

theorem guardWitness_isProved (ctx : Context)
    (h : admissibilityGuard ctx) :
    (guardWitness ctx h).isProved = true := by
  rfl

inductive SchedulerClass where
  | admissibleDenseLowResidue
  | admissibleSparse
  | obstructed
  | distributionBad
  | highOverload
  | parityBarrier
  | insufficientData
  | residue
deriving DecidableEq, Repr

inductive Atom where
  | finiteCarrier
  | finiteDirectionSet
  | finiteCoverageRelation
  | coverageFunctional
  | energyFunctional
  | moveScore
  | horizonGuard
  | forbiddenResidueGuard
  | navierStokesAuthorityRefused
  | kakeyaAuthorityRefused
deriving DecidableEq, Repr

def Atom.id : Atom -> String
  | .finiteCarrier => "finiteCarrier"
  | .finiteDirectionSet => "finiteDirectionSet"
  | .finiteCoverageRelation => "finiteCoverageRelation"
  | .coverageFunctional => "coverageFunctional"
  | .energyFunctional => "energyFunctional"
  | .moveScore => "moveScore"
  | .horizonGuard => "horizonGuard"
  | .forbiddenResidueGuard => "forbiddenResidueGuard"
  | .navierStokesAuthorityRefused => "navierStokesAuthorityRefused"
  | .kakeyaAuthorityRefused => "kakeyaAuthorityRefused"

def Atom.claim (ctx : Context) : Atom -> Prop
  | .finiteCarrier => ctx.HasFiniteCarrier
  | .finiteDirectionSet => ctx.HasFiniteDirectionSet
  | .finiteCoverageRelation => ∃ x : ctx.X, ∃ d : DirectionAnchor,
      ctx.covers (ctx.stateAt 0) x d ∨ ¬ ctx.covers (ctx.stateAt 0) x d
  | .coverageFunctional => ctx.Lmin ≤ ctx.coverage ctx.Tmax ∨
      ctx.coverage ctx.Tmax < ctx.Lmin
  | .energyFunctional => ∀ t : Nat, t ≤ ctx.Tmax ->
      ctx.energy t ≤ ctx.Umax ∨ ctx.Umax < ctx.energy t
  | .moveScore => ctx.HasMoveScore
  | .horizonGuard => admissibilityGuard ctx
  | .forbiddenResidueGuard => ctx.HasForbiddenResidueGuard
  | .navierStokesAuthorityRefused => ctx.HasForbiddenResidueGuard
  | .kakeyaAuthorityRefused => ctx.HasForbiddenResidueGuard

def atomResidue (a : Atom) : Residue :=
  { target := Target.DirectionalScheduler
    atomId := Atom.id a
    kind :=
      match a with
      | .finiteCarrier => ResidueKind.missingFiniteWitness
      | .finiteDirectionSet => ResidueKind.missingFiniteWitness
      | .finiteCoverageRelation => ResidueKind.missingDefinition
      | .coverageFunctional => ResidueKind.missingDefinition
      | .energyFunctional => ResidueKind.missingUniformBound
      | .moveScore => ResidueKind.missingFiniteWitness
      | .horizonGuard => ResidueKind.missingUniformBound
      | .forbiddenResidueGuard => ResidueKind.conjecturalAtom
      | .navierStokesAuthorityRefused => ResidueKind.externalTheoremNotImported
      | .kakeyaAuthorityRefused => ResidueKind.externalTheoremNotImported
    blocks := "promotion of a bounded scheduler to a continuum theorem"
    clearsBy := "a local finite guard proof or a separate external theorem artifact" }

def allAtoms : List Atom := [
  Atom.finiteCarrier,
  Atom.finiteDirectionSet,
  Atom.finiteCoverageRelation,
  Atom.coverageFunctional,
  Atom.energyFunctional,
  Atom.moveScore,
  Atom.horizonGuard,
  Atom.forbiddenResidueGuard,
  Atom.navierStokesAuthorityRefused,
  Atom.kakeyaAuthorityRefused
]

def schedulerResidues : List Residue :=
  allAtoms.map atomResidue

def continuumOverclaim (ctx : Context) : Prop :=
  ctx.HasForbiddenResidueGuard

def continuumOverclaimWitness (ctx : Context) :
    Checked (continuumOverclaim ctx) :=
  Checked.residue schedulerResidues

theorem continuumOverclaimWitness_hasResidue (ctx : Context) :
    (continuumOverclaimWitness ctx).hasResidue = true := by
  rfl

theorem schedulerResidue_count :
    schedulerResidues.length = 10 := by
  rfl

theorem schedulerResidues_targets_correct :
    ∀ r ∈ schedulerResidues,
      r.target = Target.DirectionalScheduler := by
  intro r hr
  rw [schedulerResidues] at hr
  rcases List.mem_map.mp hr with ⟨a, _ha, rfl⟩
  rfl

theorem allAtoms_nodup :
    allAtoms.Nodup := by
  decide

theorem atomId_injective :
    _root_.Function.Injective Atom.id := by
  intro a b h
  cases a <;> cases b <;> simp [Atom.id] at h ⊢

end FWR.Manuscript.Scheduler
