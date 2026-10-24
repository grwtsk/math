# result

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b396b57-53cd-a3e3-6e6e-56745b0cccf5",
  "kind": "theorem",
  "lexical_name": "result",
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
  "slug": "result--91b6f62907d3b2863dde6aef",
  "source": {
    "blob": "1edca6d2bfbfc9ce732ad85a40085e94421487c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 581,
    "line": 565,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant721187a64724efa48f42816a8da1565f99b3dda4fd7a73ca05f7af6eba96aeb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91b6f62907d3b2863dde6aef624720b6985bde49bf19b26a34d64439fc2938b2",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant721187a64724efa48f42816a8da1565f99b3dda4fd7a73ca05f7af6eba96aeb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b396b57-53cd-a3e3-6e6e-56745b0cccf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 565–581.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem result : Concyclic ({cfg.P, cfg.Q, cfg.P₁, cfg.Q₁} : Set Pt) := by
  refine ⟨?_, coplanar_of_fact_finrank_eq_two _⟩
  rw [cospherical_iff_exists_sphere]
  refine ⟨cfg.ω, ?_⟩
  simp only [Set.insert_subset_iff, Set.singleton_subset_iff]
  exact ⟨cfg.P_mem_ω, cfg.Q_mem_ω, cfg.P₁_mem_ω, cfg.Q₁_mem_ω⟩

end

end Imo2019q2Cfg

end

end Imo2019Q2

open Imo2019Q2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant721187a64724efa48f42816a8da1565f99b3dda4fd7a73ca05f7af6eba96aeb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant721187a64724efa48f42816a8da1565f99b3dda4fd7a73ca05f7af6eba96aeb0.lean#L565).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1edca6d2bfbfc9ce732ad85a40085e94421487c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
