# not_collinear_CA₂A₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f034e22976e9b98bf5355d1866ec621c2d15b1b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 580,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/09d7f07d2077b285a7a567d847e5967d88d2b02b7555eab6a0b15d8382a25905.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4a54c3c-8124-4005-d22b-341887f0e6f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9113aef-776d-8f8f-fb8a-481bf7922611",
  "kind": "theorem",
  "lexical_name": "not_collinear_CA₂A₁",
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
  "slug": "not-collinear-ca-a--b13dc8644ff8143a3e9fb204",
  "source": {
    "blob": "f034e22976e9b98bf5355d1866ec621c2d15b1b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 586,
    "line": 580,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant09d7f07d2077b285a7a567d847e5967d88d2b02b7555eab6a0b15d8382a25905.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b13dc8644ff8143a3e9fb20449ba0f3d3b90e763f7a0e47be68f605970e192e8",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant09d7f07d2077b285a7a567d847e5967d88d2b02b7555eab6a0b15d8382a25905.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9113aef-776d-8f8f-fb8a-481bf7922611`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 580–586.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_collinear_CA₂A₁ : ¬Collinear ℝ ({cfg.C, cfg.A₂, cfg.A₁} : Set Pt) := by
  haveI := someOrientation V
  rw [collinear_iff_of_two_zsmul_oangle_eq cfg.two_zsmul_oangle_CA₂A₁_eq_two_zsmul_oangle_CBA,
    Set.pair_comm, Set.insert_comm, Set.pair_comm]
  exact cfg.not_collinear_ABC
#align imo2019_q2.imo2019q2_cfg.not_collinear_CA₂A₁ Imo2019Q2.Imo2019q2Cfg.not_collinear_CA₂A₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant09d7f07d2077b285a7a567d847e5967d88d2b02b7555eab6a0b15d8382a25905.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant09d7f07d2077b285a7a567d847e5967d88d2b02b7555eab6a0b15d8382a25905.lean#L580).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f034e22976e9b98bf5355d1866ec621c2d15b1b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
