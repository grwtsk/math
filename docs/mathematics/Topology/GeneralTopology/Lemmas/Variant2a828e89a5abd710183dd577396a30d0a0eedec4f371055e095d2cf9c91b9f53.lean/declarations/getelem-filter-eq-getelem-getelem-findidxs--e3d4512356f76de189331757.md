# getElem_filter_eq_getElem_getElem_findIdxs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "095f4906a19ccab8440e92f7035a4843cf6ca575",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 583,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a828e89a5abd710183dd577396a30d0a0eedec4f371055e095d2cf9c91b9f53.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a10faf7f-d312-9721-5dda-f03f59398197",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48257abe-2d4a-a34d-c8a3-cf34d8b530b5",
  "kind": "theorem",
  "lexical_name": "getElem_filter_eq_getElem_getElem_findIdxs",
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
  "slug": "getelem-filter-eq-getelem-getelem-findidxs--e3d4512356f76de189331757",
  "source": {
    "blob": "095f4906a19ccab8440e92f7035a4843cf6ca575",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 583,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant2a828e89a5abd710183dd577396a30d0a0eedec4f371055e095d2cf9c91b9f53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3d4512356f76de1893317570e9eccb712447f8d3c5f12917761c7dce2828e9e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant2a828e89a5abd710183dd577396a30d0a0eedec4f371055e095d2cf9c91b9f53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48257abe-2d4a-a34d-c8a3-cf34d8b530b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 583–589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem_filter_eq_getElem_getElem_findIdxs
    (h : i < ((xs : List α).filter p).length) :
    (xs.filter p)[i] = xs[(xs.findIdxs p)[i]'(by grind)]'(by grind) :=
  getElem_filter_eq_getElem_getElem_findIdxs_sub 0 h

grind_pattern getElem_filter_eq_getElem_getElem_findIdxs => (xs.filter p)[i]'h, (xs.findIdxs p)[i]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant2a828e89a5abd710183dd577396a30d0a0eedec4f371055e095d2cf9c91b9f53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant2a828e89a5abd710183dd577396a30d0a0eedec4f371055e095d2cf9c91b9f53.lean#L583).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `095f4906a19ccab8440e92f7035a4843cf6ca575` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
