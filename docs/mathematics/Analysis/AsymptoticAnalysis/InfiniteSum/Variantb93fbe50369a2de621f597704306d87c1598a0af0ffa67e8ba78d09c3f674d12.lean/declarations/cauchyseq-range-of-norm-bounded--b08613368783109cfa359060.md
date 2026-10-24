# cauchySeq_range_of_norm_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06586954d70b1db14a5eb827b659a5f67c792a22",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:420180dd-50e5-b92b-e1f8-10aa4b83c012",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24a63c5b-110a-7261-93ab-d2f20a54d9e8",
  "kind": "theorem",
  "lexical_name": "cauchySeq_range_of_norm_bounded",
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
  "slug": "cauchyseq-range-of-norm-bounded--b08613368783109cfa359060",
  "source": {
    "blob": "06586954d70b1db14a5eb827b659a5f67c792a22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 77,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b08613368783109cfa3590604d1bfcbb1de8c63a1f7b8b4d06c60c3c3f1e7ea8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24a63c5b-110a-7261-93ab-d2f20a54d9e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchySeq_range_of_norm_bounded {f : ℕ → E} (g : ℕ → ℝ)
    (hg : CauchySeq fun n => ∑ i in range n, g i) (hf : ∀ i, ‖f i‖ ≤ g i) :
    CauchySeq fun n => ∑ i in range n, f i := by
  refine' Metric.cauchySeq_iff'.2 fun ε hε => _
  refine' (Metric.cauchySeq_iff'.1 hg ε hε).imp fun N hg n hn => _
  specialize hg n hn
  rw [dist_eq_norm, ← sum_Ico_eq_sub _ hn] at hg ⊢
  calc
    ‖∑ k in Ico N n, f k‖ ≤ ∑ k in _, ‖f k‖ := norm_sum_le _ _
    _ ≤ ∑ k in _, g k := (sum_le_sum fun x _ => hf x)
    _ ≤ ‖∑ k in _, g k‖ := (le_abs_self _)
    _ < ε := hg
#align cauchy_seq_range_of_norm_bounded cauchySeq_range_of_norm_bounded

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06586954d70b1db14a5eb827b659a5f67c792a22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
