# blockDirections_orderedBlock

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2eebafdc35a3412ac92085562a16589a71769e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0ee9e3d-54d5-21b7-2eb1-4a2fccc5e0c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9b715e1-3ae2-df87-7ea2-f1f38a30d520",
  "kind": "theorem",
  "lexical_name": "blockDirections_orderedBlock",
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
  "slug": "blockdirections-orderedblock--394adb96ad5d80c97276183f",
  "source": {
    "blob": "a2eebafdc35a3412ac92085562a16589a71769e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 221,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:394adb96ad5d80c97276183f102b191827927c64b4f8aaa8e6b6d651e94cd73e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9b715e1-3ae2-df87-7ea2-f1f38a30d520`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockDirections_orderedBlock
    {n : ℕ}
    {E : Type u}
    (c : OrderedFinpartition n)
    (directions : Fin n → E)
    (m : Fin c.length) :
    blockDirections directions (orderedBlock c m) =
      fun j : Fin (orderedBlock c m).card =>
        directions
          (c.emb m (Fin.cast (orderedBlock_card c m) j)) := by
  funext j
  unfold blockDirections blockOrderIso
  change
    directions
        ((orderedBlock c m).orderEmbOfFin rfl j) =
      directions
        (c.emb m (Fin.cast (orderedBlock_card c m) j))
  rw [← congrFun (orderedBlock_orderEmbOfFin c m) j]

/-- A product over the blocks of the transported plain partition can be
reindexed by the original ordered block index. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2eebafdc35a3412ac92085562a16589a71769e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
