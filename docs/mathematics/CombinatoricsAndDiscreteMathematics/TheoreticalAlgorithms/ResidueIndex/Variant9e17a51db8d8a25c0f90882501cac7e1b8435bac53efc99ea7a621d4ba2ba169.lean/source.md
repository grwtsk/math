# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ResidueIndex.Variant9e17a51db8d8a25c0f90882501cac7e1b8435bac53efc99ea7a621d4ba2ba169

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `386b14fcc39417c2142fc90b53b3893aab29dd81` · SHA-256 `9e17a51db8d8a25c0f90882501cac7e1b8435bac53efc99ea7a621d4ba2ba169`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Manuscript.Generated.SourceIndex

set_option autoImplicit false

namespace Think.Manuscript.Generated.ResidueIndex

structure ResidueEntry where
  path : String
  moduleName : String
  sectionId : String
  residueKinds : List String
  checkedResidueCount : Nat
  authorityBoundary : Bool
deriving DecidableEq, Repr

def entries : List ResidueEntry :=
  [
    { path := "formal/Think/Pipeline/Basic.lean", moduleName := "Think.Pipeline.Basic", sectionId := "sourceTreeProjection", residueKinds := ["authorityOverclaim", "conjecturalAtom", "missingAsymptoticTransfer", "missingContinuumLimit", "missingDecode", "missingDefinition", "missingDistributionEstimate", "missingFiniteWitness", "missingLowering", "missingParityBarrierResolution", "missingSection", "missingSieveEstimate", "missingTraceQuotient", "missingTransition", "missingUniformBound"], checkedResidueCount := 1, authorityBoundary := true },
    { path := "formal/Think/Pipeline/BoundaryReport.lean", moduleName := "Think.Pipeline.BoundaryReport", sectionId := "sourceTreeProjection", residueKinds := [], checkedResidueCount := 1, authorityBoundary := false },
    { path := "formal/Think/Pipeline/Center/EMLCompression.lean", moduleName := "Think.Pipeline.Center.EMLCompression", sectionId := "pipelineCenter", residueKinds := ["conjecturalAtom", "missingFiniteWitness"], checkedResidueCount := 2, authorityBoundary := false },
    { path := "formal/Think/Pipeline/Center/InnerOuterHeatflow.lean", moduleName := "Think.Pipeline.Center.InnerOuterHeatflow", sectionId := "pipelineCenter", residueKinds := ["conjecturalAtom"], checkedResidueCount := 1, authorityBoundary := false },
    { path := "formal/Think/Pipeline/Center/RadoModularHeatflow.lean", moduleName := "Think.Pipeline.Center.RadoModularHeatflow", sectionId := "pipelineCenter", residueKinds := ["conjecturalAtom", "externalTheoremNotImported", "missingAsymptoticTransfer", "missingAutomorphicAuthority", "missingContinuumLimit", "missingDecode", "missingDefinition", "missingFiniteWitness", "missingFunctionalEquation", "missingPDEEstimate", "missingSection", "missingTraceQuotient", "missingTransition", "missingUniformBound"], checkedResidueCount := 3, authorityBoundary := true },
    { path := "formal/Think/Pipeline/Center/RadoProjectedHeatflow.lean", moduleName := "Think.Pipeline.Center.RadoProjectedHeatflow", sectionId := "pipelineCenter", residueKinds := ["missingTraceQuotient"], checkedResidueCount := 1, authorityBoundary := false },
    { path := "formal/Think/Residues/CompactLedger.lean", moduleName := "Think.Residues.CompactLedger", sectionId := "residueLedger", residueKinds := [], checkedResidueCount := 0, authorityBoundary := true },
    { path := "formal/Think/Residues/CompactProfile.lean", moduleName := "Think.Residues.CompactProfile", sectionId := "residueLedger", residueKinds := [], checkedResidueCount := 0, authorityBoundary := true },
    { path := "formal/Think/RadoProjectedModularHeatflow/CompactRoles.lean", moduleName := "Think.RadoProjectedModularHeatflow.CompactRoles", sectionId := "radoHeatflowCore", residueKinds := [], checkedResidueCount := 0, authorityBoundary := true },
    { path := "formal/Think/RadoProjectedModularHeatflow/GammaScattering.lean", moduleName := "Think.RadoProjectedModularHeatflow.GammaScattering", sectionId := "radoHeatflowCore", residueKinds := [], checkedResidueCount := 0, authorityBoundary := true },
    { path := "formal/Think/Imports/AuthorityReceipt.lean", moduleName := "Think.Imports.AuthorityReceipt", sectionId := "sourceTreeProjection", residueKinds := [], checkedResidueCount := 1, authorityBoundary := false },
    { path := "formal/Think/Transfers/ClearsResidue.lean", moduleName := "Think.Transfers.ClearsResidue", sectionId := "sourceTreeProjection", residueKinds := ["conjecturalAtom", "replacementOverclaim"], checkedResidueCount := 0, authorityBoundary := false },
    { path := "formal/Think/Transfers/Examples/ToyMissingDefinition.lean", moduleName := "Think.Transfers.Examples.ToyMissingDefinition", sectionId := "sourceTreeProjection", residueKinds := ["conjecturalAtom", "missingDefinition", "replacementOverclaim"], checkedResidueCount := 0, authorityBoundary := false },
    { path := "formal/Think/Transfers/ResidueState.lean", moduleName := "Think.Transfers.ResidueState", sectionId := "sourceTreeProjection", residueKinds := ["conjecturalAtom", "replacementOverclaim"], checkedResidueCount := 0, authorityBoundary := false },
    { path := "formal/Think/Kernel/Bridge.lean", moduleName := "Think.Kernel.Bridge", sectionId := "kernel", residueKinds := ["missingDecode", "missingSection", "missingTraceQuotient", "missingTransition"], checkedResidueCount := 1, authorityBoundary := false },
    { path := "formal/Think/Kernel/InverseLimit.lean", moduleName := "Think.Kernel.InverseLimit", sectionId := "kernel", residueKinds := ["missingTraceQuotient"], checkedResidueCount := 0, authorityBoundary := false },
    { path := "formal/Think/Kernel/Residue.lean", moduleName := "Think.Kernel.Residue", sectionId := "kernel", residueKinds := [], checkedResidueCount := 0, authorityBoundary := true },
    { path := "formal/Think/Targets/AnalyticContinuation.lean", moduleName := "Think.Targets.AnalyticContinuation", sectionId := "targetBoundary", residueKinds := [], checkedResidueCount := 2, authorityBoundary := false },
    { path := "formal/Think/Targets/AutomorphicForms.lean", moduleName := "Think.Targets.AutomorphicForms", sectionId := "targetBoundary", residueKinds := [], checkedResidueCount := 2, authorityBoundary := true },
    { path := "formal/Think/Targets/ConjectureLedger.lean", moduleName := "Think.Targets.ConjectureLedger", sectionId := "targetBoundary", residueKinds := ["conjecturalAtom", "externalTheoremNotImported", "missingAsymptoticTransfer"], checkedResidueCount := 1, authorityBoundary := true },
    { path := "formal/Think/Targets/ExternalResidues.lean", moduleName := "Think.Targets.ExternalResidues", sectionId := "targetBoundary", residueKinds := ["conjecturalAtom", "replacementOverclaim"], checkedResidueCount := 0, authorityBoundary := true },
    { path := "formal/Think/Targets/FiniteDataAsymptotics.lean", moduleName := "Think.Targets.FiniteDataAsymptotics", sectionId := "targetBoundary", residueKinds := [], checkedResidueCount := 2, authorityBoundary := false },
    { path := "formal/Think/Targets/ImportPlan.lean", moduleName := "Think.Targets.ImportPlan", sectionId := "targetBoundary", residueKinds := ["conjecturalAtom", "externalTheoremNotImported", "missingAnalyticContinuation", "missingAsymptoticTransfer", "missingDefinition", "missingDistributionEstimate", "missingFiniteWitness", "missingFunctionalEquation", "missingLowering", "missingPDEEstimate", "missingSieveEstimate", "missingTransition", "missingUniformBound"], checkedResidueCount := 0, authorityBoundary := true },
    { path := "formal/Think/Targets/Kakeya.lean", moduleName := "Think.Targets.Kakeya", sectionId := "targetBoundary", residueKinds := [], checkedResidueCount := 2, authorityBoundary := false },
    { path := "formal/Think/Targets/Modularity.lean", moduleName := "Think.Targets.Modularity", sectionId := "targetBoundary", residueKinds := [], checkedResidueCount := 2, authorityBoundary := true },
    { path := "formal/Think/Targets/NavierStokes.lean", moduleName := "Think.Targets.NavierStokes", sectionId := "targetBoundary", residueKinds := [], checkedResidueCount := 2, authorityBoundary := true },
    { path := "formal/Think/Targets/PrimeGaps.lean", moduleName := "Think.Targets.PrimeGaps", sectionId := "targetBoundary", residueKinds := [], checkedResidueCount := 2, authorityBoundary := false },
    { path := "formal/Think/Targets/RH.lean", moduleName := "Think.Targets.RH", sectionId := "targetBoundary", residueKinds := [], checkedResidueCount := 2, authorityBoundary := false },
    { path := "formal/Think/Targets/SieveTheory.lean", moduleName := "Think.Targets.SieveTheory", sectionId := "targetBoundary", residueKinds := [], checkedResidueCount := 2, authorityBoundary := false },
    { path := "formal/Think/Targets/Statements.lean", moduleName := "Think.Targets.Statements", sectionId := "targetBoundary", residueKinds := ["conjecturalAtom"], checkedResidueCount := 1, authorityBoundary := false },
    { path := "formal/Think/RadoProjectedModularHeatflow/BoundaryPairCorrelation.lean", moduleName := "Think.RadoProjectedModularHeatflow.BoundaryPairCorrelation", sectionId := "radoHeatflowCore", residueKinds := [], checkedResidueCount := 0, authorityBoundary := true },
    { path := "formal/Think/ResearchSurvey/Basic.lean", moduleName := "Think.ResearchSurvey.Basic", sectionId := "researchCorpus", residueKinds := ["conjecturalAtom", "missingDefinition"], checkedResidueCount := 2, authorityBoundary := false },
    { path := "formal/Think/ResearchSurvey/ExternalReferee.lean", moduleName := "Think.ResearchSurvey.ExternalReferee", sectionId := "researchCorpus", residueKinds := ["externalTheoremNotImported"], checkedResidueCount := 2, authorityBoundary := true },
    { path := "formal/Think/ResearchSurvey/OuterFrontier.lean", moduleName := "Think.ResearchSurvey.OuterFrontier", sectionId := "researchCorpus", residueKinds := ["conjecturalAtom"], checkedResidueCount := 1, authorityBoundary := false },
    { path := "formal/Think/ResearchSurvey/Sources/BoundaryActionsAnosov.lean", moduleName := "Think.ResearchSurvey.Sources.BoundaryActionsAnosov", sectionId := "researchCorpus", residueKinds := ["externalTheoremNotImported", "missingDefinition", "missingTransition"], checkedResidueCount := 1, authorityBoundary := true },
    { path := "formal/Think/ResearchSurvey/Sources/BuildingAnosovFlows.lean", moduleName := "Think.ResearchSurvey.Sources.BuildingAnosovFlows", sectionId := "researchCorpus", residueKinds := ["externalTheoremNotImported", "missingDefinition", "missingTransition"], checkedResidueCount := 1, authorityBoundary := true },
    { path := "formal/Think/ResearchSurvey/Sources/CompressionModelingMathematics.lean", moduleName := "Think.ResearchSurvey.Sources.CompressionModelingMathematics", sectionId := "researchCorpus", residueKinds := ["authorityOverclaim", "externalTheoremNotImported", "missingDefinition", "missingUniformBound"], checkedResidueCount := 1, authorityBoundary := true },
    { path := "formal/Think/ResearchSurvey/Sources/EllipticLorentzianSplitting.lean", moduleName := "Think.ResearchSurvey.Sources.EllipticLorentzianSplitting", sectionId := "researchCorpus", residueKinds := ["externalTheoremNotImported", "missingDefinition", "missingPDEEstimate"], checkedResidueCount := 1, authorityBoundary := true },
    { path := "formal/Think/ResearchSurvey/Sources/EverythingIsIlluminated.lean", moduleName := "Think.ResearchSurvey.Sources.EverythingIsIlluminated", sectionId := "researchCorpus", residueKinds := ["conjecturalAtom", "externalTheoremNotImported", "missingDefinition"], checkedResidueCount := 1, authorityBoundary := true },
    { path := "formal/Think/ResearchSurvey/Sources/IJEPAObjective.lean", moduleName := "Think.ResearchSurvey.Sources.IJEPAObjective", sectionId := "researchCorpus", residueKinds := ["authorityOverclaim", "externalTheoremNotImported", "missingDefinition"], checkedResidueCount := 1, authorityBoundary := true },
    { path := "formal/Think/ResearchSurvey/Sources/LiouvilleConformalBootstrap.lean", moduleName := "Think.ResearchSurvey.Sources.LiouvilleConformalBootstrap", sectionId := "researchCorpus", residueKinds := ["conjecturalAtom", "externalTheoremNotImported", "missingAnalyticContinuation", "missingDefinition"], checkedResidueCount := 1, authorityBoundary := true },
    { path := "formal/Think/ResearchSurvey/Sources/LorentzianSyntheticOT.lean", moduleName := "Think.ResearchSurvey.Sources.LorentzianSyntheticOT", sectionId := "researchCorpus", residueKinds := ["externalTheoremNotImported", "missingContinuumLimit", "missingDefinition"], checkedResidueCount := 1, authorityBoundary := true },
    { path := "formal/Think/ResearchSurvey/Sources/NonlinearDAlembertMMS.lean", moduleName := "Think.ResearchSurvey.Sources.NonlinearDAlembertMMS", sectionId := "researchCorpus", residueKinds := ["externalTheoremNotImported", "missingDefinition", "missingPDEEstimate"], checkedResidueCount := 1, authorityBoundary := true },
    { path := "formal/Think/ResearchSurvey/Sources/PseudoAnosovOrbitEquiv.lean", moduleName := "Think.ResearchSurvey.Sources.PseudoAnosovOrbitEquiv", sectionId := "researchCorpus", residueKinds := ["externalTheoremNotImported", "missingDefinition", "missingGeometricMeasureEstimate"], checkedResidueCount := 1, authorityBoundary := true },
    { path := "formal/Think/ResearchSurvey/Sources/RCoveredAnosovOrbitEquiv.lean", moduleName := "Think.ResearchSurvey.Sources.RCoveredAnosovOrbitEquiv", sectionId := "researchCorpus", residueKinds := ["externalTheoremNotImported", "missingDefinition"], checkedResidueCount := 1, authorityBoundary := true },
    { path := "formal/Think/ResearchSurvey/Sources/RadoUniversalGraph.lean", moduleName := "Think.ResearchSurvey.Sources.RadoUniversalGraph", sectionId := "researchCorpus", residueKinds := ["authorityOverclaim", "externalTheoremNotImported", "missingAsymptoticTransfer", "missingContinuumLimit", "missingDecode", "missingDefinition", "missingFiniteWitness", "missingLowering"], checkedResidueCount := 1, authorityBoundary := true },
    { path := "formal/Think/ResearchSurvey/Sources/SyntheticNullHypersurfaces.lean", moduleName := "Think.ResearchSurvey.Sources.SyntheticNullHypersurfaces", sectionId := "researchCorpus", residueKinds := ["externalTheoremNotImported", "missingContinuumLimit", "missingDefinition", "missingGeometricMeasureEstimate"], checkedResidueCount := 1, authorityBoundary := true },
    { path := "formal/Think/Tests/Smoke.lean", moduleName := "Think.Tests.Smoke", sectionId := "validationGate", residueKinds := ["conjecturalAtom"], checkedResidueCount := 1, authorityBoundary := true },
    { path := "formal/Think/Validation/GammaPNTSmooth.lean", moduleName := "Think.Validation.GammaPNTSmooth", sectionId := "validationGate", residueKinds := [], checkedResidueCount := 0, authorityBoundary := true },
    { path := "formal/Think/Manuscript/Classifier.lean", moduleName := "Think.Manuscript.Classifier", sectionId := "frontMatter", residueKinds := ["authorityOverclaim", "conjecturalAtom", "missingDistributionEstimate", "missingFiniteWitness", "missingParityBarrierResolution", "missingSieveEstimate"], checkedResidueCount := 1, authorityBoundary := true },
    { path := "formal/Think/Manuscript/ExternalBoundary.lean", moduleName := "Think.Manuscript.ExternalBoundary", sectionId := "frontMatter", residueKinds := ["externalTheoremNotImported"], checkedResidueCount := 1, authorityBoundary := true },
    { path := "formal/Think/Manuscript/FredholmWitness.lean", moduleName := "Think.Manuscript.FredholmWitness", sectionId := "frontMatter", residueKinds := ["authorityOverclaim", "replacementOverclaim"], checkedResidueCount := 2, authorityBoundary := true },
    { path := "formal/Think/Manuscript/ModularWave.lean", moduleName := "Think.Manuscript.ModularWave", sectionId := "frontMatter", residueKinds := ["externalTheoremNotImported", "missingDecode", "missingDefinition", "missingFiniteWitness", "missingLowering", "missingTraceQuotient"], checkedResidueCount := 1, authorityBoundary := true },
    { path := "formal/Think/Manuscript/MonomialTree.lean", moduleName := "Think.Manuscript.MonomialTree", sectionId := "frontMatter", residueKinds := ["authorityOverclaim", "missingDefinition", "missingFiniteWitness", "missingTraceQuotient", "missingTransition", "missingUniformBound"], checkedResidueCount := 1, authorityBoundary := true },
    { path := "formal/Think/Manuscript/QuotientLimit.lean", moduleName := "Think.Manuscript.QuotientLimit", sectionId := "frontMatter", residueKinds := ["authorityOverclaim", "missingDecode", "missingSection", "missingTraceQuotient", "missingTransition"], checkedResidueCount := 1, authorityBoundary := true },
    { path := "formal/Think/Manuscript/Scheduler.lean", moduleName := "Think.Manuscript.Scheduler", sectionId := "frontMatter", residueKinds := ["conjecturalAtom", "externalTheoremNotImported", "missingDefinition", "missingFiniteWitness", "missingUniformBound"], checkedResidueCount := 1, authorityBoundary := true },
  ]

def residueFileCount : Nat := entries.length

end Think.Manuscript.Generated.ResidueIndex
```
