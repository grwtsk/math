# laplaceKernel_sum_cleared_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b3797e814591ccde5aeff374feae6e5bd0e454a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68ef9377-500b-fbd4-91e7-ab411d962df3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88755029-9659-0f75-74b3-b76c31638f9f",
  "kind": "lemma",
  "lexical_name": "laplaceKernel_sum_cleared_tendsto",
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
  "slug": "laplacekernel-sum-cleared-tendsto--08b1f33599d0eb7e8a07fd5c",
  "source": {
    "blob": "7b3797e814591ccde5aeff374feae6e5bd0e454a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 139,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08b1f33599d0eb7e8a07fd5cf0413ec9a64a2e78ab00ac7c56d941e9aa27a2ec",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88755029-9659-0f75-74b3-b76c31638f9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma laplaceKernel_sum_cleared_tendsto (c : ℕ → ℂ) (n : ℕ) :
    Tendsto (fun w : ℂ ↦ w ^ (n+1) *
      ∑ k ∈ Finset.range (n+1), c k * laplaceKernel k w)
      (𝓝[≠] 0) (𝓝 (c n * n.factorial)) := by
  have hl : ∀ k ∈ Finset.range n,
      Tendsto (fun w : ℂ ↦ c k * (w ^ (n+1) * laplaceKernel k w))
        (𝓝[≠] 0) (𝓝 0) := by
    intro k hk
    simpa only [mul_zero] using
      (laplaceKernel_lower_cleared_tendsto k n (Finset.mem_range.mp hk)).const_mul (c k)
  have hsum := tendsto_finsetSum (Finset.range n) hl
  simp only [Finset.sum_const_zero] at hsum
  have ht := hsum.add ((laplaceKernel_cleared_tendsto n).const_mul (c n))
  simp only [zero_add] at ht
  convert ht using 1
  funext w
  rw [Finset.sum_range_succ, mul_add, Finset.mul_sum]
  congr 1
  · apply Finset.sum_congr rfl
    intro k _
    ring
  · ring

end
end LaplaceScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b3797e814591ccde5aeff374feae6e5bd0e454a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
