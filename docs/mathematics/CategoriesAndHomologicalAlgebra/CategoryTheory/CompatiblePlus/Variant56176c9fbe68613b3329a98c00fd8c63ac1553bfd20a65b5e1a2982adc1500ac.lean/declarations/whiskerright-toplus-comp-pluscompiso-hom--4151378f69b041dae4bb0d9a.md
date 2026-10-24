# whiskerRight_toPlus_comp_plusCompIso_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44068f75-d0cd-1ca0-6528-d03abb94a602",
  "kind": "theorem",
  "lexical_name": "whiskerRight_toPlus_comp_plusCompIso_hom",
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
  "slug": "whiskerright-toplus-comp-pluscompiso-hom--4151378f69b041dae4bb0d9a",
  "source": {
    "blob": "d6e45b1720e5096a6d035b3d52a768b5370423ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 212,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4151378f69b041dae4bb0d9a544b2378499d09db5cb7879bf5aa65fce3dc9bf7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44068f75-d0cd-1ca0-6528-d03abb94a602`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem whiskerRight_toPlus_comp_plusCompIso_hom :
    whiskerRight (J.toPlus _) _ ≫ (J.plusCompIso F P).hom = J.toPlus _ := by
  ext
  dsimp [toPlus]
  simp only [ι_plusCompIso_hom, Functor.map_comp, Category.assoc]
  simp only [← Category.assoc]
  congr 1
  -- porting note: this used to work with `ext`
  -- See https://github.com/leanprover-community/mathlib4/issues/5229
  apply Multiequalizer.hom_ext
  delta Cover.toMultiequalizer
  simp only [diagramCompIso_hom_ι, Category.assoc, ← F.map_comp]
  simp only [unop_op, limit.lift_π, Multifork.ofι_π_app, Functor.comp_obj, Functor.comp_map,
    implies_true]
#align category_theory.grothendieck_topology.whisker_right_to_plus_comp_plus_comp_iso_hom CategoryTheory.GrothendieckTopology.whiskerRight_toPlus_comp_plusCompIso_hom

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6e45b1720e5096a6d035b3d52a768b5370423ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
