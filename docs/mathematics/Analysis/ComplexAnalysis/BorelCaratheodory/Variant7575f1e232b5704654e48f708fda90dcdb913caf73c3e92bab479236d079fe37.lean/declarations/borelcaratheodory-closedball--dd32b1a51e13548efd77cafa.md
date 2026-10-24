# borelCaratheodory_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1299efb-8655-2786-04c9-c8dde3b0dfe5",
  "kind": "theorem",
  "lexical_name": "borelCaratheodory_closedBall",
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
  "slug": "borelcaratheodory-closedball--dd32b1a51e13548efd77cafa",
  "source": {
    "blob": "af5af9c63f28c935725a77402f969c98766e02e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 329,
    "path": "GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd32b1a51e13548efd77cafa4b619fd5462b5ea1e4d37b4308be1c689fdbe2fb",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1299efb-8655-2786-04c9-c8dde3b0dfe5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem borelCaratheodory_closedBall {M R r : ℝ} {z : ℂ}
    {f : ℂ → ℂ} (Rpos : 0 < R)
    (analytic : AnalyticOn ℂ f (Metric.closedBall 0 R))
    (zeroAtZero : f 0 = 0) (Mpos : 0 < M)
    (realPartBounded :
      ∀ z ∈ Metric.closedBall 0 R, (f z).re ≤ M)
    (hyp_r : r < R)
    (hyp_z : z ∈ Metric.closedBall 0 r) :
    ‖f z‖ ≤ (2 * M * r) / (R - r) := by
  have zInSFunc :
      ∀ r ≤ R, ∀ z ∈ Metric.sphere (0 : ℂ) r,
      z ∈ Metric.closedBall (0 : ℂ) R := by
    intro r hyp_r z hyp_z
    exact Set.mem_of_mem_of_subset hyp_z <|
      (Metric.sphere_subset_closedBall).trans
        (Metric.closedBall_subset_closedBall hyp_r)
  have fPosAll :
      ∀ z ∈ Metric.closedBall 0 R, 2 * M - f z ≠ 0 := by
    intro z zInS
    exact Complex.ne_zero_of_re_pos (by
      rw [Complex.sub_re, Complex.mul_re, Complex.re_ofNat, Complex.ofReal_re,
        Complex.im_ofNat, Complex.ofReal_im, mul_zero, sub_zero, sub_pos]
      linarith [realPartBounded z zInS])
  have schwartzQuotientBounded :
      ∀ z ∈ Metric.sphere 0 R,
      ‖schwartzQuotient f M z‖ ≤ 1 / R := by
    intro z hyp_z
    have zNe0 : z ≠ 0 := by
      rw [mem_sphere_zero_iff_norm] at hyp_z
      exact ne_zero_of_norm_ne_zero (by linarith)
    have zInS : z ∈ Metric.closedBall 0 R :=
      zInSFunc R le_rfl z hyp_z
    rw [mem_sphere_iff_norm, sub_zero] at hyp_z
    calc ‖schwartzQuotient f M z‖
      _ = (‖f z‖ / ‖z‖) / ‖2 * M - f z‖ := by
        simp only [Complex.norm_div, divRemovable_zero_of_ne_zero f zNe0]
      _ ≤ (‖f z‖ / ‖z‖) / ‖f z‖ := by
        by_cases h : ‖f z‖ = 0
        · simp only [h, zero_div, div_zero, le_refl]
        · exact div_le_div_of_nonneg_left
            (by positivity) (by positivity)
            (Complex.norm_le_norm_two_mul_sub_of_re_le
              Mpos (realPartBounded z zInS))
      _ ≤ 1 / ‖z‖ := by
        by_cases h : ‖f z‖ = 0
        · rw [h, zero_div, div_zero, one_div, inv_nonneg]
          exact norm_nonneg _
        · rw [div_div, mul_comm, ← div_div, div_self h]
      _ = 1 / R := by rw [hyp_z]
  have maxMod :
      ∀ z ∈ Metric.closedBall 0 R,
      ‖schwartzQuotient f M z‖ ≤ 1 / R := by
      exact fun z hz => AnalyticOn.norm_le_of_norm_le_on_sphere le_rfl (AnalyticOn.schwartzQuotient M Rpos analytic fPosAll zeroAtZero) schwartzQuotientBounded hz
  have boundForF :
      ∀ r < R, 0 < r →
      ∀ z ∈ Metric.sphere 0 r,
      ‖f z‖ ≤ 2 * M * r / (R - r) := by
    intro r hyp_r r_pos z zOnR
    have zInS : z ∈ Metric.closedBall 0 R :=
      zInSFunc r (by linarith) z zOnR
    rw [mem_sphere_zero_iff_norm] at zOnR
    have := maxMod z zInS
    unfold schwartzQuotient at this
    have U : z ≠ 0 := by
      rw [← norm_pos_iff]
      linarith
    rw [divRemovable_zero_of_ne_zero f U] at this
    simp only [Complex.norm_div, one_div] at this
    have U : 0 < r * ‖2 * M - f z‖ := by
      simp only [r_pos, mul_pos_iff_of_pos_left, norm_pos_iff, ne_eq, fPosAll z zInS,
        not_false_eq_true]
    rw [zOnR, div_div, div_le_iff₀' U] at this
    have U0 :
        ‖f z‖ ≤ 2 * M * r / R + (r / R) * ‖f z‖ := by
      calc ‖f z‖
        _ ≤ r * ‖2 * M - f z‖ * R⁻¹ := this
        _ ≤ r * (‖(2 : ℂ) * M‖ + ‖f z‖) * R⁻¹ := by
          gcongr
          exact norm_sub_le (E := ℂ) ((2 : ℂ) * ↑M) (f z)
        _ = r * (2 * M + ‖f z‖) * R⁻¹ := by
          have U : ‖(2 : ℂ) * M‖ = 2 * M := by
            simp only [Complex.norm_mul,
              Complex.norm_ofNat, Complex.norm_real,
              Real.norm_eq_abs, mul_eq_mul_left_iff,
              abs_eq_self, OfNat.ofNat_ne_zero,
              or_false]
            linarith
          rw [U]
        _ = 2 * M * r / R + (r / R) * ‖f z‖ := by
          ring_nf
    have U1 : ‖f z‖ - ‖f z‖ * (r * R⁻¹) =
        ‖f z‖ * (1 - r * R⁻¹) := by ring
    have U2 : (0 : ℝ) < 1 - r * R⁻¹ := by
      have : r * R⁻¹ < 1 := by
        simp only [← div_lt_one₀ (by linarith : 0 < R)] at hyp_r
        exact hyp_r
      linarith
    have U3 : r * R⁻¹ * M * 2 / (1 - r * R⁻¹) =
        2 * M * r / (R - r) := by
      have hR : R ≠ 0 := by linarith
      rw [← mul_div_mul_left (r * R⁻¹ * M * (2 : ℝ)) ((1 : ℝ) - r * R⁻¹) hR]
      ring_nf
      have U : R * r * R⁻¹ = r := by
        rw [mul_comm, ← mul_assoc, ← mul_comm R R⁻¹,
          CommGroupWithZero.mul_inv_cancel R hR, one_mul]
      rw [U]
    rw [← sub_le_sub_iff_right ((r / R) * ‖f z‖)] at U0
    ring_nf at U0
    rw [mul_assoc, U1, ← le_div_iff₀ U2, U3] at U0
    exact U0
  have maxBoundForF :
      ∀ r < R, 0 < r →
      ∀ z ∈ Metric.closedBall 0 r,
      ‖f z‖ ≤ 2 * M * r / (R - r) := by
    exact fun r hyp_r pos_r z hz => AnalyticOn.norm_le_of_norm_le_on_sphere (hyp_r.le) analytic (boundForF r hyp_r pos_r) hz
  by_cases pos_r : r = 0
  · have U : z = 0 := by
      rw [pos_r, Metric.closedBall_zero, Set.mem_singleton_iff] at hyp_z
      exact hyp_z
    rw [U, pos_r, mul_zero, sub_zero, zero_div, norm_le_zero_iff]
    exact zeroAtZero
  · have U : 0 ≤ r := by
      rw [mem_closedBall_iff_norm, sub_zero] at hyp_z
      linarith [norm_nonneg z]
    exact maxBoundForF r (by linarith)
      (lt_of_le_of_ne U (Ne.symm pos_r)) z hyp_z
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af5af9c63f28c935725a77402f969c98766e02e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
