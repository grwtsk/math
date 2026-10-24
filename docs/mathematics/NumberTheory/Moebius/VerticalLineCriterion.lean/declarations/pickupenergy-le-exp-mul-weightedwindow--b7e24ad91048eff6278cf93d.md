# pickupEnergy_le_exp_mul_weightedWindow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b15e37c-d1bf-f140-58f1-7ceabe196a3f",
  "kind": "theorem",
  "lexical_name": "pickupEnergy_le_exp_mul_weightedWindow",
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
  "slug": "pickupenergy-le-exp-mul-weightedwindow--b7e24ad91048eff6278cf93d",
  "source": {
    "blob": "3acfdb95ea3ca582b50458577db96e553be21fe4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 61,
    "path": "GRWTSK/NumberTheory/Moebius/VerticalLineCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7e24ad91048eff6278cf93dcf45eaf28ae1b88c7327a68e216461eaed6c46a2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/VerticalLineCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b15e37c-d1bf-f140-58f1-7ceabe196a3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupEnergy_le_exp_mul_weightedWindow {σ T : ℝ}
    (hσ : 0 ≤ σ) (hT : 0 ≤ T) :
    pickupEnergy T ≤ Real.exp (2 * σ * T) * verticalLineMass σ T := by
  have hc : Continuous (fun u : ℝ => Real.exp (2 * σ * T) *
      (Real.exp (-2 * σ * u) * wholePickup u ^ 2)) :=
    continuous_const.mul
      ((Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
        (wholePickup_continuous.pow 2))
  have hp : (∫ u in Icc (0 : ℝ) T, wholePickup u ^ 2) ≤
      ∫ u in Icc (0 : ℝ) T,
        Real.exp (2 * σ * T) *
          (Real.exp (-2 * σ * u) * wholePickup u ^ 2) := by
    apply setIntegral_mono_on (wholePickup_continuous.pow 2).integrableOn_Icc
      hc.integrableOn_Icc measurableSet_Icc
    intro u hu
    have he : 1 ≤ Real.exp (2 * σ * T) * Real.exp (-2 * σ * u) := by
      rw [← Real.exp_add, ← Real.exp_zero]
      exact Real.exp_le_exp.mpr (by nlinarith [hu.2])
    change wholePickup u ^ 2 ≤ Real.exp (2 * σ * T) *
      (Real.exp (-2 * σ * u) * wholePickup u ^ 2)
    simpa only [one_mul, mul_assoc] using
      mul_le_mul_of_nonneg_right he (sq_nonneg (wholePickup u))
  rw [pickupEnergy, intervalIntegral.integral_of_le hT,
    ← integral_Icc_eq_integral_Ioc, verticalLineMass_eq_weightedWindow hT]
  simpa only [integral_const_mul] using hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/VerticalLineCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/VerticalLineCriterion.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3acfdb95ea3ca582b50458577db96e553be21fe4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
