# Sized.balance'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e0b7d02f26aecf4da3b9803cbe86682331cca63b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 432,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5672cdabf07354bda78eb786f8392f20a4585c7e0a46e6f63f544d8450d124c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e416fb7-9f15-20f8-fbc8-8efc46e04bbf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a38353d-7f48-beb2-9bf9-ff4b70d3129f",
  "kind": "theorem",
  "lexical_name": "Sized.balance'",
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
  "slug": "sized-balance--19e84903f19780bbfb7fc7e5",
  "source": {
    "blob": "e0b7d02f26aecf4da3b9803cbe86682331cca63b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 432,
    "path": "GRWTSK/Topology/MetricTopology/Ordset/Varianta5672cdabf07354bda78eb786f8392f20a4585c7e0a46e6f63f544d8450d124c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19e84903f19780bbfb7fc7e50ffb883c32f0a35482ef7866b928b72297efc75f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Ordset/Varianta5672cdabf07354bda78eb786f8392f20a4585c7e0a46e6f63f544d8450d124c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a38353d-7f48-beb2-9bf9-ff4b70d3129f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sized.balance' {l x r} (hl : @Sized α l) (hr : Sized r) : Sized (balance' l x r) := by
  unfold balance'; split_ifs
  · exact hl.node' hr
  · exact hl.rotateL hr
  · exact hl.rotateR hr
  · exact hl.node' hr
#align ordnode.sized.balance' Ordnode.Sized.balance'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Ordset/Varianta5672cdabf07354bda78eb786f8392f20a4585c7e0a46e6f63f544d8450d124c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Ordset/Varianta5672cdabf07354bda78eb786f8392f20a4585c7e0a46e6f63f544d8450d124c.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0b7d02f26aecf4da3b9803cbe86682331cca63b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
