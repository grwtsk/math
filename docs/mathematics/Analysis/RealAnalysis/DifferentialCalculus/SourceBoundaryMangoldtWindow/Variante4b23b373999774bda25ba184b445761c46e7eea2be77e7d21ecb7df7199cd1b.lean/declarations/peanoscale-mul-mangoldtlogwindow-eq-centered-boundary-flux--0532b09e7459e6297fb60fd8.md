# peanoScale_mul_mangoldtLogWindow_eq_centered_boundary_flux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ea0e1824aa73c2e920b697c6ae617adae581456c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4b23b373999774bda25ba184b445761c46e7eea2be77e7d21ecb7df7199cd1b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84da3124-2d68-ed78-8bec-dff611211404",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6e729c5-dc3c-aa3e-1012-764887c7d847",
  "kind": "theorem",
  "lexical_name": "peanoScale_mul_mangoldtLogWindow_eq_centered_boundary_flux",
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
  "slug": "peanoscale-mul-mangoldtlogwindow-eq-centered-boundary-flux--0532b09e7459e6297fb60fd8",
  "source": {
    "blob": "ea0e1824aa73c2e920b697c6ae617adae581456c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBoundaryMangoldtWindow/Variante4b23b373999774bda25ba184b445761c46e7eea2be77e7d21ecb7df7199cd1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0532b09e7459e6297fb60fd8b776524b6eacfd420986c3c1d30f1983f9db2e3a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBoundaryMangoldtWindow/Variante4b23b373999774bda25ba184b445761c46e7eea2be77e7d21ecb7df7199cd1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6e729c5-dc3c-aa3e-1012-764887c7d847`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem peanoScale_mul_mangoldtLogWindow_eq_centered_boundary_flux
    {A Y : ℝ} (hA : 0 < A) (hY0 : 0 ≤ Y) (hY2 : Y ≤ 2 * A) :
    peanoScale A * mangoldtLogWindow (2 * A - Y) (2 * A) (criticalPrimeTest A) =
      deriv (boundaryPeano A) Y +
        ∫ y in 0..Y,
          (mangoldtLogError (2 * A - y) - mangoldtLogError (2 * A - Y)) *
            deriv (deriv (deriv (boundaryPeano A))) y := by
  have hleft : 0 ≤ 2 * A - Y := by linarith
  have horder : 2 * A - Y ≤ 2 * A := by linarith
  have hg := criticalPrimeTest_contDiff A hA
  have hreflect (f : ℝ → ℝ) :
      (∫ y in 0..Y, f (2 * A - y)) = ∫ t in (2 * A - Y)..2 * A, f t := by
    simpa only [sub_zero] using
      (intervalIntegral.integral_comp_sub_left f (2 * A) (a := 0) (b := Y))
  have hB1 : ContDiff ℝ 1 (deriv (boundaryPeano A)) :=
    (boundaryPeano_contDiff_two hA).deriv'
  have hB2 := boundary_second_contDiff hA
  have hi2 : IntervalIntegrable (deriv (deriv (boundaryPeano A))) volume 0 Y :=
    hB2.continuous.intervalIntegrable 0 Y
  have hi3 : IntervalIntegrable (deriv (deriv (deriv (boundaryPeano A))))
      volume 0 Y := hB2.continuous_deriv_one.intervalIntegrable 0 Y
  have hmass2 : (∫ y in 0..Y, deriv (deriv (boundaryPeano A)) y) =
      deriv (boundaryPeano A) Y := by
    have ht := intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun y _ => (hB1.differentiable (by norm_num) y).hasDerivAt) hi2
    simpa only [boundaryPeano_deriv_at_zero hA, sub_zero] using ht
  have hzero2 : deriv (deriv (boundaryPeano A)) 0 = 0 := by
    rw [boundary_second_eq_reflected_test hA, sub_zero,
      criticalPrimeTest_at_upper A hA, mul_zero]
  have hmass3 : (∫ y in 0..Y, deriv (deriv (deriv (boundaryPeano A))) y) =
      deriv (deriv (boundaryPeano A)) Y := by
    have ht := intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun y _ => (hB2.differentiable (by norm_num) y).hasDerivAt) hi3
    simpa only [hzero2, sub_zero] using ht
  have hcontinuous :
      peanoScale A * (∫ t in (2 * A - Y)..2 * A, criticalPrimeTest A t) =
        deriv (boundaryPeano A) Y := by
    calc
      _ = ∫ y in 0..Y, peanoScale A * criticalPrimeTest A (2 * A - y) := by
        rw [intervalIntegral.integral_const_mul, hreflect]
      _ = ∫ y in 0..Y, deriv (deriv (boundaryPeano A)) y := by
        apply intervalIntegral.integral_congr
        intro y _
        exact (boundary_second_eq_reflected_test hA y).symm
      _ = _ := hmass2
  have hraw (y : ℝ) :
      mangoldtLogError (2 * A - y) * deriv (deriv (deriv (boundaryPeano A))) y =
        -peanoScale A *
          (mangoldtLogError (2 * A - y) * deriv (criticalPrimeTest A) (2 * A - y)) := by
    rw [boundary_third_eq_reflected_deriv hA]
    ring
  have hflux :
      (∫ y in 0..Y,
        mangoldtLogError (2 * A - y) * deriv (deriv (deriv (boundaryPeano A))) y) =
      -peanoScale A * (∫ t in (2 * A - Y)..2 * A,
        mangoldtLogError t * deriv (criticalPrimeTest A) t) := by
    simp_rw [hraw]
    rw [intervalIntegral.integral_const_mul, hreflect]
  have hiref : IntervalIntegrable (fun y =>
      mangoldtLogError (2 * A - y) * deriv (criticalPrimeTest A) (2 * A - y))
      volume 0 Y := by
    have ht := (mangoldtLogError_mul_deriv_intervalIntegrable
      (2 * A - Y) (2 * A) horder (criticalPrimeTest A) hg).comp_sub_left (2 * A)
    rw [sub_self, show 2 * A - (2 * A - Y) = Y by ring] at ht
    exact ht.symm
  have hiraw : IntervalIntegrable (fun y =>
      mangoldtLogError (2 * A - y) * deriv (deriv (deriv (boundaryPeano A))) y)
      volume 0 Y := by
    have he : (fun y =>
        mangoldtLogError (2 * A - y) * deriv (deriv (deriv (boundaryPeano A))) y) =
        fun y => -peanoScale A *
          (mangoldtLogError (2 * A - y) * deriv (criticalPrimeTest A) (2 * A - y)) :=
      funext hraw
    rw [he]
    exact hiref.const_mul (-peanoScale A)
  have hcenter :
      (∫ y in 0..Y,
        (mangoldtLogError (2 * A - y) - mangoldtLogError (2 * A - Y)) *
          deriv (deriv (deriv (boundaryPeano A))) y) =
      (∫ y in 0..Y,
        mangoldtLogError (2 * A - y) * deriv (deriv (deriv (boundaryPeano A))) y) -
        mangoldtLogError (2 * A - Y) * deriv (deriv (boundaryPeano A)) Y := by
    simp_rw [sub_mul]
    rw [intervalIntegral.integral_sub hiraw
      (hi3.const_mul (mangoldtLogError (2 * A - Y))),
      intervalIntegral.integral_const_mul, hmass3]
  have habel := mangoldtLogWindow_sub_integral (2 * A - Y) (2 * A)
    hleft horder (criticalPrimeTest A) hg
  rw [criticalPrimeTest_at_upper A hA, zero_mul, zero_sub] at habel
  have hscaled := congrArg (fun x : ℝ => peanoScale A * x) habel
  have hlower := congrArg (fun x : ℝ => x * mangoldtLogError (2 * A - Y))
    (boundary_second_eq_reflected_test hA Y)
  rw [hcenter]
  nlinarith [hcontinuous, hflux]

end FormalResearch.RiemannHypothesis.SourceBoundaryMangoldtWindow
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBoundaryMangoldtWindow/Variante4b23b373999774bda25ba184b445761c46e7eea2be77e7d21ecb7df7199cd1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBoundaryMangoldtWindow/Variante4b23b373999774bda25ba184b445761c46e7eea2be77e7d21ecb7df7199cd1b.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea0e1824aa73c2e920b697c6ae617adae581456c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
