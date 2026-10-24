# AffineSubspace.euclideanHausdorffMeasure_eq_lintegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c01e468cbfdfa507caec45ee2ac2006321c4b5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 280,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3dce8bd-a1fc-854a-08e1-45523e07e23c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:98dcbabf-b810-6a79-ae70-1df8220ee710",
  "kind": "theorem",
  "lexical_name": "AffineSubspace.euclideanHausdorffMeasure_eq_lintegral",
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
  "slug": "affinesubspace-euclideanhausdorffmeasure-eq-lintegral--6987adb8c0248fce38416b82",
  "source": {
    "blob": "3c01e468cbfdfa507caec45ee2ac2006321c4b5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 280,
    "path": "GRWTSK/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6987adb8c0248fce38416b82b9885d8a95a176e0bcedf96508e2dd75eda19160",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98dcbabf-b810-6a79-ae70-1df8220ee710`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineSubspace.euclideanHausdorffMeasure_eq_lintegral (s : AffineSubspace ℝ P)
    [hs : Nonempty s] {t : Set P} (ht : MeasurableSet t) :
    μHE[finrank ℝ V] t = ∫⁻ (x : s), μHE[finrank ℝ s.directionᗮ] (t ∩ mk' x.val s.directionᗮ)
      ∂μHE[finrank ℝ s.direction] := by
  obtain p := hs.some
  rw [← (s.direction.measurePreserving_measurableEquivProd p.val).symm.measure_preimage_equiv,
    volume_eq_prod, prod_apply (by measurability), euclideanHausdorffMeasure_eq,
    MeasurableEmbedding.lintegral_map
        (by simpa using (IsometryEquiv.vaddConst p).toHomeomorph.measurableEmbedding)]
  congr with x
  let u : Set (mk' (x +ᵥ p).val s.directionᗮ) := Subtype.val ⁻¹' (t ∩ mk' (x +ᵥ p).val s.directionᗮ)
  have hu : MeasurableSet u :=
    (ht.inter (closed_of_finiteDimensional _).measurableSet).preimage measurable_subtype_coe
  have hinter : t ∩ (mk' (x +ᵥ p).val s.directionᗮ) = Subtype.val '' u := by
    ext x
    simp [u]
  have hxp : (x +ᵥ p).val ∈ mk' (x +ᵥ p).val s.directionᗮ := by simp
  have hrank : finrank ℝ s.directionᗮ = finrank ℝ (mk' (x +ᵥ p).val s.directionᗮ).direction := by
    rw [direction_mk']
  rw [IsometryEquiv.vaddConst_apply, hinter, euclideanHausdorffMeasure_coe_image, hrank,
    euclideanHausdorffMeasure_eq ⟨x +ᵥ p, hxp⟩, map_apply (by fun_prop) hu]
  /- we have ⊢ volume (a : Set A) = volume (b : Set B). We'd like show a = b, but A and B are
    non-defeq subspaces!
    Lucky we have just developed euclideanHausdorffMeasure, which allows us to move the measure to
    the global vector space. -/
  simp_rw [← InnerProductSpace.euclideanHausdorffMeasure_eq_volume]
  conv_lhs => rw [← isometry_subtype_coe.euclideanHausdorffMeasure_image]
  conv_rhs => rw [← isometry_subtype_coe.euclideanHausdorffMeasure_image]
  congrm μHE[$hrank] ?_
  ext y
  simp [u, vadd_vadd, add_comm]

/-- The $n$-dimensional volume of an object in an $n$-dimensional space is equal to the integral
of the volume of $(n-1)$-dimensional orthogonal cross-section along a line defined by a direction
vector. This is a special case of `AffineSubspace.euclideanHausdorffMeasure_eq_lintegral` with a
one-dimensional subspace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c01e468cbfdfa507caec45ee2ac2006321c4b5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
