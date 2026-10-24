# isFiltered_costructuredArrow_yoneda_of_preservesFiniteLimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47bd60363da690f7e27bc25067405aa240b44d53",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/9478bb4a6ed648e2538d3e888f0f74cd4d54981b4781efaeb0896548d0edc1c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd38cb54-9d94-7957-cae4-dd00f64e4068",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3be70069-fded-aed0-4377-b36cbc8671f5",
  "kind": "theorem",
  "lexical_name": "isFiltered_costructuredArrow_yoneda_of_preservesFiniteLimits",
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
  "slug": "isfiltered-costructuredarrow-yoneda-of-preservesfinitelimits--8a6cc273cc499a848cc236e8",
  "source": {
    "blob": "47bd60363da690f7e27bc25067405aa240b44d53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 61,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9478bb4a6ed648e2538d3e888f0f74cd4d54981b4781efaeb0896548d0edc1c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a6cc273cc499a848cc236e80b6058fa4f85e56cd10bc211b9c9bbf4e7330b6f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9478bb4a6ed648e2538d3e888f0f74cd4d54981b4781efaeb0896548d0edc1c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3be70069-fded-aed0-4377-b36cbc8671f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isFiltered_costructuredArrow_yoneda_of_preservesFiniteLimits
    [PreservesFiniteLimits A] : IsFiltered (CostructuredArrow yoneda A) := by
  suffices IsCofiltered A.Elements from
    IsFiltered.of_equivalence (Functor.Elements.costructuredArrowYonedaEquivalence _)
  suffices HasFiniteLimits A.Elements from IsCofiltered.of_hasFiniteLimits A.Elements
  exact ⟨fun J _ _ => inferInstance⟩

end LargeCategory

variable {C : Type u} [SmallCategory C] [HasFiniteColimits C]

variable (A : Cᵒᵖ ⥤ Type u)

namespace PreservesFiniteLimitsOfIsFilteredCostructuredArrowYonedaAux

variable {J : Type} [SmallCategory J] [FinCategory J] (K : J ⥤ Cᵒᵖ)

/-- (Implementation) This is the bifunctor we will apply "filtered colimits commute with finite
limits" to. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9478bb4a6ed648e2538d3e888f0f74cd4d54981b4781efaeb0896548d0edc1c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9478bb4a6ed648e2538d3e888f0f74cd4d54981b4781efaeb0896548d0edc1c2.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47bd60363da690f7e27bc25067405aa240b44d53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
