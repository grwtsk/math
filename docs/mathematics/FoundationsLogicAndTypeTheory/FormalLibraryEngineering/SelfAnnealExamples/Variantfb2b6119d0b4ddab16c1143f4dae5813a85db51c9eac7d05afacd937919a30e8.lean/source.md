# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SelfAnnealExamples.Variantfb2b6119d0b4ddab16c1143f4dae5813a85db51c9eac7d05afacd937919a30e8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `152b7b7a01b5eb2aba5ee8ccdf853692ac63ad09` · SHA-256 `fb2b6119d0b4ddab16c1143f4dae5813a85db51c9eac7d05afacd937919a30e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Presentation.SelfAnneal

/-!
# Toy compile-time self-annealing example

The example uses `True` proof fields to exercise the certificate route.  It is
not evidence that labels, hashes, or generated rename plans own theorem
authority.
-/

namespace Presentation
namespace SelfAnnealExamples

def toySnapshot : LeanAstSnapshot where
  snapshotHash := 11
  moduleCount := 2
  declarationCount := 5

def toyUseEvent : PresentationUseEvent where
  moduleHash := 101
  declarationHash := 202
  presentationHash := 303
  energyAdded := 1

def toyOrganization : TheoremOrganization where
  organizationHash := 404
  importGraphHash := 405
  namespaceGraphHash := 406
  declarationOrderHash := 407

def toyTrace : CompileTimeAnnealReducerTrace where
  traceHash := 505
  terminated := True
  terminatedProof := trivial
  everyStepWitnessed := True
  everyStepWitnessedProof := trivial
  energyMonotoneOrWitnessed := True
  energyMonotoneOrWitnessedProof := trivial

def toyBeforeImportGraph : ImportGraphSnapshot where
  graphHash := 601
  moduleCount := 2
  importEdgeCount := 1

def toyAfterImportGraph : ImportGraphSnapshot where
  graphHash := 601
  moduleCount := 2
  importEdgeCount := 1

def toyImportGraphCertificate : ImportGraphAnnealCertificate where
  beforeGraph := toyBeforeImportGraph
  afterGraph := toyAfterImportGraph
  declarationDependencyGraphHash := 602
  reducerTraceHash := toyTrace.traceHash
  allDependenciesReachable := True
  dependenciesProof := trivial
  noCycleIntroduced := True
  noCycleProof := trivial
  namespaceIdentityPreserved := True
  namespaceProof := trivial
  reducerTraceWitnessed := True
  traceProof := trivial
  sourceMutationDisabled := True
  sourceMutationProof := trivial

def toyOptimality : CompileTimeOptimalityWitness where
  optimalForDeclaredEnergy := True
  optimalityProof := trivial

def toySelfAnnealCertificate : PresentationSelfAnnealCertificate where
  snapshot := toySnapshot
  events := [toyUseEvent]
  organization := toyOrganization
  trace := toyTrace
  optimality := toyOptimality
  authorityBoundaryPreserved := True
  authorityBoundaryProof := trivial

theorem toy_self_anneal_certificate_sound :
    toySelfAnnealCertificate.trace.terminated ∧
      toySelfAnnealCertificate.trace.everyStepWitnessed ∧
      toySelfAnnealCertificate.trace.energyMonotoneOrWitnessed ∧
      toySelfAnnealCertificate.optimality.optimalForDeclaredEnergy ∧
      toySelfAnnealCertificate.authorityBoundaryPreserved :=
  presentation_self_annealing_compile_time_sound toySelfAnnealCertificate

theorem toy_import_graph_anneal_preserves_dependencies :
    toyImportGraphCertificate.allDependenciesReachable ∧
    toyImportGraphCertificate.noCycleIntroduced ∧
    toyImportGraphCertificate.namespaceIdentityPreserved ∧
    toyImportGraphCertificate.reducerTraceWitnessed :=
  self_annealed_import_graph_preserves_dependencies toyImportGraphCertificate

theorem generated_label_example_not_authority :
    ¬ GeneratedLabelOwnsSelfAnnealOptimality "Presentation.generated.label" :=
  generated_label_not_self_anneal_authority _

end SelfAnnealExamples
end Presentation
```
