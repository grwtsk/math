# pickup_tilt_integrable_of_weightedEnergyAll

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb7940d7-ac9c-ad9e-adc9-afb1b92ed62f",
  "kind": "theorem",
  "lexical_name": "pickup_tilt_integrable_of_weightedEnergyAll",
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
  "slug": "pickup-tilt-integrable-of-weightedenergyall--9dfeeee400c21c65a0e04e53",
  "source": {
    "blob": "a107f60cf1a498be022f6547623f15b01e840c82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 104,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EnergyAbscissa/Variant9980316185c3dd707ad11c546357baa9b139ec19699f7230e23bf4f1065cc1d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dfeeee400c21c65a0e04e53d2ed04e9894b518bce6ddd1b6d97394b69a1d6b1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EnergyAbscissa/Variant9980316185c3dd707ad11c546357baa9b139ec19699f7230e23bf4f1065cc1d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb7940d7-ac9c-ad9e-adc9-afb1b92ed62f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickup_tilt_integrable_of_weightedEnergyAll (hw : PickupWeightedEnergyAll)
    {σ : ℝ} (hσ : 0 < σ) :
    IntegrableOn (fun u ↦ Real.exp (-σ * u) * wholePickup u) (Ioi 0) := by
  have hsq := (hw σ hσ).mono_set Ioi_subset_Ici_self
  have he := integrableOn_exp_mul_Ioi (by linarith : -σ < 0) 0
  apply (he.add hsq).mono'
    (((Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      wholePickup_continuous).aestronglyMeasurable)
  exact ae_of_all _ (fun u ↦ by
    change ‖Real.exp (-σ * u) * wholePickup u‖ ≤
      Real.exp (-σ * u) + Real.exp (-σ * u) * wholePickup u ^ 2
    rw [norm_mul, Real.norm_eq_abs, abs_of_pos (Real.exp_pos _), Real.norm_eq_abs]
    have ha : |wholePickup u| ≤ 1 + wholePickup u ^ 2 := by
      nlinarith [sq_nonneg (|wholePickup u| - 1), sq_abs (wholePickup u)]
    simpa only [mul_add, mul_one] using
      mul_le_mul_of_nonneg_left ha (Real.exp_pos _).le)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EnergyAbscissa/Variant9980316185c3dd707ad11c546357baa9b139ec19699f7230e23bf4f1065cc1d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EnergyAbscissa/Variant9980316185c3dd707ad11c546357baa9b139ec19699f7230e23bf4f1065cc1d6.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a107f60cf1a498be022f6547623f15b01e840c82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
