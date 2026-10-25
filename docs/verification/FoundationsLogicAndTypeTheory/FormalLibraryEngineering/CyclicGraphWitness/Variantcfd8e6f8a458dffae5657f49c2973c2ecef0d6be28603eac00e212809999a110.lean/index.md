# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CyclicGraphWitness.Variantcfd8e6f8a458dffae5657f49c2973c2ecef0d6be28603eac00e212809999a110

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b920203acb962d3848738812eec3281e9e5c0372",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variantcfd8e6f8a458dffae5657f49c2973c2ecef0d6be28603eac00e212809999a110.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variantcfd8e6f8a458dffae5657f49c2973c2ecef0d6be28603eac00e212809999a110.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variantcfd8e6f8a458dffae5657f49c2973c2ecef0d6be28603eac00e212809999a110.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b920203acb962d3848738812eec3281e9e5c0372`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variantcfd8e6f8a458dffae5657f49c2973c2ecef0d6be28603eac00e212809999a110.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variantcfd8e6f8a458dffae5657f49c2973c2ecef0d6be28603eac00e212809999a110.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.FiniteLatticeArithmetic.CyclicRepresentation` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.FiniteLatticeArithmetic.GraphCriterion` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cyclicGroupAlgebra](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variantcfd8e6f8a458dffae5657f49c2973c2ecef0d6be28603eac00e212809999a110.lean/declarations/cyclicgroupalgebra--fe28b6778159e367864ae84c.md) | 23 | `declaration-track:fe28b6778159e367864ae84cafb4b5ae419fa32ac852faef8c2a2c6f70da7a11` |
| 2 | `def` | [groupAlgebraCongruenceOrderIso](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variantcfd8e6f8a458dffae5657f49c2973c2ecef0d6be28603eac00e212809999a110.lean/declarations/groupalgebracongruenceorderiso--e4b72cc17e463cf8f62db15e.md) | 31 | `declaration-track:e4b72cc17e463cf8f62db15e370b1adf2f9b2c49fc4439319eb62d8a5ff4686b` |
| 3 | `def` | [subgroupNormalOrderIso](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variantcfd8e6f8a458dffae5657f49c2973c2ecef0d6be28603eac00e212809999a110.lean/declarations/subgroupnormalorderiso--9dbdbbfdcfd0dd2ae489cd97.md) | 55 | `declaration-track:9dbdbbfdcfd0dd2ae489cd9762e25bbe8eda6f3169150f8310a621f438a5173e` |
| 4 | `def` | [cyclicGroupCongruenceOrderIso](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variantcfd8e6f8a458dffae5657f49c2973c2ecef0d6be28603eac00e212809999a110.lean/declarations/cyclicgroupcongruenceorderiso--714ea7d77d5d7171fe2ba6ae.md) | 64 | `declaration-track:714ea7d77d5d7171fe2ba6ae73421b7d55a37ad78fc1d5f6414dbdd86b3b709a` |
| 5 | `theorem` | [cyclicGroupCongruence_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variantcfd8e6f8a458dffae5657f49c2973c2ecef0d6be28603eac00e212809999a110.lean/declarations/cyclicgroupcongruence-apply--a254ba9f40f760cdf1bbb343.md) | 71 | `result-track:a254ba9f40f760cdf1bbb343d43922b5933789b6f5d57d1f3bf38f162d6f133e` |
| 6 | `theorem` | [cyclicColor_eq_principalColor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variantcfd8e6f8a458dffae5657f49c2973c2ecef0d6be28603eac00e212809999a110.lean/declarations/cycliccolor-eq-principalcolor--b9b39581de881e2eb4bbcd2a.md) | 80 | `result-track:b9b39581de881e2eb4bbcd2a372572c6f5350b9359252b6ce456fe238e27834d` |
| 7 | `theorem` | [cyclicColor_isGraphWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variantcfd8e6f8a458dffae5657f49c2973c2ecef0d6be28603eac00e212809999a110.lean/declarations/cycliccolor-isgraphwitness--b0f71a52dfe926e0ffc5acca.md) | 89 | `result-track:b0f71a52dfe926e0ffc5acca63c3028c996631f778accb678a052a969f3dd239` |
| 8 | `theorem` | [cyclicColor_saturation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variantcfd8e6f8a458dffae5657f49c2973c2ecef0d6be28603eac00e212809999a110.lean/declarations/cycliccolor-saturation--7fd199636991c398a64fc4f0.md) | 96 | `result-track:7fd199636991c398a64fc4f0522170099d256ca294ff9ffccef2c006c21e590e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
