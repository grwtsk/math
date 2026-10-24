# support_mk_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "101adbf256a058bd3097a212f3c6fd37d1d7a1ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 821,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0bd8d760143b1cd6940c5cb6d4e797f6c2545ecd4512e8bdf4ce142c318599c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e569e62-d631-6e37-6e38-accd3ec6dc4b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00ce49c4-9d49-f7fb-b319-60241bdcd5da",
  "kind": "theorem",
  "lexical_name": "support_mk_subset",
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
  "slug": "support-mk-subset--e2a41c896ab97a6e326cf061",
  "source": {
    "blob": "101adbf256a058bd3097a212f3c6fd37d1d7a1ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 824,
    "line": 821,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantb0bd8d760143b1cd6940c5cb6d4e797f6c2545ecd4512e8bdf4ce142c318599c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2a41c896ab97a6e326cf0613ba8ef6522a958dfa778f5976d0eaa743a66c57b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantb0bd8d760143b1cd6940c5cb6d4e797f6c2545ecd4512e8bdf4ce142c318599c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00ce49c4-9d49-f7fb-b319-60241bdcd5da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 821–824.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem support_mk_subset {s : Finset ι} {x : ∀ i : (↑s : Set ι), β i.1} : (mk s x).support ⊆ s :=
  fun _ H => Multiset.mem_toFinset.1 (Finset.mem_filter.1 H).1

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantb0bd8d760143b1cd6940c5cb6d4e797f6c2545ecd4512e8bdf4ce142c318599c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantb0bd8d760143b1cd6940c5cb6d4e797f6c2545ecd4512e8bdf4ce142c318599c.lean#L821).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `101adbf256a058bd3097a212f3c6fd37d1d7a1ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
