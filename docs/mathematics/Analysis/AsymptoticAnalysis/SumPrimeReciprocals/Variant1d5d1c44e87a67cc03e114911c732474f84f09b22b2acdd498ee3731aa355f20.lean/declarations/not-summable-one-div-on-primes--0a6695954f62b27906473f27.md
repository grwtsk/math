# not_summable_one_div_on_primes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9772c89445487fd37a8c18f60de7f5279b980581",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1d5d1c44e87a67cc03e114911c732474f84f09b22b2acdd498ee3731aa355f20.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7eedafc-10ed-8c7e-ca60-a161e3607cd2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f5fd9fd-6573-7706-b964-e76eb042e587",
  "kind": "theorem",
  "lexical_name": "not_summable_one_div_on_primes",
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
  "slug": "not-summable-one-div-on-primes--0a6695954f62b27906473f27",
  "source": {
    "blob": "9772c89445487fd37a8c18f60de7f5279b980581",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 65,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant1d5d1c44e87a67cc03e114911c732474f84f09b22b2acdd498ee3731aa355f20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a6695954f62b27906473f27758675c5cd43068b76d8e0c3702d32b26795255f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant1d5d1c44e87a67cc03e114911c732474f84f09b22b2acdd498ee3731aa355f20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f5fd9fd-6573-7706-b964-e76eb042e587`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_summable_one_div_on_primes :
    ¬ Summable (indicator {p | p.Prime} (fun n : ℕ ↦ (1 : ℝ) / n)) := by
  intro h
  obtain ⟨k, hk⟩ := h.nat_tsum_vanishing (Iio_mem_nhds one_half_pos : Iio (1 / 2 : ℝ) ∈ 𝓝 0)
  specialize hk ({p | Nat.Prime p} ∩ {p | k ≤ p}) inter_subset_right
  rw [tsum_subtype, indicator_indicator, inter_eq_left.mpr fun n hn ↦ hn.1, mem_Iio] at hk
  have h' : Summable (indicator ({p | Nat.Prime p} ∩ {p | k ≤ p}) fun n ↦ (1 : ℝ) / n) := by
    convert h.indicator {n : ℕ | k ≤ n} using 1
    simp only [indicator_indicator, inter_comm]
  refine ((one_half_le_sum_primes_ge_one_div k).trans_lt <| LE.le.trans_lt ?_ hk).false
  convert Summable.sum_le_tsum (primesBelow ((4 ^ (k.primesBelow.card + 1)).succ) \ primesBelow k)
    (fun n _ ↦ indicator_nonneg (fun p _ ↦ by positivity) _) h' using 2 with p hp
  obtain ⟨hp₁, hp₂⟩ := mem_setOf_eq ▸ Finset.mem_sdiff.mp hp
  have hpp := prime_of_mem_primesBelow hp₁
  refine (indicator_of_mem (mem_def.mpr ⟨hpp, ?_⟩) fun n : ℕ ↦ (1 / n : ℝ)).symm
  exact not_lt.mp <| (not_and_or.mp <| (not_congr mem_primesBelow).mp hp₂).neg_resolve_right hpp

/-- The sum over the reciprocals of the primes diverges. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant1d5d1c44e87a67cc03e114911c732474f84f09b22b2acdd498ee3731aa355f20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant1d5d1c44e87a67cc03e114911c732474f84f09b22b2acdd498ee3731aa355f20.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9772c89445487fd37a8c18f60de7f5279b980581` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
