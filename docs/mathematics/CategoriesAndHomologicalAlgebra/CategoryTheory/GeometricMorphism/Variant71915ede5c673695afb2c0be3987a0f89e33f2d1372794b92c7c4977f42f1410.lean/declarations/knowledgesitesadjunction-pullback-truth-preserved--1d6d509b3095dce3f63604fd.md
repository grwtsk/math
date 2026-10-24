# KnowledgeSitesAdjunction.pullback_truth_preserved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3621e6377ddf8470677301ebbec921d442e9aae6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efeb5730-d4a3-6291-67d7-4c4835ac13cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24da49b1-2e8b-821c-f2e9-a30d857879f6",
  "kind": "theorem",
  "lexical_name": "KnowledgeSitesAdjunction.pullback_truth_preserved",
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
  "slug": "knowledgesitesadjunction-pullback-truth-preserved--1d6d509b3095dce3f63604fd",
  "source": {
    "blob": "3621e6377ddf8470677301ebbec921d442e9aae6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 124,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d6d509b3095dce3f63604fdcecf1a9e34ee75b817d87ac408dfe9754cce2864",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24da49b1-2e8b-821c-f2e9-a30d857879f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem KnowledgeSitesAdjunction.pullback_truth_preserved
    {C D : Type u} [CategoryTheory.Category.{v} C] [CategoryTheory.Category.{v} D]
    {KC : KnowledgeTopology C}
    {KD : KnowledgeTopology D}
    (G : KnowledgeSitesAdjunction C D KC KD)
    (T : SheafTruth C KC) :
    (SheafTruth.pullback G T).statement :=
by
  exact T.proof

end Think.Logic.MathlibEcosystem
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3621e6377ddf8470677301ebbec921d442e9aae6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
