# isLocal_ringHomProperty_of_isLocalAtSource_of_isLocalAtTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c31acc88-075b-661b-e7a9-d1d3ca6ee707",
  "kind": "lemma",
  "lexical_name": "isLocal_ringHomProperty_of_isLocalAtSource_of_isLocalAtTarget",
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
  "slug": "islocal-ringhomproperty-of-islocalatsource-of-islocalattarget--3c677a5833ea224e8c5d420d",
  "source": {
    "blob": "26f03c4e4fd6f07813b86af00e58b6663b93f91a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 393,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c677a5833ea224e8c5d420d65dad0697074fa10b89155d595445ff8053da832",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c31acc88-075b-661b-e7a9-d1d3ca6ee707`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocal_ringHomProperty_of_isLocalAtSource_of_isLocalAtTarget
    [IsLocalAtTarget P] [IsLocalAtSource P] :
    RingHom.PropertyIsLocal fun f ↦ P (Spec.map (CommRingCat.ofHom f)) := by
  have hP : RingHom.RespectsIso (fun f ↦ P (Spec.map (CommRingCat.ofHom f))) :=
    RingHom.toMorphismProperty_respectsIso_iff.mpr
      (inferInstanceAs (P.inverseImage Scheme.Spec).unop.RespectsIso)
  constructor
  · intro R S _ _ f r R' S' _ _ _ _ _ _ H
    refine (RingHom.RespectsIso.isLocalization_away_iff hP ..).mp ?_
    exact (MorphismProperty.arrow_mk_iso_iff P (SpecMapRestrictBasicOpenIso
      (CommRingCat.ofHom f) r)).mp (IsLocalAtTarget.restrict H (basicOpen r))
  · intros R S _ _ f s hs H
    apply IsLocalAtSource.of_openCover (Scheme.affineOpenCoverOfSpanRangeEqTop
      (fun i : s ↦ (i : S)) (by simpa)).openCover
    intro i
    simp only [CommRingCat.coe_of, Set.setOf_mem_eq, id_eq, eq_mpr_eq_cast,
      Scheme.AffineOpenCover.openCover_obj, Scheme.affineOpenCoverOfSpanRangeEqTop_obj_carrier,
      Scheme.AffineOpenCover.openCover_map, Scheme.affineOpenCoverOfSpanRangeEqTop_map,
      ← Spec.map_comp]
    exact H i
  · intro R S _ _  f s hs H
    apply IsLocalAtTarget.of_iSup_eq_top _ (PrimeSpectrum.iSup_basicOpen_eq_top_iff
      (f := fun i : s ↦ (i : R)).mpr (by simpa))
    intro i
    exact (MorphismProperty.arrow_mk_iso_iff P (SpecMapRestrictBasicOpenIso
      (CommRingCat.ofHom f) i.1)).mpr (H i)
  · intro R S T _ _ _ _ r _ f hf
    have := AlgebraicGeometry.IsOpenImmersion.of_isLocalization (S := T) r
    show P (Spec.map (CommRingCat.ofHom f ≫ CommRingCat.ofHom (algebraMap _ _)))
    rw [Spec.map_comp]
    exact IsLocalAtSource.comp hf ..

open _root_.PrimeSpectrum in
variable (P) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26f03c4e4fd6f07813b86af00e58b6663b93f91a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
