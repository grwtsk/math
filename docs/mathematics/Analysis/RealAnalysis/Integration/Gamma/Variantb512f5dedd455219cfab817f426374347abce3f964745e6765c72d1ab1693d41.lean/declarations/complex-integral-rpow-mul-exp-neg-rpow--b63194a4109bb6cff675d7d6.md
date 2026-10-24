# Complex.integral_rpow_mul_exp_neg_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5df1692e-b633-0e06-a80c-cc963e03f29e",
  "kind": "theorem",
  "lexical_name": "Complex.integral_rpow_mul_exp_neg_rpow",
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
  "slug": "complex-integral-rpow-mul-exp-neg-rpow--b63194a4109bb6cff675d7d6",
  "source": {
    "blob": "ffe83d5ff475a8afdadffb62499859a1b782da93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 83,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Gamma/Variantb512f5dedd455219cfab817f426374347abce3f964745e6765c72d1ab1693d41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b63194a4109bb6cff675d7d69c11e093a3e1d4978eb7d132e70911e003a69a9e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Gamma/Variantb512f5dedd455219cfab817f426374347abce3f964745e6765c72d1ab1693d41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5df1692e-b633-0e06-a80c-cc963e03f29e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Complex.integral_rpow_mul_exp_neg_rpow {p q : ℝ} (hp : 1 ≤ p) (hq : -2 < q) :
    ∫ x : ℂ, ‖x‖ ^ q * rexp (- ‖x‖ ^ p) = (2 * π / p) * Real.Gamma ((q + 2) / p) := by
  calc
    _ = ∫ x in Ioi (0 : ℝ) ×ˢ Ioo (-π) π, x.1 * (|x.1| ^ q * rexp (-|x.1| ^ p)) := by
      rw [← Complex.integral_comp_polarCoord_symm, polarCoord_target]
      simp_rw [Complex.norm_polarCoord_symm, smul_eq_mul]
    _ = (∫ x in Ioi (0 : ℝ), x * |x| ^ q * rexp (-|x| ^ p)) * ∫ _ in Ioo (-π) π, 1 := by
      rw [← setIntegral_prod_mul, volume_eq_prod]
      simp_rw [mul_one]
      congr! 2; ring
    _ = 2 * π * ∫ x in Ioi (0 : ℝ), x * |x| ^ q * rexp (-|x| ^ p) := by
      simp_rw [integral_const, measureReal_restrict_apply MeasurableSet.univ, Set.univ_inter,
        volume_real_Ioo_of_le (a := -π) (b := π) (by linarith [pi_nonneg]),
        sub_neg_eq_add, ← two_mul, smul_eq_mul, mul_one, mul_comm]
    _ = 2 * π * ∫ x in Ioi (0 : ℝ), x ^ (q + 1) * rexp (-x ^ p) := by
      congr 1
      refine setIntegral_congr_fun measurableSet_Ioi (fun x hx => ?_)
      rw [mem_Ioi] at hx
      rw [abs_eq_self.mpr hx.le, rpow_add hx, rpow_one]
      ring
    _ = (2 * Real.pi / p) * Real.Gamma ((q + 2) / p) := by
      rw [_root_.GRWTSK.Analysis.RealAnalysis.Integration.IntegralRpowMulExpNegRpow.Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.integral_rpow_mul_exp_neg_rpow (by linarith) (by linarith), add_assoc,
        one_add_one_eq_two]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Gamma/Variantb512f5dedd455219cfab817f426374347abce3f964745e6765c72d1ab1693d41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Gamma/Variantb512f5dedd455219cfab817f426374347abce3f964745e6765c72d1ab1693d41.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffe83d5ff475a8afdadffb62499859a1b782da93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
