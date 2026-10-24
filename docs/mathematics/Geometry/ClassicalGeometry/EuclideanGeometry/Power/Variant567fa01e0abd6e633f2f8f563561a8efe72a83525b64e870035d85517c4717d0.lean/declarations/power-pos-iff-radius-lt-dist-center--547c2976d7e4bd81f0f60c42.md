# power_pos_iff_radius_lt_dist_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95db464756104328cd73f6318dd557bf13bcef98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 235,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd49963f-7010-774d-6d87-78c6914142a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f86c4961-d5d6-6227-a9e7-a525b4131d22",
  "kind": "theorem",
  "lexical_name": "power_pos_iff_radius_lt_dist_center",
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
  "slug": "power-pos-iff-radius-lt-dist-center--547c2976d7e4bd81f0f60c42",
  "source": {
    "blob": "95db464756104328cd73f6318dd557bf13bcef98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 235,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:547c2976d7e4bd81f0f60c42598934460cc6e13160d61579896ac17ff18fa386",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f86c4961-d5d6-6227-a9e7-a525b4131d22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem power_pos_iff_radius_lt_dist_center {s : Sphere P} {p : P} (hr : 0 ≤ s.radius) :
    0 < s.power p ↔ s.radius < dist p s.center := by
  rw [power, sub_pos, pow_lt_pow_iff_left₀ hr dist_nonneg two_ne_zero]

/-- The power of a point is negative if and only if the point lies inside the sphere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95db464756104328cd73f6318dd557bf13bcef98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
