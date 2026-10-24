# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bca6fdf4090e3ea1641513d370385d1ac6e038740d8c90d0a8a5332a0c591a68",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a47e4b1e4762ce19eaaa5f3c",
  "source": {
    "blob": "07dd2d119fd2563e0022968b0f406dff2008b2ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 261,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a47e4b1e4762ce19eaaa5f3c59980dad050fb52ee156e89516c2efa761efab28",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bca6fdf4090e3ea1641513d370385d1ac6e038740d8c90d0a8a5332a0c591a68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : NatTrans.CommShift (PullbackShift.natIsoComp φ F G).hom A where
  shift_comm _ := by
    ext
    dsimp [PullbackShift.natIsoComp]
    simp only [commShiftPullback_iso_eq φ _ _ _ rfl, Iso.trans_hom, isoWhiskerRight_hom,
      isoWhiskerLeft_hom, Iso.symm_hom, comp_app, comp_obj, whiskerRight_app, Functor.comp_map,
      commShiftIso_comp_hom_app, whiskerLeft_app, assoc, map_id, comp_id, map_comp, id_comp]
    dsimp [PullbackShift.functor]
    slice_rhs 3 4 => rw [← G.map_comp, Iso.inv_hom_id_app]
    simp

end NatTrans

/--
The adjunction `adj`, seen as an adjunction between `PullbackShift.functor F φ`
and `PullbackShift.functor G φ`.
-/
@[simps -isSimp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07dd2d119fd2563e0022968b0f406dff2008b2ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
