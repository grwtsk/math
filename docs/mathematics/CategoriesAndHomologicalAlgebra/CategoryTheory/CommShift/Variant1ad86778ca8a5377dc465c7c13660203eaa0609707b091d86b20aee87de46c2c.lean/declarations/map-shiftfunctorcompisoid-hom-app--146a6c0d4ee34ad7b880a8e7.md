# map_shiftFunctorCompIsoId_hom_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af404d00-418d-8f95-6e3a-06500d8e4830",
  "kind": "lemma",
  "lexical_name": "map_shiftFunctorCompIsoId_hom_app",
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
  "slug": "map-shiftfunctorcompisoid-hom-app--146a6c0d4ee34ad7b880a8e7",
  "source": {
    "blob": "96474b1ede798bfcb79c6c34469ae8164140456e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 256,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Variant1ad86778ca8a5377dc465c7c13660203eaa0609707b091d86b20aee87de46c2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:146a6c0d4ee34ad7b880a8e76fb6922241e95c26f518c892729d855e8e61a23a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Variant1ad86778ca8a5377dc465c7c13660203eaa0609707b091d86b20aee87de46c2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af404d00-418d-8f95-6e3a-06500d8e4830`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_shiftFunctorCompIsoId_hom_app [F.CommShift A] (X : C) (a b : A) (h : a + b = 0) :
    F.map ((shiftFunctorCompIsoId C a b h).hom.app X) =
      (F.commShiftIso b).hom.app (X⟦a⟧) ≫ ((F.commShiftIso a).hom.app X)⟦b⟧' ≫
        (shiftFunctorCompIsoId D a b h).hom.app (F.obj X) := by
  dsimp [shiftFunctorCompIsoId]
  have eq := NatTrans.congr_app (congr_arg Iso.hom (F.commShiftIso_add' h)) X
  simp only [commShiftIso_zero, comp_obj, CommShift.isoZero_hom_app,
    CommShift.isoAdd'_hom_app] at eq
  rw [← cancel_epi (F.map ((shiftFunctorAdd' C a b 0 h).hom.app X)), ← reassoc_of% eq, F.map_comp]
  simp only [Iso.inv_hom_id_app, id_obj, Category.comp_id, ← F.map_comp_assoc, Iso.hom_inv_id_app,
    F.map_id, Category.id_comp]

@[simp, reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Variant1ad86778ca8a5377dc465c7c13660203eaa0609707b091d86b20aee87de46c2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Variant1ad86778ca8a5377dc465c7c13660203eaa0609707b091d86b20aee87de46c2c.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96474b1ede798bfcb79c6c34469ae8164140456e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
