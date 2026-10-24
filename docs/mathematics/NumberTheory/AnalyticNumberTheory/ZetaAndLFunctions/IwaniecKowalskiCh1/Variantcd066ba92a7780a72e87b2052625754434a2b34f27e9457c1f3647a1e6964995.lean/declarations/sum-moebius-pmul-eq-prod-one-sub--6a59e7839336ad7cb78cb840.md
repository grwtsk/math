# sum_moebius_pmul_eq_prod_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b365865c3c2c3a2b16519910930a7370ed08f5fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16ab97af-44ff-4ffc-69f0-5a481c86b481",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:254f9330-5915-762c-fd63-1e30550c498c",
  "kind": "theorem",
  "lexical_name": "sum_moebius_pmul_eq_prod_one_sub",
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
  "slug": "sum-moebius-pmul-eq-prod-one-sub--6a59e7839336ad7cb78cb840",
  "source": {
    "blob": "b365865c3c2c3a2b16519910930a7370ed08f5fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 111,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantcd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a59e7839336ad7cb78cb840283ce35aa1e2da2f0d658b8289c5c9d4c64cf0cf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantcd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:254f9330-5915-762c-fd63-1e30550c498c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_moebius_pmul_eq_prod_one_sub {R : Type*} [CommRing R]
    {g : ArithmeticFunction R} (hg : g.IsMultiplicative) (n : ℕ) : n ≠ 0 →
    ∑ d ∈ n.divisors, (moebius d : R) * g d = ∏ p ∈ n.primeFactors, (1 - g p) := by
  induction n using Nat.recOnPosPrimePosCoprime with
  | zero => intro h; exact absurd rfl h
  | one => exact fun _ ↦ by simp [hg.map_one]
  | prime_pow p k hp hk =>
    refine fun _ ↦ ?_
    rw [Nat.primeFactors_prime_pow hk.ne' hp, Finset.prod_singleton, sum_divisors_prime_pow hp,
      Finset.sum_range_succ']
    simp only [pow_zero, moebius_apply_one, Int.cast_one, hg.map_one, mul_one]
    rw [Finset.sum_eq_single_of_mem 0 (Finset.mem_range.mpr hk)]
    · simp only [zero_add, pow_one, moebius_apply_prime hp, Int.reduceNeg, Int.cast_neg,
        Int.cast_one, neg_mul, one_mul]; ring
    · intro i _ hi
      have hnsq : ¬Squarefree (p ^ (i + 1)) := by
        rw [Nat.squarefree_pow_iff hp.ne_one (by omega : i + 1 ≠ 0)]
        omega
      rw [moebius_eq_zero_of_not_squarefree hnsq]
      simp
  | coprime a b ha hb hab iha ihb =>
    intro hn
    rw [hab.primeFactors_mul, Finset.prod_union hab.disjoint_primeFactors,
        ← iha (by omega), ← ihb (by omega)]
    let h : ArithmeticFunction R := ⟨fun n ↦ ↑(moebius n) * g n, by simp⟩
    have h_mul : h.IsMultiplicative := by
      refine ⟨?_, ?_⟩
      · simp [h, ArithmeticFunction.coe_mk, hg.left]
      · intro m n hmn
        simp only [h, ArithmeticFunction.coe_mk]
        rw [ArithmeticFunction.isMultiplicative_moebius.right hmn, hg.right hmn]
        push_cast
        ring
    exact sum_divisors_mul_of_coprime h_mul hab (by omega) (by omega)

/-- The Dirichlet convolution of $\zeta$ with itself is $\tau$ (the divisor count function). -/
@[blueprint
  "zeta_mul_zeta"
  (title := "zeta mul zeta")
  (statement := /-- The Dirichlet convolution of $\zeta$ with itself is $\tau$ (the divisor count function). -/)
  (proof := /--
  By definition of $\zeta$, we have $\zeta(n) = 1$ for all $n \geq 1$. Thus, the Dirichlet convolution
  $(\zeta * \zeta)(n)$ counts the number of ways to write $n$ as a product of two positive integers,
  which is exactly the number of divisors of $n$, i.e., $\tau(n)$.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantcd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantcd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b365865c3c2c3a2b16519910930a7370ed08f5fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
