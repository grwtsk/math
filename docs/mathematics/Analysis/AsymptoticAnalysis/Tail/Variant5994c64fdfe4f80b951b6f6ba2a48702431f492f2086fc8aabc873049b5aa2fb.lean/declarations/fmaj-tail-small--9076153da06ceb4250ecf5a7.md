# Fmaj_tail_small

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "92d81b3c5b3310a472f99bfde088821dc9db1328",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/5994c64fdfe4f80b951b6f6ba2a48702431f492f2086fc8aabc873049b5aa2fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b0b21a9-19ab-952f-9e6a-74c76ae952da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a75d0c31-e05d-467f-d896-00b54f2007f5",
  "kind": "theorem",
  "lexical_name": "Fmaj_tail_small",
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
  "slug": "fmaj-tail-small--9076153da06ceb4250ecf5a7",
  "source": {
    "blob": "92d81b3c5b3310a472f99bfde088821dc9db1328",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 62,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant5994c64fdfe4f80b951b6f6ba2a48702431f492f2086fc8aabc873049b5aa2fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9076153da06ceb4250ecf5a75e18eae08c26d3c795d1891cfeffa236e3eece06",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Tail/Variant5994c64fdfe4f80b951b6f6ba2a48702431f492f2086fc8aabc873049b5aa2fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a75d0c31-e05d-467f-d896-00b54f2007f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Fmaj_tail_small : ∀ ε : ℝ, 0 < ε → ∃ K : ℕ, ∀ (x u : ℝ), 0 ≤ x → 0 ≤ u → x * u ≤ 4 →
    32 * Real.exp 1 * KM * x ≤ 1 → ∀ X : ℕ,
      (∑ i ∈ (Finset.range X).filter (fun i => K ≤ i),
        2 ^ (i + 1) * x ^ (2 * (i + 1)) * u ^ (i + 1) * Sdiv (Λ ^ (i + 1)) u) ≤ ε := by
  intro ε hε
  have ht : Tendsto (fun K => ∑' j, tailMaj (j + K)) atTop (𝓝 0) := tendsto_sum_nat_add tailMaj
  rw [Metric.tendsto_atTop] at ht
  obtain ⟨K, hK⟩ := ht ε hε
  refine ⟨K, fun x u hx hu hxu hxK X => ?_⟩
  have hKK := hK K le_rfl
  rw [Real.dist_eq, sub_zero, abs_of_nonneg (tsum_nonneg fun j => tailMaj_nonneg _)] at hKK
  calc ∑ i ∈ (range X).filter (fun i => K ≤ i),
          2 ^ (i + 1) * x ^ (2 * (i + 1)) * u ^ (i + 1) * Sdiv (Λ ^ (i + 1)) u
      ≤ ∑ i ∈ (range X).filter (fun i => K ≤ i), tailMajFrom K i := by
        refine sum_le_sum fun i hi => ?_
        have hKi : K ≤ i := (mem_filter.mp hi).2
        simp only [tailMajFrom, hKi, if_true, tailMaj]
        exact Fmaj_term_le hx hu hxu hxK i
    _ ≤ ∑' i, tailMajFrom K i :=
        (summable_tailMajFrom K).sum_le_tsum _ fun i _ => tailMajFrom_nonneg K i
    _ = ∑' j, tailMaj (j + K) := tsum_tailMajFrom K
    _ ≤ ε := hKK.le

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Tail/Variant5994c64fdfe4f80b951b6f6ba2a48702431f492f2086fc8aabc873049b5aa2fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant5994c64fdfe4f80b951b6f6ba2a48702431f492f2086fc8aabc873049b5aa2fb.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92d81b3c5b3310a472f99bfde088821dc9db1328` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
