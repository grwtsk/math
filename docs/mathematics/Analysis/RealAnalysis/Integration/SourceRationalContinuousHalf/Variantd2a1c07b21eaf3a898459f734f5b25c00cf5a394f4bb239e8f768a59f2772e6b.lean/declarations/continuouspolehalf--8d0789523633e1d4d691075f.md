# continuousPoleHalf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9901dcf0dc17e193143cd2b633a882bd0e6e133e9b93bb192ca58770aa5a3fcb",
  "kind": "def",
  "lexical_name": "continuousPoleHalf",
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
  "slug": "continuouspolehalf--8d0789523633e1d4d691075f",
  "source": {
    "blob": "71d6b6048c0db5ddb6c5c4729a1278c20f82719a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 24,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variantd2a1c07b21eaf3a898459f734f5b25c00cf5a394f4bb239e8f768a59f2772e6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d0789523633e1d4d691075f515de353476a3c0e9a2dcdcc8263a7f77c3352f5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variantd2a1c07b21eaf3a898459f734f5b25c00cf5a394f4bb239e8f768a59f2772e6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9901dcf0dc17e193143cd2b633a882bd0e6e133e9b93bb192ca58770aa5a3fcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def continuousPoleHalf (A : ℝ) : ℝ :=
  ∫ u : ℝ in Ioi 0, Real.exp (u / 2) * sourceCorrelation explicitSecondDerivative A u

/-- Compact source support converts the continuous half to its exact finite interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variantd2a1c07b21eaf3a898459f734f5b25c00cf5a394f4bb239e8f768a59f2772e6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variantd2a1c07b21eaf3a898459f734f5b25c00cf5a394f4bb239e8f768a59f2772e6b.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71d6b6048c0db5ddb6c5c4729a1278c20f82719a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
