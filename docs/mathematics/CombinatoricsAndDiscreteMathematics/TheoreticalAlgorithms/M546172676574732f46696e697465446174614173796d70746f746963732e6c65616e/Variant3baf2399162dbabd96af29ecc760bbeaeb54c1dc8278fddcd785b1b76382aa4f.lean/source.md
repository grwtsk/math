# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M546172676574732f46696e697465446174614173796d70746f746963732e6c65616e.Variant3baf2399162dbabd96af29ecc760bbeaeb54c1dc8278fddcd785b1b76382aa4f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8b96d3433dc9373a44569939bf7fc2883a333e0` · SHA-256 `51d942fad0e9596500d6569ba5d1bcb2e41c7e346a73312f0f2024ead4b6850f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Context.Variant3d857b017b1a44272b38487c4113deefd64193994bc127557b31caf4075880f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3d857b017b1a44272b38487c4113deefd64193994bc127557b31caf4075880f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Context.Variant3d857b017b1a44272b38487c4113deefd64193994bc127557b31caf4075880f5","mathematical_subject":"Computation.DataStructures","original_sha256":"3d857b017b1a44272b38487c4113deefd64193994bc127557b31caf4075880f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit0/Bit1/Bit0/Bit1/M546172676574732f46696e697465446174614173796d70746f746963732e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.M4b65726e656c2f436865636b65642e6c65616e


/- source-tree-label: STL1|L|addr=10101|role=proof_code_atom|slug=targets-finitedataasymptotics|owner=canonical_owner|core=Targets/FiniteDataAsymptotics.lean|leaf=M546172676574732f46696e697465446174614173796d70746f746963732e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Context.Variant3d857b017b1a44272b38487c4113deefd64193994bc127557b31caf4075880f5

set_option autoImplicit false

namespace FWR.Targets.FiniteToAsymptotic

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
  StageProperty : Nat -> Prop
  AsymptoticProperty : Prop
  HasFiniteWitness : Nat -> Prop
  HasTransitionCompatibility : Prop
  HasInverseLimitObject : Prop
  HasUniformBound : Prop
  HasMonotonicity : Prop
  HasCompactnessArgument : Prop
  HasConvergenceRate : Prop
  HasTransferTheorem : Prop

inductive Atom where
  | finiteStageWitness
  | finiteStageProperty
  | transitionCompatibility
  | inverseLimitObject
  | propertyPreservedUnderRestriction
  | uniformBound
  | monotonicityOrCoherence
  | compactnessOrDiagonalArgument
  | convergenceRate
  | transferTheorem
  | quantifierShiftFromFiniteToAll
  | finalAsymptoticExtraction
deriving DecidableEq, Repr

def Atom.id : Atom -> String
  | .finiteStageWitness => "finiteStageWitness"
  | .finiteStageProperty => "finiteStageProperty"
  | .transitionCompatibility => "transitionCompatibility"
  | .inverseLimitObject => "inverseLimitObject"
  | .propertyPreservedUnderRestriction => "propertyPreservedUnderRestriction"
  | .uniformBound => "uniformBound"
  | .monotonicityOrCoherence => "monotonicityOrCoherence"
  | .compactnessOrDiagonalArgument => "compactnessOrDiagonalArgument"
  | .convergenceRate => "convergenceRate"
  | .transferTheorem => "transferTheorem"
  | .quantifierShiftFromFiniteToAll => "quantifierShiftFromFiniteToAll"
  | .finalAsymptoticExtraction => "finalAsymptoticExtraction"

def finalClaim (ctx : Context) : Prop :=
  (∀ n : Nat, ctx.HasFiniteWitness n ∧ ctx.StageProperty n) ->
  ctx.AsymptoticProperty

def Atom.claim (ctx : Context) : Atom -> Prop
  | .finiteStageWitness => ∀ n : Nat, ctx.HasFiniteWitness n
  | .finiteStageProperty => ∀ n : Nat, ctx.StageProperty n
  | .transitionCompatibility => ctx.HasTransitionCompatibility
  | .inverseLimitObject => ctx.HasInverseLimitObject
  | .propertyPreservedUnderRestriction => ctx.HasTransitionCompatibility
  | .uniformBound => ctx.HasUniformBound
  | .monotonicityOrCoherence => ctx.HasMonotonicity
  | .compactnessOrDiagonalArgument => ctx.HasCompactnessArgument
  | .convergenceRate => ctx.HasConvergenceRate
  | .transferTheorem => ctx.HasTransferTheorem
  | .quantifierShiftFromFiniteToAll =>
      (∀ n : Nat, ctx.HasFiniteWitness n) ->
      (∀ n : Nat, ctx.StageProperty n) ->
      ctx.AsymptoticProperty
  | .finalAsymptoticExtraction => finalClaim ctx

