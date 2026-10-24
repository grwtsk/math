# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5aff221a33d989bd5d2b8d52af6912bf5eabb0736821e9ca1ca1f84ecd02f091",
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
  "slug": "instance--ad5fca34ba9bf4c54e3d1872",
  "source": {
    "blob": "112a572e913b3b0f36e4c35dd90fbdc571f0fafa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 318,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant52bf3bcba288fcd48c0a86051922a50a4746f4f9e2e0d9151ebdf6f93fb87852.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad5fca34ba9bf4c54e3d1872848bc4f6b8fff879dff008adf499a060424911de",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant52bf3bcba288fcd48c0a86051922a50a4746f4f9e2e0d9151ebdf6f93fb87852.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5aff221a33d989bd5d2b8d52af6912bf5eabb0736821e9ca1ca1f84ecd02f091`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {K₂ L₂ : CochainComplex C₂ ℤ} (g : K₂ ⟶ L₂) :
    NatTrans.CommShift (F.map₂CochainComplex.flip.map g) ℤ where
  shift_comm n := by
    ext K₁ d
    dsimp
    ext p q h
    simp [commShiftIso_map₂CochainComplex_flip_hom_app,
      CochainComplex.ι_mapBifunctorShift₁Iso_hom_f _ _ _ _ _ _ _ _ (p + n) (d + n) rfl rfl,
      CochainComplex.ι_mapBifunctorShift₁Iso_hom_f_assoc _ _ _ _ _ _ _ _ (p + n) (d + n) rfl rfl]

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant52bf3bcba288fcd48c0a86051922a50a4746f4f9e2e0d9151ebdf6f93fb87852.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant52bf3bcba288fcd48c0a86051922a50a4746f4f9e2e0d9151ebdf6f93fb87852.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `112a572e913b3b0f36e4c35dd90fbdc571f0fafa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
