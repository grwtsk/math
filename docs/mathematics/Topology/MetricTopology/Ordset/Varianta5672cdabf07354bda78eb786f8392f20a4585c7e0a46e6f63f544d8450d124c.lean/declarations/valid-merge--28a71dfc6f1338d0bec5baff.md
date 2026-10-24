# Valid.merge

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
      "line": 1498,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5672cdabf07354bda78eb786f8392f20a4585c7e0a46e6f63f544d8450d124c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30f2cd34-cbd0-7e08-84dd-774d107cfdef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3225618a-f5d4-51bf-557c-9463103ed26a",
  "kind": "theorem",
  "lexical_name": "Valid.merge",
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
  "slug": "valid-merge--28a71dfc6f1338d0bec5baff",
  "source": {
    "blob": "e0b7d02f26aecf4da3b9803cbe86682331cca63b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1502,
    "line": 1498,
    "path": "GRWTSK/Topology/MetricTopology/Ordset/Varianta5672cdabf07354bda78eb786f8392f20a4585c7e0a46e6f63f544d8450d124c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28a71dfc6f1338d0bec5baff5ebef7659c5ef065673f97025531385a57a46390",
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

Occurrence: `result:3225618a-f5d4-51bf-557c-9463103ed26a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1498–1502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Valid.merge {l r} (hl : Valid l) (hr : Valid r)
    (sep : l.All fun x => r.All fun y => x < y) : Valid (@merge α l r) :=
  (Valid'.merge_aux hl hr sep).1
#align ordnode.valid.merge Ordnode.Valid.merge

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Ordset/Varianta5672cdabf07354bda78eb786f8392f20a4585c7e0a46e6f63f544d8450d124c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Ordset/Varianta5672cdabf07354bda78eb786f8392f20a4585c7e0a46e6f63f544d8450d124c.lean#L1498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0b7d02f26aecf4da3b9803cbe86682331cca63b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
