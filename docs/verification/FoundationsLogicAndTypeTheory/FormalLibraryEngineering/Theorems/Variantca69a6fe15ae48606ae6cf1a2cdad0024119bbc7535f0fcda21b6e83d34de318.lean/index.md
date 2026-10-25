# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Theorems.Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56cffd3792e30421701d4b663453b1635aa2e5d6",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56cffd3792e30421701d4b663453b1635aa2e5d6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.FunProp.Decl` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp.Types` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp.FunctionData` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta.RefinedDiscrTree` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta.RefinedDiscrTree.Lookup` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LambdaTheoremArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/lambdatheoremargs--48a87c054ba8753fa0e85510.md) | 24 | `declaration-track:48a87c054ba8753fa0e85510f7fea52e027bfae553ff0aef9892b2fbd8defffd` |
| 2 | `inductive` | [LambdaTheoremType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/lambdatheoremtype--d21745aa66d38d03b26c6ec5.md) | 41 | `declaration-track:d21745aa66d38d03b26c6ec55869d1ddd461d51d160c2fa9dab5c06928956473` |
| 3 | `def` | [LambdaTheoremArgs.type](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/lambdatheoremargs-type--8bc14f28d4f6f2ff5aeb0e88.md) | 55 | `declaration-track:8bc14f28d4f6f2ff5aeb0e88c791d057013924b1ec971e004fc7b091358e37c9` |
| 4 | `def` | [detectLambdaTheoremArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/detectlambdatheoremargs--7fc8ac84a7194f329e05b93c.md) | 64 | `declaration-track:7fc8ac84a7194f329e05b93c4fbe31d245de751b7e0e511c027c88c503ec37ca` |
| 5 | `structure` | [LambdaTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/lambdatheorem--589956dabbd9851ee05f3d8d.md) | 89 | `declaration-track:589956dabbd9851ee05f3d8d625dd534843765053bc8d242ff2d75b27dc743de` |
| 6 | `structure` | [LambdaTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/lambdatheorems--f0408ffdac367f63cb6e22e6.md) | 99 | `declaration-track:f0408ffdac367f63cb6e22e6af682cc0ba1c2517211dc2eefb833e105882dc44` |
| 7 | `def` | [LambdaTheorem.getProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/lambdatheorem-getproof--1ac5400fe76173fe80450652.md) | 106 | `declaration-track:1ac5400fe76173fe80450652aa874e2c38305146be0e07559d1eeaccb81c290f` |
| 8 | `abbrev` | [LambdaTheoremsExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/lambdatheoremsext--3b5711c7a4a075a4853773f8.md) | 110 | `declaration-track:3b5711c7a4a075a4853773f8731c6fb00e91647460445befae8478f3a6920192` |
| 9 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/initialize--1c33259cb7de54c7cb330de1.md) | 113 | `declaration-track:1c33259cb7de54c7cb330de189dde5475ebaf8e884ef70e4f67634d72a8178b4` |
| 10 | `def` | [getLambdaTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/getlambdatheorems--ce71b90856c04b0eef20d741.md) | 124 | `declaration-track:ce71b90856c04b0eef20d7415d868d6f6ece79b6dd93711928f709e7102f58a4` |
| 11 | `inductive` | [TheoremForm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/theoremform--9d042136417c2a3a9cb205c1.md) | 143 | `declaration-track:9d042136417c2a3a9cb205c1414b816a5609e99ef3b9b3b4e5c81eadc5a8ec2e` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/instance--549a645d837677951450d0aa.md) | 148 | `declaration-track:549a645d837677951450d0aafd413da45968536b5b32309c38fb04c6721e8eb7` |
| 13 | `structure` | [FunctionTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/functiontheorem--4196554e7922c174265dca2b.md) | 152 | `declaration-track:4196554e7922c174265dca2b9136074dbcc2d216a61c135251f2ad4b68fc9319` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/instance--1532faa29548e0fe67c3ae66.md) | 169 | `declaration-track:1532faa29548e0fe67c3ae66b1f450d03cecf2e1d379d3498f76f11a2732d50e` |
| 15 | `structure` | [FunctionTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/functiontheorems--18079786c6d90d883bb71cf8.md) | 173 | `declaration-track:18079786c6d90d883bb71cf89da658e5889972198f400d27d5ec50030e903dbe` |
| 16 | `def` | [FunctionTheorem.getProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/functiontheorem-getproof--97f77e2a6d1ca048e159d356.md) | 181 | `declaration-track:97f77e2a6d1ca048e159d356412866385cf658c3d8e444be1a1259869393ff53` |
| 17 | `abbrev` | [FunctionTheoremsExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/functiontheoremsext--3feae501cc6eea1a4b993e92.md) | 188 | `declaration-track:3feae501cc6eea1a4b993e9232413c6ca35880d9ff44bb00df97057c0f8d13b1` |
| 18 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/initialize--7a88db1ec4bec7ed4fe80b63.md) | 191 | `declaration-track:7a88db1ec4bec7ed4fe80b638357aa44a7070861110ca9dc3881552c60566a38` |
| 19 | `def` | [getTheoremsForFunction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/gettheoremsforfunction--372f0557149b4001a594e0ab.md) | 207 | `declaration-track:372f0557149b4001a594e0abd81123cc2cac03fab2699fe57918d39e6c1af4d7` |
| 20 | `structure` | [GeneralTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/generaltheorem--0193e84a396b9808d7662234.md) | 216 | `declaration-track:0193e84a396b9808d7662234623142ecece733988b756cd236a961d40d5c1707` |
| 21 | `def` | [GeneralTheorem.getProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/generaltheorem-getproof--739ffd137438653da898866d.md) | 228 | `declaration-track:739ffd137438653da898866d4c77d9cb66b250442b01574f0edcb8b46807ca66` |
| 22 | `structure` | [GeneralTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/generaltheorems--5c0f11dc6a6b7e47b80b40f7.md) | 232 | `declaration-track:5c0f11dc6a6b7e47b80b40f7402e46cf9365b9f1e77fc339375f9942e04e6822` |
| 23 | `abbrev` | [GeneralTheoremsExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/generaltheoremsext--df85fe8724db705b4a0e47d1.md) | 238 | `declaration-track:df85fe8724db705b4a0e47d125a95b6fea626122f90452a246defa6c4cf10d26` |
| 24 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/initialize--180c014d2253fca0e48a6b88.md) | 241 | `declaration-track:180c014d2253fca0e48a6b8894cd835d0cf134776b4db724427a8de8557e3cd3` |
| 25 | `def` | [getTransitionTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/gettransitiontheorems--4549fbbc75b1780708b2396c.md) | 253 | `declaration-track:4549fbbc75b1780708b2396c60f3c09958ab2107408a859216368c8a812fdce6` |
| 26 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/initialize--2e6632ee486e121b74a21e46.md) | 261 | `declaration-track:2e6632ee486e121b74a21e467ce543fac5f790db8ce006f57b819e95d32a77b6` |
| 27 | `def` | [getMorphismTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/getmorphismtheorems--40caa52595c79702917582a2.md) | 274 | `declaration-track:40caa52595c79702917582a2823e82385ddee1656c76930421c881fe2f852d86` |
| 28 | `inductive` | [Theorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/theorem--292b638d361dd5b1057bc9bc.md) | 316 | `declaration-track:292b638d361dd5b1057bc9bc96a251a3f11f167a9aed7a04479278ed94b8ffc0` |
| 29 | `def` | [getTheoremFromConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/gettheoremfromconst--7c43bdd57a6f5aad6e5b0977.md) | 325 | `declaration-track:7c43bdd57a6f5aad6e5b09775c848e7e062c97076df46cb06654a83967c01ae5` |
| 30 | `def` | [addTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/declarations/addtheorem--5ad0ef028a13451d967c1321.md) | 386 | `declaration-track:5ad0ef028a13451d967c1321378852b9cc7b6a41a458989ab25019aab45dce20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
