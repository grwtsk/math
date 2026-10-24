# MeasureTheory.measure_lt_one_eq_integral_div_gamma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d288c3ea7cf52ff89bcf39da627aee1ff7618595",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ada1b82e-b6f9-41d5-49d5-c3d348049a62",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:106a8a48-c03d-d2e6-4511-eb108dc0d140",
  "kind": "theorem",
  "lexical_name": "MeasureTheory.measure_lt_one_eq_integral_div_gamma",
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
  "slug": "measuretheory-measure-lt-one-eq-integral-div-gamma--5911c120dfaf980bda08b1fe",
  "source": {
    "blob": "d288c3ea7cf52ff89bcf39da627aee1ff7618595",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 75,
    "path": "GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5911c120dfaf980bda08b1fe8e969402f6a009052617e4aa8f8a8974590f9170",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:106a8a48-c03d-d2e6-4511-eb108dc0d140`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasureTheory.measure_lt_one_eq_integral_div_gamma {p : ℝ} (hp : 0 < p) :
    μ {x : E | g x < 1} =
      .ofReal ((∫ (x : E), Real.exp (- (g x) ^ p) ∂μ) / Real.Gamma (finrank ℝ E / p + 1)) := by
  -- We copy `E` to a new type `F` on which we will put the norm defined by `g`
  letI F : Type _ := E
  letI : NormedAddCommGroup F :=
  { norm := g
    dist := fun x y => g (x - y)
    dist_self := by simp only [_root_.sub_self, h1, forall_const]
    dist_comm := fun _ _ => by rw [← h2, neg_sub]
    dist_triangle := fun x y z => by convert h3 (x - y) (y - z) using 1; simp [F]
    edist := fun x y => .ofReal (g (x - y))
    edist_dist := fun _ _ => rfl
    eq_of_dist_eq_zero := by convert fun _ _ h => eq_of_sub_eq_zero (h4 h) }
  letI : NormedSpace ℝ F :=
  { norm_smul_le := fun _ _ ↦ h5 _ _ }
  -- We put the new topology on F
  letI : TopologicalSpace F := UniformSpace.toTopologicalSpace
  letI : MeasurableSpace F := borel F
  have : BorelSpace F := { measurable_eq := rfl }
  -- The map between `E` and `F` as a continuous linear equivalence
  let φ := @LinearEquiv.toContinuousLinearEquiv ℝ _ E _ _ tE _ _ F _ _ _ _ _ _ _ _ _
    (LinearEquiv.refl ℝ E : E ≃ₗ[ℝ] F)
  -- The measure `ν` is the measure on `F` defined by `μ`
  -- Since we have two different topologies, it is necessary to specify the topology of E
  let ν : Measure F := @Measure.map E F mE _ φ μ
  have : IsAddHaarMeasure ν :=
    @ContinuousLinearEquiv.isAddHaarMeasure_map E F ℝ ℝ _ _ _ _ _ _ tE _ _ _ _ _ _ _ mE _ _ _ φ μ _
  convert (measure_unitBall_eq_integral_div_gamma ν hp) using 1
  · rw [@Measure.map_apply E F mE _ μ φ _ _ measurableSet_ball]
    · congr!
      simp_rw [Metric.ball, dist_zero_right]
      rfl
    · refine @Continuous.measurable E F tE mE _ _ _ _ φ ?_
      exact @ContinuousLinearEquiv.continuous ℝ ℝ _ _ _ _ _ _ E tE _ F _ _ _ _ φ
  · -- The map between `E` and `F` as a measurable equivalence
    let ψ := @Homeomorph.toMeasurableEquiv E F tE mE _ _ _ _
      (@ContinuousLinearEquiv.toHomeomorph ℝ ℝ _ _ _ _ _ _ E tE _ F _ _ _ _ φ)
    -- The map `ψ` is measure preserving by construction
    have : @MeasurePreserving E F mE _ ψ μ ν :=
      @Measurable.measurePreserving E F mE _ ψ (@MeasurableEquiv.measurable E F mE _ ψ) _
    rw [← this.integral_comp']
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variant8e262c9bd98d52c42be6014b6456e482ca61355cafd28f5023388f9313bd0b28.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d288c3ea7cf52ff89bcf39da627aee1ff7618595` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
