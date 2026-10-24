# cauchySeq_finset_iff_vanishing_norm

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
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f99084ba-cf8b-c5ce-823e-7be62ec580f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8b0d53c-efbe-31d2-2f28-22f7623f79ac",
  "kind": "theorem",
  "lexical_name": "cauchySeq_finset_iff_vanishing_norm",
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
  "slug": "cauchyseq-finset-iff-vanishing-norm--c09cf80c8fee07fb3ae2084a",
  "source": {
    "blob": "06586954d70b1db14a5eb827b659a5f67c792a22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 40,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c09cf80c8fee07fb3ae2084a84d7763b24e159bea380c7376477a9bcaa4a685b",
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

Occurrence: `result:f8b0d53c-efbe-31d2-2f28-22f7623f79ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchySeq_finset_iff_vanishing_norm {f : ι → E} :
    (CauchySeq fun s : Finset ι => ∑ i in s, f i) ↔
      ∀ ε > (0 : ℝ), ∃ s : Finset ι, ∀ t, Disjoint t s → ‖∑ i in t, f i‖ < ε := by
  rw [cauchySeq_finset_iff_vanishing, nhds_basis_ball.forall_iff]
  · simp only [ball_zero_eq, Set.mem_setOf_eq]
  · rintro s t hst ⟨s', hs'⟩
    exact ⟨s', fun t' ht' => hst <| hs' _ ht'⟩
#align cauchy_seq_finset_iff_vanishing_norm cauchySeq_finset_iff_vanishing_norm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06586954d70b1db14a5eb827b659a5f67c792a22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
