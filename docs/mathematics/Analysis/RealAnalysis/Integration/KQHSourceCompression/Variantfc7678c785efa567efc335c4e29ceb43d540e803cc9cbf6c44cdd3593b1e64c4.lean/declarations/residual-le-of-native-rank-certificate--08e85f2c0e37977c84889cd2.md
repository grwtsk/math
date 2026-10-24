# residual_le_of_native_rank_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:128d52dc-23cc-3bc4-7671-aa37a08739ee",
  "kind": "theorem",
  "lexical_name": "residual_le_of_native_rank_certificate",
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
  "slug": "residual-le-of-native-rank-certificate--08e85f2c0e37977c84889cd2",
  "source": {
    "blob": "f8de5e40896e392501f2e4eace05111d7f2a2ef4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 172,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/KQHSourceCompression/Variantfc7678c785efa567efc335c4e29ceb43d540e803cc9cbf6c44cdd3593b1e64c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08e85f2c0e37977c84889cd2f9ddf40327a9b6f6cfa54fed1d7092a842d0e297",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/KQHSourceCompression/Variantfc7678c785efa567efc335c4e29ceb43d540e803cc9cbf6c44cdd3593b1e64c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:128d52dc-23cc-3bc4-7671-aa37a08739ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_le_of_native_rank_certificate (A B k : ℝ) (hA : 1 ≤ A)
    (hcert : ∀ x y : ℝ, 0 ≤ B * gramForm x y - compression A x y +
      k * ((1 / A ^ 2) * x + y / 4) ^ 2) : mertensResidual A ≤ B := by
  exact native_residual_le_of_rank_certificate A B k (compression A) hA hcert
    (residual_eq_compression A hA)

/-- Describing a residual certificate as a nonaffine certificate pays the exact
delta and the genuine trend provider. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/KQHSourceCompression/Variantfc7678c785efa567efc335c4e29ceb43d540e803cc9cbf6c44cdd3593b1e64c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/KQHSourceCompression/Variantfc7678c785efa567efc335c4e29ceb43d540e803cc9cbf6c44cdd3593b1e64c4.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8de5e40896e392501f2e4eace05111d7f2a2ef4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
