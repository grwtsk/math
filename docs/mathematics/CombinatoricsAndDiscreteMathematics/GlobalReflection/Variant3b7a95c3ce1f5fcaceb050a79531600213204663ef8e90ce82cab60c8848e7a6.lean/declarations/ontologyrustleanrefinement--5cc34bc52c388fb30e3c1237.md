# OntologyRustLeanRefinement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3a452dd770e731c920f7637ea37111efe408419616af59cd1763921a52892a8",
  "kind": "structure",
  "lexical_name": "OntologyRustLeanRefinement",
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
  "slug": "ontologyrustleanrefinement--5cc34bc52c388fb30e3c1237",
  "source": {
    "blob": "de06990a4fddc0346e87d209143095f0c1cdcfe8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1979,
    "line": 1952,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5cc34bc52c388fb30e3c1237e949e3ca5e6261138d8621804a0e547dd859c11b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3a452dd770e731c920f7637ea37111efe408419616af59cd1763921a52892a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1952–1979.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OntologyRustLeanRefinement where
  ontologyToRust : EvidenceBoundRefinement .ontology .rustSource
  rustToLean : EvidenceBoundRefinement .rustSource .leanProof
  sharedRustArtifact :
    ontologyToRust.target = rustToLean.source
  sharedRustQuality :
    ontologyToRust.targetQuality = rustToLean.sourceQuality
  sharedRustUncertainty :
    ontologyToRust.targetUncertainty = rustToLean.sourceUncertainty
  sharedAccuracyMetric :
    ontologyToRust.accuracyMetric = rustToLean.accuracyMetric
  sharedTargetRecord :
    ontologyToRust.targetRecord = rustToLean.targetRecord
  sharedBalanceCriterion :
    ontologyToRust.balanceCriterion = rustToLean.balanceCriterion
  sharedEvidenceSnapshot :
    ontologyToRust.evidenceSnapshot = rustToLean.evidenceSnapshot
  sharedEvidence :
    ontologyToRust.evidence = rustToLean.evidence
  sharedComparisonTarget :
    ontologyToRust.comparisonTarget = rustToLean.comparisonTarget
  sharedResolvedBalanceCriterion :
    ontologyToRust.resolvedBalanceCriterion =
      rustToLean.resolvedBalanceCriterion

namespace OntologyRustLeanRefinement

/-- Accuracy admitted at the ontology anchor is retained through Lean. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean#L1952).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de06990a4fddc0346e87d209143095f0c1cdcfe8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
