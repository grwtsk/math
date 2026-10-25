# zkp_accepts_valid_witness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "130ad30fbbbabe1ccb2f3fa5c48ea9c6d9d19b23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 376,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44067c0f272541b90a005f146e533cf197c25ca4463e79ba554e026c5de24fbc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b139b22e-e42b-d46b-3b7f-e06ff182b18d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:291226e1-45e6-daee-9bd9-841c4c385ccb",
  "kind": "theorem",
  "lexical_name": "zkp_accepts_valid_witness",
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
  "slug": "zkp-accepts-valid-witness--544b0dfb6f5399c48c2182b8",
  "source": {
    "blob": "130ad30fbbbabe1ccb2f3fa5c48ea9c6d9d19b23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 376,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TDARecoverabilityZKP/Variant44067c0f272541b90a005f146e533cf197c25ca4463e79ba554e026c5de24fbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:544b0dfb6f5399c48c2182b8805147ebb5ab8bc3b2eb541c35b8eb94188d1870",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TDARecoverabilityZKP/Variant44067c0f272541b90a005f146e533cf197c25ca4463e79ba554e026c5de24fbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:291226e1-45e6-daee-9bd9-841c4c385ccb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zkp_accepts_valid_witness
    (Z : ZkSNARK)
    (pk : Z.ProvingKey)
    (vk : Z.VerificationKey)
    (S : PublicStatement)
    (W : PrivateWitness)
    (h : ZKPRelation S W) :
    Z.verify vk S (Z.prove pk S W h) = true :=
  Z.completeness pk vk S W h

/-- Soundness: an accepting proof yields some private witness for the relation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TDARecoverabilityZKP/Variant44067c0f272541b90a005f146e533cf197c25ca4463e79ba554e026c5de24fbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TDARecoverabilityZKP/Variant44067c0f272541b90a005f146e533cf197c25ca4463e79ba554e026c5de24fbc.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `130ad30fbbbabe1ccb2f3fa5c48ea9c6d9d19b23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
