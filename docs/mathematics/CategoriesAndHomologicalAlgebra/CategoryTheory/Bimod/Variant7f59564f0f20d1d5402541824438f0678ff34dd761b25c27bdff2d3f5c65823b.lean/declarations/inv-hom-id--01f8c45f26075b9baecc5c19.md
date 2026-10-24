# inv_hom_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f2b2ed9-79f7-90ce-0701-8875c79763cd",
  "kind": "theorem",
  "lexical_name": "inv_hom_id",
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
  "slug": "inv-hom-id--01f8c45f26075b9baecc5c19",
  "source": {
    "blob": "43916b872ed2ecd4cc42825d465390b90d641cf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 653,
    "line": 632,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant7f59564f0f20d1d5402541824438f0678ff34dd761b25c27bdff2d3f5c65823b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01f8c45f26075b9baecc5c19a95419ab720c21f205c93106ef1318b2105205cd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant7f59564f0f20d1d5402541824438f0678ff34dd761b25c27bdff2d3f5c65823b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f2b2ed9-79f7-90ce-0701-8875c79763cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 632–653.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_hom_id : inv P Q L ≫ hom P Q L = 𝟙 _ := by
  dsimp [hom, homAux, inv, invAux]
  apply coequalizer.hom_ext
  slice_lhs 1 2 => rw [coequalizer.π_desc]
  refine' (cancel_epi ((tensorLeft _).map (coequalizer.π _ _))).1 _
  rw [tensorLeft_map]
  slice_lhs 1 3 => rw [id_tensor_π_preserves_coequalizer_inv_desc]
  slice_lhs 3 4 => rw [coequalizer.π_desc]
  slice_lhs 2 4 => rw [π_tensor_id_preserves_coequalizer_inv_desc]
  slice_lhs 1 3 => rw [Iso.inv_hom_id_assoc]
  dsimp only [TensorBimod.X]
  slice_rhs 2 3 => rw [Category.comp_id]
set_option linter.uppercaseLean3 false in
#align Bimod.associator_Bimod.inv_hom_id Bimod.AssociatorBimod.inv_hom_id

end AssociatorBimod

namespace LeftUnitorBimod

variable {R S : Mon_ C} (P : Bimod R S)

/-- The underlying morphism of the forward component of the left unitor isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant7f59564f0f20d1d5402541824438f0678ff34dd761b25c27bdff2d3f5c65823b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant7f59564f0f20d1d5402541824438f0678ff34dd761b25c27bdff2d3f5c65823b.lean#L632).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43916b872ed2ecd4cc42825d465390b90d641cf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
