# mapHomologicalComplexXIso'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3d256f15697ce106d7d2d7ef7d65a448a299abb15012edf767ce663ae74f517",
  "kind": "def",
  "lexical_name": "mapHomologicalComplexXIso'",
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
  "slug": "maphomologicalcomplexxiso--b3f4a250822996eee74a398a",
  "source": {
    "blob": "7fd925f7157706b3a4a8db9bc5fa33bc3d9698fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 619,
    "line": 593,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variant4db6d463c22f0a35187a4f0d2c2868cd3142d8b1671fa63938476ae163b096b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3f4a250822996eee74a398a1a41989747d7696c51d27d2160e4bffe0defa8c2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variant4db6d463c22f0a35187a4f0d2c2868cd3142d8b1671fa63938476ae163b096b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3d256f15697ce106d7d2d7ef7d65a448a299abb15012edf767ce663ae74f517`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 593–619.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapHomologicalComplexXIso' (n m : ℤ) (hnm : n + 1 = m) :
    ((H.mapHomologicalComplex (ComplexShape.up ℤ)).obj (mappingCone φ)).X n ≅
      (mappingCone ((H.mapHomologicalComplex (ComplexShape.up ℤ)).map φ)).X n where
  hom := H.map ((fst φ).1.v n m (by lia)) ≫
      (inl ((H.mapHomologicalComplex (ComplexShape.up ℤ)).map φ)).v m n (by lia) +
      H.map ((snd φ).v n n (add_zero n)) ≫
        (inr ((H.mapHomologicalComplex (ComplexShape.up ℤ)).map φ)).f n
  inv := (fst ((H.mapHomologicalComplex (ComplexShape.up ℤ)).map φ)).1.v n m (by lia) ≫
      H.map ((inl φ).v m n (by lia)) +
      (snd ((H.mapHomologicalComplex (ComplexShape.up ℤ)).map φ)).v n n (add_zero n) ≫
        H.map ((inr φ).f n)
  hom_inv_id := by
    simp only [Functor.mapHomologicalComplex_obj_X, comp_add, add_comp, assoc,
      inl_v_fst_v_assoc, inr_f_fst_v_assoc, zero_comp, comp_zero, add_zero,
      inl_v_snd_v_assoc, inr_f_snd_v_assoc, zero_add, ← Functor.map_comp, ← Functor.map_add]
    rw [← H.map_id]
    congr 1
    simp [ext_from_iff _ _ _ hnm]
  inv_hom_id := by
    simp only [Functor.mapHomologicalComplex_obj_X, comp_add, add_comp, assoc,
      ← H.map_comp_assoc, inl_v_fst_v, CategoryTheory.Functor.map_id, id_comp, inr_f_fst_v,
      inl_v_snd_v, inr_f_snd_v]
    simp [ext_from_iff _ _ _ hnm]

/-- If `H : C ⥤ D` is an additive functor and `φ` is a morphism of cochain complexes
in `C`, this is the comparison isomorphism (in each degree) between the image
by `H` of `mappingCone φ` and the mapping cone of the image by `H` of `φ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variant4db6d463c22f0a35187a4f0d2c2868cd3142d8b1671fa63938476ae163b096b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variant4db6d463c22f0a35187a4f0d2c2868cd3142d8b1671fa63938476ae163b096b7.lean#L593).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fd925f7157706b3a4a8db9bc5fa33bc3d9698fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
