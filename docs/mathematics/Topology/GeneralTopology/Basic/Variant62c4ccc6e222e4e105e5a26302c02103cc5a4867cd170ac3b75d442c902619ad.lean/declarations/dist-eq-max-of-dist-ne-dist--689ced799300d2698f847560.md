# dist_eq_max_of_dist_ne_dist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae4b6dc0-7de6-d3d8-e019-1e14c28553a5",
  "kind": "lemma",
  "lexical_name": "dist_eq_max_of_dist_ne_dist",
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
  "slug": "dist-eq-max-of-dist-ne-dist--689ced799300d2698f847560",
  "source": {
    "blob": "c46e3ca2da8f552ecc7becbcb150e5f2be9958a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 62,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:689ced799300d2698f847560ab90d9612f5256bd609c9c3eef90f8c1899bb181",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae4b6dc0-7de6-d3d8-e019-1e14c28553a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dist_eq_max_of_dist_ne_dist (h : dist x y ≠ dist y z) :
    dist x z = max (dist x y) (dist y z) := by
  apply le_antisymm (dist_triangle_max x y z)
  rcases h.lt_or_lt with h | h
  · rw [max_eq_right h.le]
    apply (le_max_iff.mp <| dist_triangle_max y x z).resolve_left
    simpa only [not_le, dist_comm x y] using h
  · rw [max_eq_left h.le, dist_comm x y, dist_comm x z]
    apply (le_max_iff.mp <| dist_triangle_max y z x).resolve_left
    simpa only [not_le, dist_comm x y] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c46e3ca2da8f552ecc7becbcb150e5f2be9958a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
