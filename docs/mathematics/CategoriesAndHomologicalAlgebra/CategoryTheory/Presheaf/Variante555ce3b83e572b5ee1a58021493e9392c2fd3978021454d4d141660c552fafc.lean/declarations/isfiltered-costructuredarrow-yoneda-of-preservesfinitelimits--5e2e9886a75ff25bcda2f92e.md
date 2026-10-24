# isFiltered_costructuredArrow_yoneda_of_preservesFiniteLimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "24dbb67fccbb30106a54f8a1a0ed13526fa0c618",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a50fbf8d-5355-be24-9d45-2fd1cb770dd1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea9ddd93-1014-b02c-23dd-251957c0c004",
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
  "slug": "isfiltered-costructuredarrow-yoneda-of-preservesfinitelimits--5e2e9886a75ff25bcda2f92e",
  "source": {
    "blob": "24dbb67fccbb30106a54f8a1a0ed13526fa0c618",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 57,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e2e9886a75ff25bcda2f92e72b4e61bb05a38f98e1906f8365724706a5d34de",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea9ddd93-1014-b02c-23dd-251957c0c004`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isFiltered_costructuredArrow_yoneda_of_preservesFiniteLimits
    [PreservesFiniteLimits A] : IsFiltered (CostructuredArrow yoneda A) := by
  suffices IsCofiltered A.Elements from
    IsFiltered.of_equivalence (CategoryOfElements.costructuredArrowYonedaEquivalence _)
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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24dbb67fccbb30106a54f8a1a0ed13526fa0c618` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
