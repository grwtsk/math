# self_le_maxKey!_insertIfNew

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
      "line": 3660,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/813b0e9499f8c022889ac46aa7064d2629f8b7dff8111a85a64fddb982aeac4d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71fe046d-a85e-ff9f-161e-ce8ee31e0162",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4a8cda2-a79d-2af7-ff45-c4c76eef938f",
  "kind": "theorem",
  "lexical_name": "self_le_maxKey!_insertIfNew",
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
  "slug": "self-le-maxkey-insertifnew--d4bb08c9369c82ecca83356b",
  "source": {
    "blob": "aa659542f7e1fe2128f4501016f064a5307af0d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3664,
    "line": 3660,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant813b0e9499f8c022889ac46aa7064d2629f8b7dff8111a85a64fddb982aeac4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4bb08c9369c82ecca83356bc31aced83d35ea77566f6e26de4880afbdb31be2",
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

Occurrence: `result:c4a8cda2-a79d-2af7-ff45-c4c76eef938f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3660–3664.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem self_le_maxKey!_insertIfNew [TransCmp cmp] [Inhabited α] {k v} :
    cmp k (t.insertIfNew k v).maxKey! |>.isLE :=
  ExtDTreeMap.self_le_maxKey!_insertIfNew

@[grind =_]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant813b0e9499f8c022889ac46aa7064d2629f8b7dff8111a85a64fddb982aeac4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant813b0e9499f8c022889ac46aa7064d2629f8b7dff8111a85a64fddb982aeac4d.lean#L3660).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa659542f7e1fe2128f4501016f064a5307af0d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
