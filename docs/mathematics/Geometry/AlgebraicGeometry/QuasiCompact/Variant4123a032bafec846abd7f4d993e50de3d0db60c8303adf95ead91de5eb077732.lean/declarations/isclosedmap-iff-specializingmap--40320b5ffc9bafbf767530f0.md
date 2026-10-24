# isClosedMap_iff_specializingMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23bdce80-7362-335d-00c8-0c308049c90b",
  "kind": "lemma",
  "lexical_name": "isClosedMap_iff_specializingMap",
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
  "slug": "isclosedmap-iff-specializingmap--40320b5ffc9bafbf767530f0",
  "source": {
    "blob": "d0089e9863bc5f1bbe575d893ef51e48d00cd625",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 213,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40320b5ffc9bafbf767530f0934bf2c43e2a7efa6f0d32250091a24d897b0c5f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23bdce80-7362-335d-00c8-0c308049c90b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClosedMap_iff_specializingMap (f : X ⟶ Y) [QuasiCompact f] :
    IsClosedMap f.base ↔ SpecializingMap f.base := by
  refine ⟨fun h ↦ h.specializingMap, fun H ↦ ?_⟩
  wlog hY : ∃ R, Y = Spec R
  · show topologically @IsClosedMap f
    rw [IsLocalAtTarget.iff_of_openCover (P := topologically @IsClosedMap) Y.affineCover]
    intro i
    haveI hqc : QuasiCompact (Y.affineCover.pullbackHom f i) :=
        IsLocalAtTarget.of_isPullback (.of_hasPullback _ _) inferInstance
    refine this (Y.affineCover.pullbackHom f i) ?_ ⟨_, rfl⟩
    exact IsLocalAtTarget.of_isPullback
      (P := topologically @SpecializingMap) (.of_hasPullback _ _) H
  obtain ⟨S, rfl⟩ := hY
  clear * - H
  intros Z hZ
  replace H := hZ.stableUnderSpecialization.image H
  wlog hX : ∃ R, X = Spec R
  · obtain ⟨R, g, hg⟩ :=
      compactSpace_iff_exists.mp ((quasiCompact_over_affine_iff f).mp inferInstance)
    have inst : QuasiCompact (g ≫ f) := HasAffineProperty.iff_of_isAffine.mpr (by infer_instance)
    have := this _ (g ≫ f) (g.base ⁻¹' Z) (hZ.preimage g.continuous)
    simp_rw [Scheme.comp_base, TopCat.comp_app, ← Set.image_image,
      Set.image_preimage_eq _ hg] at this
    exact this H ⟨_, rfl⟩
  obtain ⟨R, rfl⟩ := hX
  obtain ⟨φ, rfl⟩ := Spec.homEquiv.symm.surjective f
  exact PrimeSpectrum.isClosed_image_of_stableUnderSpecialization φ.hom Z hZ H

@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0089e9863bc5f1bbe575d893ef51e48d00cd625` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
