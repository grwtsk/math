# isCardinalAccessible_of_natIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d9d4eba6ead9a614aab7dae7887dca21aca77a19",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f48554e4-f924-d8a7-75a7-38c5e2f4e3c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb153081-c522-6cb3-c0fa-67b6b5a975a4",
  "kind": "lemma",
  "lexical_name": "isCardinalAccessible_of_natIso",
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
  "slug": "iscardinalaccessible-of-natiso--22b162e1027fd1ea18af2bc2",
  "source": {
    "blob": "d9d4eba6ead9a614aab7dae7887dca21aca77a19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 75,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22b162e1027fd1ea18af2bc243427fd5e9a9613f9cf644c0e711b72c3421f230",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb153081-c522-6cb3-c0fa-67b6b5a975a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCardinalAccessible_of_natIso [F.IsCardinalAccessible κ] : G.IsCardinalAccessible κ where
  preservesColimitOfShape J _ hκ := by
    have := F.preservesColimitsOfShape_of_isCardinalAccessible κ J
    exact preservesColimitsOfShape_of_natIso e

end

end Functor

variable (X : C) (Y : C) (e : X ≅ Y) (κ : Cardinal.{w}) [Fact κ.IsRegular]

/-- An object `X` in a category is `κ`-presentable (for `κ` a regular cardinal)
when the functor `Hom(X, _)` preserves colimits indexed by
`κ`-filtered categories. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante8b0f36044fa4e19d896082dff45dd70d56883c49d6671c5c16e11a6442027bc.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9d4eba6ead9a614aab7dae7887dca21aca77a19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
