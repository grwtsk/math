# sourceGreenConvolution_hasCompactSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49f8a99e-eaf9-ac5f-2cc3-46c8c29c1929",
  "kind": "theorem",
  "lexical_name": "sourceGreenConvolution_hasCompactSupport",
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
  "slug": "sourcegreenconvolution-hascompactsupport--189d0298408ff4a1f0060413",
  "source": {
    "blob": "3803080067a054bdb580f6394aca947b7f1d681e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 202,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixturesV1Prebytes/Variant1735f1835734d64cfaed9a4622e0bf3f10025d74b812e284b2d22627414f142a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:189d0298408ff4a1f00604134357109e7417161f7509a7cfc1005a2a1c8a31a2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixturesV1Prebytes/Variant1735f1835734d64cfaed9a4622e0bf3f10025d74b812e284b2d22627414f142a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49f8a99e-eaf9-ac5f-2cc3-46c8c29c1929`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceGreenConvolution_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (sourceGreenConvolution A) := by
  have he : sourceGreenConvolution A = fun x ↦ -normalizedPrimitiveBump A x :=
    funext (sourceGreenConvolution_eq_neg_bump hA)
  rw [he]
  exact (normalizedPrimitiveBump_hasCompactSupport hA).neg

/-- The actual convolution vanishes outside the literal source interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixturesV1Prebytes/Variant1735f1835734d64cfaed9a4622e0bf3f10025d74b812e284b2d22627414f142a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixturesV1Prebytes/Variant1735f1835734d64cfaed9a4622e0bf3f10025d74b812e284b2d22627414f142a.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3803080067a054bdb580f6394aca947b7f1d681e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
