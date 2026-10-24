# ι_jointly_surjective

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
      "line": 405,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6d82687a5dccd6729fcae50965df590b4770a75dae26cc9853f88f0de0aa97a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc603031-1082-ffca-c2d3-b7c53bf7a9a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ce30ad7-72ff-8d48-3f23-d6dd4bc8d3ac",
  "kind": "theorem",
  "lexical_name": "ι_jointly_surjective",
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
  "slug": "jointly-surjective--79170e1be7573631196cf352",
  "source": {
    "blob": "aee703c24694bf7b5a92b1eb57fdf9bf98ff3dbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 405,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantf6d82687a5dccd6729fcae50965df590b4770a75dae26cc9853f88f0de0aa97a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79170e1be7573631196cf352a3d715f4c815786f21333ff3418bd554b11f0654",
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

Occurrence: `result:6ce30ad7-72ff-8d48-3f23-d6dd4bc8d3ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ι_jointly_surjective (F : C ⥤ Type v) [PreservesColimit D.diagram.multispan F]
    [∀ i j k : D.J, PreservesLimit (cospan (D.f i j) (D.f i k)) F] (x : F.obj D.glued) :
    ∃ (i : _) (y : F.obj (D.U i)), F.map (D.ι i) y = x := by
  let e := D.gluedIso F
  obtain ⟨i, y, eq⟩ := (D.mapGlueData F).types_ι_jointly_surjective (e.hom x)
  replace eq := congr_arg e.inv eq
  change ((D.mapGlueData F).ι i ≫ e.inv) y = (e.hom ≫ e.inv) x at eq
  rw [e.hom_inv_id, D.ι_gluedIso_inv] at eq
  exact ⟨i, y, eq⟩
#align category_theory.glue_data.ι_jointly_surjective CategoryTheory.GlueData.ι_jointly_surjective

end GlueData

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantf6d82687a5dccd6729fcae50965df590b4770a75dae26cc9853f88f0de0aa97a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantf6d82687a5dccd6729fcae50965df590b4770a75dae26cc9853f88f0de0aa97a.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aee703c24694bf7b5a92b1eb57fdf9bf98ff3dbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
