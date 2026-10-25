# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bounds.Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34d0be3eeddaefd40f133d088b77cca2c41b1b05",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34d0be3eeddaefd40f133d088b77cca2c41b1b05`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean/declarations/macro-rules--e7289aa30caceced98cbd35d.md) | 22 | `declaration-track:e7289aa30caceced98cbd35db4d6bd1109edffa1d80453be02cf21ed0e63a288` |
| 2 | `theorem` | [pi_gt_sqrtTwoAddSeries](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean/declarations/pi-gt-sqrttwoaddseries--a7d280b7d5f8debb34e4d42e.md) | 30 | `result-track:a7d280b7d5f8debb34e4d42eb415e463faa0c3cd3b8e0b5c1f7745ac824d6a79` |
| 3 | `theorem` | [pi_lt_sqrtTwoAddSeries](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean/declarations/pi-lt-sqrttwoaddseries--139e21b93eec1a0bd8ddd01b.md) | 39 | `result-track:139e21b93eec1a0bd8ddd01bb3f99fa8b9b7c091d31212d10a883ef47301ac2d` |
| 4 | `theorem` | [pi_lower_bound_start](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean/declarations/pi-lower-bound-start--4939a8937c653c00df0e9910.md) | 73 | `result-track:4939a8937c653c00df0e99102d6f35daadb5894a7c172f0765ce532976bbb405` |
| 5 | `theorem` | [sqrtTwoAddSeries_step_up](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean/declarations/sqrttwoaddseries-step-up--daa6063a03edcd3c0e704e30.md) | 81 | `result-track:daa6063a03edcd3c0e704e30ce2555fe352f949a9c6e6311e95f05731bb66f28` |
| 6 | `def` | [numDen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean/declarations/numden--837da3d4de0b9fa634e14f12.md) | 100 | `declaration-track:837da3d4de0b9fa634e14f1226e08e20d72bbed86ccde22e774fab6dde052398` |
| 7 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean/declarations/elab--7b955a533f971f58b49c4353.md) | 107 | `declaration-track:7b955a533f971f58b49c4353828a91851dfa681c98b06cdddf8ef1f67b2f1c6c` |
| 8 | `theorem` | [pi_upper_bound_start](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean/declarations/pi-upper-bound-start--53e158edb95581059a3905bd.md) | 124 | `result-track:53e158edb95581059a3905bd4090270a8ac52c82d70db521090a560058d96e78` |
| 9 | `theorem` | [sqrtTwoAddSeries_step_down](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean/declarations/sqrttwoaddseries-step-down--f498c56454c94608f39ca8a7.md) | 135 | `result-track:f498c56454c94608f39ca8a784579e670ff761999e6b99c9087cb69a08a1a800` |
| 10 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean/declarations/elab--38ec45a7f595c06f9971a76b.md) | 153 | `declaration-track:38ec45a7f595c06f9971a76b3666252ee8ed865fc261fd35ea006dacb89c6d03` |
| 11 | `theorem` | [pi_gt_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean/declarations/pi-gt-three--e65b0610a3fa6659aeb1ca88.md) | 167 | `result-track:e65b0610a3fa6659aeb1ca8843c613c7caffa8a2c8fe77fd85b6d3e9ead4caf1` |
| 12 | `theorem` | [pi_gt_314](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean/declarations/pi-gt-314--3fa899349596676e9d54cb83.md) | 171 | `result-track:3fa899349596676e9d54cb83d8abd34dd804a715e3e8a37eff6ed77da6ababb9` |
| 13 | `theorem` | [pi_lt_315](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean/declarations/pi-lt-315--843c13642c226f6519c3483f.md) | 175 | `result-track:843c13642c226f6519c3483ff9afb912400cc6c75fc76d5e137f6b6417bf8073` |
| 14 | `theorem` | [pi_gt_31415](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean/declarations/pi-gt-31415--1a7f455f6b8f77c8c38bdfac.md) | 179 | `result-track:1a7f455f6b8f77c8c38bdfac2f7e965e4142d411d684dafbbbda993ae11da28e` |
| 15 | `theorem` | [pi_lt_31416](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean/declarations/pi-lt-31416--e0784b47f09ad85103a39c48.md) | 184 | `result-track:e0784b47f09ad85103a39c48ee87c6206690d2df77519e3b05211517aa5771f5` |
| 16 | `theorem` | [pi_gt_3141592](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean/declarations/pi-gt-3141592--4756e69c5108808efca0e484.md) | 190 | `result-track:4756e69c5108808efca0e4843a018a196a9e8ad5601cf74e8545d2f5dcf1c5e5` |
| 17 | `theorem` | [pi_lt_3141593](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean/declarations/pi-lt-3141593--2c5a9448cf4cbb34c843785d.md) | 196 | `result-track:2c5a9448cf4cbb34c843785d94ebc7c892cac3e416e12dc02819ce01c0dcc616` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
