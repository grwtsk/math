# ConcreteCategory.forget₂_comp_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "806e2c55258cbd3d6165f5b3d975d9768ead9ca3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 359,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5f683b68d94d3040049a5786a0612fdfef9d33dfcc318af33fb0092e19ad05d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a430a9ef-e540-7fe1-2a55-a5ea4d43fb80",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21eaff9a-48be-cbfb-59ff-39c561c91e27",
  "kind": "lemma",
  "lexical_name": "ConcreteCategory.forget₂_comp_apply",
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
  "slug": "concretecategory-forget-comp-apply--bf3c76af3d297b5e80340f25",
  "source": {
    "blob": "806e2c55258cbd3d6165f5b3d975d9768ead9ca3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 359,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta5f683b68d94d3040049a5786a0612fdfef9d33dfcc318af33fb0092e19ad05d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf3c76af3d297b5e80340f250f7cecceb0fc54f9bd0f6a0de50fc93f3d2fa579",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta5f683b68d94d3040049a5786a0612fdfef9d33dfcc318af33fb0092e19ad05d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21eaff9a-48be-cbfb-59ff-39c561c91e27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ConcreteCategory.forget₂_comp_apply {C : Type u} {D : Type u'} [Category.{v} C]
    {FC : C → C → Type*} {CC : C → Type w} [∀ X Y, FunLike (FC X Y) (CC X) (CC Y)]
    [ConcreteCategory.{w} C FC] [Category.{v'} D] {FD : D → D → Type*} {CD : D → Type w}
    [∀ X Y, FunLike (FD X Y) (CD X) (CD Y)] [ConcreteCategory.{w} D FD] [HasForget₂ C D] {X Y Z : C}
    (f : X ⟶ Y) (g : Y ⟶ Z) (x : ToType ((forget₂ C D).obj X)) :
    ((forget₂ C D).map (f ≫ g) x) =
      (forget₂ C D).map g ((forget₂ C D).map f x) := by
  rw [Functor.map_comp, ConcreteCategory.comp_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta5f683b68d94d3040049a5786a0612fdfef9d33dfcc318af33fb0092e19ad05d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta5f683b68d94d3040049a5786a0612fdfef9d33dfcc318af33fb0092e19ad05d.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `806e2c55258cbd3d6165f5b3d975d9768ead9ca3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
