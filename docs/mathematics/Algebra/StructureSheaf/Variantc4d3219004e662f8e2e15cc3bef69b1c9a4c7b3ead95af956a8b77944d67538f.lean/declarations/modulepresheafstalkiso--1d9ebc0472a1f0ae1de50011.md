# modulePresheafStalkIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27e14980cddd084d1d0dc7117d773bbf48831da9365b4d25baf537414597f6e4",
  "kind": "def",
  "lexical_name": "modulePresheafStalkIso",
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
  "slug": "modulepresheafstalkiso--1d9ebc0472a1f0ae1de50011",
  "source": {
    "blob": "a4c4f331dfaf374d6fac8adeed4e3f2f03691dcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 588,
    "path": "GRWTSK/Algebra/StructureSheaf/Variantc4d3219004e662f8e2e15cc3bef69b1c9a4c7b3ead95af956a8b77944d67538f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d9ebc0472a1f0ae1de50011b90b3303883bde6bc819a78ddfae361f9d91908b",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variantc4d3219004e662f8e2e15cc3bef69b1c9a4c7b3ead95af956a8b77944d67538f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27e14980cddd084d1d0dc7117d773bbf48831da9365b4d25baf537414597f6e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 588–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def modulePresheafStalkIso (x : PrimeSpectrum.Top R) :
    ↑(TopCat.Presheaf.stalk (moduleStructurePresheaf R M).presheaf x) ≃ₗ[R]
      (structurePresheafInModuleCat R M).stalk x where
  __ := (Limits.colimit.isoColimitCocone ⟨_, Limits.isColimitOfPreserves (forget₂ (ModuleCat R) Ab)
    (Limits.colimit.isColimit ((OpenNhds.inclusion x).op ⋙
      structurePresheafInModuleCat R M))⟩:).addCommGroupIsoToAddEquiv
  map_smul' r m := by
    let α : TopCat.Presheaf.stalk (moduleStructurePresheaf R M).presheaf x ≅
      (forget₂ _ _).obj ((structurePresheafInModuleCat R M).stalk x) :=
      Limits.colimit.isoColimitCocone ⟨_, Limits.isColimitOfPreserves (forget₂ (ModuleCat R) Ab)
      (Limits.colimit.isColimit ((OpenNhds.inclusion x).op ⋙
        structurePresheafInModuleCat R M))⟩
    obtain ⟨U, hxU, s, rfl⟩ := TopCat.Presheaf.exists_germ_eq _ m
    have : TopCat.Presheaf.germ (moduleStructurePresheaf R M).presheaf U x hxU ≫ α.hom =
        (forget₂ _ _).map ((structurePresheafInModuleCat R M).germ U x hxU) :=
      Limits.colimit.isoColimitCocone_ι_hom (C := Ab) ..
    have (m : _) : α.hom (TopCat.Presheaf.germ (moduleStructurePresheaf R M).presheaf U x hxU m) =
        (structurePresheafInModuleCat R M).germ U x hxU m := congr($this m)
    change α.hom (r • germₗ M U x hxU _) =
      r • (show (structurePresheafInModuleCat R M).stalk x from _)
    rw [← map_smul]
    refine (this _).trans ?_
    dsimp [toStalk]
    erw [this]
    exact ((structurePresheafInModuleCat R M).germ U x hxU).hom.map_smul _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variantc4d3219004e662f8e2e15cc3bef69b1c9a4c7b3ead95af956a8b77944d67538f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variantc4d3219004e662f8e2e15cc3bef69b1c9a4c7b3ead95af956a8b77944d67538f.lean#L588).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4c4f331dfaf374d6fac8adeed4e3f2f03691dcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
