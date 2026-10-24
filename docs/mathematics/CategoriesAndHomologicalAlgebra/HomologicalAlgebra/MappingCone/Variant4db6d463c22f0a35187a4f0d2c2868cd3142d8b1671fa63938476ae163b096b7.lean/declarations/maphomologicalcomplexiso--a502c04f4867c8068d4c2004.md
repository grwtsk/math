# mapHomologicalComplexIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a7d030f099ab303bce75056db66c864d7d8843eda8d61a4ae256c4be4e4a8a9",
  "kind": "def",
  "lexical_name": "mapHomologicalComplexIso",
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
  "slug": "maphomologicalcomplexiso--a502c04f4867c8068d4c2004",
  "source": {
    "blob": "7fd925f7157706b3a4a8db9bc5fa33bc3d9698fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 655,
    "line": 634,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variant4db6d463c22f0a35187a4f0d2c2868cd3142d8b1671fa63938476ae163b096b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a502c04f4867c8068d4c2004ba31b8efda665e1c9a61ea25118dcb69d11cfc1e",
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

Occurrence: `declaration:4a7d030f099ab303bce75056db66c864d7d8843eda8d61a4ae256c4be4e4a8a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 634–655.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapHomologicalComplexIso :
    (H.mapHomologicalComplex _).obj (mappingCone φ) ≅
      mappingCone ((H.mapHomologicalComplex _).map φ) :=
  HomologicalComplex.Hom.isoOfComponents (mapHomologicalComplexXIso φ H) (by
    rintro n _ rfl
    rw [ext_to_iff _ _ (n + 2) (by lia), assoc, assoc, d_fst_v _ _ _ _ rfl,
      assoc, assoc, d_snd_v _ _ _ rfl]
    simp only [mapHomologicalComplexXIso_eq φ H n (n + 1) rfl,
      mapHomologicalComplexXIso_eq φ H (n + 1) (n + 2) (by lia),
      mapHomologicalComplexXIso'_hom, mapHomologicalComplexXIso'_hom]
    constructor
    · dsimp
      simp only [Functor.mapHomologicalComplex_obj_X, comp_neg, add_comp, assoc, inl_v_fst_v_assoc,
        inr_f_fst_v_assoc, zero_comp, comp_zero, add_zero, inl_v_fst_v, comp_id, inr_f_fst_v,
        ← H.map_comp, d_fst_v φ n (n + 1) (n + 2) rfl (by lia), Functor.map_neg]
    · dsimp
      simp only [comp_add, add_comp, assoc, inl_v_fst_v_assoc, inr_f_fst_v_assoc,
        Functor.mapHomologicalComplex_obj_X, zero_comp, comp_zero, add_zero, inl_v_snd_v_assoc,
        inr_f_snd_v_assoc, zero_add, inl_v_snd_v, inr_f_snd_v, comp_id, ← H.map_comp,
        d_snd_v φ n (n + 1) rfl, Functor.map_add])

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variant4db6d463c22f0a35187a4f0d2c2868cd3142d8b1671fa63938476ae163b096b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variant4db6d463c22f0a35187a4f0d2c2868cd3142d8b1671fa63938476ae163b096b7.lean#L634).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fd925f7157706b3a4a8db9bc5fa33bc3d9698fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
