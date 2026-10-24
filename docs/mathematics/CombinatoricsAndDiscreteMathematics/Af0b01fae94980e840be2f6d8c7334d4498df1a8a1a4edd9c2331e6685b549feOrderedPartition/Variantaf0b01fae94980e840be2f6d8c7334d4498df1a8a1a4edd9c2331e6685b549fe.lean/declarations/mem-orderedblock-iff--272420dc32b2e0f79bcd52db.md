# mem_orderedBlock_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6fdef2947c76e212092dd1d1a65679063023c5f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ddf9115c-4ed5-b89c-2177-c854d8c83bc4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e52e5fca-ab1e-0ef2-cd9a-20f519ebe1ec",
  "kind": "theorem",
  "lexical_name": "mem_orderedBlock_iff",
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
  "slug": "mem-orderedblock-iff--272420dc32b2e0f79bcd52db",
  "source": {
    "blob": "a6fdef2947c76e212092dd1d1a65679063023c5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 47,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:272420dc32b2e0f79bcd52db668e9421d86983cba82c1b52fec34431956f8dda",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e52e5fca-ab1e-0ef2-cd9a-20f519ebe1ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_orderedBlock_iff
    {n : ℕ}
    (c : OrderedFinpartition n)
    (m : Fin c.length)
    (x : Fin n) :
    x ∈ orderedBlock c m ↔
      ∃ j : Fin (c.partSize m), c.emb m j = x := by
  simp [orderedBlock]

/-- Transporting a block preserves its cardinality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6fdef2947c76e212092dd1d1a65679063023c5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
