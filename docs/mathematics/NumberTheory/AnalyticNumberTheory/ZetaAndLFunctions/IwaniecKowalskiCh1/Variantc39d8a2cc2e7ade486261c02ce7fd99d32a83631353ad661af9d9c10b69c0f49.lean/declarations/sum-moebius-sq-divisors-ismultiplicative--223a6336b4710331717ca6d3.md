# sum_moebius_sq_divisors_IsMultiplicative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf9bfc459f0e3cd584d2ef9726e580780198b141",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1310,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c39d8a2cc2e7ade486261c02ce7fd99d32a83631353ad661af9d9c10b69c0f49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68073855-1500-9b9b-ba7f-2618b59512a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23f5be2f-a771-59e1-79b5-553ca5383fd3",
  "kind": "lemma",
  "lexical_name": "sum_moebius_sq_divisors_IsMultiplicative",
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
  "slug": "sum-moebius-sq-divisors-ismultiplicative--223a6336b4710331717ca6d3",
  "source": {
    "blob": "cf9bfc459f0e3cd584d2ef9726e580780198b141",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1341,
    "line": 1310,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantc39d8a2cc2e7ade486261c02ce7fd99d32a83631353ad661af9d9c10b69c0f49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:223a6336b4710331717ca6d37d664baed1e4fdf69fa2daf30659e373fcf39108",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantc39d8a2cc2e7ade486261c02ce7fd99d32a83631353ad661af9d9c10b69c0f49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23f5be2f-a771-59e1-79b5-553ca5383fd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1310–1341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_moebius_sq_divisors_IsMultiplicative : sum_moebius_sq_divisors.IsMultiplicative := by
  unfold sum_moebius_sq_divisors
  refine ⟨by simp only [sum_filter, coe_mk, divisors_one, dvd_one, pow_eq_one_iff,
    OfNat.ofNat_ne_zero, or_false, sum_ite_eq', mem_singleton, ↓reduceIte, isUnit_iff_eq_one,
    IsUnit.squarefree, moebius_apply_of_squarefree, Int.reduceNeg, cardFactors_one, pow_zero], ?_⟩
  intro m n mCn
  simp only [coe_mk, pow_divisors_mul mCn, Finset.sum_product,
    Finset.sum_image (fun x hx y hy => pow_divisors_mul_injective (k := 2) mCn
      (Finset.coe_product _ _ ▸ Finset.mem_coe.mpr hx)
      (Finset.coe_product _ _ ▸ Finset.mem_coe.mpr hy))]
  trans (∑ i ∈ m.divisors.filter (fun x => x ^ 2 ∣ m), ∑ j ∈ n.divisors.filter (fun x => x ^ 2 ∣ n), μ i * μ j)
  · apply Finset.sum_congr rfl
    intro _ hi
    apply Finset.sum_congr rfl
    intro _ hj
    exact isMultiplicative_moebius.map_mul_of_coprime
      (mCn.coprime_dvd_left (Nat.dvd_of_mem_divisors (Finset.filter_subset _ _ hi))
        |>.coprime_dvd_right (Nat.dvd_of_mem_divisors (Finset.filter_subset _ _ hj)))
  · rw [← Finset.sum_mul_sum]

@[blueprint
  "sum_moebius_sq_divisors_apply_prime_pow"
  (title := "sum-moebius-sq-divisors-apply-prime-pow")
  (statement := /-- Applied at prime powers, sum-moebius-sq-divisors coincides with $\mu^2$. -/)
  (proof := /--
    For a prime power $p^k$, note that if $k\leq 1$ then the only square divisor is $1$, so the sum
    evaluates as $\mu(1)=1$. If $k\geq 2$, then $1$ and $p^2$ are square divisors of $p^k$. Thus,
    the sum evaluates as $\mu(1)+\mu(p)+\ldots$ where the remaining terms are moebius of higher
    powers (if necessary). Since $\mu(p)=-1$ and $\mu$ of higher powers of $p$ is zero, this is
    $0$. This agrees with $\mu(p^k)^2$, which is simply an indicator function for $k\leq 1$ (i.e.
    $p^k$ is squarefree).
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantc39d8a2cc2e7ade486261c02ce7fd99d32a83631353ad661af9d9c10b69c0f49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantc39d8a2cc2e7ade486261c02ce7fd99d32a83631353ad661af9d9c10b69c0f49.lean#L1310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf9bfc459f0e3cd584d2ef9726e580780198b141` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
