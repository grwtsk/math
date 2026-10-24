# physicalNeighborhoodKeysChunk0001_derived

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:704e66bd-3245-7582-93bb-ea596a4029d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f56f78b-bbb2-8f76-d881-51a20bce5c11",
  "kind": "theorem",
  "lexical_name": "physicalNeighborhoodKeysChunk0001_derived",
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
  "slug": "physicalneighborhoodkeyschunk0001-derived--7812f610730cc7fe25b34f12",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184348,
    "line": 184279,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7812f610730cc7fe25b34f12a1b95a3c39f0741ecb9589453029f9ab090e6333",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f56f78b-bbb2-8f76-d881-51a20bce5c11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184279–184348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem physicalNeighborhoodKeysChunk0001_derived :
    ∀ key ∈ physicalNeighborhoodKeysChunk0001, key ∈ neighborhoodKeys := by
  intro key h
  simp only [physicalNeighborhoodKeysChunk0001, List.mem_cons, List.not_mem_nil, or_false] at h
  rcases h with (rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl)
  · exact physicalNeighborhoodKey0064_derived
  · exact physicalNeighborhoodKey0065_derived
  · exact physicalNeighborhoodKey0066_derived
  · exact physicalNeighborhoodKey0067_derived
  · exact physicalNeighborhoodKey0068_derived
  · exact physicalNeighborhoodKey0069_derived
  · exact physicalNeighborhoodKey0070_derived
  · exact physicalNeighborhoodKey0071_derived
  · exact physicalNeighborhoodKey0072_derived
  · exact physicalNeighborhoodKey0073_derived
  · exact physicalNeighborhoodKey0074_derived
  · exact physicalNeighborhoodKey0075_derived
  · exact physicalNeighborhoodKey0076_derived
  · exact physicalNeighborhoodKey0077_derived
  · exact physicalNeighborhoodKey0078_derived
  · exact physicalNeighborhoodKey0079_derived
  · exact physicalNeighborhoodKey0080_derived
  · exact physicalNeighborhoodKey0081_derived
  · exact physicalNeighborhoodKey0082_derived
  · exact physicalNeighborhoodKey0083_derived
  · exact physicalNeighborhoodKey0084_derived
  · exact physicalNeighborhoodKey0085_derived
  · exact physicalNeighborhoodKey0086_derived
  · exact physicalNeighborhoodKey0087_derived
  · exact physicalNeighborhoodKey0088_derived
  · exact physicalNeighborhoodKey0089_derived
  · exact physicalNeighborhoodKey0090_derived
  · exact physicalNeighborhoodKey0091_derived
  · exact physicalNeighborhoodKey0092_derived
  · exact physicalNeighborhoodKey0093_derived
  · exact physicalNeighborhoodKey0094_derived
  · exact physicalNeighborhoodKey0095_derived
  · exact physicalNeighborhoodKey0096_derived
  · exact physicalNeighborhoodKey0097_derived
  · exact physicalNeighborhoodKey0098_derived
  · exact physicalNeighborhoodKey0099_derived
  · exact physicalNeighborhoodKey0100_derived
  · exact physicalNeighborhoodKey0101_derived
  · exact physicalNeighborhoodKey0102_derived
  · exact physicalNeighborhoodKey0103_derived
  · exact physicalNeighborhoodKey0104_derived
  · exact physicalNeighborhoodKey0105_derived
  · exact physicalNeighborhoodKey0106_derived
  · exact physicalNeighborhoodKey0107_derived
  · exact physicalNeighborhoodKey0108_derived
  · exact physicalNeighborhoodKey0109_derived
  · exact physicalNeighborhoodKey0110_derived
  · exact physicalNeighborhoodKey0111_derived
  · exact physicalNeighborhoodKey0112_derived
  · exact physicalNeighborhoodKey0113_derived
  · exact physicalNeighborhoodKey0114_derived
  · exact physicalNeighborhoodKey0115_derived
  · exact physicalNeighborhoodKey0116_derived
  · exact physicalNeighborhoodKey0117_derived
  · exact physicalNeighborhoodKey0118_derived
  · exact physicalNeighborhoodKey0119_derived
  · exact physicalNeighborhoodKey0120_derived
  · exact physicalNeighborhoodKey0121_derived
  · exact physicalNeighborhoodKey0122_derived
  · exact physicalNeighborhoodKey0123_derived
  · exact physicalNeighborhoodKey0124_derived
  · exact physicalNeighborhoodKey0125_derived
  · exact physicalNeighborhoodKey0126_derived
  · exact physicalNeighborhoodKey0127_derived

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L184279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
