# canonicalLowerPathsChunk0026_mapAgreement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160785,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75c2dc3f-4e59-6043-f0fa-0f7e96232782",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00a01039-0e4c-d82c-230c-00f86a66d3f5",
  "kind": "theorem",
  "lexical_name": "canonicalLowerPathsChunk0026_mapAgreement",
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
  "slug": "canonicallowerpathschunk0026-mapagreement--d927b4330a3761f5ce1412a0",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160788,
    "line": 160785,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d927b4330a3761f5ce1412a02e72f16e89ef2488996a01fe5b70990702bd50be",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00a01039-0e4c-d82c-230c-00f86a66d3f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160785–160788.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem canonicalLowerPathsChunk0026_mapAgreement :
    canonicalLowerPathsChunk0026 = canonicalPathsChunk0026.map String.toLower := by
  simp only [canonicalLowerPathsChunk0026, canonicalPathsChunk0026, List.map_cons, List.map_nil, canonicalLowerPathsChunk0026_entry00_mapAgreement, canonicalLowerPathsChunk0026_entry01_mapAgreement, canonicalLowerPathsChunk0026_entry02_mapAgreement, canonicalLowerPathsChunk0026_entry03_mapAgreement, canonicalLowerPathsChunk0026_entry04_mapAgreement, canonicalLowerPathsChunk0026_entry05_mapAgreement, canonicalLowerPathsChunk0026_entry06_mapAgreement, canonicalLowerPathsChunk0026_entry07_mapAgreement, canonicalLowerPathsChunk0026_entry08_mapAgreement, canonicalLowerPathsChunk0026_entry09_mapAgreement, canonicalLowerPathsChunk0026_entry10_mapAgreement, canonicalLowerPathsChunk0026_entry11_mapAgreement, canonicalLowerPathsChunk0026_entry12_mapAgreement, canonicalLowerPathsChunk0026_entry13_mapAgreement, canonicalLowerPathsChunk0026_entry14_mapAgreement, canonicalLowerPathsChunk0026_entry15_mapAgreement, canonicalLowerPathsChunk0026_entry16_mapAgreement, canonicalLowerPathsChunk0026_entry17_mapAgreement, canonicalLowerPathsChunk0026_entry18_mapAgreement, canonicalLowerPathsChunk0026_entry19_mapAgreement, canonicalLowerPathsChunk0026_entry20_mapAgreement, canonicalLowerPathsChunk0026_entry21_mapAgreement, canonicalLowerPathsChunk0026_entry22_mapAgreement, canonicalLowerPathsChunk0026_entry23_mapAgreement, canonicalLowerPathsChunk0026_entry24_mapAgreement, canonicalLowerPathsChunk0026_entry25_mapAgreement, canonicalLowerPathsChunk0026_entry26_mapAgreement, canonicalLowerPathsChunk0026_entry27_mapAgreement, canonicalLowerPathsChunk0026_entry28_mapAgreement, canonicalLowerPathsChunk0026_entry29_mapAgreement, canonicalLowerPathsChunk0026_entry30_mapAgreement, canonicalLowerPathsChunk0026_entry31_mapAgreement, canonicalLowerPathsChunk0026_entry32_mapAgreement, canonicalLowerPathsChunk0026_entry33_mapAgreement, canonicalLowerPathsChunk0026_entry34_mapAgreement, canonicalLowerPathsChunk0026_entry35_mapAgreement, canonicalLowerPathsChunk0026_entry36_mapAgreement, canonicalLowerPathsChunk0026_entry37_mapAgreement, canonicalLowerPathsChunk0026_entry38_mapAgreement, canonicalLowerPathsChunk0026_entry39_mapAgreement, canonicalLowerPathsChunk0026_entry40_mapAgreement, canonicalLowerPathsChunk0026_entry41_mapAgreement, canonicalLowerPathsChunk0026_entry42_mapAgreement, canonicalLowerPathsChunk0026_entry43_mapAgreement, canonicalLowerPathsChunk0026_entry44_mapAgreement, canonicalLowerPathsChunk0026_entry45_mapAgreement, canonicalLowerPathsChunk0026_entry46_mapAgreement, canonicalLowerPathsChunk0026_entry47_mapAgreement, canonicalLowerPathsChunk0026_entry48_mapAgreement, canonicalLowerPathsChunk0026_entry49_mapAgreement, canonicalLowerPathsChunk0026_entry50_mapAgreement, canonicalLowerPathsChunk0026_entry51_mapAgreement, canonicalLowerPathsChunk0026_entry52_mapAgreement, canonicalLowerPathsChunk0026_entry53_mapAgreement, canonicalLowerPathsChunk0026_entry54_mapAgreement, canonicalLowerPathsChunk0026_entry55_mapAgreement, canonicalLowerPathsChunk0026_entry56_mapAgreement, canonicalLowerPathsChunk0026_entry57_mapAgreement, canonicalLowerPathsChunk0026_entry58_mapAgreement, canonicalLowerPathsChunk0026_entry59_mapAgreement, canonicalLowerPathsChunk0026_entry60_mapAgreement, canonicalLowerPathsChunk0026_entry61_mapAgreement, canonicalLowerPathsChunk0026_entry62_mapAgreement, canonicalLowerPathsChunk0026_entry63_mapAgreement]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L160785).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
