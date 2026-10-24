# resFunctor_map_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "841f1cafa0c80e0da7db105d77dfcfb7e8fdeab6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 276,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06d78f4cfe206b0e89b97d4e6d6884209030b8551a8bf341a04ab6cc753c199b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:216c2606-2f75-33e7-3303-b57cf4207326",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21fa4e0f-0abc-7d00-dd25-ab15414c5b3b",
  "kind": "lemma",
  "lexical_name": "resFunctor_map_hom",
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
  "slug": "resfunctor-map-hom--e4d3b6d3c7c7e82b413cda9c",
  "source": {
    "blob": "841f1cafa0c80e0da7db105d77dfcfb7e8fdeab6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 276,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopRep/Variant06d78f4cfe206b0e89b97d4e6d6884209030b8551a8bf341a04ab6cc753c199b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4d3b6d3c7c7e82b413cda9c2d273b26851a247d8613969d34eff5802f8157c7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TopRep/Variant06d78f4cfe206b0e89b97d4e6d6884209030b8551a8bf341a04ab6cc753c199b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21fa4e0f-0abc-7d00-dd25-ab15414c5b3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma resFunctor_map_hom [Monoid H] (φ : H →* G) {A B : TopRep k G} (f : A ⟶ B) :
    ((resFunctor φ).map f).hom = f.hom.restrict φ := rfl

variable [Group H]

/-- The morphism between invariant submodules induced by a morphism `res φ X ⟶ Y` of
topological `H`-representations, where `φ : H →* G` is a group homomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TopRep/Variant06d78f4cfe206b0e89b97d4e6d6884209030b8551a8bf341a04ab6cc753c199b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopRep/Variant06d78f4cfe206b0e89b97d4e6d6884209030b8551a8bf341a04ab6cc753c199b.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `841f1cafa0c80e0da7db105d77dfcfb7e8fdeab6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
