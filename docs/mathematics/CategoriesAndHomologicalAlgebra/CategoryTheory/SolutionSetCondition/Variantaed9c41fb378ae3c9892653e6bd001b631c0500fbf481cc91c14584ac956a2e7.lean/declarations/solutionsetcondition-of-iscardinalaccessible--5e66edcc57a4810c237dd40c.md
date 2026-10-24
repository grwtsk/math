# SolutionSetCondition.of_isCardinalAccessible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba13ade9-091f-0392-08af-182593f1fee9",
  "kind": "lemma",
  "lexical_name": "SolutionSetCondition.of_isCardinalAccessible",
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
  "slug": "solutionsetcondition-of-iscardinalaccessible--5e66edcc57a4810c237dd40c",
  "source": {
    "blob": "0649d588c50df61a6b985d7216829b04b77c7a5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 41,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SolutionSetCondition/Variantaed9c41fb378ae3c9892653e6bd001b631c0500fbf481cc91c14584ac956a2e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e66edcc57a4810c237dd40cd1b4a24e609deb4b1e4b9a18b7b7c76e08c7365a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SolutionSetCondition/Variantaed9c41fb378ae3c9892653e6bd001b631c0500fbf481cc91c14584ac956a2e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba13ade9-091f-0392-08af-182593f1fee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma SolutionSetCondition.of_isCardinalAccessible
    [IsAccessibleCategory.{w} C] [IsAccessibleCategory.{w} D]
    (F : C ⥤ D) [Functor.IsAccessible.{w} F] :
    SolutionSetCondition.{w} F := by
  intro Y
  obtain ⟨κ, _, _⟩ := IsAccessibleCategory.exists_cardinal.{w} (StructuredArrow Y F)
  obtain ⟨ι, X₀, h⟩ := ObjectProperty.EssentiallySmall.exists_eq_isoClosure_ofObj.{w}
    (isCardinalPresentable (StructuredArrow Y F) κ)
  refine ⟨ι, fun i ↦ (X₀ i).right, fun i ↦ (X₀ i).hom, fun X g ↦ ?_⟩
  let E := CostructuredArrow (isCardinalPresentable _ κ).ι (StructuredArrow.mk g)
  have : IsFiltered E := isFiltered_of_isCardinalFiltered _ κ
  have : Nonempty E := IsFiltered.nonempty
  let γ : E := Classical.arbitrary _
  obtain ⟨_, ⟨i⟩, ⟨e⟩⟩ := h.le _ γ.left.property
  exact ⟨i, _, StructuredArrow.w (e.inv ≫ γ.hom)⟩

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SolutionSetCondition/Variantaed9c41fb378ae3c9892653e6bd001b631c0500fbf481cc91c14584ac956a2e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SolutionSetCondition/Variantaed9c41fb378ae3c9892653e6bd001b631c0500fbf481cc91c14584ac956a2e7.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0649d588c50df61a6b985d7216829b04b77c7a5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
