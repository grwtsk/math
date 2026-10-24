# norm_log_sub_le_gen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2dfd7f9c0da96f5740c52033032152259e5a67eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94cda1d5eb1cb9489e436c4a20d5161b13066e8ca2bec2d98f7d4e5201784180.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6abae884-b085-8893-0aeb-a8d12781f5c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17338321-3992-12a8-26db-4cf8f4964f83",
  "kind": "theorem",
  "lexical_name": "norm_log_sub_le_gen",
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
  "slug": "norm-log-sub-le-gen--3804a2f45e8b9133ba33ac3d",
  "source": {
    "blob": "2dfd7f9c0da96f5740c52033032152259e5a67eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 91,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Variant94cda1d5eb1cb9489e436c4a20d5161b13066e8ca2bec2d98f7d4e5201784180.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3804a2f45e8b9133ba33ac3dae6f4741147760e4175127f5a68b8525bad49dab",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Variant94cda1d5eb1cb9489e436c4a20d5161b13066e8ca2bec2d98f7d4e5201784180.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17338321-3992-12a8-26db-4cf8f4964f83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_log_sub_le_gen {a t : ℝ} (ha0 : 0 < a) (ha1 : a ≤ 1) (ht : 2 ≤ t) :
    ‖Complex.log (((a:ℝ):ℂ) + ((t/2:ℝ):ℂ) * I)
        - (((Real.log (t/2) : ℝ) : ℂ) + ((Real.pi/2 : ℝ) : ℂ) * I)‖ ≤ 6 / t := by
  set w : ℂ := ((a:ℝ):ℂ) + ((t/2:ℝ):ℂ) * I with hw
  have hwre : w.re = a := by simp [hw]
  have hwim : w.im = t/2 := by simp [hw]
  have ht0 : 0 < t := by linarith
  have ht2 : 0 < t/2 := by linarith
  have hnorm_sq : ‖w‖ ^ 2 = a^2 + (t/2)^2 := by
    rw [Complex.sq_norm, Complex.normSq_apply, hwre, hwim]; ring
  have hnorm_ge : t/2 ≤ ‖w‖ := by
    have := Complex.abs_im_le_norm w
    rw [hwim, abs_of_pos ht2] at this
    exact this
  have hnorm_pos : 0 < ‖w‖ := lt_of_lt_of_le ht2 hnorm_ge
  have hnorm_le : ‖w‖ ≤ a + t/2 := by
    calc ‖w‖ ≤ ‖((a:ℝ):ℂ)‖ + ‖((t/2:ℝ):ℂ) * I‖ := norm_add_le _ _
      _ = a + t/2 := by
          rw [norm_mul, Complex.norm_I, mul_one, Complex.norm_real, Complex.norm_real,
            Real.norm_eq_abs, Real.norm_eq_abs, abs_of_pos ha0, abs_of_pos ht2]
  -- the difference, componentwise
  have hre : (Complex.log w - (((Real.log (t/2) : ℝ) : ℂ) + ((Real.pi/2 : ℝ) : ℂ) * I)).re
      = Real.log ‖w‖ - Real.log (t/2) := by
    simp [Complex.log_re]
  have him : (Complex.log w - (((Real.log (t/2) : ℝ) : ℂ) + ((Real.pi/2 : ℝ) : ℂ) * I)).im
      = Complex.arg w - Real.pi/2 := by
    simp [Complex.log_im]
  -- real part: 0 ≤ log‖w‖ − log(t/2) ≤ 2a/t ≤ 2/t
  have hre_bd : |Real.log ‖w‖ - Real.log (t/2)| ≤ 2 / t := by
    have h1 : 0 ≤ Real.log ‖w‖ - Real.log (t/2) := by
      have := Real.log_le_log ht2 hnorm_ge
      linarith
    rw [abs_of_nonneg h1, ← Real.log_div hnorm_pos.ne' ht2.ne']
    have h2 : Real.log (‖w‖ / (t/2)) ≤ ‖w‖ / (t/2) - 1 := Real.log_le_sub_one_of_pos (by positivity)
    have h3 : ‖w‖ / (t/2) - 1 ≤ 2 / t := by
      have : ‖w‖ / (t/2) ≤ (a + t/2) / (t/2) := div_le_div_of_nonneg_right hnorm_le ht2.le
      have e : (a + t/2) / (t/2) = 2 * a / t + 1 := by field_simp
      have e2 : 2 * a / t ≤ 2 / t := by rw [div_le_div_iff₀ ht0 ht0]; nlinarith
      linarith
    exact h2.trans h3
  -- imaginary part: 0 ≤ π/2 − arg w ≤ 4a/t ≤ 4/t
  have him_bd : |Complex.arg w - Real.pi/2| ≤ 4 / t := by
    have harg : Complex.arg w = Real.arcsin (w.im / ‖w‖) :=
      Complex.arg_of_re_nonneg (by rw [hwre]; exact ha0.le)
    set u : ℝ := w.im / ‖w‖ with hu
    have hu0 : 0 ≤ u := by rw [hu, hwim]; positivity
    have hu1 : u ≤ 1 := by
      rw [hu, div_le_one hnorm_pos, hwim]; exact hnorm_ge
    set v : ℝ := Real.pi/2 - Real.arcsin u with hv
    have hv0 : 0 ≤ v := by
      have := Real.arcsin_le_pi_div_two u
      rw [hv]; linarith
    have hv1 : v ≤ Real.pi/2 := by
      have : 0 ≤ Real.arcsin u := Real.arcsin_nonneg.mpr hu0
      rw [hv]; linarith
    have hsinv : Real.sin v = Real.sqrt (1 - u ^ 2) := by
      rw [hv, ← Real.arccos_eq_pi_div_two_sub_arcsin, Real.sin_arccos]
    have hsqrt : Real.sqrt (1 - u ^ 2) = a / ‖w‖ := by
      have e : 1 - u ^ 2 = (a / ‖w‖) ^ 2 := by
        rw [hu, hwim, div_pow, div_pow]
        field_simp
        nlinarith [hnorm_sq]
      rw [e, Real.sqrt_sq (by positivity)]
    have hjordan : 2 / Real.pi * v ≤ Real.sin v := Real.mul_le_sin hv0 hv1
    have hvle : v ≤ Real.pi / 2 * (a / ‖w‖) := by
      rw [hsinv, hsqrt] at hjordan
      have hπ := Real.pi_pos
      have : v = Real.pi / 2 * (2 / Real.pi * v) := by field_simp
      rw [this]
      exact mul_le_mul_of_nonneg_left hjordan (by positivity)
    have hfin : Real.pi / 2 * (a / ‖w‖) ≤ 4 / t := by
      have hπ4 : Real.pi ≤ 4 := Real.pi_le_four
      have h1 : a / ‖w‖ ≤ a / (t/2) := div_le_div_of_nonneg_left ha0.le ht2 hnorm_ge
      calc Real.pi / 2 * (a / ‖w‖) ≤ 4 / 2 * (a / (t/2)) := by
            exact mul_le_mul (by linarith) h1 (by positivity) (by norm_num)
        _ = 4 * a / t := by field_simp
        _ ≤ 4 / t := by rw [div_le_div_iff₀ ht0 ht0]; nlinarith
    rw [harg, show Real.arcsin u - Real.pi / 2 = -v by rw [hv]; ring, abs_neg, abs_of_nonneg hv0]
    exact hvle.trans hfin
  -- combine
  calc ‖Complex.log w - (((Real.log (t/2) : ℝ) : ℂ) + ((Real.pi/2 : ℝ) : ℂ) * I)‖
      ≤ |(Complex.log w - (((Real.log (t/2) : ℝ) : ℂ) + ((Real.pi/2 : ℝ) : ℂ) * I)).re|
        + |(Complex.log w - (((Real.log (t/2) : ℝ) : ℂ) + ((Real.pi/2 : ℝ) : ℂ) * I)).im| :=
        Complex.norm_le_abs_re_add_abs_im _
    _ ≤ 2 / t + 4 / t := by rw [hre, him]; exact add_le_add hre_bd him_bd
    _ = 6 / t := by ring


/-- the twin near the NEGATIVE imaginary axis: ‖log(a − i t/2) − (log(t/2) − iπ/2)‖ ≤ 6/t. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Variant94cda1d5eb1cb9489e436c4a20d5161b13066e8ca2bec2d98f7d4e5201784180.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Variant94cda1d5eb1cb9489e436c4a20d5161b13066e8ca2bec2d98f7d4e5201784180.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dfd7f9c0da96f5740c52033032152259e5a67eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
