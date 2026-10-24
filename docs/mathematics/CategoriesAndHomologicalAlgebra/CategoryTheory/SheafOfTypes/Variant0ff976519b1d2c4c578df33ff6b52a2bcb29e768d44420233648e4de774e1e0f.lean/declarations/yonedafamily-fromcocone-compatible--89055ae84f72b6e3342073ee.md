# yonedaFamily_fromCocone_compatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4f33af0521cc3cbde39d2d91a30b95755d9fc2c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab4859fd-8079-4d8e-e91c-cf23e78e9f79",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa0983fc-8f66-26fb-7ca7-b1d423f5d81c",
  "kind": "theorem",
  "lexical_name": "yonedaFamily_fromCocone_compatible",
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
  "slug": "yonedafamily-fromcocone-compatible--89055ae84f72b6e3342073ee",
  "source": {
    "blob": "d4f33af0521cc3cbde39d2d91a30b95755d9fc2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 175,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89055ae84f72b6e3342073ee21a0c4a3ef907c8a4e7c8701fddc141eb8176e3f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa0983fc-8f66-26fb-7ca7-b1d423f5d81c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem yonedaFamily_fromCocone_compatible (S : Sieve X) (s : Cocone (diagram S.arrows)) :
    FamilyOfElements.Compatible <| yonedaFamilyOfElements_fromCocone S.arrows s := by
  intro Y₁ Y₂ Z g₁ g₂ f₁ f₂ hf₁ hf₂ hgf
  have Hs := s.ι.naturality
  simp only [Functor.id_obj, yoneda_obj_obj, Opposite.unop_op, yoneda_obj_map, Quiver.Hom.unop_op]
  dsimp [yonedaFamilyOfElements_fromCocone]
  have hgf₁ : S.arrows (g₁ ≫ f₁) := by exact Sieve.downward_closed S hf₁ g₁
  have hgf₂ : S.arrows (g₂ ≫ f₂) := by exact Sieve.downward_closed S hf₂ g₂
  let F : (Over.mk (g₁ ≫ f₁) : Over X) ⟶ (Over.mk (g₂ ≫ f₂) : Over X) := Over.homMk (𝟙 Z)
  let F₁ : (Over.mk (g₁ ≫ f₁) : Over X) ⟶ (Over.mk f₁ : Over X) := Over.homMk g₁
  let F₂ : (Over.mk (g₂ ≫ f₂) : Over X) ⟶ (Over.mk f₂ : Over X) := Over.homMk g₂
  have hF := @Hs ⟨Over.mk (g₁ ≫ f₁), hgf₁⟩ ⟨Over.mk (g₂ ≫ f₂), hgf₂⟩ F
  have hF₁ := @Hs ⟨Over.mk (g₁ ≫ f₁), hgf₁⟩ ⟨Over.mk f₁, hf₁⟩ F₁
  have hF₂ := @Hs ⟨Over.mk (g₂ ≫ f₂), hgf₂⟩ ⟨Over.mk f₂, hf₂⟩ F₂
  aesop_cat

/--
The base of a sieve `S` is a colimit of `S` iff all Yoneda-presheaves satisfy
the sheaf condition for `S`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4f33af0521cc3cbde39d2d91a30b95755d9fc2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
