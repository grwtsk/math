# two_zsmul_oangle_CA₂A₁_eq_two_zsmul_oangle_CBA

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5076459-1f2d-e02d-ea40-b8f586bd2fe9",
  "kind": "theorem",
  "lexical_name": "two_zsmul_oangle_CA₂A₁_eq_two_zsmul_oangle_CBA",
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
  "slug": "two-zsmul-oangle-ca-a-eq-two-zsmul-oangle-cba--a963421de6645a6dcbccf645",
  "source": {
    "blob": "1edca6d2bfbfc9ce732ad85a40085e94421487c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 498,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant721187a64724efa48f42816a8da1565f99b3dda4fd7a73ca05f7af6eba96aeb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a963421de6645a6dcbccf64522c6be8dc82b9ccccd9adf03c56f19ddc438dc58",
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

Occurrence: `result:d5076459-1f2d-e02d-ea40-b8f586bd2fe9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_zsmul_oangle_CA₂A₁_eq_two_zsmul_oangle_CBA :
    (2 : ℤ) • ∡ cfg.C cfg.A₂ cfg.A₁ = (2 : ℤ) • ∡ cfg.C cfg.B cfg.A :=
  calc
    (2 : ℤ) • ∡ cfg.C cfg.A₂ cfg.A₁ = (2 : ℤ) • ∡ cfg.C cfg.A₂ cfg.A := by
      rw [cfg.sbtw_A_A₁_A₂.symm.oangle_eq_right]
    _ = (2 : ℤ) • ∡ cfg.C cfg.B cfg.A :=
      Sphere.two_zsmul_oangle_eq cfg.C_mem_circumsphere cfg.A₂_mem_circumsphere
        cfg.B_mem_circumsphere cfg.A_mem_circumsphere cfg.A₂_ne_C cfg.A₂_ne_A cfg.B_ne_C
        cfg.A_ne_B.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant721187a64724efa48f42816a8da1565f99b3dda4fd7a73ca05f7af6eba96aeb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant721187a64724efa48f42816a8da1565f99b3dda4fd7a73ca05f7af6eba96aeb0.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1edca6d2bfbfc9ce732ad85a40085e94421487c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
