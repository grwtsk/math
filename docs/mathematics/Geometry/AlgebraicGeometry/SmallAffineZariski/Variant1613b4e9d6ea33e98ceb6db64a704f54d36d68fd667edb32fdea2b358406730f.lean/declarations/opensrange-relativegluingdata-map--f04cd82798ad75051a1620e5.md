# opensRange_relativeGluingData_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:153b1123-b980-fdcf-5955-003e9b76094b",
  "kind": "lemma",
  "lexical_name": "opensRange_relativeGluingData_map",
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
  "slug": "opensrange-relativegluingdata-map--f04cd82798ad75051a1620e5",
  "source": {
    "blob": "9ca4bec62191cc2f6f07f1c5112b1a210241d7ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 312,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SmallAffineZariski/Variant1613b4e9d6ea33e98ceb6db64a704f54d36d68fd667edb32fdea2b358406730f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f04cd82798ad75051a1620e58209c877ee7950ffbca6ea5ca71a824079f45b01",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SmallAffineZariski/Variant1613b4e9d6ea33e98ceb6db64a704f54d36d68fd667edb32fdea2b358406730f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:153b1123-b980-fdcf-5955-003e9b76094b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma opensRange_relativeGluingData_map (F : X.AffineZariskiSiteᵒᵖ ⥤ CommRingCat)
    (α : (AffineZariskiSite.toOpensFunctor X).op ⋙ X.presheaf ⟶ F)
    (H : α.Coequifibered) {U : X.AffineZariskiSite} (r : Γ(X, U.1)) :
    ((relativeGluingData H).functor.map (homOfLE (U.basicOpen_le r))).opensRange =
      PrimeSpectrum.basicOpen (α.app (.op U) r) := by
  have := coequifibered_iff_forall_isLocalizationAway.mp H U r
  let := (F.map (homOfLE (U.basicOpen_le r)).op).hom.toAlgebra
  apply TopologicalSpace.Opens.coe_inj.mp ?_
  refine PrimeSpectrum.localization_away_comap_range (F.obj (.op <| U.basicOpen r))
    (α.app (.op U) r)

set_option backward.isDefEq.respectTransparency false in
variable (X) in
/-- `X` is the colimit of its affine opens. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SmallAffineZariski/Variant1613b4e9d6ea33e98ceb6db64a704f54d36d68fd667edb32fdea2b358406730f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SmallAffineZariski/Variant1613b4e9d6ea33e98ceb6db64a704f54d36d68fd667edb32fdea2b358406730f.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ca4bec62191cc2f6f07f1c5112b1a210241d7ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
