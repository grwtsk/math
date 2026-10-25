# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Traversal.Variant30bc6e5cd2db2825f434fefa79353d51ee668c5c894ed08ec43c8b2ed79b981f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "daa0b125f6676d3f3df3d0f868e1dfb3f4cff03e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variant30bc6e5cd2db2825f434fefa79353d51ee668c5c894ed08ec43c8b2ed79b981f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variant30bc6e5cd2db2825f434fefa79353d51ee668c5c894ed08ec43c8b2ed79b981f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variant30bc6e5cd2db2825f434fefa79353d51ee668c5c894ed08ec43c8b2ed79b981f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `daa0b125f6676d3f3df3d0f868e1dfb3f4cff03e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variant30bc6e5cd2db2825f434fefa79353d51ee668c5c894ed08ec43c8b2ed79b981f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variant30bc6e5cd2db2825f434fefa79353d51ee668c5c894ed08ec43c8b2ed79b981f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.KarnaughMap` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [KarnaughMap.rowAxis_length](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variant30bc6e5cd2db2825f434fefa79353d51ee668c5c894ed08ec43c8b2ed79b981f.lean/declarations/karnaughmap-rowaxis-length--de196937ee85f7ea36db2be4.md) | 12 | `result-track:de196937ee85f7ea36db2be4bb984951fa41c206689106ec53cbe907b41bacdf` |
| 2 | `theorem` | [KarnaughMap.colAxis_length](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variant30bc6e5cd2db2825f434fefa79353d51ee668c5c894ed08ec43c8b2ed79b981f.lean/declarations/karnaughmap-colaxis-length--d4d6d49b9794e72058cc6b70.md) | 16 | `result-track:d4d6d49b9794e72058cc6b7086dd5a3996f1b34e091cba1cbbce0450f1e583c5` |
| 3 | `theorem` | [KarnaughMap.rowAxis_adjacentPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variant30bc6e5cd2db2825f434fefa79353d51ee668c5c894ed08ec43c8b2ed79b981f.lean/declarations/karnaughmap-rowaxis-adjacentpath--463975d8de58ffdfac225a55.md) | 21 | `result-track:463975d8de58ffdfac225a55b2bba2f214e2fff74af87d4b033251eb7b13a2b3` |
| 4 | `theorem` | [KarnaughMap.colAxis_adjacentPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variant30bc6e5cd2db2825f434fefa79353d51ee668c5c894ed08ec43c8b2ed79b981f.lean/declarations/karnaughmap-colaxis-adjacentpath--606e352e0027c68e13d6fff8.md) | 26 | `result-track:606e352e0027c68e13d6fff85496979b6f89ab03425fe84c753e54d3b77b0303` |
| 5 | `theorem` | [KarnaughMap.rowAxis_optimalLength](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variant30bc6e5cd2db2825f434fefa79353d51ee668c5c894ed08ec43c8b2ed79b981f.lean/declarations/karnaughmap-rowaxis-optimallength--b34de5634a5c7cac19053e97.md) | 33 | `result-track:b34de5634a5c7cac19053e9770a7b2f409fc09aa69716ffabba1db42fb3ea2c8` |
| 6 | `theorem` | [KarnaughMap.colAxis_optimalLength](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variant30bc6e5cd2db2825f434fefa79353d51ee668c5c894ed08ec43c8b2ed79b981f.lean/declarations/karnaughmap-colaxis-optimallength--f8316dd91bd3b6d5b3ceba06.md) | 41 | `result-track:f8316dd91bd3b6d5b3ceba069f4fdd29ab4727d788ad46254c759a97c3e5cc65` |
| 7 | `theorem` | [KarnaughMap.rowAxis_transitionCount](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variant30bc6e5cd2db2825f434fefa79353d51ee668c5c894ed08ec43c8b2ed79b981f.lean/declarations/karnaughmap-rowaxis-transitioncount--e441de0939543d157b24e2e2.md) | 47 | `result-track:e441de0939543d157b24e2e2bf64833d08fba32c2c74fa7125d7ee441626bbbf` |
| 8 | `theorem` | [KarnaughMap.colAxis_transitionCount](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variant30bc6e5cd2db2825f434fefa79353d51ee668c5c894ed08ec43c8b2ed79b981f.lean/declarations/karnaughmap-colaxis-transitioncount--b9427f32fa5a7fdac53214ca.md) | 52 | `result-track:b9427f32fa5a7fdac53214ca869057fe0d0b533eb0c6347664365a64b51ad8e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
