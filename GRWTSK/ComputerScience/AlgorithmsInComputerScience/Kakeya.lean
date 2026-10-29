import Think.Bit0.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.M4b65726e656c2f436865636b65642e6c65616e


/- source-tree-label: STL1|L|addr=100001010|role=proof_code_atom|slug=targets-kakeya|owner=canonical_owner|core=Targets/Kakeya.lean|leaf=M546172676574732f4b616b6579612e6c65616e.lean -/

set_option autoImplicit false

namespace FWR.Targets.Kakeya

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
  Point : Type
  Direction : Type
  SetLike : Type
  HasFiniteDirectionSet : Nat -> Prop
  HasFiniteCoverage : Nat -> Prop
  ContainsUnitSegmentInDirection : SetLike -> Direction -> Prop
  HausdorffDimensionAtLeastFull : SetLike -> Prop
  MinkowskiDimensionAtLeastFull : SetLike -> Prop
  FiniteDirectionsDenseInContinuum : Prop
  HasScaleUniformTubeEstimate : Prop
  HasContinuumDirectionSpace : Prop

inductive Atom where
  | finiteDirectionSet
  | finiteCoverageRelation
  | finiteTubeModel
  | continuumDirectionSpace
  | unitSegmentPredicate
  | deltaTubeAtScale
  | singleScaleIncidenceEstimate
  | scaleUniformEstimate
  | finiteDirectionsToContinuumDirections
  | volumeLowerBound
  | hausdorffDimensionTransfer
  | minkowskiDimensionTransfer
  | finalKakeyaDimensionClaim
deriving DecidableEq, Repr

def Atom.id : Atom -> String
  | .finiteDirectionSet => "finiteDirectionSet"
  | .finiteCoverageRelation => "finiteCoverageRelation"
  | .finiteTubeModel => "finiteTubeModel"
  | .continuumDirectionSpace => "continuumDirectionSpace"
  | .unitSegmentPredicate => "unitSegmentPredicate"
  | .deltaTubeAtScale => "deltaTubeAtScale"
  | .singleScaleIncidenceEstimate => "singleScaleIncidenceEstimate"
  | .scaleUniformEstimate => "scaleUniformEstimate"
  | .finiteDirectionsToContinuumDirections => "finiteDirectionsToContinuumDirections"
  | .volumeLowerBound => "volumeLowerBound"
  | .hausdorffDimensionTransfer => "hausdorffDimensionTransfer"
  | .minkowskiDimensionTransfer => "minkowskiDimensionTransfer"
  | .finalKakeyaDimensionClaim => "finalKakeyaDimensionClaim"

def finalClaim (ctx : Context) : Prop :=
  ∀ K : ctx.SetLike,
    (∀ d : ctx.Direction, ctx.ContainsUnitSegmentInDirection K d) ->
    ctx.HausdorffDimensionAtLeastFull K ∧
    ctx.MinkowskiDimensionAtLeastFull K

def Atom.claim (ctx : Context) : Atom -> Prop
  | .finiteDirectionSet => ∃ n : Nat, ctx.HasFiniteDirectionSet n
  | .finiteCoverageRelation => ∃ n : Nat, ctx.HasFiniteCoverage n
  | .finiteTubeModel => ∃ n : Nat, ctx.HasFiniteCoverage n
  | .continuumDirectionSpace => ctx.HasContinuumDirectionSpace
  | .unitSegmentPredicate =>
      ∃ K : ctx.SetLike, ∃ d : ctx.Direction,
        ctx.ContainsUnitSegmentInDirection K d
  | .deltaTubeAtScale => ∃ n : Nat, ctx.HasFiniteCoverage n
  | .singleScaleIncidenceEstimate => ∃ n : Nat, ctx.HasFiniteCoverage n
  | .scaleUniformEstimate => ctx.HasScaleUniformTubeEstimate
  | .finiteDirectionsToContinuumDirections => ctx.FiniteDirectionsDenseInContinuum
  | .volumeLowerBound => ctx.HasScaleUniformTubeEstimate
  | .hausdorffDimensionTransfer =>
      ∀ K : ctx.SetLike,
        (∀ d : ctx.Direction, ctx.ContainsUnitSegmentInDirection K d) ->
        ctx.HausdorffDimensionAtLeastFull K
  | .minkowskiDimensionTransfer =>
      ∀ K : ctx.SetLike,
        (∀ d : ctx.Direction, ctx.ContainsUnitSegmentInDirection K d) ->
        ctx.MinkowskiDimensionAtLeastFull K
  | .finalKakeyaDimensionClaim => finalClaim ctx

