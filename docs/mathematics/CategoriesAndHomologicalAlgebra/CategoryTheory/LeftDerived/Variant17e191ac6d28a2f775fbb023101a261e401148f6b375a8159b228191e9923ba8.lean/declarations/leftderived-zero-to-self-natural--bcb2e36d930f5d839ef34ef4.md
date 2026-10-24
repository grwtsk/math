# leftDerived_zero_to_self_natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f935fda-593a-c513-4541-ddeb349a772e",
  "kind": "theorem",
  "lexical_name": "leftDerived_zero_to_self_natural",
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
  "slug": "leftderived-zero-to-self-natural--bcb2e36d930f5d839ef34ef4",
  "source": {
    "blob": "fe70ed66f53043ffb7948e6658cf68da14290356",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 169,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant17e191ac6d28a2f775fbb023101a261e401148f6b375a8159b228191e9923ba8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcb2e36d930f5d839ef34ef4c548a5784b84a8041807e0ec52f860ff7d769d11",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant17e191ac6d28a2f775fbb023101a261e401148f6b375a8159b228191e9923ba8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f935fda-593a-c513-4541-ddeb349a772e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leftDerived_zero_to_self_natural [EnoughProjectives C] {X : C} {Y : C} (f : X ⟶ Y)
    (P : ProjectiveResolution X) (Q : ProjectiveResolution Y) :
    (F.leftDerived 0).map f ≫ leftDerivedZeroToSelfApp F Q =
      leftDerivedZeroToSelfApp F P ≫ F.map f := by
  dsimp only [leftDerivedZeroToSelfApp]
  rw [Functor.leftDerived_map_eq F 0 f (ProjectiveResolution.lift f P Q) (by simp), Category.assoc,
    Category.assoc, ← Category.assoc _ (F.leftDerivedObjIso 0 Q).hom, Iso.inv_hom_id,
    Category.id_comp, Category.assoc, whisker_eq]
  dsimp only [homologyFunctor_map]
  -- Porting note: broken ext
  apply homology.hom_from_ext
  simp only [HomologicalComplex.Hom.sqTo_right, mapHomologicalComplex_map_f,
    homology.π'_map_assoc, homology.π'_desc', kernel.lift_ι_assoc, Category.assoc,
    homology.π'_desc'_assoc, ← map_comp,
    show (ProjectiveResolution.lift f P Q).f 0 ≫ _ = _ ≫ f from
      HomologicalComplex.congr_hom (ProjectiveResolution.lift_commutes f P Q) 0]
#align category_theory.abelian.functor.left_derived_zero_to_self_natural CategoryTheory.Abelian.Functor.leftDerived_zero_to_self_natural

/-- Given `PreservesFiniteColimits F`, the natural isomorphism `(F.leftDerived 0) ≅ F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant17e191ac6d28a2f775fbb023101a261e401148f6b375a8159b228191e9923ba8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant17e191ac6d28a2f775fbb023101a261e401148f6b375a8159b228191e9923ba8.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe70ed66f53043ffb7948e6658cf68da14290356` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
