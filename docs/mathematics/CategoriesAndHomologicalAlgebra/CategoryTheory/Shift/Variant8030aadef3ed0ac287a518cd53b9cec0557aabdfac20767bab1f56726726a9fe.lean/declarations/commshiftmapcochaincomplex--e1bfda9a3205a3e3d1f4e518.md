# commShiftMapCochainComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03239da11dbea2663fa814d7b369e396edd0b44b9f03d69b76663b9eaa3b9f9d",
  "kind": "instance",
  "lexical_name": "commShiftMapCochainComplex",
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
  "slug": "commshiftmapcochaincomplex--e1bfda9a3205a3e3d1f4e518",
  "source": {
    "blob": "6afd1d622e6ba1d1ff78071012195146c7c2c363",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 235,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1bfda9a3205a3e3d1f4e518ec479be7d9a9811de751e7b8c974ecf723e6c5b9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03239da11dbea2663fa814d7b369e396edd0b44b9f03d69b76663b9eaa3b9f9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance commShiftMapCochainComplex :
    (F.mapHomologicalComplex (ComplexShape.up ℤ)).CommShift ℤ where
  iso := F.mapCochainComplexShiftIso
  zero := by
    ext
    rw [CommShift.isoZero_hom_app]
    dsimp
    simp only [mapCochainComplexShiftIso_hom_app_f, CochainComplex.shiftFunctorZero_inv_app_f,
       CochainComplex.shiftFunctorZero_hom_app_f, HomologicalComplex.XIsoOfEq, eqToIso,
       eqToHom_map, eqToHom_trans, eqToHom_refl]
  add := fun a b => by
    ext
    rw [CommShift.isoAdd_hom_app]
    dsimp
    rw [id_comp, id_comp]
    simp only [CochainComplex.shiftFunctorAdd_hom_app_f,
      CochainComplex.shiftFunctorAdd_inv_app_f, HomologicalComplex.XIsoOfEq, eqToIso,
      eqToHom_map, eqToHom_trans, eqToHom_refl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6afd1d622e6ba1d1ff78071012195146c7c2c363` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
