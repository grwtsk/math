# logarithmic_profile_variation_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d358a8e4-4443-6ef5-db49-40479a04da79",
  "kind": "theorem",
  "lexical_name": "logarithmic_profile_variation_price",
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
  "slug": "logarithmic-profile-variation-price--f1b2298513f205cf9e86d2a0",
  "source": {
    "blob": "962017c6a7b76278922085084985d6444a906af2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 47,
    "path": "GRWTSK/Analysis/Inequalities/LogarithmicProfileIntegralPrices.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1b2298513f205cf9e86d2a03d6c151a71482e6cc68cbc3eb68b90dce1522230",
  "verification": {
    "reference": "docs/verification/Analysis/Inequalities/LogarithmicProfileIntegralPrices.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d358a8e4-4443-6ef5-db49-40479a04da79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logarithmic_profile_variation_price {F : ℝ → ℝ} {t B D R : ℝ}
    (regular : ContDiff ℝ 1 (fun x : ℝ ↦ Real.log x / Real.sqrt x * F (t + Real.log x)))
    (differentiable : Differentiable ℝ F) (price : ∀ u : ℝ, |F u| ≤ B)
    (derivativePrice : ∀ u : ℝ, |deriv F u| ≤ D) (ordered : 1 ≤ R) :
    (∫ x in (1 : ℝ)..R,
      |deriv (fun y : ℝ ↦ Real.log y / Real.sqrt y * F (t + Real.log y)) x|) ≤
      4 * B + 4 * D := by
  let g : ℝ → ℝ := fun x ↦ (1 + Real.log x / 2) * B / (x * Real.sqrt x) +
    Real.log x * D / (x * Real.sqrt x)
  obtain ⟨weightL1, weightValue⟩ := upper_variation_weight_integral B D
  have Bnonneg : 0 ≤ B := (abs_nonneg (F 0)).trans (price 0)
  have Dnonneg : 0 ≤ D := (abs_nonneg (deriv F 0)).trans (derivativePrice 0)
  have variationL1 := regular.continuous_deriv_one.abs.intervalIntegrable
    (μ := volume) (1 : ℝ) R
  have variationOn := (intervalIntegrable_iff_integrableOn_Ioc_of_le ordered).mp variationL1
  have comparison := setIntegral_mono_on variationOn (weightL1.mono_set Ioc_subset_Ioi_self)
    measurableSet_Ioc (fun x hx ↦
      LogarithmicProfileDerivative.logarithmic_profile_derivative_abs_le hx.1.le
        ((differentiable (t + Real.log x)).hasDerivAt)
        (price (t + Real.log x)) (derivativePrice (t + Real.log x)))
  have weightNonneg : 0 ≤ᵐ[volume.restrict (Ioi (1 : ℝ))] g := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
    have logNonneg : 0 ≤ Real.log x := Real.log_nonneg hx.le
    have positive : 0 < x := zero_lt_one.trans hx
    dsimp [g]
    positivity
  rw [intervalIntegral.integral_of_le ordered]
  exact comparison.trans ((setIntegral_mono_set weightL1 weightNonneg
    (Eventually.of_forall (fun _ hx ↦ hx.1))).trans_eq weightValue)

/-- The entire lower logarithmic correction has price four times the profile bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inequalities/LogarithmicProfileIntegralPrices.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inequalities/LogarithmicProfileIntegralPrices.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `962017c6a7b76278922085084985d6444a906af2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
