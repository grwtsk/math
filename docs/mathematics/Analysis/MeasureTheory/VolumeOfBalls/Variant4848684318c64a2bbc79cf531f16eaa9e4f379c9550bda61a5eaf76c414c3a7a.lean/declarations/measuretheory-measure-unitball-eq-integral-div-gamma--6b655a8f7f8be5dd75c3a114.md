# MeasureTheory.measure_unitBall_eq_integral_div_gamma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4b92b01-7d24-1639-22c5-08250e281ce8",
  "kind": "theorem",
  "lexical_name": "MeasureTheory.measure_unitBall_eq_integral_div_gamma",
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
  "slug": "measuretheory-measure-unitball-eq-integral-div-gamma--6b655a8f7f8be5dd75c3a114",
  "source": {
    "blob": "b4cd6cee17c8bd8652ef6121aeb029670ee9627a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 54,
    "path": "GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b655a8f7f8be5dd75c3a1147685458432ddba436ec191a61865fb602c094d96",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4b92b01-7d24-1639-22c5-08250e281ce8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasureTheory.measure_unitBall_eq_integral_div_gamma {E : Type*} {p : ℝ}
    [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E] [MeasurableSpace E]
    [BorelSpace E] (μ : Measure E) [IsAddHaarMeasure μ] (hp : 0 < p) :
    μ (Metric.ball 0 1) =
      .ofReal ((∫ (x : E), Real.exp (- ‖x‖ ^ p) ∂μ) / Real.Gamma (finrank ℝ E / p + 1)) := by
  obtain hE | hE := subsingleton_or_nontrivial E
  · rw [(Metric.nonempty_ball.mpr zero_lt_one).eq_zero, ← setIntegral_univ,
      Set.univ_nonempty.eq_zero, integral_singleton, finrank_zero_of_subsingleton, Nat.cast_zero,
      zero_div, zero_add, Real.Gamma_one, div_one, norm_zero, Real.zero_rpow hp.ne', neg_zero,
      Real.exp_zero, smul_eq_mul, mul_one, measureReal_def, ofReal_toReal (measure_ne_top μ {0})]
  · have : (0 : ℝ) < finrank ℝ E := Nat.cast_pos.mpr finrank_pos
    have : ((∫ y in Set.Ioi (0 : ℝ), y ^ (finrank ℝ E - 1) • Real.exp (-y ^ p)) /
        Real.Gamma ((finrank ℝ E) / p + 1)) * (finrank ℝ E) = 1 := by
      simp_rw [← Real.rpow_natCast _ (finrank ℝ E - 1), smul_eq_mul, Nat.cast_sub finrank_pos,
        Nat.cast_one]
      rw [integral_rpow_mul_exp_neg_rpow hp (by linarith), sub_add_cancel,
        Real.Gamma_add_one (ne_of_gt (by positivity))]
      field_simp; ring
    rw [integral_fun_norm_addHaar μ (fun x => Real.exp (- x ^ p)), nsmul_eq_mul, smul_eq_mul,
      mul_div_assoc, mul_div_assoc, mul_comm, mul_assoc, this, mul_one, ofReal_measureReal _]
    exact ne_of_lt measure_ball_lt_top

variable {E : Type*} [AddCommGroup E] [Module ℝ E] [FiniteDimensional ℝ E] [mE : MeasurableSpace E]
  [tE : TopologicalSpace E] [IsTopologicalAddGroup E] [BorelSpace E] [T2Space E]
  [ContinuousSMul ℝ E] (μ : Measure E) [IsAddHaarMeasure μ] {g : E → ℝ} (h1 : g 0 = 0)
  (h2 : ∀ x, g (-x) = g x) (h3 : ∀ x y, g (x + y) ≤ g x + g y) (h4 : ∀ {x}, g x = 0 → x = 0)
  (h5 : ∀ r x, g (r • x) ≤ |r| * (g x))
include h1 h2 h3 h4 h5

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4cd6cee17c8bd8652ef6121aeb029670ee9627a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
