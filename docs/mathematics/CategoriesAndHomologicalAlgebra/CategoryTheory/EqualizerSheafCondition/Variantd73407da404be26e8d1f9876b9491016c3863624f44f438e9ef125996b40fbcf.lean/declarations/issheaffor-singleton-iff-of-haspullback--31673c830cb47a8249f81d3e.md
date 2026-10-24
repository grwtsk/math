# isSheafFor_singleton_iff_of_hasPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f130c420587f8c4305d945a164b0626dd0ae9dca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 397,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d73407da404be26e8d1f9876b9491016c3863624f44f438e9ef125996b40fbcf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd870b9e-09d1-dcd1-d178-3ae8c302c05e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:988149fd-e0cf-0fae-dc5f-3e1f7d6918a3",
  "kind": "lemma",
  "lexical_name": "isSheafFor_singleton_iff_of_hasPullback",
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
  "slug": "issheaffor-singleton-iff-of-haspullback--31673c830cb47a8249f81d3e",
  "source": {
    "blob": "f130c420587f8c4305d945a164b0626dd0ae9dca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 397,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantd73407da404be26e8d1f9876b9491016c3863624f44f438e9ef125996b40fbcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31673c830cb47a8249f81d3e76d9148d8450f13c995e5806c5d2d6c203690fc0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantd73407da404be26e8d1f9876b9491016c3863624f44f438e9ef125996b40fbcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:988149fd-e0cf-0fae-dc5f-3e1f7d6918a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSheafFor_singleton_iff_of_hasPullback {F : Cᵒᵖ ⥤ Type*} {X Y : C} {f : X ⟶ Y}
    [HasPullback f f] :
    Presieve.IsSheafFor F (.singleton f) ↔
      Nonempty
        (IsLimit (Fork.ofι (F.map f.op) (f := F.map (pullback.fst f f).op)
          (g := F.map (pullback.snd f f).op)
          (by simp [← Functor.map_comp, ← op_comp, pullback.condition]))) :=
  isSheafFor_singleton_iff (pullback.cone f f) (pullback.isLimit f f)

end Presieve

end

end Equalizer

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantd73407da404be26e8d1f9876b9491016c3863624f44f438e9ef125996b40fbcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantd73407da404be26e8d1f9876b9491016c3863624f44f438e9ef125996b40fbcf.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f130c420587f8c4305d945a164b0626dd0ae9dca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
