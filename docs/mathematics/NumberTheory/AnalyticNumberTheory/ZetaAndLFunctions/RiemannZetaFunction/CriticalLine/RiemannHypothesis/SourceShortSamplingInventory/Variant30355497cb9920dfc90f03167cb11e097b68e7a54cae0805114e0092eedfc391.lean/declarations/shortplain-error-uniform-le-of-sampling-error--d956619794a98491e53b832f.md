# shortPlain_error_uniform_le_of_sampling_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23e659d4-523d-55a1-1356-42423ec920db",
  "kind": "theorem",
  "lexical_name": "shortPlain_error_uniform_le_of_sampling_error",
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
  "slug": "shortplain-error-uniform-le-of-sampling-error--d956619794a98491e53b832f",
  "source": {
    "blob": "7108f47e8d25352dfc0d4de1ffe7a12ec5bbec62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 167,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceShortSamplingInventory/Variant30355497cb9920dfc90f03167cb11e097b68e7a54cae0805114e0092eedfc391.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d956619794a98491e53b832f804e8d3fa767dda17f9ccb0b4029e0499cc3e079",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceShortSamplingInventory/Variant30355497cb9920dfc90f03167cb11e097b68e7a54cae0805114e0092eedfc391.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23e659d4-523d-55a1-1356-42423ec920db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shortPlain_error_uniform_le_of_sampling_error {A E : ℝ} (hA : 1 ≤ A)
    (hE : 0 ≤ E) (J₀ : ℝ → ℝ)
    (herr : ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      ∀ m ∈ Finset.Icc 1 (vaughanCutoff A),
        |sourcePlainKernel A ((d * m : ℕ) : ℝ) - J₀ ((d * m : ℕ) : ℝ)| ≤
          E / (A ^ 2 * Real.sqrt ((d * m : ℕ) : ℝ))) :
    |shortPlainSource A - shortPlainMainTerm A J₀| ≤
      4 * (Real.log 4 + 4) * E := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hcoef : 0 ≤ Real.log 4 + 4 := by positivity
  unfold shortPlainSource shortPlainMainTerm
  rw [← Finset.sum_sub_distrib]
  simp_rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
      ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
        |realMoebius d * ArithmeticFunction.vonMangoldt m *
            sourcePlainKernel A ((d * m : ℕ) : ℝ) -
          realMoebius d * ArithmeticFunction.vonMangoldt m * J₀ ((d * m : ℕ) : ℝ)| := by
      apply (Finset.abs_sum_le_sum_abs _ _).trans
      apply Finset.sum_le_sum
      intro d _
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
      ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
        E / A ^ 2 * (1 / Real.sqrt d) *
          (ArithmeticFunction.vonMangoldt m / Real.sqrt m) := by
      apply Finset.sum_le_sum
      intro d hd
      apply Finset.sum_le_sum
      intro m hm
      rw [← mul_sub, abs_mul, abs_mul,
        abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg]
      calc
        _ ≤ (1 * ArithmeticFunction.vonMangoldt m) *
          (E / (A ^ 2 * Real.sqrt ((d * m : ℕ) : ℝ))) := by
          apply mul_le_mul
          · exact mul_le_mul_of_nonneg_right (realMoebius_abs_le_one d)
              ArithmeticFunction.vonMangoldt_nonneg
          · exact herr d hd m hm
          · exact abs_nonneg _
          · exact mul_nonneg (by norm_num) ArithmeticFunction.vonMangoldt_nonneg
        _ = _ := by
          rw [Nat.cast_mul, Real.sqrt_mul (by positivity : (0 : ℝ) ≤ d)]
          ring
    _ = E / A ^ 2 *
        (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), 1 / Real.sqrt d) *
        (∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
          ArithmeticFunction.vonMangoldt m / Real.sqrt m) := by
      simp_rw [← Finset.mul_sum]
      rw [← Finset.sum_mul, ← Finset.mul_sum]
    _ ≤ E / A ^ 2 * (2 * Real.sqrt (vaughanCutoff A)) *
        (2 * (Real.log 4 + 4) * Real.sqrt (vaughanCutoff A)) := by
      gcongr
      · exact sum_reciprocal_sqrt_le _
      · exact sum_vonMangoldt_div_sqrt_le _
    _ ≤ E / A ^ 2 * (2 * A) * (2 * (Real.log 4 + 4) * A) := by
      gcongr <;> exact sqrt_vaughanCutoff_le A hA
    _ = _ := by field_simp [hp.ne']; ring

end FormalResearch.RiemannHypothesis.SourceShortSamplingInventory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceShortSamplingInventory/Variant30355497cb9920dfc90f03167cb11e097b68e7a54cae0805114e0092eedfc391.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceShortSamplingInventory/Variant30355497cb9920dfc90f03167cb11e097b68e7a54cae0805114e0092eedfc391.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7108f47e8d25352dfc0d4de1ffe7a12ec5bbec62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
