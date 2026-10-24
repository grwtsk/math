# phaseLocalIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11a747eec48b977fc10f0b54cff6eb00f7efb635823baf7448613c7d3973a8c9",
  "kind": "def",
  "lexical_name": "phaseLocalIndex",
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
  "slug": "phaselocalindex--64099a3c59abc05b9b4e28bb",
  "source": {
    "blob": "6bfed61dd7bd029fc18b87dbce6d84bcaa120d1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 73,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f506c6163656d656e742e6c65616e/Variant9082b258ba9d91d143b9fbde35c8a6239ae553ae18c73f14773b0697ba4dab1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:64099a3c59abc05b9b4e28bb197a2995d793d1d0ae34f8fd98990b53e808761e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f506c6163656d656e742e6c65616e/Variant9082b258ba9d91d143b9fbde35c8a6239ae553ae18c73f14773b0697ba4dab1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11a747eec48b977fc10f0b54cff6eb00f7efb635823baf7448613c7d3973a8c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def phaseLocalIndex : Think.PhaseId -> Nat
  | FWR.Pipeline.CenterWeighted.Phase.requestBoundary => 0
  | FWR.Pipeline.CenterWeighted.Phase.targetSelection => 1
  | FWR.Pipeline.CenterWeighted.Phase.claimAtomization => 2
  | FWR.Pipeline.CenterWeighted.Phase.authorityClassification => 3
  | FWR.Pipeline.CenterWeighted.Phase.finiteCarrierDeclaration => 0
  | FWR.Pipeline.CenterWeighted.Phase.stageParameterization => 1
  | FWR.Pipeline.CenterWeighted.Phase.inputSelection => 2
  | FWR.Pipeline.CenterWeighted.Phase.lFunctionQWaveEncoding => 3
  | FWR.Pipeline.CenterWeighted.Phase.emlLowering => 0
  | FWR.Pipeline.CenterWeighted.Phase.nandLowering => 1
  | FWR.Pipeline.CenterWeighted.Phase.bitMatrixLowering => 2
  | FWR.Pipeline.CenterWeighted.Phase.bitstreamAdmission => 3
  | FWR.Pipeline.CenterWeighted.Phase.decoderPhase => 0
  | FWR.Pipeline.CenterWeighted.Phase.verbBasisValidation => 1
  | FWR.Pipeline.CenterWeighted.Phase.traceOrderValidation => 2
  | FWR.Pipeline.CenterWeighted.Phase.independenceRelationDeclaration => 3
  | FWR.Pipeline.CenterWeighted.Phase.validatedFlipChecking => 4
  | FWR.Pipeline.CenterWeighted.Phase.traceQuotienting => 5
  | FWR.Pipeline.CenterWeighted.Phase.normalFormConstruction => 6
  | FWR.Pipeline.CenterWeighted.Phase.normalFormTerminationCheck => 7
  | FWR.Pipeline.CenterWeighted.Phase.normalFormConfluenceCheck => 8
  | FWR.Pipeline.CenterWeighted.Phase.canonicalEncoder => 9
  | FWR.Pipeline.CenterWeighted.Phase.sectionConstruction => 10
  | FWR.Pipeline.CenterWeighted.Phase.rightRoundTripCheck => 11
  | FWR.Pipeline.CenterWeighted.Phase.leftRoundTripCheck => 12
  | FWR.Pipeline.CenterWeighted.Phase.finiteBijectionWitness => 13
  | FWR.Pipeline.CenterWeighted.Phase.compactShellProjection => 0
  | FWR.Pipeline.CenterWeighted.Phase.orderErasureWarning => 1
  | FWR.Pipeline.CenterWeighted.Phase.transitionMapDeclaration => 2
  | FWR.Pipeline.CenterWeighted.Phase.forwardSquareCheck => 3
  | FWR.Pipeline.CenterWeighted.Phase.sectionSquareCheck => 4
  | FWR.Pipeline.CenterWeighted.Phase.inverseLimitConstruction => 5
  | FWR.Pipeline.CenterWeighted.Phase.limitMapConstruction => 6
  | FWR.Pipeline.CenterWeighted.Phase.limitBijectionCheck => 7
  | FWR.Pipeline.CenterWeighted.Phase.classifierModuleSelection => 0
  | FWR.Pipeline.CenterWeighted.Phase.admissibilityScoring => 1
  | FWR.Pipeline.CenterWeighted.Phase.distributionScoring => 2
  | FWR.Pipeline.CenterWeighted.Phase.weightScoring => 3
  | FWR.Pipeline.CenterWeighted.Phase.denseClusterScoring => 4
  | FWR.Pipeline.CenterWeighted.Phase.parityBarrierScoring => 5
  | FWR.Pipeline.CenterWeighted.Phase.classifierResidueScoring => 6
  | FWR.Pipeline.CenterWeighted.Phase.schedulerCarrierDeclaration => 0
  | FWR.Pipeline.CenterWeighted.Phase.coverageComputation => 1
  | FWR.Pipeline.CenterWeighted.Phase.energyComputation => 2
  | FWR.Pipeline.CenterWeighted.Phase.moveScoring => 3
  | FWR.Pipeline.CenterWeighted.Phase.admissibleMoveSelection => 4
  | FWR.Pipeline.CenterWeighted.Phase.schedulerUpdate => 5
  | FWR.Pipeline.CenterWeighted.Phase.schedulerGuardCheck => 6
  | FWR.Pipeline.CenterWeighted.Phase.monomialStateEncoding => 0
  | FWR.Pipeline.CenterWeighted.Phase.balanceMeasurement => 1
  | FWR.Pipeline.CenterWeighted.Phase.torsionMeasurement => 2
  | FWR.Pipeline.CenterWeighted.Phase.chebyshevEnvelopeComparison => 3
  | FWR.Pipeline.CenterWeighted.Phase.clusterClassification => 4
  | FWR.Pipeline.CenterWeighted.Phase.outputAssembly => 0
  | FWR.Pipeline.CenterWeighted.Phase.residueExtraction => 1
  | FWR.Pipeline.CenterWeighted.Phase.residueContainment => 2
  | FWR.Pipeline.CenterWeighted.Phase.cleanProjection => 3
  | FWR.Pipeline.CenterWeighted.Phase.reverseSectionReplay => 4
  | FWR.Pipeline.CenterWeighted.Phase.forwardReplay => 5
  | FWR.Pipeline.CenterWeighted.Phase.fixedPointComparison => 6
  | FWR.Pipeline.CenterWeighted.Phase.boundaryReport => 7

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f506c6163656d656e742e6c65616e/Variant9082b258ba9d91d143b9fbde35c8a6239ae553ae18c73f14773b0697ba4dab1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f506c6163656d656e742e6c65616e/Variant9082b258ba9d91d143b9fbde35c8a6239ae553ae18c73f14773b0697ba4dab1b.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bfed61dd7bd029fc18b87dbce6d84bcaa120d1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
