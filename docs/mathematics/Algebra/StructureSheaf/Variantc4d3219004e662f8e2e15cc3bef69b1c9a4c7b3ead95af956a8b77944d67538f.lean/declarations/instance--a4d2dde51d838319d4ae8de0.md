# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9766fb26c84b84b39d24a81e9553e9f4c91dab858354051cfcb64289c186d2fb",
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
  "slug": "instance--a4d2dde51d838319d4ae8de0",
  "source": {
    "blob": "a4c4f331dfaf374d6fac8adeed4e3f2f03691dcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 873,
    "line": 847,
    "path": "GRWTSK/Algebra/StructureSheaf/Variantc4d3219004e662f8e2e15cc3bef69b1c9a4c7b3ead95af956a8b77944d67538f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4d2dde51d838319d4ae8de0881ca446b40cb89cd4e6f4ef66683d55254d37f3",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variantc4d3219004e662f8e2e15cc3bef69b1c9a4c7b3ead95af956a8b77944d67538f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9766fb26c84b84b39d24a81e9553e9f4c91dab858354051cfcb64289c186d2fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 847–873.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public instance (x : PrimeSpectrum.Top R) :
    IsLocalization.AtPrime ((structurePresheafInCommRingCat R).stalk x) x.asIdeal := by
  refine (isLocalizedModule_iff_isLocalization' _ _).mp ?_
  convert!
    IsLocalizedModule.of_linearEquiv x.asIdeal.primeCompl (toStalkₗ R R x)
      (commRingCatStalkEquivModuleStalk R x)
  let α : TopCat.Presheaf.stalk (moduleStructurePresheaf R R).presheaf x ≅
    (forget₂ CommRingCat RingCat ⋙ forget₂ RingCat AddCommGrpCat).obj
      ((structurePresheafInCommRingCat R).stalk x) :=
    (Limits.colimit.isoColimitCocone ⟨_, Limits.isColimitOfPreserves
    (forget₂ CommRingCat RingCat ⋙ forget₂ RingCat AddCommGrpCat)
    (Limits.colimit.isColimit ((OpenNhds.inclusion x).op ⋙
      structurePresheafInCommRingCat R))⟩)
  have : (TopCat.Presheaf.germ (moduleStructurePresheaf R R).presheaf ⊤ x (by simp)) ≫ α.hom =
      (forget₂ CommRingCat RingCat ⋙ forget₂ RingCat AddCommGrpCat).map
        ((structurePresheafInCommRingCat R).germ ⊤ x (by simp)) :=
    Limits.colimit.isoColimitCocone_ι_hom ..
  ext
  dsimp [toStalkₗ]
  simp only [map_one]
  refine .trans ?_ congr($this _).symm
  exact (((structurePresheafInCommRingCat R).germ ⊤ x (by simp)).hom.comp
    (algebraMap R Γ(R, _))).map_one.symm

variable (R) in
/-- The stalk of `Spec R` at `x` is isomorphic to `Rₚ`,
where `p` is the prime corresponding to `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variantc4d3219004e662f8e2e15cc3bef69b1c9a4c7b3ead95af956a8b77944d67538f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variantc4d3219004e662f8e2e15cc3bef69b1c9a4c7b3ead95af956a8b77944d67538f.lean#L847).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4c4f331dfaf374d6fac8adeed4e3f2f03691dcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
