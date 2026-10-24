# actual_psi_inverse_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f18b0924-7528-5a01-ec2c-f72335066d40",
  "kind": "theorem",
  "lexical_name": "actual_psi_inverse_square",
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
  "slug": "actual-psi-inverse-square--c7c482578c805d119e1df603",
  "source": {
    "blob": "435216964d8a52cbe70830037434613a36534498",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquare/Variantfe86ebba782dd356d4f4f02d2411be9a820b4b8787ae37a984ff8154805eddbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7c482578c805d119e1df603419e76dcd1912f9849b5df9478029f9a3084a6ca",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquare/Variantfe86ebba782dd356d4f4f02d2411be9a820b4b8787ae37a984ff8154805eddbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f18b0924-7528-5a01-ec2c-f72335066d40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_psi_inverse_square (X : ℝ) (hX : 2 ≤ X) :
    (∫ y in 2..X, Chebyshev.psi y / y ^ 2) =
      mangoldtLogPrefix (Real.log X) - Chebyshev.psi X / X := by
  have hX0 : 0 < X := by linarith
  have hdiff : ∀ y ∈ Icc (2 : ℝ) X,
      DifferentiableAt ℝ (fun y : ℝ => y⁻¹) y := by
    intro y hy
    exact (hasDerivAt_inv (show y ≠ 0 by linarith [hy.1])).differentiableAt
  have hc : ContinuousOn (fun y : ℝ => -(y ^ 2)⁻¹) (Icc 2 X) := by
    intro y hy
    have hy0 : y ≠ 0 := by linarith [hy.1]
    exact ((continuousAt_id.pow 2).inv₀ (pow_ne_zero 2 hy0)).neg.continuousWithinAt
  have hi : IntegrableOn (deriv (fun y : ℝ => y⁻¹)) (Icc 2 X) := by
    simpa only [deriv_inv'] using hc.integrableOn_Icc
  have ha := sum_mul_eq_sub_integral_mul₁ (vonMangoldt : ℕ → ℝ)
    (by simp) (by simp) X hdiff hi
  have hs : (∑ n ∈ Finset.Icc 0 ⌊X⌋₊, (n : ℝ)⁻¹ * vonMangoldt n) =
      mangoldtLogPrefix (Real.log X) := by
    unfold mangoldtLogPrefix weightedMangoldt
    rw [Real.exp_log hX0, Finset.Icc_eq_cons_Ioc (Nat.zero_le _), Finset.sum_cons]
    simp only [Nat.cast_zero, inv_zero, zero_mul, zero_add, div_eq_mul_inv, mul_comm]
  have hj : (∫ y in Ioc (2 : ℝ) X,
      deriv (fun y : ℝ => y⁻¹) y * ∑ n ∈ Finset.Icc 0 ⌊y⌋₊, vonMangoldt n) =
      -(∫ y in 2..X, Chebyshev.psi y / y ^ 2) := by
    rw [intervalIntegral.integral_of_le hX, ← integral_neg]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro y _
    dsimp only
    rw [deriv_inv, ← Chebyshev.psi_eq_sum_Icc]
    ring
  rw [hs, ← Chebyshev.psi_eq_sum_Icc, hj] at ha
  rw [show Chebyshev.psi X / X = X⁻¹ * Chebyshev.psi X by ring]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquare/Variantfe86ebba782dd356d4f4f02d2411be9a820b4b8787ae37a984ff8154805eddbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquare/Variantfe86ebba782dd356d4f4f02d2411be9a820b4b8787ae37a984ff8154805eddbd.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `435216964d8a52cbe70830037434613a36534498` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
