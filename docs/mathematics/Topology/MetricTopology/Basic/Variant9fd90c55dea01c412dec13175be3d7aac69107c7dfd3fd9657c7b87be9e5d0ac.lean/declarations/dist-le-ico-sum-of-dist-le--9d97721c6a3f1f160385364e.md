# dist_le_Ico_sum_of_dist_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5cb725b1cf3d27266a6c5b51392ffe0cfcd6a7ea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59921516-7239-5318-a08e-e719e117a860",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2400cbe3-599f-73ff-9cd7-75b0febbeee9",
  "kind": "theorem",
  "lexical_name": "dist_le_Ico_sum_of_dist_le",
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
  "slug": "dist-le-ico-sum-of-dist-le--9d97721c6a3f1f160385364e",
  "source": {
    "blob": "5cb725b1cf3d27266a6c5b51392ffe0cfcd6a7ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 46,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d97721c6a3f1f160385364e956da53f34352113de2fd3b0e5c05b6852f6701d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2400cbe3-599f-73ff-9cd7-75b0febbeee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_le_Ico_sum_of_dist_le {f : ℕ → α} {m n} (hmn : m ≤ n) {d : ℕ → ℝ}
    (hd : ∀ {k}, m ≤ k → k < n → dist (f k) (f (k + 1)) ≤ d k) :
    dist (f m) (f n) ≤ ∑ i ∈ Finset.Ico m n, d i :=
  le_trans (dist_le_Ico_sum_dist f hmn) <|
    Finset.sum_le_sum fun _k hk => hd (Finset.mem_Ico.1 hk).1 (Finset.mem_Ico.1 hk).2

/-- A version of `dist_le_range_sum_dist` with each intermediate distance replaced
with an upper estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cb725b1cf3d27266a6c5b51392ffe0cfcd6a7ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
