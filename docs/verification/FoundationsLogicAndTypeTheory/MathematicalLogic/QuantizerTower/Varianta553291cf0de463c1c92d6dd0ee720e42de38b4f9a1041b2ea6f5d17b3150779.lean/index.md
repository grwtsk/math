# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.QuantizerTower.Varianta553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46b6bd68f0e952fd2be7e9ffbd410da5529ca163",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Varianta553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Varianta553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Varianta553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46b6bd68f0e952fd2be7e9ffbd410da5529ca163`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Varianta553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Varianta553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal.ObserverFactor` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BoundedOrder.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [QuantizerTower](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Varianta553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779.lean/declarations/quantizertower--e18fbcb3f92667911b294316.md) | 29 | `declaration-track:e18fbcb3f92667911b294316bb9cceae1711a71ffd05e2d1dc8a388250d8f44a` |
| 2 | `theorem` | [localCausalEquivalent_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Varianta553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779.lean/declarations/localcausalequivalent-of-le--3c600bf067556eca23c9edf0.md) | 55 | `result-track:3c600bf067556eca23c9edf0eb9e7416f7ef5b8a0801a476b26a330409f2c7fa` |
| 3 | `def` | [localProject](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Varianta553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779.lean/declarations/localproject--8855bef13068c9ba39f37446.md) | 73 | `declaration-track:8855bef13068c9ba39f374466886c325909a6817a5ace587da2a594d4d06059f` |
| 4 | `theorem` | [localProject_toLocalCausal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Varianta553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779.lean/declarations/localproject-tolocalcausal--b878f121e9aab0d9170a0950.md) | 82 | `result-track:b878f121e9aab0d9170a09504416777c32ffd925525c848d7133e3a95ee66b9e` |
| 5 | `theorem` | [localProject_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Varianta553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779.lean/declarations/localproject-surjective--a38efdd79c91d09cc6646053.md) | 92 | `result-track:a38efdd79c91d09cc66460538bd508632c715e73ab196c85671e2912c761721c` |
| 6 | `theorem` | [localProject_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Varianta553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779.lean/declarations/localproject-step--4dc0e5fafa12efd13f40df06.md) | 103 | `result-track:4dc0e5fafa12efd13f40df06c200c896e2fbde7f7f47561a762c5401a15d96f4` |
| 7 | `theorem` | [localProject_observe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Varianta553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779.lean/declarations/localproject-observe--a53194f91894fbee9eadff4f.md) | 116 | `result-track:a53194f91894fbee9eadff4f2f43f5944166d585a436860c8ecc34bf8ec9015a` |
| 8 | `theorem` | [localProject_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Varianta553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779.lean/declarations/localproject-refl--dccb83cee6e8ef3bce43eae4.md) | 128 | `result-track:dccb83cee6e8ef3bce43eae4c8e166e2d25e8557981d7b0e22d88934db14da28` |
| 9 | `theorem` | [localProject_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Varianta553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779.lean/declarations/localproject-trans--513a433cfc1aaa8c2bcdcf55.md) | 138 | `result-track:513a433cfc1aaa8c2bcdcf557829e8558739b641fea30b37d349d65d01f04022` |
| 10 | `theorem` | [causalToLocal_naturality](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Varianta553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779.lean/declarations/causaltolocal-naturality--1237deddc5cc36b166c31168.md) | 151 | `result-track:1237deddc5cc36b166c311681b048f554f2ad9379c0efee7cecf013fe69c2cb8` |
| 11 | `theorem` | [causalToFinestLocal_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Varianta553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779.lean/declarations/causaltofinestlocal-injective--83b111d58e40c10406f39f46.md) | 167 | `result-track:83b111d58e40c10406f39f4685b1ea6a04339f7df3f73aba7535578c8d7c8768` |
| 12 | `def` | [causalStateEquivFinestLocal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Varianta553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779.lean/declarations/causalstateequivfinestlocal--61a7b5ecf9406816e5056eb3.md) | 192 | `declaration-track:61a7b5ecf9406816e5056eb36b759b859837b90ae90f603287e504a666fd76b0` |
| 13 | `theorem` | [causalStateEquivFinestLocal_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Varianta553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779.lean/declarations/causalstateequivfinestlocal-apply--542c49cbbefb5d0f2f5d3872.md) | 200 | `result-track:542c49cbbefb5d0f2f5d38722193750325301b3ae228ea78c4be0bfd066aa795` |
| 14 | `structure` | [ClosedObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Varianta553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779.lean/declarations/closedobservation--46117ffdd7095c2f3135ae53.md) | 220 | `declaration-track:46117ffdd7095c2f3135ae530b1a09d920425d558fd1961bfc86390a67b1eae7` |
| 15 | `theorem` | [localCausalEquivalent_iff_currentObservation_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Varianta553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779.lean/declarations/localcausalequivalent-iff-currentobservation-eq--fd2d200410bd336c7dc9c399.md) | 232 | `result-track:fd2d200410bd336c7dc9c399dee7ba9ac80a3df87adb47f043af8386a201003f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
