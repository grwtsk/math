# NodeFiberProjectionTrace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f49eb38f68715f3b78ec80b471590eb28a321b8dfd43868dbcb3a73860e1e72",
  "kind": "structure",
  "lexical_name": "NodeFiberProjectionTrace",
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
  "slug": "nodefiberprojectiontrace--c892e9dd83cf7c83d2d96a40",
  "source": {
    "blob": "ce643ffa6a34759a25dc2916a8f8529a33ed53b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 123,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjection/Variant9babb439d804cb02d1c165a2040d2e70b0564f8784aca2a4b9eb557e014510f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c892e9dd83cf7c83d2d96a4064d0c3c6b86f6b272d281cedf236ffff3c4b0f55",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjection/Variant9babb439d804cb02d1c165a2040d2e70b0564f8784aca2a4b9eb557e014510f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f49eb38f68715f3b78ec80b471590eb28a321b8dfd43868dbcb3a73860e1e72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NodeFiberProjectionTrace where
  traceHash : Nat
  steps : List ProjectionStep
  everyStepProjectsNodeAndFiber : Prop
  everyStepProjectsNodeAndFiberProof : everyStepProjectsNodeAndFiber
  everyStepWitnessed : Prop
  everyStepWitnessedProof : everyStepWitnessed
  preservesPresentationIndex : Prop
  preservesPresentationIndexProof : preservesPresentationIndex
  preservesAuthorityBoundary : Prop
  preservesAuthorityBoundaryProof : preservesAuthorityBoundary
  createsNoAuthority : Prop
  createsNoAuthorityProof : createsNoAuthority

/-- Visible request and Presentation-index inputs on the page. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjection/Variant9babb439d804cb02d1c165a2040d2e70b0564f8784aca2a4b9eb557e014510f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjection/Variant9babb439d804cb02d1c165a2040d2e70b0564f8784aca2a4b9eb557e014510f3.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce643ffa6a34759a25dc2916a8f8529a33ed53b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
