# not_isG2_iff_isNotG2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b94f8da98fba941335109439534b52b3a154c78c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4cb5c929-c634-1a8b-3dbc-c542d0ab1fb8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec676079-f09d-722b-ac62-2f42e26418f9",
  "kind": "lemma",
  "lexical_name": "not_isG2_iff_isNotG2",
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
  "slug": "not-isg2-iff-isnotg2--0001ca782efeafdfea8a294e",
  "source": {
    "blob": "b94f8da98fba941335109439534b52b3a154c78c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 86,
    "path": "GRWTSK/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0001ca782efeafdfea8a294ed2008efe2d6f347bd24770544040c949d25a9c48",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec676079-f09d-722b-ac62-2f42e26418f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_isG2_iff_isNotG2 :
    ¬ P.IsG2 ↔ P.IsNotG2 := by
  simp only [isG2_iff, isNotG2_iff, not_exists, Set.mem_insert_iff, mem_singleton_iff]
  refine ⟨fun h i j ↦ ?_, fun h i j ↦ ?_⟩
  · have hij := h (P.reflection_perm i i) j
    have := P.pairingIn_pairingIn_mem_set_of_isCrystal_of_isRed i j
    aesop
  · specialize h i j
    aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b94f8da98fba941335109439534b52b3a154c78c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
