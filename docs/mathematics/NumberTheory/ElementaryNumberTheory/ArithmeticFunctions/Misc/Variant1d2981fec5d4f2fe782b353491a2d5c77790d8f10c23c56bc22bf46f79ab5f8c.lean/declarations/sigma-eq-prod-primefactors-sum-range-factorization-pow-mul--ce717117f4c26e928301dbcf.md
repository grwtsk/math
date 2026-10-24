# sigma_eq_prod_primeFactors_sum_range_factorization_pow_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33be66e1-22f9-d338-4d87-11a642a2e1d3",
  "kind": "theorem",
  "lexical_name": "sigma_eq_prod_primeFactors_sum_range_factorization_pow_mul",
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
  "slug": "sigma-eq-prod-primefactors-sum-range-factorization-pow-mul--ce717117f4c26e928301dbcf",
  "source": {
    "blob": "c0d23d008b5d336f0cdd42ad3a60acefe06066b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 214,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Misc/Variant1d2981fec5d4f2fe782b353491a2d5c77790d8f10c23c56bc22bf46f79ab5f8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce717117f4c26e928301dbcf73a16d8eed6fcf90c24ad4332f046413ef55d9ce",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Misc/Variant1d2981fec5d4f2fe782b353491a2d5c77790d8f10c23c56bc22bf46f79ab5f8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33be66e1-22f9-d338-4d87-11a642a2e1d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sigma_eq_prod_primeFactors_sum_range_factorization_pow_mul {k n : ℕ} (hn : n ≠ 0) :
    σ k n = ∏ p ∈ n.primeFactors, ∑ i ∈ .range (n.factorization p + 1), p ^ (i * k) := by
  rw [isMultiplicative_sigma.multiplicative_factorization _ hn]
  exact prod_congr n.support_factorization fun _ h ↦
    sigma_apply_prime_pow <| prime_of_mem_primeFactors h

/-- A crude upper bound: `σ_k(n) ≤ n ^ (k + 1)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Misc/Variant1d2981fec5d4f2fe782b353491a2d5c77790d8f10c23c56bc22bf46f79ab5f8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Misc/Variant1d2981fec5d4f2fe782b353491a2d5c77790d8f10c23c56bc22bf46f79ab5f8c.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0d23d008b5d336f0cdd42ad3a60acefe06066b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
