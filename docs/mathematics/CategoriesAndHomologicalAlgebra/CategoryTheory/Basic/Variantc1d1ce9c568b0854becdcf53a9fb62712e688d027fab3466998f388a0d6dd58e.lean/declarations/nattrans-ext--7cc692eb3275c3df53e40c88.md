# natTrans_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef3eae45401e390e6acf57aef9e60aacb88f4c9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 400,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1d1ce9c568b0854becdcf53a9fb62712e688d027fab3466998f388a0d6dd58e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51c8d3f7-28df-e038-98ef-89ec9e2e807a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6f69b73-161f-42bd-5c71-bba28aaa9e7a",
  "kind": "lemma",
  "lexical_name": "natTrans_ext",
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
  "slug": "nattrans-ext--7cc692eb3275c3df53e40c88",
  "source": {
    "blob": "ef3eae45401e390e6acf57aef9e60aacb88f4c9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 400,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc1d1ce9c568b0854becdcf53a9fb62712e688d027fab3466998f388a0d6dd58e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cc692eb3275c3df53e40c887ad3b9687d6f3359eef333e32d71c75d18b70ffb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc1d1ce9c568b0854becdcf53a9fb62712e688d027fab3466998f388a0d6dd58e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6f69b73-161f-42bd-5c71-bba28aaa9e7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma natTrans_ext
    {J K : X ⥤ F ⊡ G} {α β : J ⟶ K}
    (e₁ : whiskerRight α (π₁ F G) = whiskerRight β (π₁ F G))
    (e₂ : whiskerRight α (π₂ F G) = whiskerRight β (π₂ F G)) :
    α = β := by
  ext x
  · exact congrArg (fun t ↦ t.app x) e₁
  · exact congrArg (fun t ↦ t.app x) e₂

section

variable {J K : X ⥤ F ⊡ G}
    (e₁ : J ⋙ π₁ F G ≅ K ⋙ π₁ F G) (e₂ : J ⋙ π₂ F G ≅ K ⋙ π₂ F G)

set_option backward.isDefEq.respectTransparency.types false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc1d1ce9c568b0854becdcf53a9fb62712e688d027fab3466998f388a0d6dd58e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc1d1ce9c568b0854becdcf53a9fb62712e688d027fab3466998f388a0d6dd58e.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef3eae45401e390e6acf57aef9e60aacb88f4c9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
