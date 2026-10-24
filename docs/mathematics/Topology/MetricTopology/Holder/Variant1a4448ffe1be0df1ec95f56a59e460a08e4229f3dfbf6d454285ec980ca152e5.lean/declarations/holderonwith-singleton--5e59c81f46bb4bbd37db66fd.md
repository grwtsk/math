# holderOnWith_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6dd43c9b7f42d1b33b0fa0f36d15e57ffa2a888d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:60b5afd3-9dd1-6f71-b252-ebd378a316da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:080c7fd3-7726-a529-d685-f6ff14344ee5",
  "kind": "theorem",
  "lexical_name": "holderOnWith_singleton",
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
  "slug": "holderonwith-singleton--5e59c81f46bb4bbd37db66fd",
  "source": {
    "blob": "6dd43c9b7f42d1b33b0fa0f36d15e57ffa2a888d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 66,
    "path": "GRWTSK/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e59c81f46bb4bbd37db66fdf5bfad362b80838419290b68a4365ee6a76a8058",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:080c7fd3-7726-a529-d685-f6ff14344ee5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem holderOnWith_singleton (C r : ℝ≥0) (f : X → Y) (x : X) : HolderOnWith C r f {x} := by
  rintro a (rfl : a = x) b (rfl : b = a)
  rw [edist_self]
  exact zero_le _
#align holder_on_with_singleton holderOnWith_singleton

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dd43c9b7f42d1b33b0fa0f36d15e57ffa2a888d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
