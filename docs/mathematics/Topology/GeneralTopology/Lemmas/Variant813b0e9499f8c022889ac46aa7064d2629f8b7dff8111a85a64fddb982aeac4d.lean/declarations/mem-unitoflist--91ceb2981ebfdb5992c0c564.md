# mem_unitOfList

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
      "line": 1450,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/813b0e9499f8c022889ac46aa7064d2629f8b7dff8111a85a64fddb982aeac4d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dddf79f7-d4ce-f1b4-c534-1a81916d03bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:20ba9381-4220-fef3-bd6f-4af615505bbc",
  "kind": "theorem",
  "lexical_name": "mem_unitOfList",
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
  "slug": "mem-unitoflist--91ceb2981ebfdb5992c0c564",
  "source": {
    "blob": "aa659542f7e1fe2128f4501016f064a5307af0d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1453,
    "line": 1450,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant813b0e9499f8c022889ac46aa7064d2629f8b7dff8111a85a64fddb982aeac4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91ceb2981ebfdb5992c0c564dfbf5071f3f3e10cbb3c3be6509d12a05065f1a0",
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

Occurrence: `result:20ba9381-4220-fef3-bd6f-4af615505bbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1450–1453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_unitOfList [TransCmp cmp] [BEq α] [LawfulBEqCmp cmp] {l : List α} {k : α} :
    k ∈ unitOfList l cmp ↔ l.contains k := by
  simp [mem_iff_contains]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant813b0e9499f8c022889ac46aa7064d2629f8b7dff8111a85a64fddb982aeac4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant813b0e9499f8c022889ac46aa7064d2629f8b7dff8111a85a64fddb982aeac4d.lean#L1450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa659542f7e1fe2128f4501016f064a5307af0d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
