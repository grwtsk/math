# spatialDerivative_zero_of_le_abs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51267141-9d8a-ed7d-f9d9-887026c73cd7",
  "kind": "theorem",
  "lexical_name": "spatialDerivative_zero_of_le_abs",
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
  "slug": "spatialderivative-zero-of-le-abs--d5249f2dc2ce4258ea1c55bb",
  "source": {
    "blob": "40bc0ef3c17ffe8b9aea47375d79770ee5434ae3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 87,
    "path": "GRWTSK/Topology/GeneralTopology/MixedSourceV1Prebytes/Variant1233811ae2369906cd75b91d248a066e71d86fed7136195000faf3c7f5883470.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5249f2dc2ce4258ea1c55bbc37c5c639c5570b6c162410772b80dcc7ac2aa11",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MixedSourceV1Prebytes/Variant1233811ae2369906cd75b91d248a066e71d86fed7136195000faf3c7f5883470.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51267141-9d8a-ed7d-f9d9-887026c73cd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spatialDerivative_zero_of_le_abs {A x : ℝ} (hA : 0 < A) (hx : A ≤ |x|) :
    spatialDerivative A x = 0 := by
  have hr : 1 ≤ |x / A| := by
    rw [abs_div, abs_of_pos hA]
    exact (le_div_iff₀ hA).2 (by simpa using hx)
  have ht := sourceBump_traces_zero_of_le_abs hr
  simp [spatialDerivative, ht.2.1, ht.2.2.2]

/-- Spatial derivative support remains contained in the exact original compact interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MixedSourceV1Prebytes/Variant1233811ae2369906cd75b91d248a066e71d86fed7136195000faf3c7f5883470.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MixedSourceV1Prebytes/Variant1233811ae2369906cd75b91d248a066e71d86fed7136195000faf3c7f5883470.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40bc0ef3c17ffe8b9aea47375d79770ee5434ae3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
