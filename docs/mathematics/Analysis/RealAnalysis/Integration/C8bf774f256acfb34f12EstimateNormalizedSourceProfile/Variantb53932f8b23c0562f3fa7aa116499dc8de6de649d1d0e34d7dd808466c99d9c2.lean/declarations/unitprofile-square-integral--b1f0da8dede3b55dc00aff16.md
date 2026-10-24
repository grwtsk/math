# unitProfile_square_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a618f115-c9d7-336a-04a4-c91211e4f0f2",
  "kind": "theorem",
  "lexical_name": "unitProfile_square_integral",
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
  "slug": "unitprofile-square-integral--b1f0da8dede3b55dc00aff16",
  "source": {
    "blob": "ee2f8651758d9cd780b60d8ca2fcca66cc6303cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 150,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantb53932f8b23c0562f3fa7aa116499dc8de6de649d1d0e34d7dd808466c99d9c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1f0da8dede3b55dc00aff164bdb0938276d3f73d0ce7a3187b19fc58bfe98dc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantb53932f8b23c0562f3fa7aa116499dc8de6de649d1d0e34d7dd808466c99d9c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a618f115-c9d7-336a-04a4-c91211e4f0f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitProfile_square_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ s, unitProfile A s ^ 2) = 1 := by
  simpa only [unitCorrelation, sub_zero, pow_two] using unitCorrelation_zero A hA

/-- The exact derivative scaling exposes the factor used in the critical weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantb53932f8b23c0562f3fa7aa116499dc8de6de649d1d0e34d7dd808466c99d9c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantb53932f8b23c0562f3fa7aa116499dc8de6de649d1d0e34d7dd808466c99d9c2.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee2f8651758d9cd780b60d8ca2fcca66cc6303cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
