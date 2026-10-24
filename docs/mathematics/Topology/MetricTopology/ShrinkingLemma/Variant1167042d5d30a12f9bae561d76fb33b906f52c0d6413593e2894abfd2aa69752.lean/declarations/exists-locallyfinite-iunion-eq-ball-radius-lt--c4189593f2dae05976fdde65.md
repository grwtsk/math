# exists_locallyFinite_iUnion_eq_ball_radius_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7b081e3fb55d3dc0d0930daaa872e2fb717f56a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/1167042d5d30a12f9bae561d76fb33b906f52c0d6413593e2894abfd2aa69752.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb51df0f-2bf1-c13f-a0ef-027cf8b50317",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:83ccf224-dc77-1776-e6f4-7a01a941bd0b",
  "kind": "theorem",
  "lexical_name": "exists_locallyFinite_iUnion_eq_ball_radius_lt",
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
  "slug": "exists-locallyfinite-iunion-eq-ball-radius-lt--c4189593f2dae05976fdde65",
  "source": {
    "blob": "b7b081e3fb55d3dc0d0930daaa872e2fb717f56a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 112,
    "path": "GRWTSK/Topology/MetricTopology/ShrinkingLemma/Variant1167042d5d30a12f9bae561d76fb33b906f52c0d6413593e2894abfd2aa69752.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4189593f2dae05976fdde65247d9a8a2912d0ae5b4c5996eeb2cd7048aa81bf",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ShrinkingLemma/Variant1167042d5d30a12f9bae561d76fb33b906f52c0d6413593e2894abfd2aa69752.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83ccf224-dc77-1776-e6f4-7a01a941bd0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_locallyFinite_iUnion_eq_ball_radius_lt {R : α → ℝ} (hR : ∀ x, 0 < R x) :
    ∃ (ι : Type u) (c : ι → α) (r r' : ι → ℝ),
      (∀ i, 0 < r i ∧ r i < r' i ∧ r' i < R (c i)) ∧
        (LocallyFinite fun i => ball (c i) (r' i)) ∧ ⋃ i, ball (c i) (r i) = univ :=
  let ⟨ι, c, r, r', hlt, hfin, hsub⟩ :=
    exists_locallyFinite_subset_iUnion_ball_radius_lt isClosed_univ fun x _ => hR x
  ⟨ι, c, r, r', fun i => (hlt i).2, hfin, univ_subset_iff.1 hsub⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ShrinkingLemma/Variant1167042d5d30a12f9bae561d76fb33b906f52c0d6413593e2894abfd2aa69752.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ShrinkingLemma/Variant1167042d5d30a12f9bae561d76fb33b906f52c0d6413593e2894abfd2aa69752.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7b081e3fb55d3dc0d0930daaa872e2fb717f56a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
