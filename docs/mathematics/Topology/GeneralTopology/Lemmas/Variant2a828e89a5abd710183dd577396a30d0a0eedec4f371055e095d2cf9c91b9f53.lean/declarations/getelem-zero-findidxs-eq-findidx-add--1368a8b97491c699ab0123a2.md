# getElem_zero_findIdxs_eq_findIdx_add

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
      "line": 602,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a828e89a5abd710183dd577396a30d0a0eedec4f371055e095d2cf9c91b9f53.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e082e56-492b-789e-f604-406675a51fa2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b93669e1-3554-080b-7b59-4e8db0de5dfc",
  "kind": "theorem",
  "lexical_name": "getElem_zero_findIdxs_eq_findIdx_add",
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
  "slug": "getelem-zero-findidxs-eq-findidx-add--1368a8b97491c699ab0123a2",
  "source": {
    "blob": "095f4906a19ccab8440e92f7035a4843cf6ca575",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 605,
    "line": 602,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant2a828e89a5abd710183dd577396a30d0a0eedec4f371055e095d2cf9c91b9f53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1368a8b97491c699ab0123a2e2a02a7fae6909344cd17ef8f8d4130825815eb1",
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

Occurrence: `result:b93669e1-3554-080b-7b59-4e8db0de5dfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 602–605.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem_zero_findIdxs_eq_findIdx_add (h : 0 < ((xs : List α).findIdxs p s).length) :
    (xs.findIdxs p s)[0] = xs.findIdx p + s := by induction xs generalizing s <;> grind

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant2a828e89a5abd710183dd577396a30d0a0eedec4f371055e095d2cf9c91b9f53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant2a828e89a5abd710183dd577396a30d0a0eedec4f371055e095d2cf9c91b9f53.lean#L602).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `095f4906a19ccab8440e92f7035a4843cf6ca575` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
