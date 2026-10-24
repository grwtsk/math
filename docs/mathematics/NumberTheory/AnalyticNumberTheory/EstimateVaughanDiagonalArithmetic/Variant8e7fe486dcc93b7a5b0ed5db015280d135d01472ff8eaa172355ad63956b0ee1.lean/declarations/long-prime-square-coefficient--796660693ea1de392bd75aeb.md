# long_prime_square_coefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a9545a441762427a0a4edc9ddd4e8cea379bba6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e7fe486dcc93b7a5b0ed5db015280d135d01472ff8eaa172355ad63956b0ee1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:920718b1-6cad-03fb-6446-bebed3f05c95",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36d3e046-3435-7698-68e6-a4293ab6776b",
  "kind": "theorem",
  "lexical_name": "long_prime_square_coefficient",
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
  "slug": "long-prime-square-coefficient--796660693ea1de392bd75aeb",
  "source": {
    "blob": "6a9545a441762427a0a4edc9ddd4e8cea379bba6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateVaughanDiagonalArithmetic/Variant8e7fe486dcc93b7a5b0ed5db015280d135d01472ff8eaa172355ad63956b0ee1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:796660693ea1de392bd75aeb7ab194a7c4720768006f6a4a6529d4ac489918ef",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/EstimateVaughanDiagonalArithmetic/Variant8e7fe486dcc93b7a5b0ed5db015280d135d01472ff8eaa172355ad63956b0ee1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36d3e046-3435-7698-68e6-a4293ab6776b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem long_prime_square_coefficient (U p : ℕ) (hU : 1 ≤ U)
    (hp : p.Prime) (hUp : U < p) :
    (longPart U (moebius : ArithmeticFunction ℝ) * longPart U vonMangoldt *
      (zeta : ArithmeticFunction ℝ)) (p ^ 2) = -Real.log (p : ℝ) := by
  rw [mul_comm (longPart U (moebius : ArithmeticFunction ℝ)), mul_assoc,
    ArithmeticFunction.mul_apply]
  rw [Nat.sum_divisorsAntidiagonal (fun m n ↦
    longPart U vonMangoldt m *
      (longPart U (moebius : ArithmeticFunction ℝ) * (zeta : ArithmeticFunction ℝ)) n)]
  simp_rw [← beta_eq_long_convolution]
  rw [Nat.sum_divisors_prime_pow hp]
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, zero_add, pow_zero, pow_one,
    Nat.div_one]
  have hb := beta_prime_pow U p 1 hU hp (by omega)
  simp only [pow_one, if_pos hUp] at hb
  simp [longPart_apply, not_lt.mpr hU, hUp, hb, beta_one U hU,
    vonMangoldt_apply_prime hp,
    pow_two, hp.ne_zero]

/-- The short terms have twice the diagonal's magnitude at this product,
leaving a prime-power atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/EstimateVaughanDiagonalArithmetic/Variant8e7fe486dcc93b7a5b0ed5db015280d135d01472ff8eaa172355ad63956b0ee1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateVaughanDiagonalArithmetic/Variant8e7fe486dcc93b7a5b0ed5db015280d135d01472ff8eaa172355ad63956b0ee1.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a9545a441762427a0a4edc9ddd4e8cea379bba6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
