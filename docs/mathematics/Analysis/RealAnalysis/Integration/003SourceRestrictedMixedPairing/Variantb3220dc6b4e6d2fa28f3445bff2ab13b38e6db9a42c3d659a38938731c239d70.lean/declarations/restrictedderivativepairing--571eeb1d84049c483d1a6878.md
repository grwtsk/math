# restrictedDerivativePairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44cc49c4db7bcaf7f68aa1cb3e6d6b148e0ad0ef018088d0a9f77bd6a497ba9f",
  "kind": "def",
  "lexical_name": "restrictedDerivativePairing",
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
  "slug": "restrictedderivativepairing--571eeb1d84049c483d1a6878",
  "source": {
    "blob": "943111eb1820f25101e2e2e418d3b3e71081629e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/003SourceRestrictedMixedPairing/Variantb3220dc6b4e6d2fa28f3445bff2ab13b38e6db9a42c3d659a38938731c239d70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:571eeb1d84049c483d1a6878acb0efe1cf7aed1ab9fb17a89c4c40607910ca69",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/003SourceRestrictedMixedPairing/Variantb3220dc6b4e6d2fa28f3445bff2ab13b38e6db9a42c3d659a38938731c239d70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44cc49c4db7bcaf7f68aa1cb3e6d6b148e0ad0ef018088d0a9f77bd6a497ba9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictedDerivativePairing (S : Set ℝ) (A x y : ℝ) : ℝ :=
  ∫ v in S, deriv (normalizedTest explicitSecondDerivative A) (v + x) *
    deriv (normalizedTest explicitSecondDerivative A) (v + y)

/-- The two source sectors retain the actual mixed-work plus convention. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/003SourceRestrictedMixedPairing/Variantb3220dc6b4e6d2fa28f3445bff2ab13b38e6db9a42c3d659a38938731c239d70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/003SourceRestrictedMixedPairing/Variantb3220dc6b4e6d2fa28f3445bff2ab13b38e6db9a42c3d659a38938731c239d70.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `943111eb1820f25101e2e2e418d3b3e71081629e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
