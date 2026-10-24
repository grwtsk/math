# isTriangulated_of_op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8fcb439a21a56c7325397635cb79c641600c88e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db2dd529e54a057e6cc94cf50a78363c4eadfab0ec276df3317dff0a4f61773f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5462a22d-3dc6-7d5c-4051-63a83d09ae37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9aed2ec3-680b-ef63-8ed5-d43dbde1d59f",
  "kind": "lemma",
  "lexical_name": "isTriangulated_of_op",
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
  "slug": "istriangulated-of-op--36a7df178a5090ba8b902663",
  "source": {
    "blob": "8fcb439a21a56c7325397635cb79c641600c88e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 253,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdb2dd529e54a057e6cc94cf50a78363c4eadfab0ec276df3317dff0a4f61773f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36a7df178a5090ba8b9026638bd90a3a1548b177772af41feca04a8343058eb9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdb2dd529e54a057e6cc94cf50a78363c4eadfab0ec276df3317dff0a4f61773f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9aed2ec3-680b-ef63-8ed5-d43dbde1d59f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isTriangulated_of_op [F.op.IsTriangulated] : F.IsTriangulated where
  map_distinguished T dT := by
    have := distinguished_iff_of_iso ((triangleOpEquivalence D).unitIso.app
      (Opposite.op (F.mapTriangle.obj T))).unop
    rw [Functor.id_obj, Opposite.unop_op (F.mapTriangle.obj T)] at this
    rw [← this, Functor.comp_obj, ← mem_distTriang_op_iff, ← Functor.op_obj, ← Functor.comp_obj,
      distinguished_iff_of_iso ((mapTriangleOpCompTriangleOpEquivalenceFunctor F).app
      (Opposite.op T))]
    exact F.op.map_distinguished _ (op_distinguished _ dT)

open Pretriangulated.Opposite in
/-- `F` is triangulated if and only if `F.op` is triangulated.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdb2dd529e54a057e6cc94cf50a78363c4eadfab0ec276df3317dff0a4f61773f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdb2dd529e54a057e6cc94cf50a78363c4eadfab0ec276df3317dff0a4f61773f.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fcb439a21a56c7325397635cb79c641600c88e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
