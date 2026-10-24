# empty_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce9ccce091e01e2819ccccbab70935c2518bdca8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 672,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1ce817015ec01b714aaa5f4f6b946f6c5ba402310c6c4f40a593b3402b6ed721.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a01e5325-f657-bee5-bd6f-45d0c0d261c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c534123a-512b-5395-f2f4-652b231de619",
  "kind": "lemma",
  "lexical_name": "empty_pow",
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
  "slug": "empty-pow--e8bd3e6ab0b375473a5b3d8e",
  "source": {
    "blob": "ce9ccce091e01e2819ccccbab70935c2518bdca8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 674,
    "line": 672,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant1ce817015ec01b714aaa5f4f6b946f6c5ba402310c6c4f40a593b3402b6ed721.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8bd3e6ab0b375473a5b3d8e9d66afdfb1d473fb1fe067eab8d4fe7ff317d342",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant1ce817015ec01b714aaa5f4f6b946f6c5ba402310c6c4f40a593b3402b6ed721.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c534123a-512b-5395-f2f4-652b231de619`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 672–674.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma empty_pow (hn : n ≠ 0) : (∅ : Set α) ^ n = ∅ := match n with | n + 1 => by simp [pow_succ]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant1ce817015ec01b714aaa5f4f6b946f6c5ba402310c6c4f40a593b3402b6ed721.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant1ce817015ec01b714aaa5f4f6b946f6c5ba402310c6c4f40a593b3402b6ed721.lean#L672).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce9ccce091e01e2819ccccbab70935c2518bdca8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
