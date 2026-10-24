# diagonal_remainder_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b76dfa556e615ff6f6d4249b52cef147b007df6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cdb3ac120515e1eb63c852c0474175331d20065d822c2f0045a941040b6ff781.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:880ecc5c-d17c-9897-712b-6943caf80179",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5dbd367c-c8b0-9517-7add-d2520f3b5e4e",
  "kind": "theorem",
  "lexical_name": "diagonal_remainder_abs_le",
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
  "slug": "diagonal-remainder-abs-le--b1e32f3ef186e40e746157e8",
  "source": {
    "blob": "3b76dfa556e615ff6f6d4249b52cef147b007df6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 36,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DiagonalRemainderBudget/Variantcdb3ac120515e1eb63c852c0474175331d20065d822c2f0045a941040b6ff781.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1e32f3ef186e40e746157e8b3f442cd2b559959466b86bd7c550883507390a8",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DiagonalRemainderBudget/Variantcdb3ac120515e1eb63c852c0474175331d20065d822c2f0045a941040b6ff781.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dbd367c-c8b0-9517-7add-d2520f3b5e4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonal_remainder_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius g : ℝ) ^ 2 *
      ThetaRemainder.thetaRemainder A (g ^ 2)| ≤
      (24 + 28 * Real.sqrt (65 / 3) / A + 8 * (65 / (3 * A ^ 2))) * (1 + A) := by
  let K : ℝ := 24 + 28 * Real.sqrt (65 / 3) / A + 8 * (65 / (3 * A ^ 2))
  have hA0 : 0 < A := by linarith
  have hK : 0 ≤ K := by dsimp [K]; positivity
  have hterm (g : ℕ) (hg : g ∈ Icc 1 ⌊Real.exp A⌋₊) :
      |(ArithmeticFunction.moebius g : ℝ) ^ 2 *
        ThetaRemainder.thetaRemainder A (g ^ 2)| ≤ K / (g : ℝ) := by
    have hg1 := (mem_Icc.mp hg).1
    have hg0 : (0 : ℝ) < g := by exact_mod_cast (show 0 < g by omega)
    have hg2 : 1 ≤ g ^ 2 := by nlinarith
    have hR := ThetaKernelEstimate.thetaRemainder_abs_le A (g ^ 2) hA hg2
    simp only [Nat.cast_pow, Real.sqrt_sq_eq_abs, abs_of_nonneg hg0.le] at hR
    rw [abs_mul, abs_of_nonneg (sq_nonneg _)]
    exact (mul_le_mul_of_nonneg_left hR (sq_nonneg _)).trans
      (mul_le_of_le_one_left (div_nonneg hK hg0.le) (moebius_square_le_one g))
  calc
    _ ≤ ∑ g ∈ Icc 1 ⌊Real.exp A⌋₊,
        |(ArithmeticFunction.moebius g : ℝ) ^ 2 *
          ThetaRemainder.thetaRemainder A (g ^ 2)| := abs_sum_le_sum_abs _ _
    _ ≤ ∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, K / (g : ℝ) := sum_le_sum hterm
    _ = K * ∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, (g : ℝ)⁻¹ := by
      simp only [div_eq_mul_inv, mul_sum]
    _ ≤ K * (1 + A) := mul_le_mul_of_nonneg_left (source_harmonic_sum_le A hA) hK

end
end DiagonalRemainderBudgetScratch

#print axioms DiagonalRemainderBudgetScratch.moebius_square_le_one
#print axioms DiagonalRemainderBudgetScratch.source_harmonic_sum_le
#print axioms DiagonalRemainderBudgetScratch.diagonal_remainder_abs_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DiagonalRemainderBudget/Variantcdb3ac120515e1eb63c852c0474175331d20065d822c2f0045a941040b6ff781.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DiagonalRemainderBudget/Variantcdb3ac120515e1eb63c852c0474175331d20065d822c2f0045a941040b6ff781.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b76dfa556e615ff6f6d4249b52cef147b007df6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
