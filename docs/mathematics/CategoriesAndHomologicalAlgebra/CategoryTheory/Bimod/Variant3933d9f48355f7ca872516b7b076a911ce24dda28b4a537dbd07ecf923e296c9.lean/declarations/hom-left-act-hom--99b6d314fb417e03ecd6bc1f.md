# hom_left_act_hom'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b30d482-d6e5-ef01-3caf-9cdc63bc4f55",
  "kind": "theorem",
  "lexical_name": "hom_left_act_hom'",
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
  "slug": "hom-left-act-hom--99b6d314fb417e03ecd6bc1f",
  "source": {
    "blob": "67d4a585241d28a7db0135d7ed780489a306c36c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 494,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant3933d9f48355f7ca872516b7b076a911ce24dda28b4a537dbd07ecf923e296c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99b6d314fb417e03ecd6bc1f154149e2ca99ad4914f0f99592d5ef41b047a92f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant3933d9f48355f7ca872516b7b076a911ce24dda28b4a537dbd07ecf923e296c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b30d482-d6e5-ef01-3caf-9cdc63bc4f55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hom_left_act_hom' :
    ((P.tensorBimod Q).tensorBimod L).actLeft ≫ hom P Q L =
      (R.X ◁ hom P Q L) ≫ (P.tensorBimod (Q.tensorBimod L)).actLeft := by
  dsimp; dsimp [hom, homAux]
  refine (cancel_epi ((tensorLeft _).map (coequalizer.π _ _))).1 ?_
  simp only [curriedTensor_obj_map]
  slice_lhs 1 2 => rw [TensorBimod.whiskerLeft_π_actLeft]
  slice_lhs 3 4 => rw [coequalizer.π_desc]
  slice_rhs 1 2 => rw [← whiskerLeft_comp, coequalizer.π_desc, whiskerLeft_comp]
  refine (cancel_epi ((tensorRight _ ⋙ tensorLeft _).map (coequalizer.π _ _))).1 ?_
  dsimp; dsimp [TensorBimod.X]
  slice_lhs 1 2 => rw [associator_inv_naturality_middle]
  slice_lhs 2 3 =>
    rw [← comp_whiskerRight, TensorBimod.whiskerLeft_π_actLeft,
      comp_whiskerRight, comp_whiskerRight]
  slice_lhs 4 6 => rw [π_tensor_id_preserves_coequalizer_inv_desc]
  slice_lhs 3 4 => rw [associator_naturality_left]
  slice_rhs 1 3 =>
    rw [← whiskerLeft_comp, ← whiskerLeft_comp, π_tensor_id_preserves_coequalizer_inv_desc,
      whiskerLeft_comp, whiskerLeft_comp]
  slice_rhs 3 4 => erw [TensorBimod.whiskerLeft_π_actLeft P (Q.tensorBimod L)]
  slice_rhs 2 3 => erw [associator_inv_naturality_right]
  slice_rhs 3 4 => erw [whisker_exchange]
  monoidal

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant3933d9f48355f7ca872516b7b076a911ce24dda28b4a537dbd07ecf923e296c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant3933d9f48355f7ca872516b7b076a911ce24dda28b4a537dbd07ecf923e296c9.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67d4a585241d28a7db0135d7ed780489a306c36c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
