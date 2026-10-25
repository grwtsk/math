# injective_sequenceOfCubes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03113afd3a5aa9db01a9ed0588461d97d06d9e47",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 559,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a54d3bf-9f54-eea8-dcb5-7bbd57a91e91",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dedd761c-10a6-6cae-c518-9aef75a7e17b",
  "kind": "theorem",
  "lexical_name": "injective_sequenceOfCubes",
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
  "slug": "injective-sequenceofcubes--9c315ff23b1a4ea3a6925723",
  "source": {
    "blob": "03113afd3a5aa9db01a9ed0588461d97d06d9e47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 559,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c315ff23b1a4ea3a692572397ae4aa6745c8c16d65987fdb1a42299f4d13c06",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dedd761c-10a6-6cae-c518-9aef75a7e17b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 559–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injective_sequenceOfCubes : Injective (sequenceOfCubes h) :=
  @Injective.of_comp _ _ _ (fun x : { _i : ι // _ } => (cs x.1).w) _
    (strictAnti_sequenceOfCubes h).injective
#align theorems_100.«82».injective_sequence_of_cubes Theorems100.«82».injective_sequenceOfCubes

/-- The infinite sequence of cubes contradicts the finiteness of the family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean#L559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03113afd3a5aa9db01a9ed0588461d97d06d9e47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
