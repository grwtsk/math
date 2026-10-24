# getElem_filterMap'

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
      "line": 3945,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/813b0e9499f8c022889ac46aa7064d2629f8b7dff8111a85a64fddb982aeac4d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19eb63bf-2189-7855-d188-44d255212248",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b53f740-0fa0-3772-87a7-25ec0f8d63fc",
  "kind": "theorem",
  "lexical_name": "getElem_filterMap'",
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
  "slug": "getelem-filtermap--c2e3917ca548fa350f5e8d9d",
  "source": {
    "blob": "aa659542f7e1fe2128f4501016f064a5307af0d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3950,
    "line": 3945,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant813b0e9499f8c022889ac46aa7064d2629f8b7dff8111a85a64fddb982aeac4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2e3917ca548fa350f5e8d9defbfff82ede8f8ecb2b04c6b02b9461d276ec822",
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

Occurrence: `result:1b53f740-0fa0-3772-87a7-25ec0f8d63fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3945–3950.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem_filterMap' [TransCmp cmp] [LawfulEqCmp cmp]
    {f : α → β → Option γ} {k : α} {h} :
    (t.filterMap f)[k]'h =
      (f k (t[k]'(mem_of_mem_filterMap h))).get (by simpa using isSome_apply_of_mem_filterMap h) := by
  simp [getElem_filterMap]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant813b0e9499f8c022889ac46aa7064d2629f8b7dff8111a85a64fddb982aeac4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant813b0e9499f8c022889ac46aa7064d2629f8b7dff8111a85a64fddb982aeac4d.lean#L3945).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa659542f7e1fe2128f4501016f064a5307af0d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
