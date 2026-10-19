import Think.Bit0.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.M4b65726e656c2f436865636b65642e6c65616e


/- source-tree-label: STL1|L|addr=11011011|role=proof_code_atom|slug=targets-navierstokes|owner=canonical_owner|core=Targets/NavierStokes.lean|leaf=M546172676574732f4e617669657253746f6b65732e6c65616e.lean -/

set_option autoImplicit false

namespace FWR.Targets.NavierStokes

/-
This file formalizes the relationship between the finite-witness framework
and the named target theorem. It does not prove the target theorem.

The final claim is intentionally returned as `Checked.residue`.
Each residue atom records a distinct missing bridge, estimate, continuation,
uniformity argument, or authority transfer.

Finite witness data may be formalized internally, but no finite witness is
allowed to imply the target-level theorem without an explicit transfer theorem.
-/

structure Context where
  VelocityField : Type
  PressureField : Type
  InitialData : Type
  IsSmooth : VelocityField -> Prop
  SolvesNSE : VelocityField -> PressureField -> InitialData -> Prop
  DivergenceFree : InitialData -> Prop
  GlobalInTime : VelocityField -> Prop
  Unique : VelocityField -> Prop
  HasFiniteScheduler : Nat -> Prop
  HasFiniteEnergyGuard : Nat -> Prop
  SchedulerModelsPDE : Prop
  HasUniformPDEEstimate : Prop
  HasVelocityPressureSemantics : Prop
  HasPressureReconstruction : Prop

inductive Atom where
  | finiteSchedulerState
  | finiteEnergyGuard
  | velocityPressureSemantics
  | divergenceFreeInitialData
  | pdeEquationSemantics
  | localSmoothExistence
  | pressureReconstruction
  | pdeEnergyInequality
  | nonlinearTermEstimate
  | uniformSobolevBound
  | blowupCriterion
  | globalContinuation
  | uniqueness
  | schedulerToPDEBridge
  | finalGlobalRegularity
deriving DecidableEq, Repr

def Atom.id : Atom -> String
  | .finiteSchedulerState => "finiteSchedulerState"
  | .finiteEnergyGuard => "finiteEnergyGuard"
  | .velocityPressureSemantics => "velocityPressureSemantics"
  | .divergenceFreeInitialData => "divergenceFreeInitialData"
  | .pdeEquationSemantics => "pdeEquationSemantics"
  | .localSmoothExistence => "localSmoothExistence"
  | .pressureReconstruction => "pressureReconstruction"
  | .pdeEnergyInequality => "pdeEnergyInequality"
  | .nonlinearTermEstimate => "nonlinearTermEstimate"
  | .uniformSobolevBound => "uniformSobolevBound"
  | .blowupCriterion => "blowupCriterion"
  | .globalContinuation => "globalContinuation"
  | .uniqueness => "uniqueness"
  | .schedulerToPDEBridge => "schedulerToPDEBridge"
  | .finalGlobalRegularity => "finalGlobalRegularity"

def finalClaim (ctx : Context) : Prop :=
  ∀ u0 : ctx.InitialData,
    ctx.DivergenceFree u0 ->
    ∃ u : ctx.VelocityField,
      ∃ p : ctx.PressureField,
        ctx.SolvesNSE u p u0 ∧
        ctx.IsSmooth u ∧
        ctx.GlobalInTime u ∧
        ctx.Unique u

def Atom.claim (ctx : Context) : Atom -> Prop
  | .finiteSchedulerState => ∃ n : Nat, ctx.HasFiniteScheduler n
  | .finiteEnergyGuard => ∃ n : Nat, ctx.HasFiniteEnergyGuard n
  | .velocityPressureSemantics => ctx.HasVelocityPressureSemantics
  | .divergenceFreeInitialData => ∃ u0 : ctx.InitialData, ctx.DivergenceFree u0
  | .pdeEquationSemantics =>
      ∃ u : ctx.VelocityField, ∃ p : ctx.PressureField, ∃ u0 : ctx.InitialData,
        ctx.SolvesNSE u p u0
  | .localSmoothExistence =>
      ∀ u0 : ctx.InitialData,
        ctx.DivergenceFree u0 ->
        ∃ u : ctx.VelocityField,
          ∃ p : ctx.PressureField,
            ctx.SolvesNSE u p u0 ∧ ctx.IsSmooth u
  | .pressureReconstruction => ctx.HasPressureReconstruction
  | .pdeEnergyInequality => ctx.HasUniformPDEEstimate
  | .nonlinearTermEstimate => ctx.HasUniformPDEEstimate
  | .uniformSobolevBound => ctx.HasUniformPDEEstimate
  | .blowupCriterion => ctx.HasUniformPDEEstimate
  | .globalContinuation =>
      ∀ u : ctx.VelocityField, ctx.IsSmooth u -> ctx.GlobalInTime u
  | .uniqueness =>
      ∀ u : ctx.VelocityField, ctx.IsSmooth u -> ctx.Unique u
  | .schedulerToPDEBridge => ctx.SchedulerModelsPDE
  | .finalGlobalRegularity => finalClaim ctx

def Atom.kind : Atom -> ResidueKind
  | .finiteSchedulerState => .missingFiniteWitness
  | .finiteEnergyGuard => .missingFiniteWitness
  | .velocityPressureSemantics => .missingDefinition
  | .divergenceFreeInitialData => .missingDefinition
  | .pdeEquationSemantics => .missingDefinition
  | .localSmoothExistence => .externalTheoremNotImported
  | .pressureReconstruction => .missingPDEEstimate
  | .pdeEnergyInequality => .missingPDEEstimate
  | .nonlinearTermEstimate => .missingPDEEstimate
  | .uniformSobolevBound => .missingUniformBound
  | .blowupCriterion => .missingPDEEstimate
  | .globalContinuation => .missingContinuumLimit
  | .uniqueness => .externalTheoremNotImported
  | .schedulerToPDEBridge => .missingLowering
  | .finalGlobalRegularity => .conjecturalAtom

