# functorPushforward_over_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0714d53204dde8cf607c1e876676e065e2ce55e8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09614573-c5a6-2f3d-3d7b-5f39c5f51403",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11a740ac-f1ae-a678-adff-ab7e1bd044f3",
  "kind": "lemma",
  "lexical_name": "functorPushforward_over_map",
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
  "slug": "functorpushforward-over-map--e6fc615c3cf4d44ed01c3053",
  "source": {
    "blob": "0714d53204dde8cf607c1e876676e065e2ce55e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6fc615c3cf4d44ed01c3053897c3aa95ad5abd3b76ae8cedcab642b58b1a2b4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11a740ac-f1ae-a678-adff-ab7e1bd044f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma functorPushforward_over_map {X Y : C} (f : X ⟶ Y) (Z : Over X) (S : Sieve Z.left) :
    Sieve.functorPushforward (Over.map f) ((Sieve.overEquiv Z).symm S) =
      (Sieve.overEquiv ((Over.map f).obj Z)).symm S := by
  ext W g
  constructor
  · rintro ⟨T, a, b, ha, rfl⟩
    exact S.downward_closed ha _
  · intro hg
    exact ⟨Over.mk (g.left ≫ Z.hom), Over.homMk g.left,
      Over.homMk (𝟙 _) (by simpa using Over.w g), hg, by aesop_cat⟩

end Sieve

variable (J : GrothendieckTopology C)

namespace GrothendieckTopology

/-- The Grothendieck topology on the category `Over X` for any `X : C` that is
induced by a Grothendieck topology on `C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0714d53204dde8cf607c1e876676e065e2ce55e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
