# source_openCover_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a61dcfa-4f6e-0d48-4018-6fcbedb5e170",
  "kind": "theorem",
  "lexical_name": "source_openCover_iff",
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
  "slug": "source-opencover-iff--7e3efd02a22162668bc88cd0",
  "source": {
    "blob": "653ea3160ced1b0792ac93326eb237d91538f8c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 560,
    "line": 533,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e3efd02a22162668bc88cd05cf6bebb37d48077bce6d0e8ff38387207c8f077",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a61dcfa-4f6e-0d48-4018-6fcbedb5e170`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–560.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_openCover_iff {X Y : Scheme.{u}} (f : X ⟶ Y) (𝒰 : Scheme.OpenCover.{u} X) :
    affineLocally (@P) f ↔ ∀ i, affineLocally (@P) (𝒰.map i ≫ f) := by
  constructor
  · intro H i U
    rw [morphismRestrict_comp]
    delta morphismRestrict
    -- Porting note: Lean can no longer find these instances for the following apply
    have : IsAffine (Scheme.restrict Y <| Opens.openEmbedding U.val) := U.property
    have : IsOpenImmersion ((pullbackRestrictIsoRestrict (Scheme.OpenCover.map 𝒰 i)
        ((Opens.map f.val.base).obj ↑U)).inv ≫ pullback.snd) :=
      LocallyRingedSpace.IsOpenImmersion.comp _ _
    apply hP.sourceAffineLocally_comp_of_isOpenImmersion
    apply H
  · intro H U
    haveI : IsAffine _ := U.2
    apply ((hP.openCover_TFAE (f ∣_ U.1)).out 1 0).mp
    use 𝒰.pullbackCover (X.ofRestrict _)
    intro i
    specialize H i U
    rw [morphismRestrict_comp] at H
    delta morphismRestrict at H
    have := sourceAffineLocally_respectsIso hP.respectsIso
    rw [Category.assoc, affine_cancel_left_isIso this, ←
      affine_cancel_left_isIso this (pullbackSymmetry _ _).hom,
      pullbackSymmetry_hom_comp_snd_assoc] at H
    exact H
#align ring_hom.property_is_local.source_open_cover_iff RingHom.PropertyIsLocal.source_openCover_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `653ea3160ced1b0792ac93326eb237d91538f8c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
