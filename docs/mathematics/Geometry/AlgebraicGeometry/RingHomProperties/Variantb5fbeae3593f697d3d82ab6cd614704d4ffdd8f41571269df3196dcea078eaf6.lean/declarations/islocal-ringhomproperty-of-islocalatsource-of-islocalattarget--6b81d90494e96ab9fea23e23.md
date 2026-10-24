# isLocal_ringHomProperty_of_isLocalAtSource_of_isLocalAtTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e0585bd799331b3ff8dd4654fd068c8780ac86bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 385,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d36b760d-d10a-0e26-ea6a-7483d4f7d1ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24ab8541-aa5a-924c-88d5-2e10750a5ecd",
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
  "slug": "islocal-ringhomproperty-of-islocalatsource-of-islocalattarget--6b81d90494e96ab9fea23e23",
  "source": {
    "blob": "e0585bd799331b3ff8dd4654fd068c8780ac86bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 385,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b81d90494e96ab9fea23e235ee5a8c28d2b8f7e70a60dc10307d14844ec1e0e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24ab8541-aa5a-924c-88d5-2e10750a5ecd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–418.

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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0585bd799331b3ff8dd4654fd068c8780ac86bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
