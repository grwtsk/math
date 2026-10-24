# extensiveTopology.isSheaf_yoneda_obj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3a2fc2d-0abd-e34b-13d7-c0f2e5d7a525",
  "kind": "theorem",
  "lexical_name": "extensiveTopology.isSheaf_yoneda_obj",
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
  "slug": "extensivetopology-issheaf-yoneda-obj--acc34565f9e01d4c691bf97f",
  "source": {
    "blob": "758bba642adcbbac7e12e8f3e0213f787d3dd979",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 71,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variantd96729d35d36cff5b1baee987b914da7c82f82c676af619c60884b6fe33fa73b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acc34565f9e01d4c691bf97f78d55f63803e873bbca079f4c45a568668b8638c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variantd96729d35d36cff5b1baee987b914da7c82f82c676af619c60884b6fe33fa73b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3a2fc2d-0abd-e34b-13d7-c0f2e5d7a525`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extensiveTopology.isSheaf_yoneda_obj (W : C) : Presieve.IsSheaf (extensiveTopology C)
    (yoneda.obj W) := by
  rw [extensiveTopology, isSheaf_coverage]
  intro X R ⟨Y, α, Z, π, hR, hi⟩
  have : IsIso (Sigma.desc (Cofan.inj (Cofan.mk X π))) := hi
  have : R.Extensive := ⟨Y, α, Z, π, hR, ⟨Cofan.isColimitOfIsIsoSigmaDesc (Cofan.mk X π)⟩⟩
  exact isSheafFor_extensive_of_preservesFiniteProducts _ _

/-- The extensive topology on a finitary pre-extensive category is subcanonical. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variantd96729d35d36cff5b1baee987b914da7c82f82c676af619c60884b6fe33fa73b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variantd96729d35d36cff5b1baee987b914da7c82f82c676af619c60884b6fe33fa73b.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `758bba642adcbbac7e12e8f3e0213f787d3dd979` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
