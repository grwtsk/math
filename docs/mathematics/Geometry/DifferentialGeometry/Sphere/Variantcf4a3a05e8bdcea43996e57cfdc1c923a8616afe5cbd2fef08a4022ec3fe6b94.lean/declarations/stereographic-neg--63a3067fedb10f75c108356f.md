# stereographic'_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1573b1bf-f04f-ffa9-b2bf-7b3af621b126",
  "kind": "lemma",
  "lexical_name": "stereographic'_neg",
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
  "slug": "stereographic-neg--63a3067fedb10f75c108356f",
  "source": {
    "blob": "52a1e72eb4485c2e15934198c6dad7d3d2f431ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 466,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63a3067fedb10f75c108356fd2eb2d2938c4b72cb1f5920154b9881484cbdaac",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1573b1bf-f04f-ffa9-b2bf-7b3af621b126`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma stereographic'_neg {n : ℕ} [Fact (finrank ℝ E = n + 1)] (v : sphere (0 : E) 1) :
    stereographic' n (-v) v = 0 := by
  dsimp [stereographic']
  simp only [EmbeddingLike.map_eq_zero_iff]
  apply stereographic_neg_apply

/-- Consider the differential of the inclusion of the sphere in `E` at the point `v` as a continuous
linear map from `TangentSpace (𝓡 n) v` to `E`.  The range of this map is the orthogonal complement
of `v` in `E`.

Note that there is an abuse here of the defeq between `E` and the tangent space to `E` at `(v:E`).
In general this defeq is not canonical, but in this case (the tangent space of a vector space) it is
canonical. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52a1e72eb4485c2e15934198c6dad7d3d2f431ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
