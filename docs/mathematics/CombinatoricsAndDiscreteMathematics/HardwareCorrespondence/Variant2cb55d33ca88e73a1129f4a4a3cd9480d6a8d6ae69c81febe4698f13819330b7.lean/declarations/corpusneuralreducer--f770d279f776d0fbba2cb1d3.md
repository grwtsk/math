# CorpusNeuralReducer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd7feec6a4206053e0ceb36b0a7d2569d1bd466c099eb5369bb6a874352c0db2",
  "kind": "structure",
  "lexical_name": "CorpusNeuralReducer",
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
  "slug": "corpusneuralreducer--f770d279f776d0fbba2cb1d3",
  "source": {
    "blob": "cdad393cfe25aedc825919e4bcdbb1f2afcba0e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 334,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HardwareCorrespondence/Variant2cb55d33ca88e73a1129f4a4a3cd9480d6a8d6ae69c81febe4698f13819330b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f770d279f776d0fbba2cb1d3c25028a2673e7d2922d70e69b38eec01f33de0a3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/HardwareCorrespondence/Variant2cb55d33ca88e73a1129f4a4a3cd9480d6a8d6ae69c81febe4698f13819330b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd7feec6a4206053e0ceb36b0a7d2569d1bd466c099eb5369bb6a874352c0db2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CorpusNeuralReducer (Coordinate : Type*) [Fintype Coordinate] where
  id : RecordId
  corpusSnapshot : ContentHash
  ontologySnapshot : OntologySnapshotId
  snapshot : NeuralReductionSnapshot Coordinate
  snapshotWellFormed : snapshot.WellFormed
  rhetoricalSpace : PolynomialRhetoricalSpace Coordinate
  accuracy : NeuralAccuracyCertificate Coordinate
  snapshotCorpusAligned : snapshot.corpusSnapshot = corpusSnapshot
  snapshotOntologyAligned : snapshot.ontologySnapshot = ontologySnapshot
  rhetoricalOntologyAligned :
    rhetoricalSpace.ontologySnapshot = ontologySnapshot
  snapshotMetricAligned :
    snapshot.accuracyMetric = accuracy.candidate.accuracyMetric
  snapshotTargetAligned :
    snapshot.admittedTarget = accuracy.candidate.admittedTarget
  snapshotTargetStateAligned : snapshot.targetState = accuracy.target
  snapshotEvidenceAligned :
    snapshot.evidenceRecords =
      accuracy.targetEvidence ∪ accuracy.candidate.evidence
  inputModelsOntology : rhetoricalSpace.Models accuracy.before
  outputModelsOntology :
    rhetoricalSpace.Models
      (accuracy.candidate.transform accuracy.before)
  candidateOnly : Bool
  mutationAuthority : Bool

namespace CorpusNeuralReducer

/-- The reducer and its accuracy certificate use one exact named context. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/HardwareCorrespondence/Variant2cb55d33ca88e73a1129f4a4a3cd9480d6a8d6ae69c81febe4698f13819330b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/HardwareCorrespondence/Variant2cb55d33ca88e73a1129f4a4a3cd9480d6a8d6ae69c81febe4698f13819330b7.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdad393cfe25aedc825919e4bcdbb1f2afcba0e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
