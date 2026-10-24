# IsNowhereDense.biUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "feae671419368d0d284d9ed57c536b6b54afba33",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:224f4fc4-150f-4387-7dad-1c6f0914411c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:266cfb29-2d58-a9e2-7f5f-6efab0583936",
  "kind": "lemma",
  "lexical_name": "IsNowhereDense.biUnion",
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
  "slug": "isnowheredense-biunion--220f9ffe9ea6b84568573eea",
  "source": {
    "blob": "feae671419368d0d284d9ed57c536b6b54afba33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 221,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:220f9ffe9ea6b84568573eea40c1ec723a74d0777d65c4fd91a0f69ae4c162d9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:266cfb29-2d58-a9e2-7f5f-6efab0583936`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma IsNowhereDense.biUnion {u : Finset ι} {f : ι → Set X}
    (hf : ∀ i ∈ u, IsNowhereDense (f i)) : IsNowhereDense (⋃ i ∈ u, f i) := by
  induction u using Finset.cons_induction with
  | empty => simp
  | cons a u ha ih =>
      rw [← Finset.set_biUnion_coe, Finset.coe_cons, Set.biUnion_insert, Finset.set_biUnion_coe]
      exact (hf a (Finset.mem_cons_self a u)).union
        (ih fun i hi => hf i (Finset.mem_cons_of_mem hi))

/-- A finite union of nowhere dense sets is nowhere dense. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feae671419368d0d284d9ed57c536b6b54afba33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
