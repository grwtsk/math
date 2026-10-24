# unit_inverse_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d61a0fbe9732519fd0a9f6bf1ac240aaaf9a079",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 239,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f32f268dba944c2c72c529b8c4d0ab90d23ff3bdeda836c837af2b2d7e570e28.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39f908aa-18d1-cbad-9f2b-cbe415e1bf82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e2844f3-bafd-71cc-46b9-1e43745c342e",
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
  "slug": "unit-inverse-comp--fbcfe116fb95fe23a3afc7fd",
  "source": {
    "blob": "4d61a0fbe9732519fd0a9f6bf1ac240aaaf9a079",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 239,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantf32f268dba944c2c72c529b8c4d0ab90d23ff3bdeda836c837af2b2d7e570e28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbcfe116fb95fe23a3afc7fdfa52d1c815cd5aa6f9adc94e954117d20094b770",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantf32f268dba944c2c72c529b8c4d0ab90d23ff3bdeda836c837af2b2d7e570e28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e2844f3-bafd-71cc-46b9-1e43745c342e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unit_inverse_comp (e : C ≌ D) (Y : D) :
    e.unit.app (e.inverse.obj Y) ≫ e.inverse.map (e.counit.app Y) = 𝟙 (e.inverse.obj Y) := by
  rw [← id_comp (e.inverse.map _), ← map_id e.inverse, ← counitInv_functor_comp, map_comp]
  dsimp
  rw [← Iso.hom_inv_id_assoc (e.unitIso.app _) (e.inverse.map (e.functor.map _)), Iso.app_hom,
    Iso.app_inv]
  slice_lhs 2 3 => rw [← e.unit_naturality]
  slice_lhs 1 2 => rw [← e.unit_naturality]
  slice_lhs 4 4 =>
    rw [← Iso.hom_inv_id_assoc (e.inverse.mapIso (e.counitIso.app _)) (e.unitInv.app _)]
  slice_lhs 3 4 =>
    dsimp only [Functor.mapIso_hom, Iso.app_hom]
    rw [← map_comp e.inverse, e.counit_naturality, e.counitIso.hom_inv_id_app]
    dsimp only [Functor.comp_obj]
    rw [map_id]
  dsimp only [comp_obj, id_obj]
  rw [id_comp]
  slice_lhs 2 3 =>
    dsimp only [Functor.mapIso_inv, Iso.app_inv]
    rw [← map_comp e.inverse, ← e.counitInv_naturality, map_comp]
  slice_lhs 3 4 => rw [e.unitInv_naturality]
  slice_lhs 4 5 =>
    rw [← map_comp e.inverse, ← map_comp e.functor, e.unitIso.hom_inv_id_app]
    dsimp only [Functor.id_obj]
    rw [map_id, map_id]
  dsimp only [comp_obj, id_obj]
  rw [id_comp]
  slice_lhs 3 4 => rw [← e.unitInv_naturality]
  slice_lhs 2 3 =>
    rw [← map_comp e.inverse, e.counitInv_naturality, e.counitIso.hom_inv_id_app]
  dsimp only [Functor.comp_obj]
  simp

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantf32f268dba944c2c72c529b8c4d0ab90d23ff3bdeda836c837af2b2d7e570e28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantf32f268dba944c2c72c529b8c4d0ab90d23ff3bdeda836c837af2b2d7e570e28.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d61a0fbe9732519fd0a9f6bf1ac240aaaf9a079` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