def Atom.kind : Atom -> ResidueKind
  | .finiteDirectionSet => .missingFiniteWitness
  | .finiteCoverageRelation => .missingFiniteWitness
  | .finiteTubeModel => .missingDefinition
  | .continuumDirectionSpace => .missingDefinition
  | .unitSegmentPredicate => .missingDefinition
  | .deltaTubeAtScale => .missingDefinition
  | .singleScaleIncidenceEstimate => .missingGeometricMeasureEstimate
  | .scaleUniformEstimate => .missingUniformBound
  | .finiteDirectionsToContinuumDirections => .missingContinuumLimit
  | .volumeLowerBound => .missingGeometricMeasureEstimate
  | .hausdorffDimensionTransfer => .missingGeometricMeasureEstimate
  | .minkowskiDimensionTransfer => .missingGeometricMeasureEstimate
  | .finalKakeyaDimensionClaim => .conjecturalAtom

def Atom.blocks : Atom -> String
  | .finiteDirectionSet => "finite set of directions for a stage"
  | .finiteCoverageRelation => "finite coverage relation for directions and sets"
  | .finiteTubeModel => "definition of the finite tube model"
  | .continuumDirectionSpace => "definition of the continuum direction space"
  | .unitSegmentPredicate => "predicate asserting a unit segment in each direction"
  | .deltaTubeAtScale => "delta-tube notion at a fixed scale"
  | .singleScaleIncidenceEstimate => "single-scale incidence estimate"
  | .scaleUniformEstimate => "scale-uniform tube estimate"
  | .finiteDirectionsToContinuumDirections => "transfer from finite direction nets to continuum directions"
  | .volumeLowerBound => "volume lower bound needed for dimension conclusions"
  | .hausdorffDimensionTransfer => "transfer from tube estimates to Hausdorff dimension"
  | .minkowskiDimensionTransfer => "transfer from tube estimates to Minkowski dimension"
  | .finalKakeyaDimensionClaim => "the Kakeya dimension theorem-shaped claim"

def Atom.clearsBy : Atom -> String
  | .finiteDirectionSet => "a verified finite direction set"
  | .finiteCoverageRelation => "a verified finite coverage relation"
  | .finiteTubeModel => "a formal tube model"
  | .continuumDirectionSpace => "a formal continuum direction space"
  | .unitSegmentPredicate => "a formal unit-segment predicate"
  | .deltaTubeAtScale => "a formal delta-tube construction"
  | .singleScaleIncidenceEstimate => "a proved incidence estimate at one scale"
  | .scaleUniformEstimate => "a uniform estimate across all required scales"
  | .finiteDirectionsToContinuumDirections => "a density-to-continuum transfer theorem"
  | .volumeLowerBound => "a proved volume lower bound"
  | .hausdorffDimensionTransfer => "a theorem deriving Hausdorff dimension"
  | .minkowskiDimensionTransfer => "a theorem deriving Minkowski dimension"
  | .finalKakeyaDimensionClaim => "a proof of the final dimension claim"

def allAtoms : List Atom := [
  Atom.finiteDirectionSet,
  Atom.finiteCoverageRelation,
  Atom.finiteTubeModel,
  Atom.continuumDirectionSpace,
  Atom.unitSegmentPredicate,
  Atom.deltaTubeAtScale,
  Atom.singleScaleIncidenceEstimate,
  Atom.scaleUniformEstimate,
  Atom.finiteDirectionsToContinuumDirections,
  Atom.volumeLowerBound,
  Atom.hausdorffDimensionTransfer,
  Atom.minkowskiDimensionTransfer,
  Atom.finalKakeyaDimensionClaim
]

def atomResidue (_ctx : Context) (a : Atom) : Residue :=
  { target := Target.KakeyaResults
    atomId := Atom.id a
    kind := Atom.kind a
    blocks := Atom.blocks a
    clearsBy := Atom.clearsBy a }

theorem atomResidue_target (ctx : Context) (a : Atom) :
    (atomResidue ctx a).target = Target.KakeyaResults := by
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
    ∀ r ∈ finalResidues ctx, r.target = Target.KakeyaResults := by
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
    (finalResidues ctx).length = 13 := by
  rfl

end FWR.Targets.Kakeya
