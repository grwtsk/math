# IsWide.eqToHom_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c132cce-fe6f-003c-813c-7cd0efccfa28",
  "kind": "theorem",
  "lexical_name": "IsWide.eqToHom_mem",
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
  "slug": "iswide-eqtohom-mem--b09c2fc5ee80dd917785d52d",
  "source": {
    "blob": "2910dee500394f7b63e434ee369da8e5f712fb3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 338,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant051b198c37d68b86633489fe6d630168c8c08d2c6d939485cfdd77b3256d9e0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b09c2fc5ee80dd917785d52d670fb2ab9f03a97fb4aa7783114ee6e4c9eeaa16",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant051b198c37d68b86633489fe6d630168c8c08d2c6d939485cfdd77b3256d9e0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c132cce-fe6f-003c-813c-7cd0efccfa28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsWide.eqToHom_mem {S : Subgroupoid C} (Sw : S.IsWide) {c d : C} (h : c = d) :
    eqToHom h ∈ S.arrows c d := by cases h; simp only [eqToHom_refl]; apply Sw.id_mem c
#align category_theory.subgroupoid.is_wide.eq_to_hom_mem CategoryTheory.Subgroupoid.IsWide.eqToHom_mem

/-- A subgroupoid is normal if it is wide and satisfies the expected stability under conjugacy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant051b198c37d68b86633489fe6d630168c8c08d2c6d939485cfdd77b3256d9e0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant051b198c37d68b86633489fe6d630168c8c08d2c6d939485cfdd77b3256d9e0c.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2910dee500394f7b63e434ee369da8e5f712fb3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
