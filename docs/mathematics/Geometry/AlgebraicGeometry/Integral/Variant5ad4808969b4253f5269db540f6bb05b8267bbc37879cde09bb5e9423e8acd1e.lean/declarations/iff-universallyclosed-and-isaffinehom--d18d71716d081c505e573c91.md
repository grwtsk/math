# iff_universallyClosed_and_isAffineHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ef30e47-f93c-3834-62fe-2c904747f5d6",
  "kind": "lemma",
  "lexical_name": "iff_universallyClosed_and_isAffineHom",
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
  "slug": "iff-universallyclosed-and-isaffinehom--d18d71716d081c505e573c91",
  "source": {
    "blob": "7b6b590853f40da9582fef0bd8e9b06a2a725fb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 97,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Integral/Variant5ad4808969b4253f5269db540f6bb05b8267bbc37879cde09bb5e9423e8acd1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d18d71716d081c505e573c9183b54c682aac123d317051335644eb724cccba0c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Integral/Variant5ad4808969b4253f5269db540f6bb05b8267bbc37879cde09bb5e9423e8acd1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ef30e47-f93c-3834-62fe-2c904747f5d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iff_universallyClosed_and_isAffineHom {X Y : Scheme.{u}} {f : X ⟶ Y} :
    IsIntegralHom f ↔ UniversallyClosed f ∧ IsAffineHom f := by
  refine ⟨fun _ ↦ ⟨inferInstance, inferInstance⟩, fun ⟨H₁, H₂⟩ ↦ ?_⟩
  clear * -
  wlog hY : ∃ R, Y = Spec R
  · rw [IsLocalAtTarget.iff_of_openCover (P := @IsIntegralHom) Y.affineCover]
    rw [IsLocalAtTarget.iff_of_openCover (P := @UniversallyClosed) Y.affineCover] at H₁
    rw [IsLocalAtTarget.iff_of_openCover (P := @IsAffineHom) Y.affineCover] at H₂
    exact fun _ ↦ this inferInstance inferInstance ⟨_, rfl⟩
  obtain ⟨R, rfl⟩ := hY
  wlog hX : ∃ S, X = Spec S
  · have inst : IsAffine X := isAffine_of_isAffineHom f
    rw [← cancel_left_of_respectsIso (P := @IsIntegralHom) X.isoSpec.inv]
    exact this _ inferInstance inferInstance ⟨_, rfl⟩
  obtain ⟨S, rfl⟩ := hX
  obtain ⟨φ, rfl⟩ : ∃ φ, Spec.map φ = f := ⟨_, Spec.map_preimage _⟩
  rw [SpecMap_iff]
  apply PrimeSpectrum.isIntegral_of_isClosedMap_comap_mapRingHom
  algebraize [φ.1, Polynomial.mapRingHom φ.1]
  haveI : IsScalarTower R (Polynomial R) (Polynomial S) :=
    .of_algebraMap_eq' (Polynomial.mapRingHom_comp_C _).symm
  refine H₁.out (Spec.map (CommRingCat.ofHom Polynomial.C))
    (Spec.map (CommRingCat.ofHom Polynomial.C)) (Spec.map _)
    (isPullback_Spec_map_isPushout _ _ _ _
    (CommRingCat.isPushout_of_isPushout R S (Polynomial R) (Polynomial S))).flip

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Integral/Variant5ad4808969b4253f5269db540f6bb05b8267bbc37879cde09bb5e9423e8acd1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Integral/Variant5ad4808969b4253f5269db540f6bb05b8267bbc37879cde09bb5e9423e8acd1e.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b6b590853f40da9582fef0bd8e9b06a2a725fb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
