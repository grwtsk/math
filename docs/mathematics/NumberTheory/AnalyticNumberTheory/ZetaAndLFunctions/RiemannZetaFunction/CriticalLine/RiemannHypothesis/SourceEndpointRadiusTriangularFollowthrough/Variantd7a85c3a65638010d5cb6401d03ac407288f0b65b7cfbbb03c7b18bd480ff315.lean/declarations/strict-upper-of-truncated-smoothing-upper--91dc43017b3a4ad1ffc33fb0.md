# strict_upper_of_truncated_smoothing_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36b7ba64-c7d8-6f88-c252-1122fc404271",
  "kind": "theorem",
  "lexical_name": "strict_upper_of_truncated_smoothing_upper",
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
  "slug": "strict-upper-of-truncated-smoothing-upper--91dc43017b3a4ad1ffc33fb0",
  "source": {
    "blob": "f433b0024ff6e08a9f8508394f11d0802396d2d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 61,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointRadiusTriangularFollowthrough/Variantd7a85c3a65638010d5cb6401d03ac407288f0b65b7cfbbb03c7b18bd480ff315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91dc43017b3a4ad1ffc33fb09b9489dcf339a1384b97baf7cd0466f20adb8673",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointRadiusTriangularFollowthrough/Variantd7a85c3a65638010d5cb6401d03ac407288f0b65b7cfbbb03c7b18bd480ff315.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36b7ba64-c7d8-6f88-c252-1122fc404271`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strict_upper_of_truncated_smoothing_upper (K A : ℝ) (hA : 1 ≤ A)
    (hG : smoothedInterior A ≤ K) (hTrunc : TruncationDiscrepancy A) :
    strictColumnInterior A ≤ K + 1 := by
  have hfinite := (abs_le.mp (sourcePairing_triangular_discrepancy A hA)).2
  have htrunc := (abs_le.mp hTrunc).2
  have hbudget := adaptive_budget A hA
  rw [strictInterior_eq_pairing A hA]
  unfold smoothedInterior at hG
  unfold discrepancy at hbudget
  linarith

/-- The conditional analytic branch has one unit smoothing loss and the same radius endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointRadiusTriangularFollowthrough/Variantd7a85c3a65638010d5cb6401d03ac407288f0b65b7cfbbb03c7b18bd480ff315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointRadiusTriangularFollowthrough/Variantd7a85c3a65638010d5cb6401d03ac407288f0b65b7cfbbb03c7b18bd480ff315.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f433b0024ff6e08a9f8508394f11d0802396d2d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
