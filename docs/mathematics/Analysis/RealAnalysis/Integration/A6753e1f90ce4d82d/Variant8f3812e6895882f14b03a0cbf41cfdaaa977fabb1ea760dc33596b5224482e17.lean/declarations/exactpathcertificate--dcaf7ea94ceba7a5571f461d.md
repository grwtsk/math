# ExactPathCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9926403366126d56c13a830b7eddbea2d5bbe14b4ea565f32d0a4d6a6409a7c6",
  "kind": "structure",
  "lexical_name": "ExactPathCertificate",
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
  "slug": "exactpathcertificate--dcaf7ea94ceba7a5571f461d",
  "source": {
    "blob": "cb181ef8508851102e2132c0b0c1c71e210a5256",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 23,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/A6753e1f90ce4d82d/Variant8f3812e6895882f14b03a0cbf41cfdaaa977fabb1ea760dc33596b5224482e17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dcaf7ea94ceba7a5571f461de400ba79b8630818ebc642742ac6e7e51908bf6f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/A6753e1f90ce4d82d/Variant8f3812e6895882f14b03a0cbf41cfdaaa977fabb1ea760dc33596b5224482e17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9926403366126d56c13a830b7eddbea2d5bbe14b4ea565f32d0a4d6a6409a7c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExactPathCertificate (potential : C0) (path : EventPath) where
  exactIntegral : path.integral =
    NameFeatureVector.sub (potential path.target) (potential path.source)

end Mathematics.Oracle.Naming
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/A6753e1f90ce4d82d/Variant8f3812e6895882f14b03a0cbf41cfdaaa977fabb1ea760dc33596b5224482e17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/A6753e1f90ce4d82d/Variant8f3812e6895882f14b03a0cbf41cfdaaa977fabb1ea760dc33596b5224482e17.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb181ef8508851102e2132c0b0c1c71e210a5256` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
