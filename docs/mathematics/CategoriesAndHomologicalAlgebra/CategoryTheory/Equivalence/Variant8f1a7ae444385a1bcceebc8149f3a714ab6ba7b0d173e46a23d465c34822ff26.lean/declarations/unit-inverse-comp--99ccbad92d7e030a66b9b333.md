# unit_inverse_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99840ea8-dda5-d75a-ddae-40e31f3a08fd",
  "kind": "theorem",
  "lexical_name": "unit_inverse_comp",
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
  "slug": "unit-inverse-comp--99ccbad92d7e030a66b9b333",
  "source": {
    "blob": "e23128da1e56bec6bc18a60bcde57d813232f0c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 188,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant8f1a7ae444385a1bcceebc8149f3a714ab6ba7b0d173e46a23d465c34822ff26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99ccbad92d7e030a66b9b3338fa792668a696851aecce27d62a05f0926dadaa6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant8f1a7ae444385a1bcceebc8149f3a714ab6ba7b0d173e46a23d465c34822ff26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99840ea8-dda5-d75a-ddae-40e31f3a08fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unit_inverse_comp (e : C ≌ D) (Y : D) :
    e.unit.app (e.inverse.obj Y) ≫ e.inverse.map (e.counit.app Y) = 𝟙 (e.inverse.obj Y) := by
  rw [← id_comp (e.inverse.map _), ← map_id e.inverse, ← counitInv_functor_comp, map_comp]
  dsimp
  rw [← Iso.hom_inv_id_assoc (e.unitIso.app _) (e.inverse.map (e.functor.map _)), app_hom, app_inv]
  slice_lhs 2 3 => erw [e.unit.naturality]
  slice_lhs 1 2 => erw [e.unit.naturality]
  slice_lhs 4 4 =>
    rw [← Iso.hom_inv_id_assoc (e.inverse.mapIso (e.counitIso.app _)) (e.unitInv.app _)]
  slice_lhs 3 4 =>
    erw [← map_comp e.inverse, e.counit.naturality]
    erw [(e.counitIso.app _).hom_inv_id, map_id]
  erw [id_comp]
  slice_lhs 2 3 => erw [← map_comp e.inverse, e.counitIso.inv.naturality, map_comp]
  slice_lhs 3 4 => erw [e.unitInv.naturality]
  slice_lhs 4 5 => erw [← map_comp (e.functor ⋙ e.inverse), (e.unitIso.app _).hom_inv_id, map_id]
  erw [id_comp]
  slice_lhs 3 4 => erw [← e.unitInv.naturality]
  slice_lhs 2 3 =>
    erw [← map_comp e.inverse, ← e.counitIso.inv.naturality, (e.counitIso.app _).hom_inv_id,
      map_id]
  erw [id_comp, (e.unitIso.app _).hom_inv_id]; rfl
#align category_theory.equivalence.unit_inverse_comp CategoryTheory.Equivalence.unit_inverse_comp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant8f1a7ae444385a1bcceebc8149f3a714ab6ba7b0d173e46a23d465c34822ff26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant8f1a7ae444385a1bcceebc8149f3a714ab6ba7b0d173e46a23d465c34822ff26.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e23128da1e56bec6bc18a60bcde57d813232f0c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
