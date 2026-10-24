# ibp_eps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2fc4a3a-5aa2-c563-9cab-2b60f403d281",
  "kind": "lemma",
  "lexical_name": "ibp_eps",
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
  "slug": "ibp-eps--dd0671a60623db476ec8b6db",
  "source": {
    "blob": "89ef6f525685569b90716827903f2340987df587",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 297,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd0671a60623db476ec8b6dbdd40a40a20bb1889092d57b95d735983eb81f256",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2fc4a3a-5aa2-c563-9cab-2b60f403d281`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma ibp_eps {ε : ℝ} (hε0 : 0 < ε) (hε1 : ε < 1) :
    ∫ t in ε..1, log t * exp (-t) =
      (exp (-ε) - 1) * log ε + ∫ t in ε..1, (exp (-t) - 1) / t := by
  have hne : ∀ x ∈ Set.Icc ε 1, (x : ℝ) ≠ 0 :=
    fun x hx => ne_of_gt (lt_of_lt_of_le hε0 hx.1)
  have hlog_deriv : ∀ x ∈ Set.uIcc ε 1, HasDerivAt log x⁻¹ x := by
    intro x hx; rw [Set.uIcc_of_le hε1.le] at hx
    exact hasDerivAt_log (ne_of_gt (lt_of_lt_of_le hε0 hx.1))
  have hv_deriv : ∀ x ∈ Set.uIcc ε 1, HasDerivAt (fun t => -exp (-t)) (exp (-x)) x := by
    intro x _; have h := (hasDerivAt_neg x).exp; convert h.neg using 1; simp [mul_comm]
  have h_u'_int : IntervalIntegrable (fun x => x⁻¹) volume ε 1 :=
    (continuousOn_inv₀.mono fun x hx => hne x hx).intervalIntegrable_of_Icc hε1.le
  have h_v'_int : IntervalIntegrable (fun x => exp (-x)) volume ε 1 :=
    (continuous_exp.comp continuous_neg).continuousOn.intervalIntegrable_of_Icc hε1.le
  have hIBP := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    hlog_deriv hv_deriv h_u'_int h_v'_int
  have h_expm1_int : IntervalIntegrable (fun t => (exp (-t) - 1) / t) volume ε 1 := by
    apply ContinuousOn.intervalIntegrable_of_Icc hε1.le
    exact ((continuous_exp.comp continuous_neg).sub continuous_const).continuousOn.div
      continuous_id.continuousOn (fun x hx => hne x hx)
  have h_inv_eq : ∫ t in ε..1, t⁻¹ = -log ε := by
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt hlog_deriv h_u'_int]; simp [log_one]
  have h_inv_exp_eq : ∫ t in ε..1, t⁻¹ * exp (-t) =
      (∫ t in ε..1, (exp (-t) - 1) / t) - log ε := by
    have := intervalIntegral.integral_add h_expm1_int h_u'_int
    have h_eq : (fun x => (exp (-x) - 1) / x + x⁻¹) = fun x => x⁻¹ * exp (-x) := by
      ext x; field_simp; ring
    rw [h_eq] at this; linarith [h_inv_eq]
  have h_ibp_int_eq : ∫ x in ε..1, x⁻¹ * (-exp (-x)) =
      -(∫ t in ε..1, (exp (-t) - 1) / t) + log ε := by
    rw [show (fun x : ℝ => x⁻¹ * (-exp (-x))) = fun x => -(x⁻¹ * exp (-x)) from by ext; ring,
      intervalIntegral.integral_neg, h_inv_exp_eq]; ring
  rw [h_ibp_int_eq] at hIBP
  simp only [log_one, zero_mul] at hIBP
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89ef6f525685569b90716827903f2340987df587` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
