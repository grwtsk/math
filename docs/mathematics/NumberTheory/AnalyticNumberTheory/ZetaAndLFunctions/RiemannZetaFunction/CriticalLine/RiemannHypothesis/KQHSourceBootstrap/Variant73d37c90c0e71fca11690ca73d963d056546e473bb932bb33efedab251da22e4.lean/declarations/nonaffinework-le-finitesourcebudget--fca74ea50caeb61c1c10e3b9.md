# nonaffineWork_le_finiteSourceBudget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:544a3a0d-26d6-66a6-ef36-29d2e58ff52f",
  "kind": "theorem",
  "lexical_name": "nonaffineWork_le_finiteSourceBudget",
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
  "slug": "nonaffinework-le-finitesourcebudget--fca74ea50caeb61c1c10e3b9",
  "source": {
    "blob": "ddcd553f1740bc39b9ac235e1d594bf9d6cc5692",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variant73d37c90c0e71fca11690ca73d963d056546e473bb932bb33efedab251da22e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fca74ea50caeb61c1c10e3b911b0b1b5c84e63e1311b7a1f3024317861152e47",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variant73d37c90c0e71fca11690ca73d963d056546e473bb932bb33efedab251da22e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:544a3a0d-26d6-66a6-ef36-29d2e58ff52f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonaffineWork_le_finiteSourceBudget {A T : ℝ} (hA : 1 ≤ A) (hAT : A ≤ T) :
    nonaffineWork A ≤ finiteSourceBudget T := by
  let K := chebyshevPrimePower (Real.exp (2 * T)) + 1
  have hK : 0 ≤ K := by
    have hp := chebyshevPrimePower_nonneg (Real.exp (2 * T))
    dsimp [K]
    linarith
  have hp : |endpointValue A| ≤ K :=
    normalizedPsiError_abs_le_on_interval (by linarith) (by linarith)
  have hq : |normalizedPsiError (2 * A - 1)| ≤ K :=
    normalizedPsiError_abs_le_on_interval (by linarith) (by linarith)
  have hb : |endpointSlope A| ≤ 2 * K := by
    change |normalizedPsiError (2 * A - 1) - normalizedPsiError (2 * A)| ≤ 2 * K
    have hp₀ : |normalizedPsiError (2 * A)| ≤ K := hp
    exact (abs_sub _ _).trans (by linarith)
  have h₀ := kernelMomentZero_abs_le_one A hA
  have h₁ := kernelMomentOne_abs_le A hA
  have ht : |trendValue A| ≤ (4 * T + 13) * K := by
    have hx : |endpointValue A * kernelMomentZero A| ≤ K := by
      rw [abs_mul]
      exact (mul_le_mul hp h₀ (abs_nonneg _) hK).trans_eq (mul_one _)
    have hy : |endpointSlope A * kernelMomentOne A| ≤ 2 * K * (2 * A + 6) := by
      rw [abs_mul]
      exact mul_le_mul hb h₁ (abs_nonneg _) (by positivity)
    unfold trendValue
    apply (abs_add_le _ _).trans
    have hKT := mul_le_mul_of_nonneg_right hAT hK
    nlinarith
  have hr : mertensResidual A ≤ K - 1 := by
    have hraw := (le_abs_self (mertensResidual A)).trans (residual_abs_le_chebyshev A hA)
    have hm := chebyshevPrimePower_mono (Real.exp_le_exp.mpr (by linarith : 2 * A ≤ 2 * T))
    dsimp [K]
    linarith
  have hd : 0 ≤ continuousDefect A := by unfold continuousDefect; positivity
  have he := mertensResidual_eq_defect_trend_nonaffine A hA
  have htlow := (abs_le.mp ht).1
  unfold finiteSourceBudget
  dsimp [K] at hr htlow
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variant73d37c90c0e71fca11690ca73d963d056546e473bb932bb33efedab251da22e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variant73d37c90c0e71fca11690ca73d963d056546e473bb932bb33efedab251da22e4.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddcd553f1740bc39b9ac235e1d594bf9d6cc5692` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
