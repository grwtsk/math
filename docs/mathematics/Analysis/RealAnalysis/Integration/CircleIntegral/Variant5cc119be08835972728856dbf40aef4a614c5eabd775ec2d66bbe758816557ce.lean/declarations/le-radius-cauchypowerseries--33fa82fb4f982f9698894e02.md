# le_radius_cauchyPowerSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "449a45484d6858b06efd95f1ef62ece22fee65e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 662,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5cc119be08835972728856dbf40aef4a614c5eabd775ec2d66bbe758816557ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99d26fc5-5f0d-4287-ef69-0bb46a35d583",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b1a2c9f-7448-7a6a-b8c5-9112f89f8944",
  "kind": "theorem",
  "lexical_name": "le_radius_cauchyPowerSeries",
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
  "slug": "le-radius-cauchypowerseries--33fa82fb4f982f9698894e02",
  "source": {
    "blob": "449a45484d6858b06efd95f1ef62ece22fee65e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 680,
    "line": 662,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CircleIntegral/Variant5cc119be08835972728856dbf40aef4a614c5eabd775ec2d66bbe758816557ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33fa82fb4f982f9698894e027112886696bd7597fa1f0bd88d6321d97a245abe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CircleIntegral/Variant5cc119be08835972728856dbf40aef4a614c5eabd775ec2d66bbe758816557ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b1a2c9f-7448-7a6a-b8c5-9112f89f8944`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 662–680.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_radius_cauchyPowerSeries (f : ℂ → E) (c : ℂ) (R : ℝ≥0) :
    ↑R ≤ (cauchyPowerSeries f c R).radius := by
  refine
    (cauchyPowerSeries f c R).le_radius_of_bound
      ((2 * π)⁻¹ * ∫ θ : ℝ in 0..2 * π, ‖f (circleMap c R θ)‖) fun n => ?_
  refine (mul_le_mul_of_nonneg_right (norm_cauchyPowerSeries_le _ _ _ _)
    (pow_nonneg R.coe_nonneg _)).trans ?_
  rw [abs_of_nonneg R.coe_nonneg]
  rcases eq_or_ne (R ^ n : ℝ) 0 with hR | hR
  · rw_mod_cast [hR, mul_zero]
    exact mul_nonneg (inv_nonneg.2 Real.two_pi_pos.le)
      (intervalIntegral.integral_nonneg Real.two_pi_pos.le fun _ _ => norm_nonneg _)
  · rw [inv_pow]
    have : (R : ℝ) ^ n ≠ 0 := by norm_cast at hR ⊢
    rw [inv_mul_cancel_right₀ this]

/-- For any circle integrable function `f`, the power series `cauchyPowerSeries f c R` multiplied
by `2πI` converges to the integral `∮ z in C(c, R), (z - w)⁻¹ • f z` on the open disc
`Metric.ball c R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CircleIntegral/Variant5cc119be08835972728856dbf40aef4a614c5eabd775ec2d66bbe758816557ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CircleIntegral/Variant5cc119be08835972728856dbf40aef4a614c5eabd775ec2d66bbe758816557ce.lean#L662).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `449a45484d6858b06efd95f1ef62ece22fee65e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
