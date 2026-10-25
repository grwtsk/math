# hostile_fiber_average

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06a953c143a8c3a1e36d4bce52c36b3b6e51cc6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce9b9a72699ffa03719ac20430b1f3ee1bc4a9fbf05020080cc1675a3f56c8b3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:60993ac1-dba3-f9d4-dec6-39403d69acd5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6e1e1d4-06d7-7693-2593-40c2ca774c1d",
  "kind": "theorem",
  "lexical_name": "hostile_fiber_average",
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
  "slug": "hostile-fiber-average--85215ec5d14c8b96a641058c",
  "source": {
    "blob": "06a953c143a8c3a1e36d4bce52c36b3b6e51cc6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 191,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ce9b9a72699ffa03719ac20430b1f3ee1bc4a9fbf05020080cc1675a3f56c8b3FiniteCharacterG/Variantce9b9a72699ffa03719ac20430b1f3ee1bc4a9fbf05020080cc1675a3f56c8b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85215ec5d14c8b96a641058c9e5fd437fdd2b40e5cbcd4c55708163fd173ad03",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ce9b9a72699ffa03719ac20430b1f3ee1bc4a9fbf05020080cc1675a3f56c8b3FiniteCharacterG/Variantce9b9a72699ffa03719ac20430b1f3ee1bc4a9fbf05020080cc1675a3f56c8b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6e1e1d4-06d7-7693-2593-40c2ca774c1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hostile_fiber_average : (𝔼 χ : AddChar (ZMod 2) ℂ, hostileFibers χ) = 1 / 2 := by
  rw [Fintype.expect_eq_sum_div_card, hostile_fiber_sum, AddChar.card_eq, ZMod.card]
  norm_num

/-- The trivial fiber retains its negative sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ce9b9a72699ffa03719ac20430b1f3ee1bc4a9fbf05020080cc1675a3f56c8b3FiniteCharacterG/Variantce9b9a72699ffa03719ac20430b1f3ee1bc4a9fbf05020080cc1675a3f56c8b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ce9b9a72699ffa03719ac20430b1f3ee1bc4a9fbf05020080cc1675a3f56c8b3FiniteCharacterG/Variantce9b9a72699ffa03719ac20430b1f3ee1bc4a9fbf05020080cc1675a3f56c8b3.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06a953c143a8c3a1e36d4bce52c36b3b6e51cc6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
