# mem_traverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90b822ea-7171-5a2a-90d3-e5af9c17a708",
  "kind": "theorem",
  "lexical_name": "mem_traverse",
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
  "slug": "mem-traverse--96c7911acb4bcd990f20f1f8",
  "source": {
    "blob": "43b1fc2113c608e7e38df7ea6a9568ac8edf01aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 35,
    "path": "GRWTSK/Topology/GeneralTopology/ListTraverse/Variant84c89ced399248bd67b1c4a5991abe20d594bca9df05d544ae6845d5d53bb03f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96c7911acb4bcd990f20f1f8714634712a075f43ac4c02b5084da17059f6246f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ListTraverse/Variant84c89ced399248bd67b1c4a5991abe20d594bca9df05d544ae6845d5d53bb03f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90b822ea-7171-5a2a-90d3-e5af9c17a708`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_traverse :
    ∀ (fs : List β) (us : List γ),
      Forall₂ (fun b c => s c ∈ f b) fs us → traverse s us ∈ traverse f fs
  | [], [], Forall₂.nil => mem_pure.2 <| mem_singleton _
  | _::fs, _::us, Forall₂.cons h hs => seq_mem_seq (image_mem_map h) (mem_traverse fs us hs)

-- TODO: add a `Filter.HasBasis` statement
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ListTraverse/Variant84c89ced399248bd67b1c4a5991abe20d594bca9df05d544ae6845d5d53bb03f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ListTraverse/Variant84c89ced399248bd67b1c4a5991abe20d594bca9df05d544ae6845d5d53bb03f.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43b1fc2113c608e7e38df7ea6a9568ac8edf01aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
