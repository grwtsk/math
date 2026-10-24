# one_add_cpow_hasFPowerSeriesOnBall_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3bee70a-3d5b-d040-db91-97f4295343a7",
  "kind": "theorem",
  "lexical_name": "one_add_cpow_hasFPowerSeriesOnBall_zero",
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
  "slug": "one-add-cpow-hasfpowerseriesonball-zero--23d9be21f75aa202677e878f",
  "source": {
    "blob": "9621a5307a46a4cdccd35bf6435e45dd5058a973",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 109,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23d9be21f75aa202677e878f0c8a2a282441d9dd7c91a32b9764a956efc5c242",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3bee70a-3d5b-d040-db91-97f4295343a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_add_cpow_hasFPowerSeriesOnBall_zero {a : ℂ} :
    HasFPowerSeriesOnBall (fun x ↦ (1 + x) ^ a) (binomialSeries ℂ a) 0 1 := by
  suffices (binomialSeries ℂ a = FormalMultilinearSeries.ofScalars ℂ
      fun n ↦ iteratedDeriv n (fun (x : ℂ) ↦ (1 + x) ^ a) 0 / n !) by
    convert! AnalyticOn.hasFPowerSeriesOnSubball _ _ _
    · norm_num
    · -- TODO: use `fun_prop` for this subgoal
      apply AnalyticOn.cpow (analyticOn_const.add analyticOn_id) analyticOn_const
      intro z hz
      apply Complex.mem_slitPlane_of_norm_lt_one
      rw [← ENNReal.ofReal_one, Metric.eball_ofReal] at hz
      simpa using hz
    · rw [← this]
      exact binomialSeries_radius_ge_one
  simp only [binomialSeries, FormalMultilinearSeries.ofScalars_series_eq_iff]
  ext n
  rw [eq_div_iff_mul_eq (by simp [Nat.factorial_ne_zero]), ← nsmul_eq_mul',
    ← Ring.descPochhammer_eq_factorial_smul_choose]
  let B := Metric.ball (0 : ℂ) 1
  suffices Set.EqOn (iteratedDerivWithin n (fun x ↦ (1 + x) ^ a) B)
      (fun x ↦ (descPochhammer ℤ n).smeval a * (1 + x) ^ (a - n)) B by
    specialize this (show 0 ∈ _ by simp [B])
    rw [iteratedDerivWithin_of_isOpen Metric.isOpen_ball (by simp)] at this
    symm
    simpa using this
  induction n with
  | zero => simp [Set.EqOn]
  | succ n ih =>
    have : iteratedDerivWithin (n + 1) (fun (x : ℂ) ↦ (1 + x) ^ a) B =
        derivWithin (iteratedDerivWithin n (fun x ↦ (1 + x) ^ a) B) B := by
      ext z
      rw [iteratedDerivWithin_succ]
    rw [this]
    have : Set.EqOn (derivWithin (iteratedDerivWithin n (fun (x : ℂ) ↦ (1 + x) ^ a) B) B)
        (derivWithin (fun x ↦ (descPochhammer ℤ n).smeval a * (1 + x) ^ (a - ↑n)) B) B := by
      intro z hz
      rw [derivWithin_congr (fun _ hz ↦ ih hz) (ih hz)]
    apply Set.EqOn.trans this
    intro z hz
    simp only [Nat.cast_add, Nat.cast_one, B, derivWithin_of_isOpen Metric.isOpen_ball hz,
      deriv_const_mul_field']
    rw [_root_.deriv_cpow_const (by fun_prop), deriv_const_add_id, mul_one,
      show a - (n + 1) = a - n - 1 by ring, ← mul_assoc]
    · congr
      simp [descPochhammer_succ_right, Polynomial.smeval_mul, Polynomial.smeval_natCast]
    · apply Complex.mem_slitPlane_of_norm_lt_one
      simpa [B] using hz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9621a5307a46a4cdccd35bf6435e45dd5058a973` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
