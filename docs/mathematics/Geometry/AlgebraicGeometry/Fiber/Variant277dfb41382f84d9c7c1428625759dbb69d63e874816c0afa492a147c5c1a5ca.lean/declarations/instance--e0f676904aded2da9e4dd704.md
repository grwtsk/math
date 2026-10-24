# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab19c710fed6d6689a65acb9f9725e7ed58c2209f2ba6d38ccdfdd3a235a91e5",
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
  "slug": "instance--e0f676904aded2da9e4dd704",
  "source": {
    "blob": "e6fdee96db7b16d6a3dd102f00a60aa9fb5ea66f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 109,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0f676904aded2da9e4dd704c46c19a220d8b424c54ccafecceb249a1064fe4c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab19c710fed6d6689a65acb9f9725e7ed58c2209f2ba6d38ccdfdd3a235a91e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (f : X ⟶ Y) (y : Y) [IsFinite f] : Finite (f.fiber y) := by
  have H : IsFinite (f.fiberToSpecResidueField y) := MorphismProperty.pullback_snd _ _ inferInstance
  have : IsArtinianRing Γ(f.fiber y, ⊤) :=
    @IsArtinianRing.of_finite (Y.residueField y) Γ(f.fiber y, ⊤) _ _ (show _ from _) _ _
      ((HasAffineProperty.iff_of_isAffine.mp H).2.comp (.of_surjective _ (Scheme.ΓSpecIso
        (Y.residueField y)).commRingCatIsoToRingEquiv.symm.surjective))
  exact .of_injective (β := PrimeSpectrum _) _ (f.fiber y).isoSpec.hom.homeomorph.injective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6fdee96db7b16d6a3dd102f00a60aa9fb5ea66f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
