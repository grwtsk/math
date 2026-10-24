# exists_isLocalMin_mem_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58243fb8fb707a94222d863dd235774213e02743",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2835,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d3405212ad47a8f492154b64194ba3b1d1b3b90534419ab99d61025211f232b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a3a55d1-246c-e7cc-708d-db2a6fb3bb13",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da4dd7db-af24-47cf-21f3-1ea9a626263f",
  "kind": "theorem",
  "lexical_name": "exists_isLocalMin_mem_ball",
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
  "slug": "exists-islocalmin-mem-ball--5ca10f3671d28559ffc30ffa",
  "source": {
    "blob": "58243fb8fb707a94222d863dd235774213e02743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2851,
    "line": 2835,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0d3405212ad47a8f492154b64194ba3b1d1b3b90534419ab99d61025211f232b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ca10f3671d28559ffc30ffa0a28d039c9aca2e380d844db0958f0aa9327cae7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant0d3405212ad47a8f492154b64194ba3b1d1b3b90534419ab99d61025211f232b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da4dd7db-af24-47cf-21f3-1ea9a626263f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2835–2851.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isLocalMin_mem_ball [ProperSpace α] [TopologicalSpace β]
    [ConditionallyCompleteLinearOrder β] [OrderTopology β] {f : α → β} {a z : α} {r : ℝ}
    (hf : ContinuousOn f (closedBall a r)) (hz : z ∈ closedBall a r)
    (hf1 : ∀ z' ∈ sphere a r, f z < f z') : ∃ z ∈ ball a r, IsLocalMin f z := by
  simp_rw [← closedBall_diff_ball] at hf1
  exact (isCompact_closedBall a r).exists_isLocalMin_mem_open ball_subset_closedBall hf hz hf1
    isOpen_ball
#align metric.exists_local_min_mem_ball Metric.exists_isLocalMin_mem_ball

end Metric

namespace Mathlib.Meta.Positivity

open Lean Meta Qq Function

/-- Extension for the `positivity` tactic: the diameter of a set is always nonnegative. -/
@[positivity Metric.diam _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0d3405212ad47a8f492154b64194ba3b1d1b3b90534419ab99d61025211f232b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0d3405212ad47a8f492154b64194ba3b1d1b3b90534419ab99d61025211f232b.lean#L2835).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58243fb8fb707a94222d863dd235774213e02743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
