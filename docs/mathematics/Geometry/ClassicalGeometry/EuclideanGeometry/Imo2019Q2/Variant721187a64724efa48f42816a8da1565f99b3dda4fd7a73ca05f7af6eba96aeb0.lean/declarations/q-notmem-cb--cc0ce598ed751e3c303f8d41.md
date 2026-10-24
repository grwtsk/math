# Q_notMem_CB

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24c62c84-228e-52bd-7135-30af84d2fbf4",
  "kind": "theorem",
  "lexical_name": "Q_notMem_CB",
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
  "slug": "q-notmem-cb--cc0ce598ed751e3c303f8d41",
  "source": {
    "blob": "1edca6d2bfbfc9ce732ad85a40085e94421487c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 219,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant721187a64724efa48f42816a8da1565f99b3dda4fd7a73ca05f7af6eba96aeb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc0ce598ed751e3c303f8d4100cd44a85b5a0c278ef74768c465eacf01ff8526",
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

Occurrence: `result:24c62c84-228e-52bd-7135-30af84d2fbf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Q_notMem_CB : cfg.Q ∉ line[ℝ, cfg.C, cfg.B] := by
  intro hQ
  have hQA₁ : line[ℝ, cfg.Q, cfg.A₁] ≤ line[ℝ, cfg.C, cfg.B] :=
    affineSpan_pair_le_of_mem_of_mem hQ cfg.wbtw_B_A₁_C.symm.mem_affineSpan
  have hQ₁ : cfg.Q₁ ∈ line[ℝ, cfg.C, cfg.B] := by
    rw [AffineSubspace.le_def'] at hQA₁
    exact hQA₁ _ cfg.sbtw_Q_A₁_Q₁.right_mem_affineSpan
  have hc : Collinear ℝ ({cfg.C, cfg.Q₁, cfg.Q} : Set Pt) :=
    haveI hc' : Collinear ℝ ({cfg.B, cfg.C, cfg.Q₁, cfg.Q} : Set Pt) := by
      rw [Set.insert_comm cfg.B, Set.insert_comm cfg.B, Set.pair_comm, Set.insert_comm cfg.C,
        Set.insert_comm cfg.C]
      exact collinear_insert_insert_of_mem_affineSpan_pair hQ₁ hQ
    hc'.subset (Set.subset_insert _ _)
  rw [collinear_iff_eq_or_eq_or_angle_eq_zero_or_angle_eq_pi, cfg.angle_CQ₁Q_eq_angle_CBA,
    or_iff_right cfg.C_ne_Q₁, or_iff_right cfg.sbtw_Q_A₁_Q₁.left_ne_right, angle_comm] at hc
  exact cfg.not_collinear_ABC (hc.elim collinear_of_angle_eq_zero collinear_of_angle_eq_pi)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant721187a64724efa48f42816a8da1565f99b3dda4fd7a73ca05f7af6eba96aeb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant721187a64724efa48f42816a8da1565f99b3dda4fd7a73ca05f7af6eba96aeb0.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1edca6d2bfbfc9ce732ad85a40085e94421487c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
