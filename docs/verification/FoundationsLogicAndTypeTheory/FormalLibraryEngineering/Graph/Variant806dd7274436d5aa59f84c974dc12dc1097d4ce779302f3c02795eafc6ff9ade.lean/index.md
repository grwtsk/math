# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Graph.Variant806dd7274436d5aa59f84c974dc12dc1097d4ce779302f3c02795eafc6ff9ade

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7691f6a678f17a1ac3a85878ce20d2e34ef9f3c8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant806dd7274436d5aa59f84c974dc12dc1097d4ce779302f3c02795eafc6ff9ade.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant806dd7274436d5aa59f84c974dc12dc1097d4ce779302f3c02795eafc6ff9ade.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant806dd7274436d5aa59f84c974dc12dc1097d4ce779302f3c02795eafc6ff9ade.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7691f6a678f17a1ac3a85878ce20d2e34ef9f3c8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant806dd7274436d5aa59f84c974dc12dc1097d4ce779302f3c02795eafc6ff9ade.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant806dd7274436d5aa59f84c974dc12dc1097d4ce779302f3c02795eafc6ff9ade.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Pipeline.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CanonicalFiber](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant806dd7274436d5aa59f84c974dc12dc1097d4ce779302f3c02795eafc6ff9ade.lean/declarations/canonicalfiber--f3f5ea0beda0010a2bd4f973.md) | 7 | `declaration-track:f3f5ea0beda0010a2bd4f9730630b00f9ba50f2e708168ca800f5fe74f7c55f9` |
| 2 | `inductive` | [SourceEdgeKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant806dd7274436d5aa59f84c974dc12dc1097d4ce779302f3c02795eafc6ff9ade.lean/declarations/sourceedgekind--24e38ff6e4268e172490ec40.md) | 22 | `declaration-track:24e38ff6e4268e172490ec40a3449c9b86bd2610683b7c09a45daf3c54a7c2a0` |
| 3 | `structure` | [SourceVertex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant806dd7274436d5aa59f84c974dc12dc1097d4ce779302f3c02795eafc6ff9ade.lean/declarations/sourcevertex--e14dc492f9d9c4828ec57c15.md) | 32 | `declaration-track:e14dc492f9d9c4828ec57c15e5a42e03e7edc70f5b504bc9695dcd500981e57c` |
| 4 | `structure` | [SourceEdge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant806dd7274436d5aa59f84c974dc12dc1097d4ce779302f3c02795eafc6ff9ade.lean/declarations/sourceedge--08b6728efb3f545f1a846fa7.md) | 40 | `declaration-track:08b6728efb3f545f1a846fa72cabc2cf73c9aacdd3be91e66f12e8bf99397608` |
| 5 | `def` | [buildShellExcluded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant806dd7274436d5aa59f84c974dc12dc1097d4ce779302f3c02795eafc6ff9ade.lean/declarations/buildshellexcluded--e4c975b3a83fee2eb0dd7d24.md) | 46 | `declaration-track:e4c975b3a83fee2eb0dd7d24719bd0a804e8057a852dce1e1c88c2bf65658aa5` |
| 6 | `theorem` | [lake_is_excluded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant806dd7274436d5aa59f84c974dc12dc1097d4ce779302f3c02795eafc6ff9ade.lean/declarations/lake-is-excluded--498cf84406aba40718e42c30.md) | 49 | `result-track:498cf84406aba40718e42c3037444f1d8b7c33cc476890e4c1961b67c7886c12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
