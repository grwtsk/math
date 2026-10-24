# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GroupWithZeroCat.Variantc52259fe73f995d1c0e71ecd63d8af5634a4cc468a1a6663124a82b7b1f9b2d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b9fb2cc4e983e0e1b78975e471d150b8aa335d9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GroupWithZeroCat/Variantc52259fe73f995d1c0e71ecd63d8af5634a4cc468a1a6663124a82b7b1f9b2d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GroupWithZeroCat/Variantc52259fe73f995d1c0e71ecd63d8af5634a4cc468a1a6663124a82b7b1f9b2d2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GroupWithZeroCat/Variantc52259fe73f995d1c0e71ecd63d8af5634a4cc468a1a6663124a82b7b1f9b2d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b9fb2cc4e983e0e1b78975e471d150b8aa335d9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GroupWithZeroCat/Variantc52259fe73f995d1c0e71ecd63d8af5634a4cc468a1a6663124a82b7b1f9b2d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GroupWithZeroCat/Variantc52259fe73f995d1c0e71ecd63d8af5634a4cc468a1a6663124a82b7b1f9b2d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Bipointed` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.MonCat.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GroupWithZeroCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GroupWithZeroCat/Variantc52259fe73f995d1c0e71ecd63d8af5634a4cc468a1a6663124a82b7b1f9b2d2.lean/declarations/groupwithzerocat--a1d37c54e3f0d244d00ebc6f.md) | 33 | `declaration-track:a1d37c54e3f0d244d00ebc6f5c7b3d1ab04f96bd0cdebf9f140a66a5b2f910a3` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GroupWithZeroCat/Variantc52259fe73f995d1c0e71ecd63d8af5634a4cc468a1a6663124a82b7b1f9b2d2.lean/declarations/instance--50a423710f5df30ed2048a7b.md) | 40 | `declaration-track:50a423710f5df30ed2048a7bbc9bcd204bd5941643bc6097bfe857e7dfa88947` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GroupWithZeroCat/Variantc52259fe73f995d1c0e71ecd63d8af5634a4cc468a1a6663124a82b7b1f9b2d2.lean/declarations/instance--5a047dc17aa8d52ea6550690.md) | 43 | `declaration-track:5a047dc17aa8d52ea655069099fc0925be8b2cd5feb82976a1e4d106a41783c6` |
| 4 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GroupWithZeroCat/Variantc52259fe73f995d1c0e71ecd63d8af5634a4cc468a1a6663124a82b7b1f9b2d2.lean/declarations/of--c31f03340d6353b9b4b919d4.md) | 47 | `declaration-track:c31f03340d6353b9b4b919d4fe9a9fa5a57da1256caa4f028485921c334fd612` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GroupWithZeroCat/Variantc52259fe73f995d1c0e71ecd63d8af5634a4cc468a1a6663124a82b7b1f9b2d2.lean/declarations/instance--8feca3f7180afacb9329e15f.md) | 52 | `declaration-track:8feca3f7180afacb9329e15f1ab0e0bc5c0b4a3288180a12d14ddfe577d59689` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GroupWithZeroCat/Variantc52259fe73f995d1c0e71ecd63d8af5634a4cc468a1a6663124a82b7b1f9b2d2.lean/declarations/instance--535264c76d014a215e4b02d2.md) | 55 | `declaration-track:535264c76d014a215e4b02d2ff077b3a894de975ff2adc4f3cb49b5b7781c6c3` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GroupWithZeroCat/Variantc52259fe73f995d1c0e71ecd63d8af5634a4cc468a1a6663124a82b7b1f9b2d2.lean/declarations/instance--f97701efbcae653d8c59d06d.md) | 64 | `declaration-track:f97701efbcae653d8c59d06df66516861b6644a8008351600164ce3a5723bf79` |
| 8 | `lemma` | [coe_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GroupWithZeroCat/Variantc52259fe73f995d1c0e71ecd63d8af5634a4cc468a1a6663124a82b7b1f9b2d2.lean/declarations/coe-id--a17ecd2d7428531d8f3deaaf.md) | 73 | `result-track:a17ecd2d7428531d8f3deaaf0129ca45e8405c181ce5c3e3458036f4ba3170b9` |
| 9 | `lemma` | [coe_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GroupWithZeroCat/Variantc52259fe73f995d1c0e71ecd63d8af5634a4cc468a1a6663124a82b7b1f9b2d2.lean/declarations/coe-comp--182bcc96fdd1383629b18269.md) | 76 | `result-track:182bcc96fdd1383629b1826952916605ee6dea1ae9e8f0207d528b0b3a2cd155` |
| 10 | `instance` | [groupWithZeroConcreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GroupWithZeroCat/Variantc52259fe73f995d1c0e71ecd63d8af5634a4cc468a1a6663124a82b7b1f9b2d2.lean/declarations/groupwithzeroconcretecategory--8e9c23a2cfa5bc18015885b7.md) | 78 | `declaration-track:8e9c23a2cfa5bc18015885b757e476f9f2be0d5804e507146355e8dc19010cc7` |
| 11 | `lemma` | [forget_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GroupWithZeroCat/Variantc52259fe73f995d1c0e71ecd63d8af5634a4cc468a1a6663124a82b7b1f9b2d2.lean/declarations/forget-map--5e065f0ea4450623cd16e581.md) | 85 | `result-track:5e065f0ea4450623cd16e581556a958a518651f6db3b580da7d68d89c93845b1` |
| 12 | `instance` | [hasForgetToBipointed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GroupWithZeroCat/Variantc52259fe73f995d1c0e71ecd63d8af5634a4cc468a1a6663124a82b7b1f9b2d2.lean/declarations/hasforgettobipointed--1f6187cfbc17c2ed26c7774a.md) | 86 | `declaration-track:1f6187cfbc17c2ed26c7774ae87c6997f9a2a12dda557fa2b147fd919a807234` |
| 13 | `instance` | [hasForgetToMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GroupWithZeroCat/Variantc52259fe73f995d1c0e71ecd63d8af5634a4cc468a1a6663124a82b7b1f9b2d2.lean/declarations/hasforgettomon--56eff5905b91923a727e4b90.md) | 93 | `declaration-track:56eff5905b91923a727e4b906076c88a411eb173543efb8f06081bdd44055264` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GroupWithZeroCat/Variantc52259fe73f995d1c0e71ecd63d8af5634a4cc468a1a6663124a82b7b1f9b2d2.lean/declarations/instance--edecf44ede96d32bb616d764.md) | 101 | `declaration-track:edecf44ede96d32bb616d764c09d5b48d58c3ae4b32d908a208d6ecee8d19780` |
| 15 | `def` | [Iso.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GroupWithZeroCat/Variantc52259fe73f995d1c0e71ecd63d8af5634a4cc468a1a6663124a82b7b1f9b2d2.lean/declarations/iso-mk--420b10866675a1a9e877ac38.md) | 106 | `declaration-track:420b10866675a1a9e877ac38632fd8772be13f7f6ae26c00a45497312c14e276` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
