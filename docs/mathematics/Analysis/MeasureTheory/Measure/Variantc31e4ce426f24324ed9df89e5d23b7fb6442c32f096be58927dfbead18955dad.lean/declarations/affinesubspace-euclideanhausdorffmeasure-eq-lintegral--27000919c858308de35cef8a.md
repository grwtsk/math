# AffineSubspace.euclideanHausdorffMeasure_eq_lintegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e23614d0-57bc-9ddc-231d-b961c2e68676",
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
  "slug": "affinesubspace-euclideanhausdorffmeasure-eq-lintegral--27000919c858308de35cef8a",
  "source": {
    "blob": "867660ffb711e410cf4f069b467b5935c7e116ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 288,
    "path": "GRWTSK/Analysis/MeasureTheory/Measure/Variantc31e4ce426f24324ed9df89e5d23b7fb6442c32f096be58927dfbead18955dad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27000919c858308de35cef8a19117edbb3b996e65cbd3a0af6daeb2b82083a8d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Measure/Variantc31e4ce426f24324ed9df89e5d23b7fb6442c32f096be58927dfbead18955dad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e23614d0-57bc-9ddc-231d-b961c2e68676`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–323.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Measure/Variantc31e4ce426f24324ed9df89e5d23b7fb6442c32f096be58927dfbead18955dad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Measure/Variantc31e4ce426f24324ed9df89e5d23b7fb6442c32f096be58927dfbead18955dad.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `867660ffb711e410cf4f069b467b5935c7e116ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
