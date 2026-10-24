# remainingAtomWork_lower_of_sharper_cesaro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdecd03e-775d-8424-b60b-f9cac6b8a294",
  "kind": "theorem",
  "lexical_name": "remainingAtomWork_lower_of_sharper_cesaro",
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
  "slug": "remainingatomwork-lower-of-sharper-cesaro--33ba578aafae48357aee3285",
  "source": {
    "blob": "10e551a94dbdfbd70378bb68af6b18f8411bfa8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSharperCesaroPrimitiveConsumer/Variant434917aec8ddb2c61b42fb66898853aa38c778802748df1db729adfdc5bb115e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33ba578aafae48357aee32859308ae2ff689a3c298a5e4ce9f381a2e0141a102",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSharperCesaroPrimitiveConsumer/Variant434917aec8ddb2c61b42fb66898853aa38c778802748df1db729adfdc5bb115e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdecd03e-775d-8424-b60b-f9cac6b8a294`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem remainingAtomWork_lower_of_sharper_cesaro (M A : ℝ) (hM : 0 ≤ M) (hA : 91 ≤ A)
    (hG : ∀ t : ℝ, Real.log 2 ≤ t →
      |actualCesaroPrimitive t| ≤ M * (t - Real.log 2)) :
    -((1887 / 91 : ℝ) * M) ≤ remainingAtomWork A := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hlA : Real.log (2 : ℝ) ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hc := cesaroWeight_second_deriv_continuous A hp
  have hgc := (actualCesaroPrimitive_absolutelyContinuous A hA1).continuousOn
  have hi : IntervalIntegrable (fun t => actualCesaroPrimitive t *
      deriv (deriv (cesaroWeight A)) t) volume (Real.log 2) (2 * A) :=
    (hgc.mul hc.continuousOn).intervalIntegrable
  have hmain : |∫ t in Real.log 2..2 * A,
      actualCesaroPrimitive t * deriv (deriv (cesaroWeight A)) t| ≤
        M * (∫ t in Real.log 2..2 * A,
          (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) := by
    calc
      _ ≤ ∫ t in Real.log 2..2 * A,
          |actualCesaroPrimitive t * deriv (deriv (cesaroWeight A)) t| :=
        intervalIntegral.abs_integral_le_integral_abs hlA
      _ ≤ ∫ t in Real.log 2..2 * A,
          M * ((t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) := by
        apply intervalIntegral.integral_mono_on hlA hi.abs
          ((continuous_const.mul
            ((continuous_id.sub continuous_const).mul hc.abs)).intervalIntegrable
            _ _)
        intro t ht
        change |actualCesaroPrimitive t * deriv (deriv (cesaroWeight A)) t| ≤
          M * ((t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|)
        rw [abs_mul, ← mul_assoc]
        exact mul_le_mul_of_nonneg_right (hG t ht.1) (abs_nonneg _)
      _ = _ := intervalIntegral.integral_const_mul _ _
  have hb := mul_le_mul_of_nonneg_left
    (cesaroWeight_weighted_budget_both_distances_uniform A hA) hM
  have hgamma : 0 ≤ Real.eulerMascheroniConstant := by
    linarith [Real.one_half_lt_eulerMascheroniConstant]
  have hhead := mul_nonneg hgamma (criticalPrimeTest_at_first_atom_nonneg A hA)
  rw [remainingAtomWork_eq_cesaro_integral A hA1]
  have hbound := hmain.trans hb
  linarith [(abs_le.mp hbound).1]

/-- Conditional return to the exact original all-real theorem at the checked analytic radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSharperCesaroPrimitiveConsumer/Variant434917aec8ddb2c61b42fb66898853aa38c778802748df1db729adfdc5bb115e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSharperCesaroPrimitiveConsumer/Variant434917aec8ddb2c61b42fb66898853aa38c778802748df1db729adfdc5bb115e.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10e551a94dbdfbd70378bb68af6b18f8411bfa8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
