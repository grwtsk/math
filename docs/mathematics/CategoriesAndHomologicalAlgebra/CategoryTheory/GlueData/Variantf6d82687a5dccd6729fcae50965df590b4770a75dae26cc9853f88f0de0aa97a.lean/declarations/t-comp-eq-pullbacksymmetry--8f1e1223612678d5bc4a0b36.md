# t'_comp_eq_pullbackSymmetry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aee703c24694bf7b5a92b1eb57fdf9bf98ff3dbc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6d82687a5dccd6729fcae50965df590b4770a75dae26cc9853f88f0de0aa97a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d25b34dc-213f-17a2-0481-e0aa04989a73",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94f720cc-cf5f-aee4-5987-0baa79e80571",
  "kind": "theorem",
  "lexical_name": "t'_comp_eq_pullbackSymmetry",
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
  "slug": "t-comp-eq-pullbacksymmetry--8f1e1223612678d5bc4a0b36",
  "source": {
    "blob": "aee703c24694bf7b5a92b1eb57fdf9bf98ff3dbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 123,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantf6d82687a5dccd6729fcae50965df590b4770a75dae26cc9853f88f0de0aa97a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f1e1223612678d5bc4a0b36970c0a508ffaa4727b6267c56cb7a0277f3ec386",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantf6d82687a5dccd6729fcae50965df590b4770a75dae26cc9853f88f0de0aa97a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94f720cc-cf5f-aee4-5987-0baa79e80571`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem t'_comp_eq_pullbackSymmetry (i j k : D.J) :
    D.t' j k i ≫ D.t' k i j =
      (pullbackSymmetry _ _).hom ≫ D.t' j i k ≫ (pullbackSymmetry _ _).hom := by
  trans inv (D.t' i j k)
  · exact IsIso.eq_inv_of_hom_inv_id (D.cocycle _ _ _)
  · rw [← cancel_mono (pullback.fst : pullback (D.f i j) (D.f i k) ⟶ _)]
    simp [t_fac, t_fac_assoc]
#align category_theory.glue_data.t'_comp_eq_pullback_symmetry CategoryTheory.GlueData.t'_comp_eq_pullbackSymmetry

/-- (Implementation) The disjoint union of `U i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantf6d82687a5dccd6729fcae50965df590b4770a75dae26cc9853f88f0de0aa97a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantf6d82687a5dccd6729fcae50965df590b4770a75dae26cc9853f88f0de0aa97a.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aee703c24694bf7b5a92b1eb57fdf9bf98ff3dbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