def Atom.kind : Atom -> ResidueKind
  | .finiteStageWitness => .missingFiniteWitness
  | .finiteStageProperty => .missingFiniteWitness
  | .transitionCompatibility => .missingTransition
  | .inverseLimitObject => .missingContinuumLimit
  | .propertyPreservedUnderRestriction => .missingTransition
  | .uniformBound => .missingUniformBound
  | .monotonicityOrCoherence => .missingTransition
  | .compactnessOrDiagonalArgument => .missingContinuumLimit
  | .convergenceRate => .missingUniformBound
  | .transferTheorem => .missingAsymptoticTransfer
  | .quantifierShiftFromFiniteToAll => .missingAsymptoticTransfer
  | .finalAsymptoticExtraction => .conjecturalAtom

def Atom.blocks : Atom -> String
  | .finiteStageWitness => "finite witness at each stage"
  | .finiteStageProperty => "verified property at each finite stage"
  | .transitionCompatibility => "compatibility of witnesses across restriction maps"
  | .inverseLimitObject => "existence of an inverse-limit object"
  | .propertyPreservedUnderRestriction => "preservation of the relevant property under restriction"
  | .uniformBound => "uniform estimates independent of the stage"
  | .monotonicityOrCoherence => "monotonicity or coherence across stages"
  | .compactnessOrDiagonalArgument => "compactness or diagonal argument extracting a limit"
  | .convergenceRate => "rate of convergence sufficient for the target statement"
  | .transferTheorem => "the theorem transferring finite-stage data to asymptotic data"
  | .quantifierShiftFromFiniteToAll => "quantifier shift from every checked finite stage to an asymptotic theorem"
  | .finalAsymptoticExtraction => "the final finite-to-asymptotic extraction claim"

def Atom.clearsBy : Atom -> String
  | .finiteStageWitness => "a proof producing finite witnesses for all stages"
  | .finiteStageProperty => "a proof of the stage property for all stages"
  | .transitionCompatibility => "a transition compatibility theorem"
  | .inverseLimitObject => "an inverse-limit construction"
  | .propertyPreservedUnderRestriction => "a preservation theorem for restriction maps"
  | .uniformBound => "uniform estimates across all stages"
  | .monotonicityOrCoherence => "a monotonicity or coherence theorem"
  | .compactnessOrDiagonalArgument => "a compactness or diagonal extraction theorem"
  | .convergenceRate => "a proved convergence rate"
  | .transferTheorem => "a finite-to-asymptotic transfer theorem"
  | .quantifierShiftFromFiniteToAll => "a theorem justifying the quantifier shift"
  | .finalAsymptoticExtraction => "a proof of the final asymptotic extraction claim"

def allAtoms : List Atom := [
  Atom.finiteStageWitness,
  Atom.finiteStageProperty,
  Atom.transitionCompatibility,
  Atom.inverseLimitObject,
  Atom.propertyPreservedUnderRestriction,
  Atom.uniformBound,
  Atom.monotonicityOrCoherence,
  Atom.compactnessOrDiagonalArgument,
  Atom.convergenceRate,
  Atom.transferTheorem,
  Atom.quantifierShiftFromFiniteToAll,
  Atom.finalAsymptoticExtraction
]

def atomResidue (_ctx : Context) (a : Atom) : Residue :=
  { target := Target.FiniteToAsymptotic
    atomId := Atom.id a
    kind := Atom.kind a
    blocks := Atom.blocks a
    clearsBy := Atom.clearsBy a }

theorem atomResidue_target (ctx : Context) (a : Atom) :
    (atomResidue ctx a).target = Target.FiniteToAsymptotic := by
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
    ∀ r ∈ finalResidues ctx, r.target = Target.FiniteToAsymptotic := by
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
    (finalResidues ctx).length = 12 := by
  rfl

end FWR.Targets.FiniteToAsymptotic
```
