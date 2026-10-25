# computePrioritizedCompletionPartitions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0482d7a1f7447a5393af21031dd99e47d703ac1755db6d2e777bc16183727870",
  "kind": "def",
  "lexical_name": "computePrioritizedCompletionPartitions",
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
  "slug": "computeprioritizedcompletionpartitions--bb93ec8dc3d4f5787aa925a8",
  "source": {
    "blob": "f896dae3f9540085503da85400ee46adf28fba5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionInfoSelection/Variantdaa6bddf7ff4d3e9657c7784c8b6a28f20b2a0bc91ee8e813cb065c6b8614d15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb93ec8dc3d4f5787aa925a8b4ae3a30fa87c3250f4a17f3da9c08a2c476d5c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionInfoSelection/Variantdaa6bddf7ff4d3e9657c7784c8b6a28f20b2a0bc91ee8e813cb065c6b8614d15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0482d7a1f7447a5393af21031dd99e47d703ac1755db6d2e777bc16183727870`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def computePrioritizedCompletionPartitions
    (items : Array (ContextualizedCompletionInfo × Nat))
    : Array (Array (ContextualizedCompletionInfo × Nat)) :=
  let partitions := items.groupByKey fun (i, _) =>
    let isId := i.info matches .id ..
    let size? := Info.ofCompletionInfo i.info |>.size?
    (isId, size?)
  -- Sort partitions so that non-id completions infos come before id completion infos and
  -- within those two groups, smaller sizes come before larger sizes.
  let partitionsByPriority := partitions.toArray.qsort
    fun ((isId₁, size₁?), _) ((isId₂, size₂?), _) =>
      match size₁?, size₂? with
      | some _, none   => true
      | none,   some _ => false
      | _, _ =>
        match isId₁, isId₂ with
        | false, true  => true
        | true,  false => false
        | _,     _     => Id.run do
          let some size₁ := size₁?
            | return false
          let some size₂ := size₂?
            | return false
          return size₁ < size₂
  partitionsByPriority.map (·.2)

/--
Finds all `CompletionInfo`s (both from the `InfoTree` and synthetic ones), prioritizes them,
arranges them in partitions of `CompletionInfo`s with the same priority and sorts these partitions
so that `CompletionInfo`s with the highest priority come first.
The returned `CompletionInfo`s are also tagged with their index in `findCompletionInfosAt` so that
when resolving a `CompletionItem`, we can reconstruct which `CompletionInfo` it was created from.

In general, the `InfoTree` may contain multiple different `CompletionInfo`s covering `hoverPos`,
and so we need to decide which of these `CompletionInfo`s we want to use to show completions to the
user. We choose priorities by the following rules:
- Synthetic completions have the lowest priority since they are only intended as a backup.
- Non-identifier completions have the highest priority since they tend to be much more helpful than
  identifier completions when available since there are typically way too many of the latter.
- Within the three groups [non-id completions, id completions, synthetic completions],
  `CompletionInfo`s with a smaller range are considered to be better.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionInfoSelection/Variantdaa6bddf7ff4d3e9657c7784c8b6a28f20b2a0bc91ee8e813cb065c6b8614d15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionInfoSelection/Variantdaa6bddf7ff4d3e9657c7784c8b6a28f20b2a0bc91ee8e813cb065c6b8614d15.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f896dae3f9540085503da85400ee46adf28fba5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
