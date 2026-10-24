# A₂_ne_C

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c051008-1662-c313-fa55-5aec8b90ee07",
  "kind": "theorem",
  "lexical_name": "A₂_ne_C",
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
  "slug": "a-ne-c--f1a895ad1c62836dd2f3aff7",
  "source": {
    "blob": "27c0eb9c1027f1e9bff516e2080fc5831940b68f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 387,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant21e5884a8103874b68a602375dbd624f6811efc9e5b8ef36752ae39a5b3a3098.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1a895ad1c62836dd2f3aff73a1ac2111300081a97f3108dfc2fa3f1b3a1e4ec",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant21e5884a8103874b68a602375dbd624f6811efc9e5b8ef36752ae39a5b3a3098.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c051008-1662-c313-fa55-5aec8b90ee07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem A₂_ne_C : cfg.A₂ ≠ cfg.C := by
  intro h
  have h₁ := cfg.sbtw_A_A₁_A₂
  rw [h] at h₁
  refine' cfg.not_collinear_ABC _
  have hc : Collinear ℝ ({cfg.A, cfg.B, cfg.C, cfg.A₁} : Set Pt) :=
    collinear_insert_insert_of_mem_affineSpan_pair h₁.left_mem_affineSpan
      cfg.sbtw_B_A₁_C.left_mem_affineSpan
  refine' hc.subset (Set.insert_subset_insert (Set.insert_subset_insert _))
  rw [Set.singleton_subset_iff]
  exact Set.mem_insert _ _
#align imo2019_q2.imo2019q2_cfg.A₂_ne_C Imo2019Q2.Imo2019q2Cfg.A₂_ne_C

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant21e5884a8103874b68a602375dbd624f6811efc9e5b8ef36752ae39a5b3a3098.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant21e5884a8103874b68a602375dbd624f6811efc9e5b8ef36752ae39a5b3a3098.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27c0eb9c1027f1e9bff516e2080fc5831940b68f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
