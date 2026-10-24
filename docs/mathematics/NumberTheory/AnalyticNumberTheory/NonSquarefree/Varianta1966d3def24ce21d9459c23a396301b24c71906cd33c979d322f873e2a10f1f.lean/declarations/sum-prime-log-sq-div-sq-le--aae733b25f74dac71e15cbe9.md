# sum_prime_log_sq_div_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26985d64-40bd-7df5-733b-dca4eb23f6df",
  "kind": "lemma",
  "lexical_name": "sum_prime_log_sq_div_sq_le",
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
  "slug": "sum-prime-log-sq-div-sq-le--aae733b25f74dac71e15cbe9",
  "source": {
    "blob": "3f4bca101844d3aaa2a246e1f56cee795701bb2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 242,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aae733b25f74dac71e15cbe99a6abf1d239e022fe654a8df9f1adca2e0fa2566",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26985d64-40bd-7df5-733b-dca4eb23f6df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_prime_log_sq_div_sq_le (X : ℕ) :
    ∑ p ∈ (Ioc 0 X).filter Nat.Prime, Real.log p ^ 2 / (p:ℝ) ^ 2 ≤ Cdef := by
  have hinj : Set.InjOn (fun p : ℕ => p ^ 2) ((Ioc 0 X).filter Nat.Prime : Set ℕ) :=
    fun a _ b _ h => by simpa using (Nat.pow_left_injective two_ne_zero) h
  calc ∑ p ∈ (Ioc 0 X).filter Nat.Prime, Real.log p ^ 2 / (p:ℝ) ^ 2
      = ∑ n ∈ ((Ioc 0 X).filter Nat.Prime).image (fun p => p ^ 2), Λ n * (Real.log n - Λ n) / n := by
        rw [sum_image hinj]
        refine sum_congr rfl fun p hp => ?_
        have hpp : p.Prime := (mem_filter.mp hp).2
        rw [ArithmeticFunction.vonMangoldt_apply_pow two_ne_zero,
          ArithmeticFunction.vonMangoldt_apply_prime hpp]
        push_cast
        rw [Real.log_pow]; ring
    _ ≤ ∑ n ∈ Ioc 0 (X ^ 2), Λ n * (Real.log n - Λ n) / n := by
        refine sum_le_sum_of_subset_of_nonneg ?_ fun n _ _ => defect_term_nonneg n
        intro n hn
        obtain ⟨p, hp, rfl⟩ := mem_image.mp hn
        have hp' := mem_Ioc.mp (mem_filter.mp hp).1
        exact mem_Ioc.mpr ⟨pow_pos hp'.1 2, Nat.pow_le_pow_left hp'.2 2⟩
    _ ≤ Cdef := by simpa using defect_le ((X ^ 2 : ℕ) : ℝ)

/-- Σ_{d ≤ X, p ∣ d} Λ(d)/d ≤ 2 log p / p  for p prime (d ranges over the powers of p). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f4bca101844d3aaa2a246e1f56cee795701bb2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
