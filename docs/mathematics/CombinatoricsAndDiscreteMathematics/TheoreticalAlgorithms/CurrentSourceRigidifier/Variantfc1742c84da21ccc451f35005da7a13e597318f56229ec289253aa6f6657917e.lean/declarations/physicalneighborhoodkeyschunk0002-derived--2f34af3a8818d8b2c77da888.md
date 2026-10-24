# physicalNeighborhoodKeysChunk0002_derived

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
      "line": 166538,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0cff345-d13a-acf0-b070-56d0e6100083",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6637db9-5139-b798-8abc-6108c2c5e309",
  "kind": "theorem",
  "lexical_name": "physicalNeighborhoodKeysChunk0002_derived",
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
  "slug": "physicalneighborhoodkeyschunk0002-derived--2f34af3a8818d8b2c77da888",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166594,
    "line": 166538,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f34af3a8818d8b2c77da88899f82a3abfe192cc59403ea750eab81b80bd60a0",
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

Occurrence: `result:e6637db9-5139-b798-8abc-6108c2c5e309`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166538–166594.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem physicalNeighborhoodKeysChunk0002_derived :
    ∀ key ∈ physicalNeighborhoodKeysChunk0002, key ∈ neighborhoodKeys := by
  intro key h
  simp only [physicalNeighborhoodKeysChunk0002, List.mem_cons, List.not_mem_nil, or_false] at h
  rcases h with (rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl)
  · exact physicalNeighborhoodKey0128_derived
  · exact physicalNeighborhoodKey0129_derived
  · exact physicalNeighborhoodKey0130_derived
  · exact physicalNeighborhoodKey0131_derived
  · exact physicalNeighborhoodKey0132_derived
  · exact physicalNeighborhoodKey0133_derived
  · exact physicalNeighborhoodKey0134_derived
  · exact physicalNeighborhoodKey0135_derived
  · exact physicalNeighborhoodKey0136_derived
  · exact physicalNeighborhoodKey0137_derived
  · exact physicalNeighborhoodKey0138_derived
  · exact physicalNeighborhoodKey0139_derived
  · exact physicalNeighborhoodKey0140_derived
  · exact physicalNeighborhoodKey0141_derived
  · exact physicalNeighborhoodKey0142_derived
  · exact physicalNeighborhoodKey0143_derived
  · exact physicalNeighborhoodKey0144_derived
  · exact physicalNeighborhoodKey0145_derived
  · exact physicalNeighborhoodKey0146_derived
  · exact physicalNeighborhoodKey0147_derived
  · exact physicalNeighborhoodKey0148_derived
  · exact physicalNeighborhoodKey0149_derived
  · exact physicalNeighborhoodKey0150_derived
  · exact physicalNeighborhoodKey0151_derived
  · exact physicalNeighborhoodKey0152_derived
  · exact physicalNeighborhoodKey0153_derived
  · exact physicalNeighborhoodKey0154_derived
  · exact physicalNeighborhoodKey0155_derived
  · exact physicalNeighborhoodKey0156_derived
  · exact physicalNeighborhoodKey0157_derived
  · exact physicalNeighborhoodKey0158_derived
  · exact physicalNeighborhoodKey0159_derived
  · exact physicalNeighborhoodKey0160_derived
  · exact physicalNeighborhoodKey0161_derived
  · exact physicalNeighborhoodKey0162_derived
  · exact physicalNeighborhoodKey0163_derived
  · exact physicalNeighborhoodKey0164_derived
  · exact physicalNeighborhoodKey0165_derived
  · exact physicalNeighborhoodKey0166_derived
  · exact physicalNeighborhoodKey0167_derived
  · exact physicalNeighborhoodKey0168_derived
  · exact physicalNeighborhoodKey0169_derived
  · exact physicalNeighborhoodKey0170_derived
  · exact physicalNeighborhoodKey0171_derived
  · exact physicalNeighborhoodKey0172_derived
  · exact physicalNeighborhoodKey0173_derived
  · exact physicalNeighborhoodKey0174_derived
  · exact physicalNeighborhoodKey0175_derived
  · exact physicalNeighborhoodKey0176_derived
  · exact physicalNeighborhoodKey0177_derived
  · exact physicalNeighborhoodKey0178_derived

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L166538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
