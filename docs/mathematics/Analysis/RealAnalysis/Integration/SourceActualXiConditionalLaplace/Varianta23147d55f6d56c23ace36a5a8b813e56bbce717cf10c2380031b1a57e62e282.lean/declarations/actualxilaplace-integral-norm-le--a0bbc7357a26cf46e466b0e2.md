# actualXiLaplace_integral_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:febb97ce-2240-8380-69d8-bb8ca3bae873",
  "kind": "theorem",
  "lexical_name": "actualXiLaplace_integral_norm_le",
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
  "slug": "actualxilaplace-integral-norm-le--a0bbc7357a26cf46e466b0e2",
  "source": {
    "blob": "d726895e10d10e1c0424455ba72ee07916326592",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 249,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0bbc7357a26cf46e466b0e29e3b401deb6855923230466dca8d68498a22581b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:febb97ce-2240-8380-69d8-bb8ca3bae873`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiLaplace_integral_norm_le {M T₀ σ : ℝ} (hM : 0 ≤ M)
    (hT₀ : Real.log 7 ≤ T₀) (hσ : 0 < σ)
    (haverage : ∀ T : ℝ, T₀ ≤ T → actualXiAbsoluteCumulative T ≤ M * T) :
    (∫ t in Ioi (Real.log 7), ‖actualAnchoredXiTailPrimitive t * Real.exp (-σ * t)‖) ≤
      actualXiConditionalLaplaceBudget M T₀ σ := by
  rw [actualXiLaplace_integral_norm_eq hM hT₀ hσ haverage]
  have hh : (∫ t in Ioi (Real.log 7), actualXiAbsoluteCumulative t * Real.exp (-σ * t)) ≤
      M * ((Real.log 7 + T₀) / σ + 1 / σ ^ 2) * Real.exp (-σ * Real.log 7) := by
    apply le_of_tendsto
      (intervalIntegral_tendsto_integral_Ioi (Real.log 7)
        (actualXiCumulativeLaplace_integrableOn hM hT₀ hσ haverage) tendsto_id)
    filter_upwards [eventually_ge_atTop (Real.log 7)] with b hb
    simp only [id_eq]
    have he : (∫ t in Real.log 7..b, actualXiAbsoluteCumulative t * Real.exp (-σ * t)) =
        ∫ t in Real.log 7..b, ‖actualXiAbsoluteCumulative t * Real.exp (-σ * t)‖ := by
      apply intervalIntegral.integral_congr
      rw [uIcc_of_le hb]
      intro t ht
      change actualXiAbsoluteCumulative t * Real.exp (-σ * t) =
        ‖actualXiAbsoluteCumulative t * Real.exp (-σ * t)‖
      rw [Real.norm_eq_abs, abs_of_nonneg
        (mul_nonneg (actualXiAbsoluteCumulative_nonneg ht.1) (Real.exp_pos _).le)]
    rw [he]
    exact cumulative_weight_norm_bound hM hT₀ hσ haverage hb
  calc
    _ ≤ σ * (M * ((Real.log 7 + T₀) / σ + 1 / σ ^ 2) *
        Real.exp (-σ * Real.log 7)) := mul_le_mul_of_nonneg_left hh hσ.le
    _ = _ := by unfold actualXiConditionalLaplaceBudget; field_simp; ring

/-- The signed actual Laplace integral is estimated only after genuine infinite source L1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d726895e10d10e1c0424455ba72ee07916326592` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
