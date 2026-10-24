# actualFiniteSecondReadout_outer_fubini

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c630bc7a-51c0-d041-5aa6-370967fb8c5b",
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
  "slug": "actualfinitesecondreadout-outer-fubini--51080bfbedc45ca673da8d71",
  "source": {
    "blob": "d7079041c726efc89a0a05d5c34b34bb0802a385",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 144,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant51b2d095aef259f63d23d7bc0f7d4b85b79db9b548eef59000f30bd04d3c32d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51080bfbedc45ca673da8d7177346424b5a442ae0547eb7ec12e3c2e35b5f0e1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant51b2d095aef259f63d23d7bc0f7d4b85b79db9b548eef59000f30bd04d3c32d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c630bc7a-51c0-d041-5aa6-370967fb8c5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–168.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant51b2d095aef259f63d23d7bc0f7d4b85b79db9b548eef59000f30bd04d3c32d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant51b2d095aef259f63d23d7bc0f7d4b85b79db9b548eef59000f30bd04d3c32d7.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7079041c726efc89a0a05d5c34b34bb0802a385` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
