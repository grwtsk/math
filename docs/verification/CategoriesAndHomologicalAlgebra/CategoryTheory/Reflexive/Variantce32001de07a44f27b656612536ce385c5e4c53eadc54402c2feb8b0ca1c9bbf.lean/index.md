# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Reflexive.Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "846370f62425f2863aac3c51db7d0148567c72b3",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `846370f62425f2863aac3c51db7d0148567c72b3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.KernelPair` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsReflexivePair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/declarations/isreflexivepair--db3ff40f09a348e13523271c.md) | 44 | `declaration-track:db3ff40f09a348e13523271c3a0dc4c74cb9020cb27558fd9b9620c83918c89f` |
| 2 | `theorem` | [IsReflexivePair.common_section](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/declarations/isreflexivepair-common-section--8da34e34929dc43232e5f2cd.md) | 49 | `result-track:8da34e34929dc43232e5f2cdf91a7a717b9106a563f85defa991ee46024168ac` |
| 3 | `class` | [IsCoreflexivePair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/declarations/iscoreflexivepair--565edf1e893facbb7bde4993.md) | 55 | `declaration-track:565edf1e893facbb7bde4993150a3a88404e6342c0a90e3e78593aa2d3f16acf` |
| 4 | `theorem` | [IsCoreflexivePair.common_retraction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/declarations/iscoreflexivepair-common-retraction--580d0b7d5fb36e4fe5336ea3.md) | 60 | `result-track:580d0b7d5fb36e4fe5336ea3d7da6de56ab717ad148746fb62b9eb15690b47d7` |
| 5 | `theorem` | [IsReflexivePair.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/declarations/isreflexivepair-mk--ca352e97c9a8c13645014836.md) | 63 | `result-track:ca352e97c9a8c13645014836082268aa1e6621e6703bd6c7aefa015853dca73a` |
| 6 | `theorem` | [IsCoreflexivePair.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/declarations/iscoreflexivepair-mk--b809122565a720a5a4e12973.md) | 68 | `result-track:b809122565a720a5a4e12973e687a3d51ae84d96f614144e6313613366dcf5f9` |
| 7 | `def` | [commonSection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/declarations/commonsection--674d3a84c7c9a8ee7ae7d824.md) | 74 | `declaration-track:674d3a84c7c9a8ee7ae7d82443cc20ceac66276d833db3a9625972ae92ba5acf` |
| 8 | `theorem` | [section_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/declarations/section-comp-left--496a50daea74431f14753627.md) | 79 | `result-track:496a50daea74431f14753627e08ff1200e40af76a57d85bbebdce8f1a0d756e1` |
| 9 | `theorem` | [section_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/declarations/section-comp-right--0c321b44f48d1eafb6354653.md) | 84 | `result-track:0c321b44f48d1eafb6354653e119b1cf76657c1ed1e9ae2c69bfbe88dbdb9247` |
| 10 | `def` | [commonRetraction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/declarations/commonretraction--204548008ac1b2d837a258e0.md) | 89 | `declaration-track:204548008ac1b2d837a258e01df5dcd81dce865d34e0246eb5a4852c5d964a98` |
| 11 | `theorem` | [left_comp_retraction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/declarations/left-comp-retraction--7c7da199c92f921dd7a78577.md) | 94 | `result-track:7c7da199c92f921dd7a7857711252b36461b297c8a56ce05bbcb30967c623bc0` |
| 12 | `theorem` | [right_comp_retraction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/declarations/right-comp-retraction--1ec43407dca9edd817ad0c1b.md) | 100 | `result-track:1ec43407dca9edd817ad0c1bca24b0f2edbfb9309f06af824ba4c63c5f949783` |
| 13 | `theorem` | [IsKernelPair.isReflexivePair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/declarations/iskernelpair-isreflexivepair--b6b2597d6d624f76d0de4dbc.md) | 106 | `result-track:b6b2597d6d624f76d0de4dbc2c4820c66ff3f15eec3a40e058823fae9401e03c` |
| 14 | `theorem` | [IsReflexivePair.swap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/declarations/isreflexivepair-swap--684b8584712427d2ec8ebd61.md) | 113 | `result-track:684b8584712427d2ec8ebd61bdc6bff180e8f481826076da36f50a40a4df15a2` |
| 15 | `theorem` | [IsCoreflexivePair.swap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/declarations/iscoreflexivepair-swap--068d2dcc1a1cbc6af1009984.md) | 119 | `result-track:068d2dcc1a1cbc6af1009984a090c5d0deef1137ba154d8001b1c64362042146` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/declarations/instance--1e8a04a4230ab1a2b851e064.md) | 126 | `declaration-track:1e8a04a4230ab1a2b851e064e59fd5a48547c9063e14f54014caeb9a0206cbcb` |
| 17 | `class` | [HasReflexiveCoequalizers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/declarations/hasreflexivecoequalizers--3150c4299c1500a3a7bb52a0.md) | 139 | `declaration-track:3150c4299c1500a3a7bb52a0389d8950860d72c198f9ffb0d6e403fe5633b9e9` |
| 18 | `class` | [HasCoreflexiveEqualizers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/declarations/hascoreflexiveequalizers--4698992580416aeb2c605510.md) | 144 | `declaration-track:4698992580416aeb2c6055101f279e4e31274612fbe46ea66d1683757ff3007c` |
| 19 | `theorem` | [hasCoequalizer_of_common_section](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/declarations/hascoequalizer-of-common-section--5c2eb75f890e5f2364862b83.md) | 152 | `result-track:5c2eb75f890e5f2364862b835f68a680e41b70c67fe1247743d6eba85ebe754a` |
| 20 | `theorem` | [hasEqualizer_of_common_retraction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/declarations/hasequalizer-of-common-retraction--3c1b3cc42db3364ee01ae24e.md) | 158 | `result-track:3c1b3cc42db3364ee01ae24e6f2228eebeb0922a244199207e6bf63ca6a81516` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/declarations/instance--00fe59c4b67b02377761ea06.md) | 165 | `declaration-track:00fe59c4b67b02377761ea06ba374adb122c544f15fbcc756a464ea018f1c571` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/declarations/instance--25066a8dc6561f1c08db9565.md) | 170 | `declaration-track:25066a8dc6561f1c08db9565a704e32ccde4fbe33ff1a28d0cb9b575dd8d8771` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
