# PreservesEqualizer.of_iso_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f46b946fbb4052e516a47f09183a0d8c22587dcf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8be0c04fc68ca940e92a3801740f7fbcda450e382abaa4bbd5a478cfcb79a364.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b49192e4-6033-49d2-958c-f0f87a6ebcbf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d267dde-1323-053c-5fea-3dea986839fa",
  "kind": "lemma",
  "lexical_name": "PreservesEqualizer.of_iso_comparison",
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
  "slug": "preservesequalizer-of-iso-comparison--826fd3e6f2a8ddc29f52fa54",
  "source": {
    "blob": "f46b946fbb4052e516a47f09183a0d8c22587dcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 80,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant8be0c04fc68ca940e92a3801740f7fbcda450e382abaa4bbd5a478cfcb79a364.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:826fd3e6f2a8ddc29f52fa549ddf5c438fdc4d7e5a527aa12b40ad27c8797c9b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant8be0c04fc68ca940e92a3801740f7fbcda450e382abaa4bbd5a478cfcb79a364.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d267dde-1323-053c-5fea-3dea986839fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PreservesEqualizer.of_iso_comparison [i : IsIso (equalizerComparison f g G)] :
    PreservesLimit (parallelPair f g) G := by
  apply preservesLimit_of_preserves_limit_cone (equalizerIsEqualizer f g)
  apply (isLimitMapConeForkEquiv _ _).symm _
  exact @IsLimit.ofPointIso _ _ _ _ _ _ _ (limit.isLimit (parallelPair (G.map f) (G.map g))) i

variable [PreservesLimit (parallelPair f g) G]

/--
If `G` preserves the equalizer of `(f,g)`, then the equalizer comparison map for `G` at `(f,g)` is
an isomorphism.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant8be0c04fc68ca940e92a3801740f7fbcda450e382abaa4bbd5a478cfcb79a364.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant8be0c04fc68ca940e92a3801740f7fbcda450e382abaa4bbd5a478cfcb79a364.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f46b946fbb4052e516a47f09183a0d8c22587dcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
