# comp_ring_hom_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d9dc2ac-1673-155f-319f-60a717433868",
  "kind": "theorem",
  "lexical_name": "comp_ring_hom_ext",
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
  "slug": "comp-ring-hom-ext--390aac8ae2a87bf8fac19fac",
  "source": {
    "blob": "b6fbd7fd54059fc19b4a4117c86887875597888a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 266,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:390aac8ae2a87bf8fac19fac3b5aaf7a1d14c6aba45a99ea04545ec5942ab85c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d9dc2ac-1673-155f-319f-60a717433868`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_ring_hom_ext {X : LocallyRingedSpace} {R : CommRingCat} {f : R ⟶ Γ.obj (op X)}
    {β : X ⟶ Spec.locallyRingedSpaceObj R}
    (w : X.toΓSpec.1.base ≫ (Spec.locallyRingedSpaceMap f).1.base = β.1.base)
    (h :
      ∀ r : R,
        f ≫ X.presheaf.map (homOfLE le_top : (Opens.map β.1.base).obj (basicOpen r) ⟶ _).op =
          toOpen R (basicOpen r) ≫ β.1.c.app (op (basicOpen r))) :
    X.toΓSpec ≫ Spec.locallyRingedSpaceMap f = β := by
  ext1
  -- Porting note : need more hand holding here
  change (X.toΓSpec.1 ≫ _).base = _ at w
  apply Spec.basicOpen_hom_ext w
  intro r U
  -- Porting note : changed `rw` to `erw`
  erw [LocallyRingedSpace.comp_val_c_app]
  erw [toOpen_comp_comap_assoc]
  rw [Category.assoc]
  erw [toΓSpecSheafedSpace_app_spec, ← X.presheaf.map_comp]
  convert h r using 1
#align algebraic_geometry.LocallyRingedSpace.comp_ring_hom_ext AlgebraicGeometry.LocallyRingedSpace.comp_ring_hom_ext

/-- `toSpecΓ _` is an isomorphism so these are mutually two-sided inverses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6fbd7fd54059fc19b4a4117c86887875597888a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
