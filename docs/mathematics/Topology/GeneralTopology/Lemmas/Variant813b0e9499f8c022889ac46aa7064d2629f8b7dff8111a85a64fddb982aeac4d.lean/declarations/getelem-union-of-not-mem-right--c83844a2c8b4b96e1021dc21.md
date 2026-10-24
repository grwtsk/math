# getElem!_union_of_not_mem_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa659542f7e1fe2128f4501016f064a5307af0d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1663,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/813b0e9499f8c022889ac46aa7064d2629f8b7dff8111a85a64fddb982aeac4d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7af19297-2b53-9144-6ff1-62a9e35fd754",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:043f4a6a-450d-5fb1-bdcc-3ef20f0753c5",
  "kind": "theorem",
  "lexical_name": "getElem!_union_of_not_mem_right",
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
  "slug": "getelem-union-of-not-mem-right--c83844a2c8b4b96e1021dc21",
  "source": {
    "blob": "aa659542f7e1fe2128f4501016f064a5307af0d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1668,
    "line": 1663,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant813b0e9499f8c022889ac46aa7064d2629f8b7dff8111a85a64fddb982aeac4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c83844a2c8b4b96e1021dc216c810bd6f70a1fec857ead3d298fd9a68f86095e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant813b0e9499f8c022889ac46aa7064d2629f8b7dff8111a85a64fddb982aeac4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:043f4a6a-450d-5fb1-bdcc-3ef20f0753c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1663–1668.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem!_union_of_not_mem_right [TransCmp cmp] {k : α} [Inhabited β] (not_mem : ¬k ∈ t₂)  :
    (t₁ ∪ t₂)[k]! = t₁[k]! :=
  ExtDTreeMap.Const.get!_union_of_not_mem_right not_mem

/- get! -/
@[deprecated getElem!_union (since := "2025-12-10")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant813b0e9499f8c022889ac46aa7064d2629f8b7dff8111a85a64fddb982aeac4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant813b0e9499f8c022889ac46aa7064d2629f8b7dff8111a85a64fddb982aeac4d.lean#L1663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa659542f7e1fe2128f4501016f064a5307af0d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
