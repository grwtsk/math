# of_vert_isIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c095f5d742d6fd51df32656687f120cfba7dcdfa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 873,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/291f1e75a9ca59ce52589f175f2e01d1b6356abc653af17ae81f0cccc8ba81e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ae85205-ed42-8eae-a7a5-76589b272ee0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0b8f545-698d-7962-9ed3-29310a11a5db",
  "kind": "theorem",
  "lexical_name": "of_vert_isIso",
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
  "slug": "of-vert-isiso--09a2fb55ce940572d9e09573",
  "source": {
    "blob": "c095f5d742d6fd51df32656687f120cfba7dcdfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 884,
    "line": 873,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant291f1e75a9ca59ce52589f175f2e01d1b6356abc653af17ae81f0cccc8ba81e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09a2fb55ce940572d9e09573d82f503f8d850e8be33aecb087c3a90dfab59c3d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant291f1e75a9ca59ce52589f175f2e01d1b6356abc653af17ae81f0cccc8ba81e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0b8f545-698d-7962-9ed3-29310a11a5db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 873–884.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_vert_isIso [IsIso g] [IsIso inl] (sq : CommSq f g inl inr) : IsPushout f g inl inr :=
  (of_horiz_isIso sq.flip).flip
#align category_theory.is_pushout.of_vert_is_iso CategoryTheory.IsPushout.of_vert_isIso

end IsPushout

section Equalizer

variable {X Y Z : C} {f f' : X ⟶ Y} {g g' : Y ⟶ Z}

/-- If `f : X ⟶ Y`, `g g' : Y ⟶ Z` forms a pullback square, then `f` is the equalizer of
`g` and `g'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant291f1e75a9ca59ce52589f175f2e01d1b6356abc653af17ae81f0cccc8ba81e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant291f1e75a9ca59ce52589f175f2e01d1b6356abc653af17ae81f0cccc8ba81e9.lean#L873).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c095f5d742d6fd51df32656687f120cfba7dcdfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