def Atom.blocks : Atom -> String
  | .finiteSchedulerState => "finite scheduler state construction"
  | .finiteEnergyGuard => "finite energy guard construction"
  | .velocityPressureSemantics => "semantics of velocity and pressure fields"
  | .divergenceFreeInitialData => "semantics of divergence-free initial data"
  | .pdeEquationSemantics => "formal meaning of solving the Navier-Stokes equations"
  | .localSmoothExistence => "local smooth existence for the PDE"
  | .pressureReconstruction => "pressure reconstruction from the velocity field"
  | .pdeEnergyInequality => "PDE energy inequality from analytic estimates"
  | .nonlinearTermEstimate => "nonlinear term estimate strong enough for regularity"
  | .uniformSobolevBound => "uniform Sobolev bound preventing loss of regularity"
  | .blowupCriterion => "criterion connecting estimates to exclusion of blowup"
  | .globalContinuation => "continuation from local smooth solutions to global time"
  | .uniqueness => "uniqueness of the resulting solution"
  | .schedulerToPDEBridge => "bridge from finite scheduler behavior to PDE behavior"
  | .finalGlobalRegularity => "the global regularity theorem-shaped claim"

def Atom.clearsBy : Atom -> String
  | .finiteSchedulerState => "a verified finite scheduler state"
  | .finiteEnergyGuard => "a verified finite energy guard"
  | .velocityPressureSemantics => "formal field spaces and regularity semantics"
  | .divergenceFreeInitialData => "a formal divergence-free predicate"
  | .pdeEquationSemantics => "a formal NSE solution predicate"
  | .localSmoothExistence => "a local smooth existence theorem"
  | .pressureReconstruction => "a pressure reconstruction theorem"
  | .pdeEnergyInequality => "a PDE-level energy inequality"
  | .nonlinearTermEstimate => "a nonlinear estimate at the required strength"
  | .uniformSobolevBound => "a uniform Sobolev estimate"
  | .blowupCriterion => "a proved blowup criterion"
  | .globalContinuation => "a theorem continuing local solutions globally"
  | .uniqueness => "a uniqueness theorem for the stated solution class"
  | .schedulerToPDEBridge => "a theorem interpreting scheduler traces as PDE solutions"
  | .finalGlobalRegularity => "a proof of the final global regularity claim"

def allAtoms : List Atom := [
  Atom.finiteSchedulerState,
  Atom.finiteEnergyGuard,
  Atom.velocityPressureSemantics,
  Atom.divergenceFreeInitialData,
  Atom.pdeEquationSemantics,
  Atom.localSmoothExistence,
  Atom.pressureReconstruction,
  Atom.pdeEnergyInequality,
  Atom.nonlinearTermEstimate,
  Atom.uniformSobolevBound,
  Atom.blowupCriterion,
  Atom.globalContinuation,
  Atom.uniqueness,
  Atom.schedulerToPDEBridge,
  Atom.finalGlobalRegularity
]

def atomResidue (_ctx : Context) (a : Atom) : Residue :=
  { target := Target.NavierStokesRegularity
    atomId := Atom.id a
    kind := Atom.kind a
    blocks := Atom.blocks a
    clearsBy := Atom.clearsBy a }

theorem atomResidue_target (ctx : Context) (a : Atom) :
    (atomResidue ctx a).target = Target.NavierStokesRegularity := by
  rfl

def ledger : AtomLedger Context Atom :=
  { allAtoms := allAtoms
    claim := Atom.claim
    residue := atomResidue }

def finalResidues (ctx : Context) : List Residue :=
  allAtoms.map (atomResidue ctx)

theorem finalResidues_match_allAtoms (ctx : Context) :
    finalResidues ctx = allAtoms.map (atomResidue ctx) := by
  rfl

theorem finalResidues_match_ledger (ctx : Context) :
    finalResidues ctx = ledger.residues ctx := by
  rfl

theorem allAtoms_complete (a : Atom) :
    a ∈ allAtoms := by
  cases a <;> simp [allAtoms]

theorem allAtoms_nodup :
    allAtoms.Nodup := by
  decide

theorem atomId_injective :
    _root_.Function.Injective Atom.id := by
  intro a b h
  cases a <;> cases b <;> simp [Atom.id] at h ⊢

theorem finalResidues_atomIds_nodup (ctx : Context) :
    ((finalResidues ctx).map (fun r => r.atomId)).Nodup := by
  simp [finalResidues, allAtoms, atomResidue, Atom.id]

theorem finalResidues_targets_correct (ctx : Context) :
    ∀ r ∈ finalResidues ctx, r.target = Target.NavierStokesRegularity := by
  intro r hr
  rw [finalResidues] at hr
  rcases List.mem_map.mp hr with ⟨a, _ha, rfl⟩
  exact atomResidue_target ctx a

def finalWitness (ctx : Context) : Checked (finalClaim ctx) :=
  Checked.residue (finalResidues ctx)

theorem finalWitness_hasResidue (ctx : Context) :
    (finalWitness ctx).hasResidue = true := by
  rfl

theorem finalResidue_count (ctx : Context) :
    (finalResidues ctx).length = 15 := by
  rfl

end FWR.Targets.NavierStokes
