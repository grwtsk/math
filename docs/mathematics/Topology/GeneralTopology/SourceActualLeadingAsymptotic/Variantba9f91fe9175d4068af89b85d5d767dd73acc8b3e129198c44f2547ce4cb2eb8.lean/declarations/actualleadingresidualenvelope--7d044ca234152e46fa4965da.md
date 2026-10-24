# actualLeadingResidualEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97dcd56c45c24364781a0e1bf42b0a6953661eb6edc7523302365c32d2fb6a0a",
  "kind": "def",
  "lexical_name": "actualLeadingResidualEnvelope",
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
  "slug": "actualleadingresidualenvelope--7d044ca234152e46fa4965da",
  "source": {
    "blob": "da17ea0e31d46a38b6b361121d2b4067f291a167",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 35,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variantba9f91fe9175d4068af89b85d5d767dd73acc8b3e129198c44f2547ce4cb2eb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d044ca234152e46fa4965daeb6cf77ea4b0f9d38df30eb89372573edef8dff8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variantba9f91fe9175d4068af89b85d5d767dd73acc8b3e129198c44f2547ce4cb2eb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97dcd56c45c24364781a0e1bf42b0a6953661eb6edc7523302365c32d2fb6a0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualLeadingResidualEnvelope (A : ℝ) : ℝ :=
  260 / A ^ 2 + 960 * 67 / A ^ 3 + logarithmicLeadingErrorEnvelope A +
    actualHeadFractionalEnvelope A

/-- Complete signed pairing retains the independently calibrated integer source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variantba9f91fe9175d4068af89b85d5d767dd73acc8b3e129198c44f2547ce4cb2eb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variantba9f91fe9175d4068af89b85d5d767dd73acc8b3e129198c44f2547ce4cb2eb8.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da17ea0e31d46a38b6b361121d2b4067f291a167` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
