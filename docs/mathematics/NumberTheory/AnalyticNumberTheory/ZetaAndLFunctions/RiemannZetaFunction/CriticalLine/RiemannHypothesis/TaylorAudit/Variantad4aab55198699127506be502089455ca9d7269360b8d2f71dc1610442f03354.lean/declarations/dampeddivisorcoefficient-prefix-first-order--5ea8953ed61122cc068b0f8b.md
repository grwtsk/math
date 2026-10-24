# dampedDivisorCoefficient_prefix_first_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bbf75b28d590293dd5ac6927e1bb711a61b977a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad4aab55198699127506be502089455ca9d7269360b8d2f71dc1610442f03354.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c6361c2-0b31-2114-8c26-2ecb7eeb3fc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:327a37f6-bd17-3172-400c-36701b5c9d31",
  "kind": "theorem",
  "lexical_name": "dampedDivisorCoefficient_prefix_first_order",
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
  "slug": "dampeddivisorcoefficient-prefix-first-order--5ea8953ed61122cc068b0f8b",
  "source": {
    "blob": "bbf75b28d590293dd5ac6927e1bb711a61b977a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TaylorAudit/Variantad4aab55198699127506be502089455ca9d7269360b8d2f71dc1610442f03354.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ea8953ed61122cc068b0f8b5c75bd6cf83ae5641cdd5c6040d65db00f9a558b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TaylorAudit/Variantad4aab55198699127506be502089455ca9d7269360b8d2f71dc1610442f03354.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:327a37f6-bd17-3172-400c-36701b5c9d31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedDivisorCoefficient_prefix_first_order (ε : ℝ) (hε : 0 ≤ ε)
    (N : ℕ) (hN : 1 ≤ N) :
    |(∑ n ∈ Icc 1 N, dampedDivisorCoefficient ε n) - 1 -
      ε * ∑ n ∈ Icc 1 N, ArithmeticFunction.vonMangoldt n| ≤
        ε ^ 2 * (N : ℝ) * Real.log (N : ℝ) ^ 2 := by
  have he : (∑ n ∈ Icc 1 N, dampedDivisorCoefficient ε n) - 1 -
      ε * ∑ n ∈ Icc 1 N, ArithmeticFunction.vonMangoldt n =
      ∑ n ∈ Icc 1 N, (dampedDivisorCoefficient ε n - (if n = 1 then 1 else 0) -
        ε * ArithmeticFunction.vonMangoldt n) := by
    simp [sum_sub_distrib, ← mul_sum, hN]
  rw [he]
  calc
    _ ≤ ∑ n ∈ Icc 1 N, |dampedDivisorCoefficient ε n - (if n = 1 then 1 else 0) -
        ε * ArithmeticFunction.vonMangoldt n| := abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ Icc 1 N, ε ^ 2 * Real.log (n : ℝ) ^ 2 := by
      apply sum_le_sum
      intro n hn
      exact dampedDivisorCoefficient_first_order ε hε n (mem_Icc.mp hn).1
    _ ≤ ∑ _n ∈ Icc 1 N, ε ^ 2 * Real.log (N : ℝ) ^ 2 := by
      apply sum_le_sum
      intro n hn
      have h0 : 0 ≤ Real.log (n : ℝ) :=
        Real.log_nonneg (by exact_mod_cast (mem_Icc.mp hn).1)
      have hl : Real.log (n : ℝ) ≤ Real.log (N : ℝ) := Real.log_le_log
        (by exact_mod_cast (show 0 < n by have := (mem_Icc.mp hn).1; omega))
        (by exact_mod_cast (mem_Icc.mp hn).2)
      exact mul_le_mul_of_nonneg_left (by nlinarith) (sq_nonneg ε)
    _ = _ := by simp; ring

/-- The actual real cutoff retains all prime powers in the uniform finite-prefix remainder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TaylorAudit/Variantad4aab55198699127506be502089455ca9d7269360b8d2f71dc1610442f03354.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TaylorAudit/Variantad4aab55198699127506be502089455ca9d7269360b8d2f71dc1610442f03354.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbf75b28d590293dd5ac6927e1bb711a61b977a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
