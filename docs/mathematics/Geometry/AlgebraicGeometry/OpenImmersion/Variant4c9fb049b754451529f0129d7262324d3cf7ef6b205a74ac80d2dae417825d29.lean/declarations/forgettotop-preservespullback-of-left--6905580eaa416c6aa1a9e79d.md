# forgetToTop_preservesPullback_of_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:265b8ec6a1218730b5f0398bfb67a1e6bc19754ca8eef3dd3f47f54bdd8dfabd",
  "kind": "instance",
  "lexical_name": "forgetToTop_preservesPullback_of_left",
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
  "slug": "forgettotop-preservespullback-of-left--6905580eaa416c6aa1a9e79d",
  "source": {
    "blob": "2f3d4a21a9bac194181fdce6e58e3b87aed37bfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1075,
    "line": 1057,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant4c9fb049b754451529f0129d7262324d3cf7ef6b205a74ac80d2dae417825d29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6905580eaa416c6aa1a9e79d59336b4eaebd5c99dcc5144a00443df177483014",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant4c9fb049b754451529f0129d7262324d3cf7ef6b205a74ac80d2dae417825d29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:265b8ec6a1218730b5f0398bfb67a1e6bc19754ca8eef3dd3f47f54bdd8dfabd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1057–1075.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance forgetToTop_preservesPullback_of_left :
    PreservesLimit (cospan f g)
      (LocallyRingedSpace.forgetToSheafedSpace ⋙ SheafedSpace.forget _) := by
  change PreservesLimit _ <|
    (LocallyRingedSpace.forgetToSheafedSpace ⋙ SheafedSpace.forgetToPresheafedSpace) ⋙
    PresheafedSpace.forget _
  -- Porting note: was `apply (config := { instances := False }) ...`
  -- See https://github.com/leanprover/lean4/issues/2273
  have : PreservesLimit
      (cospan ((cospan f g ⋙ forgetToSheafedSpace ⋙ SheafedSpace.forgetToPresheafedSpace).map
        WalkingCospan.Hom.inl)
      ((cospan f g ⋙ forgetToSheafedSpace ⋙ SheafedSpace.forgetToPresheafedSpace).map
        WalkingCospan.Hom.inr)) (PresheafedSpace.forget CommRingCat) := by
    dsimp; infer_instance
  have : PreservesLimit (cospan f g ⋙ forgetToSheafedSpace ⋙ SheafedSpace.forgetToPresheafedSpace)
      (PresheafedSpace.forget CommRingCat) := by
    apply preservesLimit_of_iso_diagram _ (diagramIsoCospan _).symm
  apply Limits.comp_preservesLimit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant4c9fb049b754451529f0129d7262324d3cf7ef6b205a74ac80d2dae417825d29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant4c9fb049b754451529f0129d7262324d3cf7ef6b205a74ac80d2dae417825d29.lean#L1057).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f3d4a21a9bac194181fdce6e58e3b87aed37bfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
