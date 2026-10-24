# laplaceKernel_sum_cleared_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc63b25b-8671-3579-51e2-89cc86b6eeec",
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
  "slug": "laplacekernel-sum-cleared-tendsto--b9b59e30d522bbd57bfb0af8",
  "source": {
    "blob": "b37dc028552ad5c88919f5982be9cde54071fb12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 147,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9b59e30d522bbd57bfb0af80701f88f10a5541419ff6a960edbf98c8ec2eb84",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc63b25b-8671-3579-51e2-89cc86b6eeec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–171.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b37dc028552ad5c88919f5982be9cde54071fb12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
