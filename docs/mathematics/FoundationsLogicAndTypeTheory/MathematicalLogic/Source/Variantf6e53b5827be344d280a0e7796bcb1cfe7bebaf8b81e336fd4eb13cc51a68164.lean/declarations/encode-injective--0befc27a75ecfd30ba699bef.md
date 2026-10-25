# encode_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "553ab5df0ace9944033341d97ad7ed539c5bc8e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6e53b5827be344d280a0e7796bcb1cfe7bebaf8b81e336fd4eb13cc51a68164.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2e2e94f-debf-fe2a-3d9c-51a96e8ac050",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf09c18c-5c34-4e2c-0fe0-567ec896873e",
  "kind": "theorem",
  "lexical_name": "encode_injective",
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
  "slug": "encode-injective--0befc27a75ecfd30ba699bef",
  "source": {
    "blob": "553ab5df0ace9944033341d97ad7ed539c5bc8e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variantf6e53b5827be344d280a0e7796bcb1cfe7bebaf8b81e336fd4eb13cc51a68164.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0befc27a75ecfd30ba699beff3b3b333a3c25eeec70ee795a1ab88fb93b43712",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variantf6e53b5827be344d280a0e7796bcb1cfe7bebaf8b81e336fd4eb13cc51a68164.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf09c18c-5c34-4e2c-0fe0-567ec896873e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem encode_injective
    {Address : Type}
    (codec : SourceCodec Address) :
    Function.Injective codec.encode := by
  intro left right equal
  have decoded := congrArg codec.decode equal
  rw [codec.decode_encode, codec.decode_encode] at decoded
  exact Option.some.inj decoded

/-- States accepted as exact encodings by this source codec. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variantf6e53b5827be344d280a0e7796bcb1cfe7bebaf8b81e336fd4eb13cc51a68164.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variantf6e53b5827be344d280a0e7796bcb1cfe7bebaf8b81e336fd4eb13cc51a68164.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `553ab5df0ace9944033341d97ad7ed539c5bc8e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
