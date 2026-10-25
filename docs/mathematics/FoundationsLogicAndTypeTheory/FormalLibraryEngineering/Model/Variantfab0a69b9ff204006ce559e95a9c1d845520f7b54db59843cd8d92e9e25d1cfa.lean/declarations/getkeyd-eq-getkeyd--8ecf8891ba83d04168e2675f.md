# getKeyD_eq_getKeyDₘ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "07b9f4c54c110488b8d29b38915e87a5f45d2ea5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 610,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fab0a69b9ff204006ce559e95a9c1d845520f7b54db59843cd8d92e9e25d1cfa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3af9a30-2311-f6e0-ebca-03353606c2e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:430618fa-05c4-e4d0-2068-c69a43d9fcb4",
  "kind": "theorem",
  "lexical_name": "getKeyD_eq_getKeyDₘ",
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
  "slug": "getkeyd-eq-getkeyd--8ecf8891ba83d04168e2675f",
  "source": {
    "blob": "07b9f4c54c110488b8d29b38915e87a5f45d2ea5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 617,
    "line": 610,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variantfab0a69b9ff204006ce559e95a9c1d845520f7b54db59843cd8d92e9e25d1cfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ecf8891ba83d04168e2675f8d40053aa89cd517e4e3be040bd3b610514b60ec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variantfab0a69b9ff204006ce559e95a9c1d845520f7b54db59843cd8d92e9e25d1cfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:430618fa-05c4-e4d0-2068-c69a43d9fcb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 610–617.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getKeyD_eq_getKeyDₘ [Ord α] (k : α) (l : Impl α β)
    (fallback : α) : l.getKeyD k fallback = l.getKeyDₘ k fallback := by
  simp only [getKeyDₘ, getKey?ₘ]
  induction l
  · simp only [applyCell, getKeyD]
    split <;> simp_all [Cell.getKey?, Cell.ofEq]
  · simp only [getKeyD, applyCell, Cell.getKey?_empty, Option.getD_none]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variantfab0a69b9ff204006ce559e95a9c1d845520f7b54db59843cd8d92e9e25d1cfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variantfab0a69b9ff204006ce559e95a9c1d845520f7b54db59843cd8d92e9e25d1cfa.lean#L610).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07b9f4c54c110488b8d29b38915e87a5f45d2ea5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
