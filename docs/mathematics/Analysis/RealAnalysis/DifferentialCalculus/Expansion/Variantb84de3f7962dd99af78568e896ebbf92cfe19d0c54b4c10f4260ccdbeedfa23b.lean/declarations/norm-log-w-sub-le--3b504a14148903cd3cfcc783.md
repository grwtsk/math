# norm_log_w_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73d287e15c2b4042e99aa14e63e405cf8c577743",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15a14b3f-804c-6689-6fc5-df0cd7858503",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:525f1d4b-afd2-263c-2815-bae9ba7e3c55",
  "kind": "theorem",
  "lexical_name": "norm_log_w_sub_le",
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
  "slug": "norm-log-w-sub-le--3b504a14148903cd3cfcc783",
  "source": {
    "blob": "73d287e15c2b4042e99aa14e63e405cf8c577743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 241,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b504a14148903cd3cfcc78306d37514e551526f23f12fce4e243357421803d7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:525f1d4b-afd2-263c-2815-bae9ba7e3c55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_log_w_sub_le {t : ℝ} (ht : 2 ≤ t) :
    ‖Complex.log (((5/8:ℝ):ℂ) + ((t/2:ℝ):ℂ) * I)
        - (((Real.log (t/2) : ℝ) : ℂ) + ((Real.pi/2 : ℝ) : ℂ) * I)‖ ≤ 4 / t := by
  set w : ℂ := ((5/8:ℝ):ℂ) + ((t/2:ℝ):ℂ) * I with hw
  have hwre : w.re = 5/8 := by simp [hw]
  have hwim : w.im = t/2 := by simp [hw]
  have ht0 : 0 < t := by linarith
  have ht2 : 0 < t/2 := by linarith
  have hnorm_sq : ‖w‖ ^ 2 = (5/8)^2 + (t/2)^2 := by
    rw [Complex.sq_norm, Complex.normSq_apply, hwre, hwim]; ring
  have hnorm_ge : t/2 ≤ ‖w‖ := by
    have := Complex.abs_im_le_norm w
    rw [hwim, abs_of_pos ht2] at this
    exact this
  have hnorm_pos : 0 < ‖w‖ := lt_of_lt_of_le ht2 hnorm_ge
  have hnorm_le : ‖w‖ ≤ 5/8 + t/2 := by
    calc ‖w‖ ≤ ‖((5/8:ℝ):ℂ)‖ + ‖((t/2:ℝ):ℂ) * I‖ := norm_add_le _ _
      _ = 5/8 + t/2 := by
          rw [norm_mul, Complex.norm_I, mul_one, Complex.norm_real, Complex.norm_real,
            Real.norm_eq_abs, Real.norm_eq_abs, abs_of_pos (by norm_num : (0:ℝ) < 5/8),
            abs_of_pos ht2]
  -- the difference, componentwise
  have hre : (Complex.log w - (((Real.log (t/2) : ℝ) : ℂ) + ((Real.pi/2 : ℝ) : ℂ) * I)).re
      = Real.log ‖w‖ - Real.log (t/2) := by
    simp [Complex.log_re]
  have him : (Complex.log w - (((Real.log (t/2) : ℝ) : ℂ) + ((Real.pi/2 : ℝ) : ℂ) * I)).im
      = Complex.arg w - Real.pi/2 := by
    simp [Complex.log_im]
  -- real part: 0 ≤ log‖w‖ − log(t/2) ≤ 5/(4t)
  have hre_bd : |Real.log ‖w‖ - Real.log (t/2)| ≤ 5 / (4 * t) := by
    have h1 : 0 ≤ Real.log ‖w‖ - Real.log (t/2) := by
      have := Real.log_le_log ht2 hnorm_ge
      linarith
    rw [abs_of_nonneg h1, ← Real.log_div hnorm_pos.ne' ht2.ne']
    have h2 : Real.log (‖w‖ / (t/2)) ≤ ‖w‖ / (t/2) - 1 := Real.log_le_sub_one_of_pos (by positivity)
    have h3 : ‖w‖ / (t/2) - 1 ≤ 5 / (4 * t) := by
      have : ‖w‖ / (t/2) ≤ (5/8 + t/2) / (t/2) := div_le_div_of_nonneg_right hnorm_le ht2.le
      have e : (5/8 + t/2) / (t/2) = 5 / (4 * t) + 1 := by field_simp; ring
      linarith
    exact h2.trans h3
  -- imaginary part: 0 ≤ π/2 − arg w ≤ 5/(2t)
  have him_bd : |Complex.arg w - Real.pi/2| ≤ 5 / (2 * t) := by
    have harg : Complex.arg w = Real.arcsin (w.im / ‖w‖) :=
      Complex.arg_of_re_nonneg (by rw [hwre]; norm_num)
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
    have hsqrt : Real.sqrt (1 - u ^ 2) = (5/8) / ‖w‖ := by
      have e : 1 - u ^ 2 = ((5/8) / ‖w‖) ^ 2 := by
        rw [hu, hwim, div_pow, div_pow]
        field_simp
        nlinarith [hnorm_sq]
      rw [e, Real.sqrt_sq (by positivity)]
    have hjordan : 2 / Real.pi * v ≤ Real.sin v := Real.mul_le_sin hv0 hv1
    have hvle : v ≤ Real.pi / 2 * ((5/8) / ‖w‖) := by
      rw [hsinv, hsqrt] at hjordan
      have hπ := Real.pi_pos
      have : v = Real.pi / 2 * (2 / Real.pi * v) := by field_simp
      rw [this]
      exact mul_le_mul_of_nonneg_left hjordan (by positivity)
    have hfin : Real.pi / 2 * ((5/8) / ‖w‖) ≤ 5 / (2 * t) := by
      have hπ4 : Real.pi ≤ 4 := Real.pi_le_four
      have h1 : (5/8) / ‖w‖ ≤ (5/8) / (t/2) := div_le_div_of_nonneg_left (by norm_num) ht2 hnorm_ge
      calc Real.pi / 2 * ((5/8) / ‖w‖) ≤ 4 / 2 * ((5/8) / (t/2)) := by
            exact mul_le_mul (by linarith) h1 (by positivity) (by norm_num)
        _ = 5 / (2 * t) := by field_simp; ring
    rw [harg, show Real.arcsin u - Real.pi / 2 = -v by rw [hv]; ring, abs_neg, abs_of_nonneg hv0]
    exact hvle.trans hfin
  -- combine
  calc ‖Complex.log w - (((Real.log (t/2) : ℝ) : ℂ) + ((Real.pi/2 : ℝ) : ℂ) * I)‖
      ≤ |(Complex.log w - (((Real.log (t/2) : ℝ) : ℂ) + ((Real.pi/2 : ℝ) : ℂ) * I)).re|
        + |(Complex.log w - (((Real.log (t/2) : ℝ) : ℂ) + ((Real.pi/2 : ℝ) : ℂ) * I)).im| :=
        Complex.norm_le_abs_re_add_abs_im _
    _ ≤ 5 / (4 * t) + 5 / (2 * t) := by rw [hre, him]; exact add_le_add hre_bd him_bd
    _ = 15 / (4 * t) := by field_simp; ring
    _ ≤ 4 / t := by
        rw [div_le_div_iff₀ (by positivity) ht0]
        nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73d287e15c2b4042e99aa14e63e405cf8c577743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
