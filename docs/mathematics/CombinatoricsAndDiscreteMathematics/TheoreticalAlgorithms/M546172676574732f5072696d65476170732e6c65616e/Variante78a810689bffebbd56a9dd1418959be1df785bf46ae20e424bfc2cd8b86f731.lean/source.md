# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M546172676574732f5072696d65476170732e6c65616e.Variante78a810689bffebbd56a9dd1418959be1df785bf46ae20e424bfc2cd8b86f731

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6aa23691388ee7dd8a579a4486223531c2d6375d` · SHA-256 `e78a810689bffebbd56a9dd1418959be1df785bf46ae20e424bfc2cd8b86f731`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.M4b65726e656c2f436865636b65642e6c65616e


/- source-tree-label: STL1|L|addr=100110101|role=proof_code_atom|slug=targets-primegaps|owner=canonical_owner|core=Targets/PrimeGaps.lean|leaf=M546172676574732f5072696d65476170732e6c65616e.lean -/

set_option autoImplicit false

namespace FWR.Targets.PrimeGaps

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
  K : Nat
  KnownBenchmark : Nat
  Prime : Nat -> Prop
  GapBoundClaim : Nat -> Prop
  HasFiniteWindow : Nat -> Prop
  HasAdmissibleTuple : Nat -> Prop
  HasDistributionCertificate : Nat -> Prop
  HasMaynardWeightCertificate : Nat -> Prop
  HasParityBarrierCertificate : Nat -> Prop
  InfiniteGoodWindows : Prop
  UniformSieveEstimate : Prop

inductive Atom where
  | finitePrimeWindow
  | candidateGapBound
  | improvementOverBenchmark
  | admissibleTuple
  | localObstructionRemoval
  | distributionCertificate
  | maynardWeightCertificate
  | denseClusterScore
  | parityBarrierFlag
  | levelOfDistributionEstimate
  | uniformSieveErrorTerms
  | positivityInequality
  | infiniteGoodWindows
  | asymptoticLiminfExtraction
  | finalImprovedGapBound
deriving DecidableEq, Repr

def Atom.id : Atom -> String
  | .finitePrimeWindow => "finitePrimeWindow"
  | .candidateGapBound => "candidateGapBound"
  | .improvementOverBenchmark => "improvementOverBenchmark"
  | .admissibleTuple => "admissibleTuple"
  | .localObstructionRemoval => "localObstructionRemoval"
  | .distributionCertificate => "distributionCertificate"
  | .maynardWeightCertificate => "maynardWeightCertificate"
  | .denseClusterScore => "denseClusterScore"
  | .parityBarrierFlag => "parityBarrierFlag"
  | .levelOfDistributionEstimate => "levelOfDistributionEstimate"
  | .uniformSieveErrorTerms => "uniformSieveErrorTerms"
  | .positivityInequality => "positivityInequality"
  | .infiniteGoodWindows => "infiniteGoodWindows"
  | .asymptoticLiminfExtraction => "asymptoticLiminfExtraction"
  | .finalImprovedGapBound => "finalImprovedGapBound"

def finalClaim (ctx : Context) : Prop :=
  ctx.K < ctx.KnownBenchmark ∧ ctx.GapBoundClaim ctx.K

def Atom.claim (ctx : Context) : Atom -> Prop
  | .finitePrimeWindow => ∃ n : Nat, ctx.HasFiniteWindow n
  | .candidateGapBound => ctx.GapBoundClaim ctx.K
  | .improvementOverBenchmark => ctx.K < ctx.KnownBenchmark
  | .admissibleTuple => ∃ n : Nat, ctx.HasAdmissibleTuple n
  | .localObstructionRemoval => ∃ n : Nat, ctx.HasAdmissibleTuple n
  | .distributionCertificate => ∃ n : Nat, ctx.HasDistributionCertificate n
  | .maynardWeightCertificate => ∃ n : Nat, ctx.HasMaynardWeightCertificate n
  | .denseClusterScore => ∃ n : Nat, ctx.HasMaynardWeightCertificate n
  | .parityBarrierFlag => ∃ n : Nat, ctx.HasParityBarrierCertificate n
  | .levelOfDistributionEstimate => ∃ n : Nat, ctx.HasDistributionCertificate n
  | .uniformSieveErrorTerms => ctx.UniformSieveEstimate
  | .positivityInequality => ∃ n : Nat, ctx.HasMaynardWeightCertificate n
  | .infiniteGoodWindows => ctx.InfiniteGoodWindows
  | .asymptoticLiminfExtraction =>
      ctx.InfiniteGoodWindows -> ctx.GapBoundClaim ctx.K
  | .finalImprovedGapBound => finalClaim ctx

def Atom.kind : Atom -> ResidueKind
  | .finitePrimeWindow => .missingFiniteWitness
  | .candidateGapBound => .conjecturalAtom
  | .improvementOverBenchmark => .conjecturalAtom
  | .admissibleTuple => .missingFiniteWitness
  | .localObstructionRemoval => .missingFiniteWitness
  | .distributionCertificate => .missingDistributionEstimate
  | .maynardWeightCertificate => .missingSieveEstimate
  | .denseClusterScore => .missingSieveEstimate
  | .parityBarrierFlag => .missingParityBarrierResolution
  | .levelOfDistributionEstimate => .missingDistributionEstimate
  | .uniformSieveErrorTerms => .missingUniformBound
  | .positivityInequality => .missingSieveEstimate
  | .infiniteGoodWindows => .missingAsymptoticTransfer
  | .asymptoticLiminfExtraction => .missingAsymptoticTransfer
  | .finalImprovedGapBound => .conjecturalAtom

def Atom.blocks : Atom -> String
  | .finitePrimeWindow => "finite verification of a prime window"
  | .candidateGapBound => "identification of the claimed finite gap bound"
  | .improvementOverBenchmark => "comparison with the benchmark supplied by the context"
  | .admissibleTuple => "finite admissible tuple certificate"
  | .localObstructionRemoval => "removal of local congruence obstructions"
  | .distributionCertificate => "distribution estimate certificate for primes in progressions"
  | .maynardWeightCertificate => "Maynard weight certificate for the finite window"
  | .denseClusterScore => "positive dense-cluster score from the sieve weights"
  | .parityBarrierFlag => "resolution of the parity barrier for the claimed inference"
  | .levelOfDistributionEstimate => "level-of-distribution estimate at the needed strength"
  | .uniformSieveErrorTerms => "uniform sieve error terms beyond the finite check"
  | .positivityInequality => "positivity of the sieve functional"
  | .infiniteGoodWindows => "infinite supply of windows with the certified behavior"
  | .asymptoticLiminfExtraction => "extraction of the liminf prime-gap statement"
  | .finalImprovedGapBound => "the improved prime-gap theorem-shaped claim"

def Atom.clearsBy : Atom -> String
  | .finitePrimeWindow => "a finite prime-window certificate"
  | .candidateGapBound => "a proof that the candidate bound has the desired target meaning"
  | .improvementOverBenchmark => "a proof of the benchmark comparison"
  | .admissibleTuple => "a verified admissible tuple certificate"
  | .localObstructionRemoval => "a proof that all local obstructions are removed"
  | .distributionCertificate => "a proved distribution theorem at the required level"
  | .maynardWeightCertificate => "a verified Maynard weight construction"
  | .denseClusterScore => "a proof that the weight score is positive"
  | .parityBarrierFlag => "a theorem resolving the parity obstruction in this setting"
  | .levelOfDistributionEstimate => "a level-of-distribution theorem with explicit constants"
  | .uniformSieveErrorTerms => "uniform error bounds for all sufficiently large stages"
  | .positivityInequality => "a proof of the sieve positivity inequality"
  | .infiniteGoodWindows => "a theorem producing infinitely many good windows"
  | .asymptoticLiminfExtraction => "a transfer theorem from good windows to a liminf bound"
  | .finalImprovedGapBound => "a proof of the final improved gap-bound claim"

def allAtoms : List Atom := [
  Atom.finitePrimeWindow,
  Atom.candidateGapBound,
  Atom.improvementOverBenchmark,
  Atom.admissibleTuple,
  Atom.localObstructionRemoval,
  Atom.distributionCertificate,
  Atom.maynardWeightCertificate,
  Atom.denseClusterScore,
  Atom.parityBarrierFlag,
  Atom.levelOfDistributionEstimate,
  Atom.uniformSieveErrorTerms,
  Atom.positivityInequality,
  Atom.infiniteGoodWindows,
  Atom.asymptoticLiminfExtraction,
  Atom.finalImprovedGapBound
]

def atomResidue (_ctx : Context) (a : Atom) : Residue :=
  { target := Target.PrimeGapBounds
    atomId := Atom.id a
    kind := Atom.kind a
    blocks := Atom.blocks a
    clearsBy := Atom.clearsBy a }

theorem atomResidue_target (ctx : Context) (a : Atom) :
    (atomResidue ctx a).target = Target.PrimeGapBounds := by
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
    ∀ r ∈ finalResidues ctx, r.target = Target.PrimeGapBounds := by
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

end FWR.Targets.PrimeGaps
```
