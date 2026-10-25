# swapInvolution_comp_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44b2f1c167f9fd7a504be38ac8de036a9c4bb6d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:744e8ed4-4cb9-9884-be54-31f0fe50b8ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af5be55f-bafc-abd6-493c-909c75c601da",
  "kind": "theorem",
  "lexical_name": "swapInvolution_comp_self",
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
  "slug": "swapinvolution-comp-self--754c3b713d2eeee6e75cb62a",
  "source": {
    "blob": "44b2f1c167f9fd7a504be38ac8de036a9c4bb6d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:754c3b713d2eeee6e75cb62aa8b4e970d719d04f282b02b85e6d8731d0074ef4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af5be55f-bafc-abd6-493c-909c75c601da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem swapInvolution_comp_self :
    (swapInvolution : (V × V) →ₗ[ℝ] (V × V)).comp swapInvolution =
      LinearMap.id := by
  ext z <;> simp [swapInvolution]

/-- Projection to the +1 eigenspace of the swap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44b2f1c167f9fd7a504be38ac8de036a9c4bb6d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
