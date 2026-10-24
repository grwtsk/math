# totient_mul_prod_primeFactors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c94bb7a8-aec2-3949-9fff-29f120939920",
  "kind": "theorem",
  "lexical_name": "totient_mul_prod_primeFactors",
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
  "slug": "totient-mul-prod-primefactors--2aedfa2c1f2c5bd0fdf755ab",
  "source": {
    "blob": "1adf8f725fd231a0df73efdb6bf812ee0865c6d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 306,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant05e84b831a915b5e4569cc5576419c7754e38f89ab74dd7f5bf641b006977eab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2aedfa2c1f2c5bd0fdf755abeaebc5b39d60d259177b434237fb2f233a23765b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant05e84b831a915b5e4569cc5576419c7754e38f89ab74dd7f5bf641b006977eab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c94bb7a8-aec2-3949-9fff-29f120939920`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem totient_mul_prod_primeFactors (n : ℕ) :
    (φ n * ∏ p ∈ n.primeFactors, p) = n * ∏ p ∈ n.primeFactors, (p - 1) := by
  by_cases hn : n = 0; · simp [hn]
  rw [totient_eq_prod_factorization hn]
  nth_rw 3 [← prod_factorization_pow_eq_self hn]
  simp only [prod_primeFactors_prod_factorization, ← Finsupp.prod_mul]
  refine Finsupp.prod_congr (M := ℕ) (N := ℕ) fun p hp => ?_
  rw [Finsupp.mem_support_iff, ← zero_lt_iff] at hp
  rw [mul_comm, ← mul_assoc, ← pow_succ', Nat.sub_one, Nat.succ_pred_eq_of_pos hp]

/-- Euler's product formula for the totient function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant05e84b831a915b5e4569cc5576419c7754e38f89ab74dd7f5bf641b006977eab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant05e84b831a915b5e4569cc5576419c7754e38f89ab74dd7f5bf641b006977eab.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1adf8f725fd231a0df73efdb6bf812ee0865c6d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
