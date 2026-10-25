# no_evenNaturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af3199ec0bca4a76180af9f6e1a68bb549c89936",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89edc6adfe3773dd74c3bb9d2d26a22d5a287d1a4e2c71f711ea4c9ea1e5314e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bda821c6-1a39-4bbe-6acd-d4ac522ee17c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0062a44-ea89-950c-e55b-f78be8eadfcd",
  "kind": "theorem",
  "lexical_name": "no_evenNaturality",
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
  "slug": "no-evennaturality--55b3fcdb1afed0a88d709754",
  "source": {
    "blob": "af3199ec0bca4a76180af9f6e1a68bb549c89936",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropertyTransportModels/Variant89edc6adfe3773dd74c3bb9d2d26a22d5a287d1a4e2c71f711ea4c9ea1e5314e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55b3fcdb1afed0a88d7097542fc082eab9aa223588b3ded43115c98d363c3474",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropertyTransportModels/Variant89edc6adfe3773dd74c3bb9d2d26a22d5a287d1a4e2c71f711ea4c9ea1e5314e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0062a44-ea89-950c-e55b-f78be8eadfcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_evenNaturality :
    ¬ PropertyNaturality additivePathAction evenProperty := by
  intro naturality
  have zeroEven : evenProperty.Holds () 0 := by
    change 0 % 2 = 0
    norm_num
  have transported :
      (additivePathAction.map additiveOnePath 0) % 2 = 0 :=
    naturality.natural
      (source := ())
      (target := ())
      additiveOnePath
      0
      zeroEven
  change (0 + 1) % 2 = 0 at transported
  norm_num at transported

/-- One admitted property-specific certificate for the path of length one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropertyTransportModels/Variant89edc6adfe3773dd74c3bb9d2d26a22d5a287d1a4e2c71f711ea4c9ea1e5314e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropertyTransportModels/Variant89edc6adfe3773dd74c3bb9d2d26a22d5a287d1a4e2c71f711ea4c9ea1e5314e.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af3199ec0bca4a76180af9f6e1a68bb549c89936` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
