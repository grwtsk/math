# exists_of_j₁_of_j₂'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cc09c257f7c03cef3f4ebcf610d664ecb304ccc5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 284,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/160e499218eb705df9fba9a8ebdcb938de4321bd46f3919d754fa6599677de53.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1210d355-2d9f-d4dd-8f12-2b4e31588f2f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e504dbcb-1fba-bad7-4c5e-04699625cc7b",
  "kind": "lemma",
  "lexical_name": "exists_of_j₁_of_j₂'",
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
  "slug": "exists-of-j-of-j--8a38774428fe9e4b8edf2bfd",
  "source": {
    "blob": "cc09c257f7c03cef3f4ebcf610d664ecb304ccc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 284,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant160e499218eb705df9fba9a8ebdcb938de4321bd46f3919d754fa6599677de53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a38774428fe9e4b8edf2bfd1be287af5d358af8a8f825fb103adb5566acd182",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant160e499218eb705df9fba9a8ebdcb938de4321bd46f3919d754fa6599677de53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e504dbcb-1fba-bad7-4c5e-04699625cc7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exists_of_j₁_of_j₂' (j₁ : J₁ κ f) (j₂ : J₂ κ f) :
    ∃ (j₂' : J₂ κ f) (_ : j₂ ⟶ j₂') (b : F₁.obj j₁.left.obj ⟶ F₂.obj j₂'.left.obj),
    F₁.map j₁.hom ≫ f.hom = b ≫ F₂.map j₂'.hom := by
  have := Functor.preservesColimitsOfShape_of_isCardinalAccessible_of_essentiallySmall F₂ κ
    (J₂ κ f)
  obtain ⟨k, a, ha⟩ := IsCardinalPresentable.exists_hom_of_isColimit κ
    (isColimitOfPreserves F₂ ((isCardinalPresentable C₂ κ).ι.denseAt f.right))
    (F₁.map j₁.hom ≫ f.hom)
  dsimp at ha
  simp only [Category.id_comp] at ha
  obtain ⟨j₂', b, c, _⟩ := IsFilteredOrEmpty.cocone_objs j₂ k
  refine ⟨j₂', b, a ≫ F₂.map c.left.hom, ?_⟩
  simp [← ha, ← Functor.map_comp, dsimp% CostructuredArrow.w c]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant160e499218eb705df9fba9a8ebdcb938de4321bd46f3919d754fa6599677de53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant160e499218eb705df9fba9a8ebdcb938de4321bd46f3919d754fa6599677de53.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc09c257f7c03cef3f4ebcf610d664ecb304ccc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
