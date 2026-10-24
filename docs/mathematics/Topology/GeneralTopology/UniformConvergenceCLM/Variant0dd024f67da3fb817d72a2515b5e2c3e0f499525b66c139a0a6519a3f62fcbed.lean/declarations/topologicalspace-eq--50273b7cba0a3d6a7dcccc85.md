# topologicalSpace_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2895b3845de48cd019222a498552f7c119aeefe2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:409bf5be-560a-3248-1ecb-52d95c9e9d26",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34d62b0b-d99a-ef3d-2c78-a4a6eff7f6e8",
  "kind": "theorem",
  "lexical_name": "topologicalSpace_eq",
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
  "slug": "topologicalspace-eq--50273b7cba0a3d6a7dcccc85",
  "source": {
    "blob": "2895b3845de48cd019222a498552f7c119aeefe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 127,
    "path": "GRWTSK/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50273b7cba0a3d6a7dcccc8541a08e31b1db7c4d2a7af7e8fbcde905544fdfd6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34d62b0b-d99a-ef3d-2c78-a4a6eff7f6e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem topologicalSpace_eq [UniformSpace F] [IsUniformAddGroup F] (𝔖 : Set (Set E)) :
    instTopologicalSpace σ F 𝔖 = TopologicalSpace.induced (UniformOnFun.ofFun 𝔖 ∘ DFunLike.coe)
      (UniformOnFun.topologicalSpace E F 𝔖) := by
  rw [instTopologicalSpace]
  congr
  exact IsUniformAddGroup.rightUniformSpace_eq

/-- The uniform structure associated with `ContinuousLinearMap.strongTopology`. We make sure
that this has nice definitional properties. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2895b3845de48cd019222a498552f7c119aeefe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
