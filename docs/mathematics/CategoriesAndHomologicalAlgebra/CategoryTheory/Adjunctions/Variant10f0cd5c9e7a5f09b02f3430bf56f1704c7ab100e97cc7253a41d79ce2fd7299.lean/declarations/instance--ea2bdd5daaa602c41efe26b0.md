# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2388e021ea0ca6ccc2ef8d3f2a2f8d0db5c2a193a6049faef89952226e09985",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ea2bdd5daaa602c41efe26b0",
  "source": {
    "blob": "e25f854bd27f0f2a1810840829d672940389b155",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 257,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant10f0cd5c9e7a5f09b02f3430bf56f1704c7ab100e97cc7253a41d79ce2fd7299.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea2bdd5daaa602c41efe26b03b399ce247d5a3652d80a3893af07f4e97815b62",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant10f0cd5c9e7a5f09b02f3430bf56f1704c7ab100e97cc7253a41d79ce2fd7299.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2388e021ea0ca6ccc2ef8d3f2a2f8d0db5c2a193a6049faef89952226e09985`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Preadditive (Free R C) where
  homGroup _ _ := Finsupp.instAddCommGroup
  add_comp X Y Z f f' g := by
    dsimp +instances [CategoryTheory.categoryFree]
    rw [Finsupp.sum_add_index'] <;> · simp [add_mul]
  comp_add X Y Z f g g' := by
    dsimp +instances [CategoryTheory.categoryFree]
    rw [← Finsupp.sum_add]
    congr; ext r h
    rw [Finsupp.sum_add_index'] <;> · simp [mul_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant10f0cd5c9e7a5f09b02f3430bf56f1704c7ab100e97cc7253a41d79ce2fd7299.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant10f0cd5c9e7a5f09b02f3430bf56f1704c7ab100e97cc7253a41d79ce2fd7299.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e25f854bd27f0f2a1810840829d672940389b155` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
