# all_merges_checked

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19123fab-ddca-59da-f68e-95f9002b401f",
  "kind": "theorem",
  "lexical_name": "all_merges_checked",
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
  "slug": "all-merges-checked--f7d64b1744ee2cf669220f9b",
  "source": {
    "blob": "62eebb5de7b871e4cf4574b54dabd6112b2b9a05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 30,
    "path": "GRWTSK/InformationTheory/Huffman/CheckedBuild.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7d64b1744ee2cf669220f9b6ceb137f87ad321606e820221f3ca54f2cad0707",
  "verification": {
    "reference": "docs/verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedBuild.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19123fab-ddca-59da-f68e-95f9002b401f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_merges_checked {fuel order queue result}
    (run : HeapBuild fuel order queue result) (bounded : queueMass queue ≤ maxU64) :
    CheckedHeapBuild fuel order queue result := by
  induction run with
  | empty fuel order => exact .empty fuel order
  | singleton fuel order entry => exact .singleton fuel order entry
  | exhausted order left right tail => exact .exhausted order left right tail
  | @step fuel order queue left afterLeft right tail pushed result hl hr hp rest ih =>
    have add := Bounds.merge_checked_of_mass left.weight right.weight
      (queueMass queue) (popped_pair_le_mass hl hr) bounded
    have next : queueMass pushed ≤ maxU64 := by
      rw [heap_step_mass hl hr hp]
      exact bounded
    exact .step hl hr hp add (ih next)

/-- The source-facing constructor bridge: the supplied premise is a standard
heap API trace, never a codec law or assumed merge-overflow result. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedBuild.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/InformationTheory/Huffman/CheckedBuild.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62eebb5de7b871e4cf4574b54dabd6112b2b9a05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
