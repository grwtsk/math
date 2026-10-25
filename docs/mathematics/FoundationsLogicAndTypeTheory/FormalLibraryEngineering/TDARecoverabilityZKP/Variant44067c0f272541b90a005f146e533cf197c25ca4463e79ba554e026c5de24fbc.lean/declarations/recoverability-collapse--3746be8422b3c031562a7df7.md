# recoverability_collapse

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
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44067c0f272541b90a005f146e533cf197c25ca4463e79ba554e026c5de24fbc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:651a105f-392f-04fb-222d-c5d038f4f6a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf31a277-e351-ee78-d8df-927dd4d5e5cc",
  "kind": "theorem",
  "lexical_name": "recoverability_collapse",
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
  "slug": "recoverability-collapse--3746be8422b3c031562a7df7",
  "source": {
    "blob": "130ad30fbbbabe1ccb2f3fa5c48ea9c6d9d19b23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TDARecoverabilityZKP/Variant44067c0f272541b90a005f146e533cf197c25ca4463e79ba554e026c5de24fbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3746be8422b3c031562a7df7e6d53005fe07fc6a9c2d3036ac46f0e6f5ffd2c9",
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

Occurrence: `result:cf31a277-e351-ee78-d8df-927dd4d5e5cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem recoverability_collapse
    (C : RecoverabilityCollision) :
    (∀ A : FieldOnlyArithmeticAlgorithm,
      DeterministicPairErrorAtLeastHalf A C) ∧
    (∀ A : RandomizedFieldOnlyAlgorithm,
      PairErrorAtLeastHalf A C) := by
  constructor
  · intro A
    exact deterministic_recoverability_collapse C A
  · intro A
    exact randomized_pair_success_bound C A

/-! ## ZKP statement and private witness layer -/

/-- Public torsion claim verified by the ZK relation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TDARecoverabilityZKP/Variant44067c0f272541b90a005f146e533cf197c25ca4463e79ba554e026c5de24fbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TDARecoverabilityZKP/Variant44067c0f272541b90a005f146e533cf197c25ca4463e79ba554e026c5de24fbc.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `130ad30fbbbabe1ccb2f3fa5c48ea9c6d9d19b23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
