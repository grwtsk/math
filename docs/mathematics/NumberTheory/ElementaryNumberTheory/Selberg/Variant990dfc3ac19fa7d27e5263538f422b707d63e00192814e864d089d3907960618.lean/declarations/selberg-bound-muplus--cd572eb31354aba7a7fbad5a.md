# selberg_bound_muPlus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d9ebcce06b6944c9d13099895314b98acc3835c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 395,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ebdf052-49d0-005e-1753-18cdbe0a4f20",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a568d1c-6058-5599-df88-e2f132d62af0",
  "kind": "theorem",
  "lexical_name": "selberg_bound_muPlus",
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
  "slug": "selberg-bound-muplus--cd572eb31354aba7a7fbad5a",
  "source": {
    "blob": "d9ebcce06b6944c9d13099895314b98acc3835c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 395,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd572eb31354aba7a7fbad5aca3363192adc41b81fbe2e0bc9aaf75b0c25a18e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a568d1c-6058-5599-df88-e2f132d62af0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selberg_bound_muPlus (n : ℕ) (hn : n ∈ divisors P) :
    |μ⁺ n| ≤ (3:ℝ) ^ ω n := by
  let f : ℕ → ℕ → ℝ := fun x z : ℕ => if n = x.lcm z then 1 else 0
  dsimp only [selbergMuPlus, lambdaSquared]
  calc
    |∑ d1 ∈ n.divisors, ∑ d2 ∈ n.divisors, if n = d1.lcm d2 then γ d1 * γ d2 else 0| ≤
        ∑ d1 ∈ n.divisors, |∑ d2 ∈ n.divisors, if n = d1.lcm d2 then γ d1 * γ d2 else 0| := ?_
    _ ≤ ∑ d1 ∈ n.divisors, ∑ d2 ∈ n.divisors, |if n = d1.lcm d2 then γ d1 * γ d2 else 0| := ?_
    _ ≤ ∑ d1 ∈ n.divisors, ∑ d2 ∈ n.divisors, f d1 d2 := ?_
    _ = (n.divisors ×ˢ n.divisors).sum fun p => f p.fst p.snd := ?_
    _ = Finset.card ((n.divisors ×ˢ n.divisors).filter fun p : ℕ × ℕ => n = p.fst.lcm p.snd) := ?_
    _ = (3:ℕ) ^ ω n := ?_
    _ = (3:ℝ) ^ ω n := ?_
  · apply abs_sum_le_sum_abs
  · gcongr; apply abs_sum_le_sum_abs
  · gcongr with d1 _ d2
    rw [apply_ite abs, abs_zero, abs_mul]
    simp only [f]
    by_cases h : n = d1.lcm d2
    · rw [if_pos h, if_pos h]
      apply mul_le_one₀ (s.selberg_bound_weights d1) (abs_nonneg <| γ d2)
        (s.selberg_bound_weights d2)
    rw [if_neg h, if_neg h]
  · rw [← Finset.sum_product']
  · dsimp only
    rw [← sum_filter, Finset.sum_const, smul_one_eq_cast]
  · norm_cast
    simp [← card_pair_lcm_eq (squarefree_of_mem_divisors_prodPrimes hn), eq_comm]
  norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9ebcce06b6944c9d13099895314b98acc3835c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
