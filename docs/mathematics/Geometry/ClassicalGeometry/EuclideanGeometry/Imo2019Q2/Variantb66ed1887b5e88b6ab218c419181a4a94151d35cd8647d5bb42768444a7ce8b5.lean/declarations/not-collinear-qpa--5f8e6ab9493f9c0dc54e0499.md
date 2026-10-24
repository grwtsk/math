# not_collinear_QPA₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b01b55ceda5ef8bb8dfc182182e1a72137f1dd8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 397,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b66ed1887b5e88b6ab218c419181a4a94151d35cd8647d5bb42768444a7ce8b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0b9d943-9039-86bf-57a2-73d53465175b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49594167-76b8-4c77-e327-a480ba2173d1",
  "kind": "theorem",
  "lexical_name": "not_collinear_QPA₂",
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
  "slug": "not-collinear-qpa--5f8e6ab9493f9c0dc54e0499",
  "source": {
    "blob": "7b01b55ceda5ef8bb8dfc182182e1a72137f1dd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 397,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variantb66ed1887b5e88b6ab218c419181a4a94151d35cd8647d5bb42768444a7ce8b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f8e6ab9493f9c0dc54e0499a4cee1e9b4b08197c26b4bdd695e9734b7203589",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variantb66ed1887b5e88b6ab218c419181a4a94151d35cd8647d5bb42768444a7ce8b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49594167-76b8-4c77-e327-a480ba2173d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_collinear_QPA₂ : ¬Collinear ℝ ({cfg.Q, cfg.P, cfg.A₂} : Set Pt) := by
  haveI := someOrientation V
  rw [collinear_iff_of_two_zsmul_oangle_eq cfg.two_zsmul_oangle_QPA₂_eq_two_zsmul_oangle_BAA₂, ←
    affineIndependent_iff_not_collinear_set]
  have h : Cospherical ({cfg.B, cfg.A, cfg.A₂} : Set Pt) := by
    refine cfg.triangleABC.circumsphere.cospherical.subset ?_
    simp only [Set.insert_subset_iff, cfg.A_mem_circumsphere, cfg.B_mem_circumsphere,
      cfg.A₂_mem_circumsphere, Sphere.mem_coe, Set.singleton_subset_iff, and_true]
  exact h.affineIndependent_of_ne cfg.A_ne_B.symm cfg.A₂_ne_B.symm cfg.A₂_ne_A.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variantb66ed1887b5e88b6ab218c419181a4a94151d35cd8647d5bb42768444a7ce8b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variantb66ed1887b5e88b6ab218c419181a4a94151d35cd8647d5bb42768444a7ce8b5.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b01b55ceda5ef8bb8dfc182182e1a72137f1dd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
