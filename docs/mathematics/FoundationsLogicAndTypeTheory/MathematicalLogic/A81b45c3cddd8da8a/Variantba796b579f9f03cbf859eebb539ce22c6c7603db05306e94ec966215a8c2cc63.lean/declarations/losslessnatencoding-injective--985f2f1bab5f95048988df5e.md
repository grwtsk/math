# losslessNatEncoding_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b614e2f753acd56dc017b81f132b1950b196d7f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 11,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba796b579f9f03cbf859eebb539ce22c6c7603db05306e94ec966215a8c2cc63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98fbc763-4607-47fd-1c43-2af6bf47f351",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:540528e7-8481-8d9b-327f-494b22638c8b",
  "kind": "theorem",
  "lexical_name": "losslessNatEncoding_injective",
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
  "slug": "losslessnatencoding-injective--985f2f1bab5f95048988df5e",
  "source": {
    "blob": "0b614e2f753acd56dc017b81f132b1950b196d7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 11,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/A81b45c3cddd8da8a/Variantba796b579f9f03cbf859eebb539ce22c6c7603db05306e94ec966215a8c2cc63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:985f2f1bab5f95048988df5e55f5f86ad8166652c7628703d9ce07d775b1a049",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/A81b45c3cddd8da8a/Variantba796b579f9f03cbf859eebb539ce22c6c7603db05306e94ec966215a8c2cc63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:540528e7-8481-8d9b-327f-494b22638c8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem losslessNatEncoding_injective
    {Input : Type u}
    (encoding : LosslessNatEncoding Input) :
    Function.Injective encoding.encode := by
  intro left right equality
  have decoded := congrArg encoding.decode equality
  rw [encoding.decode_encode, encoding.decode_encode] at decoded
  exact Option.some.inj decoded

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/A81b45c3cddd8da8a/Variantba796b579f9f03cbf859eebb539ce22c6c7603db05306e94ec966215a8c2cc63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/A81b45c3cddd8da8a/Variantba796b579f9f03cbf859eebb539ce22c6c7603db05306e94ec966215a8c2cc63.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b614e2f753acd56dc017b81f132b1950b196d7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
