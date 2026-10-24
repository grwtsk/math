# actualFiniteSecondReadout_outer_fubini

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10ff97dd-7602-abde-2beb-625cdf79d36d",
  "kind": "theorem",
  "lexical_name": "actualFiniteSecondReadout_outer_fubini",
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
  "slug": "actualfinitesecondreadout-outer-fubini--e609f42348f09d6c280b8fea",
  "source": {
    "blob": "bb9d13f61ac6a36df6f81491ce98895897190f6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 140,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant2d9b3dbdc27a42f5dd02d512ea7e77c8ba84ee603c6cb7865ad81aee29eb9d36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e609f42348f09d6c280b8feafe63ac449657c0e5bde4718b63b7221ac9bf7c09",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant2d9b3dbdc27a42f5dd02d512ea7e77c8ba84ee603c6cb7865ad81aee29eb9d36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10ff97dd-7602-abde-2beb-625cdf79d36d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFiniteSecondReadout_outer_fubini (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in Real.log 2..2 * A,
      actualFiniteSecondReadout t * deriv (deriv (cesaroWeight A)) t) =
      ∫ y in 2..Real.exp (2 * A), shiftedActualChebyshev y * deriv (plainProfile A 1) y := by
  have hL := threshold_order A hA
  have hX : 2 ≤ Real.exp (2 * A) := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 2)] using Real.exp_le_exp.mpr hL
  have hs := integral_integral_swap
    (f := fun t y => finiteDensity A (t, y)) (finiteDensity_integrable A hA)
  rw [intervalIntegral.integral_of_le hL, intervalIntegral.integral_of_le hX]
  calc
    _ = ∫ t in Ioc (Real.log 2) (2 * A),
        ∫ y in Ioc 2 (Real.exp (2 * A)), finiteDensity A (t, y) := by
      apply integral_congr_ae
      filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
      rw [density_left_slice A t hA ht,
        shiftedPsiFullPrimitive_eq_actualFiniteSecondReadout t ht.1.le]
    _ = ∫ y in Ioc 2 (Real.exp (2 * A)),
        ∫ t in Ioc (Real.log 2) (2 * A), finiteDensity A (t, y) := hs
    _ = _ := by
      apply integral_congr_ae
      filter_upwards [ae_restrict_mem measurableSet_Ioc] with y hy
      exact density_right_slice A y hA hy

end FormalResearch.RiemannHypothesis.SourceOuterPsiFubini
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant2d9b3dbdc27a42f5dd02d512ea7e77c8ba84ee603c6cb7865ad81aee29eb9d36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant2d9b3dbdc27a42f5dd02d512ea7e77c8ba84ee603c6cb7865ad81aee29eb9d36.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb9d13f61ac6a36df6f81491ce98895897190f6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
