# pickup_initial_integrable_of_growth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41ea9b66-4ab4-ae5b-60e7-d4b58caeb9db",
  "kind": "theorem",
  "lexical_name": "pickup_initial_integrable_of_growth",
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
  "slug": "pickup-initial-integrable-of-growth--8712fcf5ff70b9675d1e7bc5",
  "source": {
    "blob": "1ba8dd9c2c9e3dff8a6985c04a7a77bb9428ca57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 496,
    "path": "GRWTSK/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8712fcf5ff70b9675d1e7bc5f55d228b7f74d04a61f5a2448d0af03322ba2054",
  "verification": {
    "reference": "docs/verification/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41ea9b66-4ab4-ae5b-60e7-d4b58caeb9db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickup_initial_integrable_of_growth
    (W : ℝ → ℝ) (hW : Continuous W)
    (hgrowth : ∀ t : ℝ, 0 ≤ t → |W t| ≤ 2 * Real.exp (t / 2))
    (z : ℂ) (hz : 1 < z.re) :
    Integrable (fun t : ℝ ↦ Complex.exp (-z * t) * (W t : ℂ)) pickupTimeMeasure := by
  have hmajor := integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (0 : ℝ)) (p := (1 : ℝ)) (b := z.re - 1 / 2)
    (by norm_num) zero_lt_one (by linarith)
  simp only [Real.rpow_zero, Real.rpow_one, one_mul] at hmajor
  apply (hmajor.const_mul 2).mono' (by fun_prop)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  calc
    ‖Complex.exp (-z * t) * (W t : ℂ)‖ = Real.exp (-z.re * t) * |W t| := by
      simp [Complex.norm_exp, Complex.mul_re, Complex.norm_real, Real.norm_eq_abs]
    _ ≤ Real.exp (-z.re * t) * (2 * Real.exp (t / 2)) :=
      mul_le_mul_of_nonneg_left (hgrowth t ht.le) (Real.exp_pos _).le
    _ = 2 * Real.exp (-(z.re - 1 / 2) * t) := by
      rw [← mul_assoc, mul_comm (Real.exp (-z.re * t)) 2, mul_assoc, ← Real.exp_add]
      congr 2
      ring

/-- Final generic adapter: real polynomial upper pickup control, the elementary
absolute growth bound and the exact initial direct transform imply literal RH.
Only the direct source-transform identity remains an analytic source premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ba8dd9c2c9e3dff8a6985c04a7a77bb9428ca57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
