# vertexGroupIsomOfMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72e91b7c33115c0e1ab54177979585e4e1c6d8497c05f029e83290c0eccd316a",
  "kind": "def",
  "lexical_name": "vertexGroupIsomOfMap",
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
  "slug": "vertexgroupisomofmap--e4b3fcdc559425e429f44155",
  "source": {
    "blob": "f7265c6b3ca6837a0b3799a87b1f2dd552e2f595",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 71,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant25d59e42c4382232d71238e88b98691aeb063132ae2f72803fe6fcd529e9c563.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4b3fcdc559425e429f441552a20b34ed120904db2ceb04047dd0ba5bb3abd62",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant25d59e42c4382232d71238e88b98691aeb063132ae2f72803fe6fcd529e9c563.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72e91b7c33115c0e1ab54177979585e4e1c6d8497c05f029e83290c0eccd316a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def vertexGroupIsomOfMap {c d : C} (f : c ⟶ d) : (c ⟶ c) ≃* (d ⟶ d)
    where
  toFun γ := inv f ≫ γ ≫ f
  invFun δ := f ≫ δ ≫ inv f
  left_inv γ := by
    simp_rw [Category.assoc, comp_inv, Category.comp_id, ← Category.assoc, comp_inv,
      Category.id_comp]
  right_inv δ := by
    simp_rw [Category.assoc, inv_comp, ← Category.assoc, inv_comp, Category.id_comp,
      Category.comp_id]
  map_mul' γ₁ γ₂ := by
    simp only [vertexGroup_mul, inv_eq_inv, Category.assoc, IsIso.hom_inv_id_assoc]
#align category_theory.groupoid.vertex_group_isom_of_map CategoryTheory.Groupoid.vertexGroupIsomOfMap

/-- A path in the groupoid defines an isomorphism between its endpoints.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant25d59e42c4382232d71238e88b98691aeb063132ae2f72803fe6fcd529e9c563.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant25d59e42c4382232d71238e88b98691aeb063132ae2f72803fe6fcd529e9c563.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7265c6b3ca6837a0b3799a87b1f2dd552e2f595` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
