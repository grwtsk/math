# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M546172676574732f42617369632e6c65616e.Variantdfb3bb54fe6b3ce578fa7b5476f55c8144f68db497cc8cd2c82de08cbbe8bc40

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7dbbccade15554bcce1a1909cf3f4c1742250de` · SHA-256 `dfb3bb54fe6b3ce578fa7b5476f55c8144f68db497cc8cd2c82de08cbbe8bc40`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.Bit0.Bit1.M506970656c696e652f526573696475652e6c65616e
import Think.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.Bit1.M546172676574732f52482e6c65616e
import Think.Bit1.Bit1.Bit1.Bit1.Bit1.Bit0.Bit1.M546172676574732f4d6f64756c61726974792e6c65616e
import Think.Bit1.Bit0.Bit0.Bit1.Bit1.Bit0.Bit1.Bit0.Bit1.M546172676574732f5072696d65476170732e6c65616e
import Think.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.Bit1.M546172676574732f4e617669657253746f6b65732e6c65616e
import Think.Bit1.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.M546172676574732f4b616b6579612e6c65616e
import Think.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.Bit0.Bit0.M546172676574732f416e616c79746963436f6e74696e756174696f6e2e6c65616e
import Think.Bit0.Bit1.Bit1.Bit1.Bit1.Bit1.Bit0.M546172676574732f53696576655468656f72792e6c65616e
import Think.Bit0.Bit1.Bit0.Bit1.Bit0.Bit1.Bit0.M546172676574732f4175746f6d6f7270686963466f726d732e6c65616e
import Think.Bit1.Bit0.Bit1.Bit0.Bit1.M546172676574732f46696e697465446174614173796d70746f746963732e6c65616e


/- source-tree-label: STL1|L|addr=11011000|role=proof_code_atom|slug=targets-basic|owner=canonical_owner|core=Targets/Basic.lean|leaf=M546172676574732f42617369632e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Targets

abbrev TargetKind := Think.Target

def targetRoot : TargetKind :=
  FWR.Target.CenterWeightedPipeline

def targetKinds : List TargetKind := [
  FWR.Target.RH,
  FWR.Target.Modularity,
  FWR.Target.PrimeGapBounds,
  FWR.Target.NavierStokesRegularity,
  FWR.Target.KakeyaResults,
  FWR.Target.AnalyticContinuation,
  FWR.Target.SieveReplacement,
  FWR.Target.AutomorphicReplacement,
  FWR.Target.FiniteToAsymptotic
]

def noExternalAuthorityUpgradeFor (target : TargetKind) : Prop :=
  targetRoot = FWR.Target.CenterWeightedPipeline ∧
    target ∈ targetKinds ∧
    ∀ r ∈ Think.pipelineResidues, r.target = FWR.Target.CenterWeightedPipeline

theorem noExternalAuthorityUpgradeFor_intro
    (target : TargetKind) (h : target ∈ targetKinds) :
    noExternalAuthorityUpgradeFor target := by
  exact ⟨rfl, h, Think.pipelineResidues_targets_correct⟩

structure TargetWrapper where
  target : TargetKind
  finalResidueWitness : Prop
  finalResidueProof : finalResidueWitness
  centerRoot : TargetKind
  rootedAtCenter : centerRoot = FWR.Target.CenterWeightedPipeline
  noExternalAuthorityUpgrade : noExternalAuthorityUpgradeFor target

def rhWrapper : TargetWrapper where
  target := FWR.Target.RH
  finalResidueWitness :=
    ∀ ctx : FWR.Targets.RH.Context,
      (FWR.Targets.RH.finalWitness ctx).hasResidue = true
  finalResidueProof := FWR.Targets.RH.finalWitness_hasResidue
  centerRoot := targetRoot
  rootedAtCenter := rfl
  noExternalAuthorityUpgrade :=
    noExternalAuthorityUpgradeFor_intro FWR.Target.RH (by decide)

def modularityWrapper : TargetWrapper where
  target := FWR.Target.Modularity
  finalResidueWitness :=
    ∀ ctx : FWR.Targets.Modularity.Context,
      (FWR.Targets.Modularity.finalWitness ctx).hasResidue = true
  finalResidueProof := FWR.Targets.Modularity.finalWitness_hasResidue
  centerRoot := targetRoot
  rootedAtCenter := rfl
  noExternalAuthorityUpgrade :=
    noExternalAuthorityUpgradeFor_intro FWR.Target.Modularity (by decide)

def primeGapsWrapper : TargetWrapper where
  target := FWR.Target.PrimeGapBounds
  finalResidueWitness :=
    ∀ ctx : FWR.Targets.PrimeGaps.Context,
      (FWR.Targets.PrimeGaps.finalWitness ctx).hasResidue = true
  finalResidueProof := FWR.Targets.PrimeGaps.finalWitness_hasResidue
  centerRoot := targetRoot
  rootedAtCenter := rfl
  noExternalAuthorityUpgrade :=
    noExternalAuthorityUpgradeFor_intro FWR.Target.PrimeGapBounds (by decide)

def navierStokesWrapper : TargetWrapper where
  target := FWR.Target.NavierStokesRegularity
  finalResidueWitness :=
    ∀ ctx : FWR.Targets.NavierStokes.Context,
      (FWR.Targets.NavierStokes.finalWitness ctx).hasResidue = true
  finalResidueProof := FWR.Targets.NavierStokes.finalWitness_hasResidue
  centerRoot := targetRoot
  rootedAtCenter := rfl
  noExternalAuthorityUpgrade :=
    noExternalAuthorityUpgradeFor_intro FWR.Target.NavierStokesRegularity (by decide)

def kakeyaWrapper : TargetWrapper where
  target := FWR.Target.KakeyaResults
  finalResidueWitness :=
    ∀ ctx : FWR.Targets.Kakeya.Context,
      (FWR.Targets.Kakeya.finalWitness ctx).hasResidue = true
  finalResidueProof := FWR.Targets.Kakeya.finalWitness_hasResidue
  centerRoot := targetRoot
  rootedAtCenter := rfl
  noExternalAuthorityUpgrade :=
    noExternalAuthorityUpgradeFor_intro FWR.Target.KakeyaResults (by decide)

def analyticContinuationWrapper : TargetWrapper where
  target := FWR.Target.AnalyticContinuation
  finalResidueWitness :=
    ∀ ctx : FWR.Targets.AnalyticContinuation.Context,
      (FWR.Targets.AnalyticContinuation.finalWitness ctx).hasResidue = true
  finalResidueProof := FWR.Targets.AnalyticContinuation.finalWitness_hasResidue
  centerRoot := targetRoot
  rootedAtCenter := rfl
  noExternalAuthorityUpgrade :=
    noExternalAuthorityUpgradeFor_intro FWR.Target.AnalyticContinuation (by decide)

def sieveTheoryWrapper : TargetWrapper where
  target := FWR.Target.SieveReplacement
  finalResidueWitness :=
    ∀ ctx : FWR.Targets.SieveReplacement.Context,
      (FWR.Targets.SieveReplacement.finalWitness ctx).hasResidue = true
  finalResidueProof := FWR.Targets.SieveReplacement.finalWitness_hasResidue
  centerRoot := targetRoot
  rootedAtCenter := rfl
  noExternalAuthorityUpgrade :=
    noExternalAuthorityUpgradeFor_intro FWR.Target.SieveReplacement (by decide)

def automorphicFormsWrapper : TargetWrapper where
  target := FWR.Target.AutomorphicReplacement
  finalResidueWitness :=
    ∀ ctx : FWR.Targets.AutomorphicReplacement.Context,
      (FWR.Targets.AutomorphicReplacement.finalWitness ctx).hasResidue = true
  finalResidueProof := FWR.Targets.AutomorphicReplacement.finalWitness_hasResidue
  centerRoot := targetRoot
  rootedAtCenter := rfl
  noExternalAuthorityUpgrade :=
    noExternalAuthorityUpgradeFor_intro FWR.Target.AutomorphicReplacement (by decide)

def finiteDataAsymptoticsWrapper : TargetWrapper where
  target := FWR.Target.FiniteToAsymptotic
  finalResidueWitness :=
    ∀ ctx : FWR.Targets.FiniteToAsymptotic.Context,
      (FWR.Targets.FiniteToAsymptotic.finalWitness ctx).hasResidue = true
  finalResidueProof := FWR.Targets.FiniteToAsymptotic.finalWitness_hasResidue
  centerRoot := targetRoot
  rootedAtCenter := rfl
  noExternalAuthorityUpgrade :=
    noExternalAuthorityUpgradeFor_intro FWR.Target.FiniteToAsymptotic (by decide)

def allTargetWrappers : List TargetWrapper := [
  rhWrapper,
  modularityWrapper,
  primeGapsWrapper,
  navierStokesWrapper,
  kakeyaWrapper,
  analyticContinuationWrapper,
  sieveTheoryWrapper,
  automorphicFormsWrapper,
  finiteDataAsymptoticsWrapper
]

theorem allTargetWrappers_count :
    allTargetWrappers.length = 9 := by
  rfl

theorem allTargetWrappers_rootedAtCenter :
    ∀ w ∈ allTargetWrappers,
      w.centerRoot = FWR.Target.CenterWeightedPipeline := by
  intro w _h
  exact w.rootedAtCenter

theorem allTargetWrappers_noExternalAuthorityUpgrade :
    ∀ w ∈ allTargetWrappers, noExternalAuthorityUpgradeFor w.target := by
  intro w _h
  exact w.noExternalAuthorityUpgrade

inductive SrcLibAnalyticBoundaryKind where
  | pnt
  | hardyLittlewood
  | hardyRamanujan
  | sieve
  | ramanujanExpansion
  | tauberian
  | explicitFormula
  | rh
  | grh
  | openObstruction
deriving DecidableEq, Repr

inductive SrcLibAnalyticPrimaryStatus where
  | definition
  | surfaceTarget
  | externalAuthorityBoundary
  | externallyProvenAdapterMissing
  | externallyProvenWithHypotheses
  | checkedStructuralAdapter
  | checkedAnalyticTheorem
  | hypothesisDependent
  | externallyUnproved
  | formalizationGap
  | proofObligation
  | openConjecture
  | futureTheoremSlot
  | openObstruction
  | refusedOverclaim
deriving DecidableEq, Repr

def SrcLibAnalyticPrimaryStatus.transfersFamousTheoremAuthority :
    SrcLibAnalyticPrimaryStatus -> Bool
  | .checkedAnalyticTheorem => true
  | _ => false

def srcLibBoundaryDefaultStatus :
    SrcLibAnalyticBoundaryKind -> SrcLibAnalyticPrimaryStatus
  | .pnt => .openObstruction
  | .hardyLittlewood => .openObstruction
  | .hardyRamanujan => .openObstruction
  | .sieve => .openObstruction
  | .ramanujanExpansion => .formalizationGap
  | .tauberian => .formalizationGap
  | .explicitFormula => .externalAuthorityBoundary
  | .rh => .openConjecture
  | .grh => .openConjecture
  | .openObstruction => .openObstruction

def srcLibBoundaryDefaultTarget :
    SrcLibAnalyticBoundaryKind -> TargetKind
  | .pnt => FWR.Target.PrimeGapBounds
  | .hardyLittlewood => FWR.Target.PrimeGapBounds
  | .hardyRamanujan => FWR.Target.FiniteToAsymptotic
  | .sieve => FWR.Target.SieveReplacement
  | .ramanujanExpansion => FWR.Target.FiniteToAsymptotic
  | .tauberian => FWR.Target.FiniteToAsymptotic
  | .explicitFormula => FWR.Target.RH
  | .rh => FWR.Target.RH
  | .grh => FWR.Target.RH
  | .openObstruction => FWR.Target.CenterWeightedPipeline

theorem srcLib_rh_default_non_authoritative :
    (srcLibBoundaryDefaultStatus .rh).transfersFamousTheoremAuthority = false := by
  rfl

theorem srcLib_grh_default_non_authoritative :
    (srcLibBoundaryDefaultStatus .grh).transfersFamousTheoremAuthority = false := by
  rfl

theorem srcLib_pnt_default_non_authoritative :
    (srcLibBoundaryDefaultStatus .pnt).transfersFamousTheoremAuthority = false := by
  rfl

theorem srcLib_sieve_default_non_authoritative :
    (srcLibBoundaryDefaultStatus .sieve).transfersFamousTheoremAuthority = false := by
  rfl

theorem srcLib_explicitFormula_default_non_authoritative :
    (srcLibBoundaryDefaultStatus .explicitFormula).transfersFamousTheoremAuthority = false := by
  rfl

end Think.Targets
```
