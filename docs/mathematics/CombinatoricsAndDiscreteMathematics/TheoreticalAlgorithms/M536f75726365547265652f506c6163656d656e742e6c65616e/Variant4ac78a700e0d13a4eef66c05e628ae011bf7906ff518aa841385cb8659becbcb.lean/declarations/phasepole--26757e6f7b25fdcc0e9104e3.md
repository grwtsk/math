# phasePole

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:12083a9b211a03ae49756936649cdbafdd1d2d0296d1c924416ad514b0446141",
  "kind": "def",
  "lexical_name": "phasePole",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "phasepole--26757e6f7b25fdcc0e9104e3",
  "source": {
    "blob": "875f52b60fee4673b666ef8a7ac88356ab7c2a39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 18,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f506c6163656d656e742e6c65616e/Variant4ac78a700e0d13a4eef66c05e628ae011bf7906ff518aa841385cb8659becbcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26757e6f7b25fdcc0e9104e3c092d7b386ca596f1be9a5a7f51d5a82ad6d257b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f506c6163656d656e742e6c65616e/Variant4ac78a700e0d13a4eef66c05e628ae011bf7906ff518aa841385cb8659becbcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:12083a9b211a03ae49756936649cdbafdd1d2d0296d1c924416ad514b0446141`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def phasePole : Think.PhaseId -> Pole
  | FWR.Pipeline.CenterWeighted.Phase.requestBoundary => Pole.request
  | FWR.Pipeline.CenterWeighted.Phase.targetSelection => Pole.request
  | FWR.Pipeline.CenterWeighted.Phase.claimAtomization => Pole.request
  | FWR.Pipeline.CenterWeighted.Phase.authorityClassification => Pole.request
  | FWR.Pipeline.CenterWeighted.Phase.finiteCarrierDeclaration => Pole.carrier
  | FWR.Pipeline.CenterWeighted.Phase.stageParameterization => Pole.carrier
  | FWR.Pipeline.CenterWeighted.Phase.inputSelection => Pole.carrier
  | FWR.Pipeline.CenterWeighted.Phase.lFunctionQWaveEncoding => Pole.carrier
  | FWR.Pipeline.CenterWeighted.Phase.emlLowering => Pole.lowering
  | FWR.Pipeline.CenterWeighted.Phase.nandLowering => Pole.lowering
  | FWR.Pipeline.CenterWeighted.Phase.bitMatrixLowering => Pole.lowering
  | FWR.Pipeline.CenterWeighted.Phase.bitstreamAdmission => Pole.lowering
  | FWR.Pipeline.CenterWeighted.Phase.decoderPhase => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.verbBasisValidation => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.traceOrderValidation => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.independenceRelationDeclaration => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.validatedFlipChecking => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.traceQuotienting => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.normalFormConstruction => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.normalFormTerminationCheck => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.normalFormConfluenceCheck => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.canonicalEncoder => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.sectionConstruction => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.rightRoundTripCheck => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.leftRoundTripCheck => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.finiteBijectionWitness => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.compactShellProjection => Pole.compact
  | FWR.Pipeline.CenterWeighted.Phase.orderErasureWarning => Pole.compact
  | FWR.Pipeline.CenterWeighted.Phase.transitionMapDeclaration => Pole.compact
  | FWR.Pipeline.CenterWeighted.Phase.forwardSquareCheck => Pole.compact
  | FWR.Pipeline.CenterWeighted.Phase.sectionSquareCheck => Pole.compact
  | FWR.Pipeline.CenterWeighted.Phase.inverseLimitConstruction => Pole.compact
  | FWR.Pipeline.CenterWeighted.Phase.limitMapConstruction => Pole.compact
  | FWR.Pipeline.CenterWeighted.Phase.limitBijectionCheck => Pole.compact
  | FWR.Pipeline.CenterWeighted.Phase.classifierModuleSelection => Pole.classifier
  | FWR.Pipeline.CenterWeighted.Phase.admissibilityScoring => Pole.classifier
  | FWR.Pipeline.CenterWeighted.Phase.distributionScoring => Pole.classifier
  | FWR.Pipeline.CenterWeighted.Phase.weightScoring => Pole.classifier
  | FWR.Pipeline.CenterWeighted.Phase.denseClusterScoring => Pole.classifier
  | FWR.Pipeline.CenterWeighted.Phase.parityBarrierScoring => Pole.classifier
  | FWR.Pipeline.CenterWeighted.Phase.classifierResidueScoring => Pole.classifier
  | FWR.Pipeline.CenterWeighted.Phase.schedulerCarrierDeclaration => Pole.scheduler
  | FWR.Pipeline.CenterWeighted.Phase.coverageComputation => Pole.scheduler
  | FWR.Pipeline.CenterWeighted.Phase.energyComputation => Pole.scheduler
  | FWR.Pipeline.CenterWeighted.Phase.moveScoring => Pole.scheduler
  | FWR.Pipeline.CenterWeighted.Phase.admissibleMoveSelection => Pole.scheduler
  | FWR.Pipeline.CenterWeighted.Phase.schedulerUpdate => Pole.scheduler
  | FWR.Pipeline.CenterWeighted.Phase.schedulerGuardCheck => Pole.scheduler
  | FWR.Pipeline.CenterWeighted.Phase.monomialStateEncoding => Pole.cluster
  | FWR.Pipeline.CenterWeighted.Phase.balanceMeasurement => Pole.cluster
  | FWR.Pipeline.CenterWeighted.Phase.torsionMeasurement => Pole.cluster
  | FWR.Pipeline.CenterWeighted.Phase.chebyshevEnvelopeComparison => Pole.cluster
  | FWR.Pipeline.CenterWeighted.Phase.clusterClassification => Pole.cluster
  | FWR.Pipeline.CenterWeighted.Phase.outputAssembly => Pole.boundary
  | FWR.Pipeline.CenterWeighted.Phase.residueExtraction => Pole.boundary
  | FWR.Pipeline.CenterWeighted.Phase.residueContainment => Pole.boundary
  | FWR.Pipeline.CenterWeighted.Phase.cleanProjection => Pole.boundary
  | FWR.Pipeline.CenterWeighted.Phase.reverseSectionReplay => Pole.boundary
  | FWR.Pipeline.CenterWeighted.Phase.forwardReplay => Pole.boundary
  | FWR.Pipeline.CenterWeighted.Phase.fixedPointComparison => Pole.boundary
  | FWR.Pipeline.CenterWeighted.Phase.boundaryReport => Pole.boundary

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f506c6163656d656e742e6c65616e/Variant4ac78a700e0d13a4eef66c05e628ae011bf7906ff518aa841385cb8659becbcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f506c6163656d656e742e6c65616e/Variant4ac78a700e0d13a4eef66c05e628ae011bf7906ff518aa841385cb8659becbcb.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `875f52b60fee4673b666ef8a7ac88356ab7c2a39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
