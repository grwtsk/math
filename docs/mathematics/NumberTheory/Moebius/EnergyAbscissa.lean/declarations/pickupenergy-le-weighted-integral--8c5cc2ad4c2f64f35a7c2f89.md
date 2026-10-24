# pickupEnergy_le_weighted_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66e0d9ef-01f2-1f32-7d5c-e9d1ec202f19",
  "kind": "theorem",
  "lexical_name": "pickupEnergy_le_weighted_integral",
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
  "slug": "pickupenergy-le-weighted-integral--8c5cc2ad4c2f64f35a7c2f89",
  "source": {
    "blob": "a107f60cf1a498be022f6547623f15b01e840c82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 63,
    "path": "GRWTSK/NumberTheory/Moebius/EnergyAbscissa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c5cc2ad4c2f64f35a7c2f89318f8cd531f36efe0121b08ec6c4b8ab131dfa31",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/EnergyAbscissa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66e0d9ef-01f2-1f32-7d5c-e9d1ec202f19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupEnergy_le_weighted_integral {σ T : ℝ} (hσ : 0 < σ) (hT : 0 ≤ T)
    (hi : IntegrableOn (fun u ↦ Real.exp (-σ * u) * wholePickup u ^ 2) (Ici 0)) :
    pickupEnergy T ≤
      (∫ u in Ici (0 : ℝ), Real.exp (-σ * u) * wholePickup u ^ 2) * Real.exp (σ * T) := by
  have hc : Continuous (fun u ↦ Real.exp (σ * T) *
      (Real.exp (-σ * u) * wholePickup u ^ 2)) :=
    continuous_const.mul
      ((Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
        (wholePickup_continuous.pow 2))
  have hp : (∫ u in Icc (0 : ℝ) T, wholePickup u ^ 2) ≤
      ∫ u in Icc (0 : ℝ) T,
        Real.exp (σ * T) * (Real.exp (-σ * u) * wholePickup u ^ 2) := by
    apply setIntegral_mono_on (wholePickup_continuous.pow 2).integrableOn_Icc
      hc.integrableOn_Icc measurableSet_Icc
    intro u hu
    change wholePickup u ^ 2 ≤
      Real.exp (σ * T) * (Real.exp (-σ * u) * wholePickup u ^ 2)
    have he : 1 ≤ Real.exp (σ * T) * Real.exp (-σ * u) := by
      rw [← Real.exp_add, ← Real.exp_zero]
      exact Real.exp_le_exp.mpr (by nlinarith [hu.2])
    simpa only [one_mul, mul_assoc] using
      mul_le_mul_of_nonneg_right he (sq_nonneg (wholePickup u))
  have hs : (∫ u in Icc (0 : ℝ) T, Real.exp (-σ * u) * wholePickup u ^ 2) ≤
      ∫ u in Ici (0 : ℝ), Real.exp (-σ * u) * wholePickup u ^ 2 := by
    apply setIntegral_mono_set hi
      (ae_of_all _ (fun u ↦ mul_nonneg (Real.exp_pos _).le (sq_nonneg _)))
    exact ae_of_all _ (fun u hu ↦ hu.1)
  rw [integral_const_mul] at hp
  rw [pickupEnergy, intervalIntegral.integral_of_le hT, ← integral_Icc_eq_integral_Ioc]
  exact hp.trans (by
    simpa only [mul_comm] using mul_le_mul_of_nonneg_left hs (Real.exp_pos _).le)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/EnergyAbscissa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/EnergyAbscissa.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a107f60cf1a498be022f6547623f15b01e840c82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
