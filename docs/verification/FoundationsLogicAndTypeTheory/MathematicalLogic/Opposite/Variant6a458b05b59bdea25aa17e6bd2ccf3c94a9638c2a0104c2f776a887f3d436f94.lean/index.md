# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Opposite.Variant6a458b05b59bdea25aa17e6bd2ccf3c94a9638c2a0104c2f776a887f3d436f94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed3fcf9af8f08b3ae64ef329f8e80676f349ce4d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant6a458b05b59bdea25aa17e6bd2ccf3c94a9638c2a0104c2f776a887f3d436f94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant6a458b05b59bdea25aa17e6bd2ccf3c94a9638c2a0104c2f776a887f3d436f94.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant6a458b05b59bdea25aa17e6bd2ccf3c94a9638c2a0104c2f776a887f3d436f94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed3fcf9af8f08b3ae64ef329f8e80676f349ce4d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant6a458b05b59bdea25aa17e6bd2ccf3c94a9638c2a0104c2f776a887f3d436f94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant6a458b05b59bdea25aa17e6bd2ccf3c94a9638c2a0104c2f776a887f3d436f94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Opposite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant6a458b05b59bdea25aa17e6bd2ccf3c94a9638c2a0104c2f776a887f3d436f94.lean/declarations/opposite--fd03c57372ab42c6e87a5256.md) | 43 | `declaration-track:fd03c57372ab42c6e87a52569f83c99ae6c1bd379bfa4df525256ebc28420a1f` |
| 2 | `def` | [op](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant6a458b05b59bdea25aa17e6bd2ccf3c94a9638c2a0104c2f776a887f3d436f94.lean/declarations/op--28fce53e7d22b95f33805aa8.md) | 61 | `declaration-track:28fce53e7d22b95f33805aa83c159b938929ecad55323c68ad0461ac33a44bc1` |
| 3 | `theorem` | [op_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant6a458b05b59bdea25aa17e6bd2ccf3c94a9638c2a0104c2f776a887f3d436f94.lean/declarations/op-injective--b2321d7ca412a0152cdaa7ba.md) | 64 | `result-track:b2321d7ca412a0152cdaa7ba78e94387c1e083b156542b6ca8023b1cca8f23dc` |
| 4 | `theorem` | [unop_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant6a458b05b59bdea25aa17e6bd2ccf3c94a9638c2a0104c2f776a887f3d436f94.lean/declarations/unop-injective--6ac24358f5f71b2e06913370.md) | 67 | `result-track:6ac24358f5f71b2e06913370a56ffc5b84675809b6989dc8f7d10adc79014fa5` |
| 5 | `theorem` | [op_unop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant6a458b05b59bdea25aa17e6bd2ccf3c94a9638c2a0104c2f776a887f3d436f94.lean/declarations/op-unop--fe87cbc3fa3959a82c959983.md) | 71 | `result-track:fe87cbc3fa3959a82c95998338249576f558dfee24a913bb82cf124926fb6630` |
| 6 | `theorem` | [unop_op](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant6a458b05b59bdea25aa17e6bd2ccf3c94a9638c2a0104c2f776a887f3d436f94.lean/declarations/unop-op--b40c4f716403b4e05adcebcb.md) | 76 | `result-track:b40c4f716403b4e05adcebcb0cca9d844e6b9e5e9471a414261d7884f1b143b8` |
| 7 | `theorem` | [op_inj_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant6a458b05b59bdea25aa17e6bd2ccf3c94a9638c2a0104c2f776a887f3d436f94.lean/declarations/op-inj-iff--e18c01c822bebfb06079090f.md) | 83 | `result-track:e18c01c822bebfb06079090f3e4d6e50fc3da1167a8c3437ebebaacfcc19e022` |
| 8 | `theorem` | [unop_inj_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant6a458b05b59bdea25aa17e6bd2ccf3c94a9638c2a0104c2f776a887f3d436f94.lean/declarations/unop-inj-iff--1635ba6f0791164ac708f03f.md) | 88 | `result-track:1635ba6f0791164ac708f03f1f5e745e57c046b4a01324b7a35afa73565759c3` |
| 9 | `def` | [equivToOpposite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant6a458b05b59bdea25aa17e6bd2ccf3c94a9638c2a0104c2f776a887f3d436f94.lean/declarations/equivtoopposite--965052c08e66c3da9c8e346a.md) | 93 | `declaration-track:965052c08e66c3da9c8e346a8ea177d7b8ebed6bd6c10baba5fcde38b23ade46` |
| 10 | `theorem` | [equivToOpposite_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant6a458b05b59bdea25aa17e6bd2ccf3c94a9638c2a0104c2f776a887f3d436f94.lean/declarations/equivtoopposite-coe--20444e57924bfbb6262da827.md) | 101 | `result-track:20444e57924bfbb6262da827ec7b6656fa604f5089ebddd0661c7b2fa58a24bb` |
| 11 | `theorem` | [equivToOpposite_symm_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant6a458b05b59bdea25aa17e6bd2ccf3c94a9638c2a0104c2f776a887f3d436f94.lean/declarations/equivtoopposite-symm-coe--30de6f6aafcaec68cddbc90a.md) | 106 | `result-track:30de6f6aafcaec68cddbc90ab2c34038836e6f732870d77b86fd0b4d7b0d8b25` |
| 12 | `theorem` | [op_eq_iff_eq_unop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant6a458b05b59bdea25aa17e6bd2ccf3c94a9638c2a0104c2f776a887f3d436f94.lean/declarations/op-eq-iff-eq-unop--98224dead4153cd4ed52faf5.md) | 110 | `result-track:98224dead4153cd4ed52faf5ce5bade18ac6d76b2cd0fed78427aed4b809b44a` |
| 13 | `theorem` | [unop_eq_iff_eq_op](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant6a458b05b59bdea25aa17e6bd2ccf3c94a9638c2a0104c2f776a887f3d436f94.lean/declarations/unop-eq-iff-eq-op--ee1acbb54cb2da6bb737484b.md) | 114 | `result-track:ee1acbb54cb2da6bb737484bdd6f08c4fc15d46e83f8158bcbba4caec27decc0` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant6a458b05b59bdea25aa17e6bd2ccf3c94a9638c2a0104c2f776a887f3d436f94.lean/declarations/instance--77d2b4b96b8acc8692e45e5f.md) | 118 | `declaration-track:77d2b4b96b8acc8692e45e5f8bb8bea4815aff326f127eb7ed007f2427390f5f` |
| 15 | `def` | [rec'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant6a458b05b59bdea25aa17e6bd2ccf3c94a9638c2a0104c2f776a887f3d436f94.lean/declarations/rec--66c823cb543205d603877c90.md) | 125 | `declaration-track:66c823cb543205d603877c907e1e695b5884d15062664be09815c79e6399704f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
