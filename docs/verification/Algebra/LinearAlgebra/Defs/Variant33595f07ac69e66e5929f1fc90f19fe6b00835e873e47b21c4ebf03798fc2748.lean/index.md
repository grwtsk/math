# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63986f1bd3323d75091d227fd59bb6280a161db4",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63986f1bd3323d75091d227fd59bb6280a161db4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Module](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean/declarations/module--41117c2540a51a626c817c21.md) | 50 | `declaration-track:41117c2540a51a626c817c21ff4177f7e45aae33436c3c901a075ded7c158fc9` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean/declarations/instance--aae251b29f17aa0d7e53f918.md) | 63 | `declaration-track:aae251b29f17aa0d7e53f918d1185e4d7dfbd7d07d7fdd1a8e29b5d38c29cba6` |
| 3 | `theorem` | [add_smul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean/declarations/add-smul--8c4ce1a9ecd9fed183375829.md) | 69 | `result-track:8c4ce1a9ecd9fed1833758290ac2ea676b843f69c273a38ea83d6a208bece51e` |
| 4 | `theorem` | [Convex.combo_self](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean/declarations/convex-combo-self--a84310458bb8aa03c8384f72.md) | 72 | `result-track:a84310458bb8aa03c8384f72fe66edb4cf7ffd114101d07b59d8113a231e587c` |
| 5 | `theorem` | [two_smul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean/declarations/two-smul--8a73a4eb1ff0979da2441f13.md) | 77 | `result-track:8a73a4eb1ff0979da2441f133600428a70d0417a41c77d4061b50721263da40c` |
| 6 | `abbrev` | [Function.Injective.module](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean/declarations/function-injective-module--fb7e57a677fd50a435cea499.md) | 81 | `declaration-track:fb7e57a677fd50a435cea4991af1bb867e5f8e08c319a0055a29967db9250178` |
| 7 | `abbrev` | [Function.Surjective.module](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean/declarations/function-surjective-module--efe28390874e33ed82094b98.md) | 89 | `declaration-track:efe28390874e33ed82094b983db0bba5dc66867c739db0210b35635354287e22` |
| 8 | `theorem` | [Module.eq_zero_of_zero_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean/declarations/module-eq-zero-of-zero-eq-one--6a11951e2fe5850e3215a36b.md) | 101 | `result-track:6a11951e2fe5850e3215a36b6e5c36a902f92ff7074036df0b0c139ede448f74` |
| 9 | `theorem` | [smul_add_one_sub_smul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean/declarations/smul-add-one-sub-smul--c77303945ef174e5435baba7.md) | 105 | `result-track:c77303945ef174e5435baba75d841c901527033f1668ceeaa7e63e22cf9ebe08` |
| 10 | `theorem` | [Convex.combo_eq_smul_sub_add](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean/declarations/convex-combo-eq-smul-sub-add--a3f275c4ced039758db33210.md) | 114 | `result-track:a3f275c4ced039758db332102cbecb2c68029a5c2241c7ff9d44e2e92ca92868` |
| 11 | `theorem` | [Module.ext'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean/declarations/module-ext--e012c7c4420fe04af78aac4b.md) | 124 | `result-track:e012c7c4420fe04af78aac4b7dadbc3ab0dc522ace326bbc936b4e16b30a0d76` |
| 12 | `theorem` | [neg_smul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean/declarations/neg-smul--c8c44b92af1fe3e90a579922.md) | 135 | `result-track:c8c44b92af1fe3e90a579922fe02831842b9feccbab473d81675dca26d096334` |
| 13 | `theorem` | [neg_smul_neg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean/declarations/neg-smul-neg--890c4a8aa76c8f18fcf6cb47.md) | 138 | `result-track:890c4a8aa76c8f18fcf6cb47b959c8bfa08d4c4ed0c64a47fb5fddeec46cbdd9` |
| 14 | `theorem` | [neg_one_smul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean/declarations/neg-one-smul--b8ab981a05f4f640b057d5bf.md) | 142 | `result-track:b8ab981a05f4f640b057d5bfee1f5af57d59d560b08043e80f134c437366b7ce` |
| 15 | `theorem` | [sub_smul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean/declarations/sub-smul--4f48cbdb5282be7e8ad22572.md) | 146 | `result-track:4f48cbdb5282be7e8ad225725a979595714e4b951b23840051cbce5f69bbd72e` |
| 16 | `theorem` | [Module.subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean/declarations/module-subsingleton--3ce76537f69bb18cb5b38f23.md) | 153 | `result-track:3ce76537f69bb18cb5b38f2363bbb959fcdc69bb9e03c19d939445226c53e9a0` |
| 17 | `theorem` | [Module.nontrivial](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean/declarations/module-nontrivial--c93b290483973517e4688f19.md) | 158 | `result-track:c93b290483973517e4688f192ad4ceae11e0b7dd243d944b54bd65b0fd0082d7` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean/declarations/instance--13d4372eb4b599cbcba8d762.md) | 163 | `declaration-track:13d4372eb4b599cbcba8d7621f135cbfb3af3e4750e446f404427297d388b073` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant33595f07ac69e66e5929f1fc90f19fe6b00835e873e47b21c4ebf03798fc2748.lean/declarations/instance--329abaa39fe1111b148049e0.md) | 169 | `declaration-track:329abaa39fe1111b148049e0e4ad7a0bed43ba25ddf68f060e1bde9fa0a0bba5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
