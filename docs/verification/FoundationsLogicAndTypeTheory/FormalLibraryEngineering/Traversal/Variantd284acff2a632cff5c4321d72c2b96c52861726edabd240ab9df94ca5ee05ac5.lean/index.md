# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Traversal.Variantd284acff2a632cff5c4321d72c2b96c52861726edabd240ab9df94ca5ee05ac5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4ed932a7267bb8a02270f36b0210019bf78961a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variantd284acff2a632cff5c4321d72c2b96c52861726edabd240ab9df94ca5ee05ac5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variantd284acff2a632cff5c4321d72c2b96c52861726edabd240ab9df94ca5ee05ac5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variantd284acff2a632cff5c4321d72c2b96c52861726edabd240ab9df94ca5ee05ac5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4ed932a7267bb8a02270f36b0210019bf78961a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variantd284acff2a632cff5c4321d72c2b96c52861726edabd240ab9df94ca5ee05ac5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variantd284acff2a632cff5c4321d72c2b96c52861726edabd240ab9df94ca5ee05ac5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.KarnaughMap` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [KarnaughMap.rowAxis_length](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variantd284acff2a632cff5c4321d72c2b96c52861726edabd240ab9df94ca5ee05ac5.lean/declarations/karnaughmap-rowaxis-length--01a24960828801fbd7c1552f.md) | 20 | `result-track:01a24960828801fbd7c1552f5a45d5d837737c1243b3fc8c0338c82ed5c9224a` |
| 2 | `theorem` | [KarnaughMap.colAxis_length](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variantd284acff2a632cff5c4321d72c2b96c52861726edabd240ab9df94ca5ee05ac5.lean/declarations/karnaughmap-colaxis-length--53f9a62b1cf2465da83cd997.md) | 24 | `result-track:53f9a62b1cf2465da83cd9979e1c10d2061fb4835bfb157badb52525515752c7` |
| 3 | `theorem` | [KarnaughMap.rowAxis_adjacentPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variantd284acff2a632cff5c4321d72c2b96c52861726edabd240ab9df94ca5ee05ac5.lean/declarations/karnaughmap-rowaxis-adjacentpath--b7ec576349de8a95558f0de0.md) | 29 | `result-track:b7ec576349de8a95558f0de099e22d8ae1efe7391cdf72ac84f4cc4948e1e4bc` |
| 4 | `theorem` | [KarnaughMap.colAxis_adjacentPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variantd284acff2a632cff5c4321d72c2b96c52861726edabd240ab9df94ca5ee05ac5.lean/declarations/karnaughmap-colaxis-adjacentpath--adde0a74f6ce2e771edb4075.md) | 34 | `result-track:adde0a74f6ce2e771edb4075856d719751f08ab96d76311faaa6f9d78d8f8597` |
| 5 | `theorem` | [KarnaughMap.rowAxis_optimalLength](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variantd284acff2a632cff5c4321d72c2b96c52861726edabd240ab9df94ca5ee05ac5.lean/declarations/karnaughmap-rowaxis-optimallength--4dd248b74c9d1e588459022d.md) | 41 | `result-track:4dd248b74c9d1e588459022dd7da39eddabc8d5aa4ff0357f1a2cc7bfb405582` |
| 6 | `theorem` | [KarnaughMap.colAxis_optimalLength](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variantd284acff2a632cff5c4321d72c2b96c52861726edabd240ab9df94ca5ee05ac5.lean/declarations/karnaughmap-colaxis-optimallength--1582582888e71607227d38bd.md) | 49 | `result-track:1582582888e71607227d38bd53dc42dae2762dc60713cd56b5f02053aa56f541` |
| 7 | `theorem` | [KarnaughMap.rowAxis_transitionCount](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variantd284acff2a632cff5c4321d72c2b96c52861726edabd240ab9df94ca5ee05ac5.lean/declarations/karnaughmap-rowaxis-transitioncount--0c673ea8ab0671cd7054ad1e.md) | 55 | `result-track:0c673ea8ab0671cd7054ad1e180a25a2800fe5e1ab73ebaa37d5505b7dce75bc` |
| 8 | `theorem` | [KarnaughMap.colAxis_transitionCount](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Traversal/Variantd284acff2a632cff5c4321d72c2b96c52861726edabd240ab9df94ca5ee05ac5.lean/declarations/karnaughmap-colaxis-transitioncount--ee1f840feb2d82999349edc8.md) | 60 | `result-track:ee1f840feb2d82999349edc870ab44896708b8ea38305b6b796111b14e921272` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
