# ofSequence_map_homOfLE_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1bf6334adeac0f26465d393215a7bb5416626b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:378e8bb3-5ced-448e-8e63-2739ce8a75ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08347dfb-79a4-6515-5927-7d11c98ed55a",
  "kind": "lemma",
  "lexical_name": "ofSequence_map_homOfLE_succ",
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
  "slug": "ofsequence-map-homofle-succ--2e0e4915662fe6b14ac5c4c3",
  "source": {
    "blob": "e1bf6334adeac0f26465d393215a7bb5416626b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 113,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e0e4915662fe6b14ac5c4c3697741313b4b0fbf77cc363e40b25f563d8cc602",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08347dfb-79a4-6515-5927-7d11c98ed55a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofSequence_map_homOfLE_succ (n : ℕ) :
    (ofSequence f).map (homOfLE (Nat.le_add_right n 1)) = f n :=
  OfSequence.map_le_succ f n

end Functor

namespace NatTrans

variable {F G : ℕ ⥤ C} (app : ∀ (n : ℕ), F.obj n ⟶ G.obj n)
  (naturality : ∀ (n : ℕ), F.map (homOfLE (n.le_add_right 1)) ≫ app (n + 1) =
      app n ≫ G.map (homOfLE (n.le_add_right 1)))

/-- Constructor for natural transformations `F ⟶ G` in `ℕ ⥤ C` which takes as inputs
the morphisms `F.obj n ⟶ G.obj n` for all `n : ℕ` and the naturality condition only
for morphisms of the form `n ⟶ n + 1`. -/
@[simps app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1bf6334adeac0f26465d393215a7bb5416626b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
