# Cospherical.subtype_val_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92ef2a5c-ef41-6c10-feac-88398f392b9c",
  "kind": "theorem",
  "lexical_name": "Cospherical.subtype_val_iff",
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
  "slug": "cospherical-subtype-val-iff--16b1149ac5b2c4d704c90667",
  "source": {
    "blob": "c2b3b099402443851352843d8c69e5e283214b89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 371,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8d2597c8b873db2382ea71fe4cd5bbc16b23177bcf963ac9944a8001e9d83378.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16b1149ac5b2c4d704c90667c9cb95dddd4e09935a0f8d1fbf030d1078132075",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8d2597c8b873db2382ea71fe4cd5bbc16b23177bcf963ac9944a8001e9d83378.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92ef2a5c-ef41-6c10-feac-88398f392b9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Cospherical.subtype_val_iff {S : AffineSubspace ℝ P} [Nonempty S]
    [S.direction.HasOrthogonalProjection] {ps : Set S} :
    Cospherical (Subtype.val '' ps) ↔ Cospherical ps := by
  refine ⟨fun h => ?_, Cospherical.subtype_val⟩
  rcases ps.eq_empty_or_nonempty with rfl | ⟨p₀, hp₀⟩
  · exact cospherical_empty
  · rcases h with ⟨c, r, hr⟩
    let c' : S := orthogonalProjection S c
    refine ⟨c', dist p₀ c', fun p hp => ?_⟩
    have hp_dist : dist (p : P) c = r := by grind
    have hp₀_dist : dist (p₀ : P) c = r := by grind
    have hpp₀ : dist (p : P) (c : P) = dist (p₀ : P) (c : P) := hp_dist.trans hp₀_dist.symm
    exact (dist_eq_iff_dist_orthogonalProjection_eq (s := S) (p₃ := c) p.2 p₀.2).1 hpp₀

/-- A set of points is cospherical in an affine subspace `S₁` if and only if its image under the
inclusion into a larger affine subspace `S₂` is cospherical. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8d2597c8b873db2382ea71fe4cd5bbc16b23177bcf963ac9944a8001e9d83378.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8d2597c8b873db2382ea71fe4cd5bbc16b23177bcf963ac9944a8001e9d83378.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2b3b099402443851352843d8c69e5e283214b89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
