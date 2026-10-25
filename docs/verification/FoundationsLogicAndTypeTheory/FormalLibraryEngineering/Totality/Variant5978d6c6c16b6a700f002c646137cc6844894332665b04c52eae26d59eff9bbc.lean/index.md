# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Totality.Variant5978d6c6c16b6a700f002c646137cc6844894332665b04c52eae26d59eff9bbc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2df4b565ac4c3fd440fc2411a4a73c39afe161ef",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Totality/Variant5978d6c6c16b6a700f002c646137cc6844894332665b04c52eae26d59eff9bbc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Totality/Variant5978d6c6c16b6a700f002c646137cc6844894332665b04c52eae26d59eff9bbc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Totality/Variant5978d6c6c16b6a700f002c646137cc6844894332665b04c52eae26d59eff9bbc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2df4b565ac4c3fd440fc2411a4a73c39afe161ef`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Totality/Variant5978d6c6c16b6a700f002c646137cc6844894332665b04c52eae26d59eff9bbc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Totality/Variant5978d6c6c16b6a700f002c646137cc6844894332665b04c52eae26d59eff9bbc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Ecosystem.CoverageBoundary` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Ingestion.ClosureLevel` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.Ingestion.Receipt` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ArtifactTotal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Totality/Variant5978d6c6c16b6a700f002c646137cc6844894332665b04c52eae26d59eff9bbc.lean/declarations/artifacttotal--75dce00a02ef2f1ff6e9e642.md) | 14 | `declaration-track:75dce00a02ef2f1ff6e9e642544b4404d62e5ad142198d0efdc0cc2dead87047` |
| 2 | `structure` | [TotalityEnvelope](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Totality/Variant5978d6c6c16b6a700f002c646137cc6844894332665b04c52eae26d59eff9bbc.lean/declarations/totalityenvelope--41d974f1c99f6c1bda6a41ac.md) | 23 | `declaration-track:41d974f1c99f6c1bda6a41ac456cf38dad05401a4f3185dcbe4637ee3671c13b` |
| 3 | `theorem` | [artifact_total](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Totality/Variant5978d6c6c16b6a700f002c646137cc6844894332665b04c52eae26d59eff9bbc.lean/declarations/artifact-total--8bd4d78b33c5f1ce0b8b9c2f.md) | 38 | `result-track:8bd4d78b33c5f1ce0b8b9c2f04c0b697b61a52d2fef2639b192951dca18f9b2e` |
| 4 | `theorem` | [artifact_semantics_hold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Totality/Variant5978d6c6c16b6a700f002c646137cc6844894332665b04c52eae26d59eff9bbc.lean/declarations/artifact-semantics-hold--fd55a86e9f8aaa64d4bbb34e.md) | 45 | `result-track:fd55a86e9f8aaa64d4bbb34ed3cc1ee7f0efd075a11c9902dc847d27c81ce12e` |
| 5 | `theorem` | [incomplete_level_visible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Totality/Variant5978d6c6c16b6a700f002c646137cc6844894332665b04c52eae26d59eff9bbc.lean/declarations/incomplete-level-visible--26895d299a12dbb3d656783b.md) | 51 | `result-track:26895d299a12dbb3d656783b33d2c4f570fc6a1d5ece37cb4beb1ad2398b4480` |
| 6 | `theorem` | [source_omission_rejected](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Totality/Variant5978d6c6c16b6a700f002c646137cc6844894332665b04c52eae26d59eff9bbc.lean/declarations/source-omission-rejected--1ac37e0fdf1568d787818ece.md) | 61 | `result-track:1ac37e0fdf1568d787818ece5c5ffd25f89eec8f3a3fc1c17252041345715ecf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
