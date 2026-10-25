# hen16_positiveCharacteristicRoute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ae599b6c992cf9e7a692228d9048889b13e90b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 9,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/03ec5c65e3e0b48acdee4bbbae34f578f446f27df20a2568c44185cc2ec4d700.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:639375b7-a872-4e0a-6bea-9bf58ebc7390",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59f9c86d-db21-8243-201f-83873a8f0aa7",
  "kind": "theorem",
  "lexical_name": "hen16_positiveCharacteristicRoute",
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
  "slug": "hen16-positivecharacteristicroute--8714a16f8a230b386d4f1d38",
  "source": {
    "blob": "2ae599b6c992cf9e7a692228d9048889b13e90b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 15,
    "line": 9,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN16PositiveCharacteristicRoute/Variant03ec5c65e3e0b48acdee4bbbae34f578f446f27df20a2568c44185cc2ec4d700.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8714a16f8a230b386d4f1d38a706682cc8239b96fe53843e8f5050f6ace649a5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN16PositiveCharacteristicRoute/Variant03ec5c65e3e0b48acdee4bbbae34f578f446f27df20a2568c44185cc2ec4d700.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59f9c86d-db21-8243-201f-83873a8f0aa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–15.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hen16_positiveCharacteristicRoute
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    HEN16Claim S :=
  registry.hen16

end FCRS.Algebraization.Theorems
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN16PositiveCharacteristicRoute/Variant03ec5c65e3e0b48acdee4bbbae34f578f446f27df20a2568c44185cc2ec4d700.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN16PositiveCharacteristicRoute/Variant03ec5c65e3e0b48acdee4bbbae34f578f446f27df20a2568c44185cc2ec4d700.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ae599b6c992cf9e7a692228d9048889b13e90b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
