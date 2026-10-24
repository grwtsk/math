# continuousHalfRational

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fbeef08902d6b70b11a6649bb1d910e7203637a02cfd86ef98c442dd6845ea77",
  "kind": "def",
  "lexical_name": "continuousHalfRational",
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
  "slug": "continuoushalfrational--f0ebedc6fbc1bec0dde594da",
  "source": {
    "blob": "bcaf2e6e5a83cb627a00ed4a544a894739ea6e84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 30,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuotientV2Prebytes/Variantd7d2d80390a97c0be596f7eb2c7a3725eade462ccb66557d4719916fb30129ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0ebedc6fbc1bec0dde594da34a4434a0fffccf81e3d13ff37dc2de5a9beedc8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/QuotientV2Prebytes/Variantd7d2d80390a97c0be596f7eb2c7a3725eade462ccb66557d4719916fb30129ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fbeef08902d6b70b11a6649bb1d910e7203637a02cfd86ef98c442dd6845ea77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def continuousHalfRational (A : ℝ) : ℝ :=
  -(14 * A ^ 4 + 272 * A ^ 2) / continuousHalfDenominator A

/-- The independently specified rational source derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/QuotientV2Prebytes/Variantd7d2d80390a97c0be596f7eb2c7a3725eade462ccb66557d4719916fb30129ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuotientV2Prebytes/Variantd7d2d80390a97c0be596f7eb2c7a3725eade462ccb66557d4719916fb30129ab.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcaf2e6e5a83cb627a00ed4a544a894739ea6e84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
