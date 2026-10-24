# SecondObj.ext

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
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d73407da404be26e8d1f9876b9491016c3863624f44f438e9ef125996b40fbcf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11f07430-17c1-3ba2-167c-63ee73101ca2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a92577c-1bfe-714d-2032-57eed01f21d6",
  "kind": "lemma",
  "lexical_name": "SecondObj.ext",
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
  "slug": "secondobj-ext--c11933cbd41dcfb39c26666d",
  "source": {
    "blob": "f130c420587f8c4305d945a164b0626dd0ae9dca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 110,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantd73407da404be26e8d1f9876b9491016c3863624f44f438e9ef125996b40fbcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c11933cbd41dcfb39c26666da1fdf66a25d4bf21799c286033ff7463fa2fd169",
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

Occurrence: `result:3a92577c-1bfe-714d-2032-57eed01f21d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma SecondObj.ext (z₁ z₂ : SecondObj P S) (h : ∀ (Y Z : C) (g : Z ⟶ Y) (f : Y ⟶ X)
    (hf : S.arrows f), (Pi.π _ ⟨Y, Z, g, f, hf⟩ : SecondObj P S ⟶ _) z₁ =
      (Pi.π _ ⟨Y, Z, g, f, hf⟩ : SecondObj P S ⟶ _) z₂) : z₁ = z₂ := by
  apply Limits.Types.limit_ext
  rintro ⟨⟨Y, Z, g, f, hf⟩⟩
  apply h

variable (P S)

/-- The map `p` of Equations (3,4) [MM92]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantd73407da404be26e8d1f9876b9491016c3863624f44f438e9ef125996b40fbcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantd73407da404be26e8d1f9876b9491016c3863624f44f438e9ef125996b40fbcf.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f130c420587f8c4305d945a164b0626dd0ae9dca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
