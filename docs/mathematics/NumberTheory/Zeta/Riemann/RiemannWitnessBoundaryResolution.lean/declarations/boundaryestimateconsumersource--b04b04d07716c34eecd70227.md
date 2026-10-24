# boundaryEstimateConsumerSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:063a738233a17a965535c09108818750ac2ee30bbed4c2ea6fb680bfdd5b70b5",
  "kind": "def",
  "lexical_name": "boundaryEstimateConsumerSource",
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
  "slug": "boundaryestimateconsumersource--b04b04d07716c34eecd70227",
  "source": {
    "blob": "5a655f06ef700131e61cd84fd2a9515f8cef7ad7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 101,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b04b04d07716c34eecd702271413639b3bfd7fa4b0347a93b8fe4adc542e5d2a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:063a738233a17a965535c09108818750ac2ee30bbed4c2ea6fb680bfdd5b70b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boundaryEstimateConsumerSource : ExternalRepositoryRef where
  repository := "grwtsk/formal-research"
  issue := some 16
  pullRequest := some 289
  commit := acceptedMain
  path := "FormalResearch/RiemannHypothesis/SourcePrimePowerPartition.lean"
  declaration :=
    "FormalResearch.RiemannHypothesis.SourcePrimePowerPartition.estimate_of_firstPrime_tail"
  evidenceNote :=
    "Accepted-main theorem: FirstPrimeTailUpperBound implies CorrelationAssembly.EstimateObligation."

/-- Exact target proposition supplied by the accepted external consumer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a655f06ef700131e61cd84fd2a9515f8cef7ad7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
