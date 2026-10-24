# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PartialFun.Variantcace8e80494e0b855e42c11629dc16c7c6d03c2ee138f6711f5456b1f149dc25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "203fe87f3aaeab09734460ac0ebdb92ecbe742ce",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variantcace8e80494e0b855e42c11629dc16c7c6d03c2ee138f6711f5456b1f149dc25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variantcace8e80494e0b855e42c11629dc16c7c6d03c2ee138f6711f5456b1f149dc25.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variantcace8e80494e0b855e42c11629dc16c7c6d03c2ee138f6711f5456b1f149dc25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `203fe87f3aaeab09734460ac0ebdb92ecbe742ce`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variantcace8e80494e0b855e42c11629dc16c7c6d03c2ee138f6711f5456b1f149dc25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variantcace8e80494e0b855e42c11629dc16c7c6d03c2ee138f6711f5456b1f149dc25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Pointed` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFun` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PartialFun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variantcace8e80494e0b855e42c11629dc16c7c6d03c2ee138f6711f5456b1f149dc25.lean/declarations/partialfun--446651c3d4f7bd46423cab92.md) | 42 | `declaration-track:446651c3d4f7bd46423cab92dfb6152c515de4e9289b3a17613d1e8b088fc2ca` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variantcace8e80494e0b855e42c11629dc16c7c6d03c2ee138f6711f5456b1f149dc25.lean/declarations/instance--45fb9d4e2a1c5f26ad5b4bce.md) | 47 | `declaration-track:45fb9d4e2a1c5f26ad5b4bce9da872c357dff33e941ad6954fdcb95eb7fbb54c` |
| 3 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variantcace8e80494e0b855e42c11629dc16c7c6d03c2ee138f6711f5456b1f149dc25.lean/declarations/of--c76e0bcd8a8f89f529f89046.md) | 51 | `declaration-track:c76e0bcd8a8f89f529f8904651f8eca8c802807b6f44bcb460bc63033b6cc2ae` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variantcace8e80494e0b855e42c11629dc16c7c6d03c2ee138f6711f5456b1f149dc25.lean/declarations/instance--87e090f1090612c89307a2f8.md) | 54 | `declaration-track:87e090f1090612c89307a2f881b63cb1615e8cb0e6b5f944f10979e6ac540f75` |
| 5 | `instance` | [largeCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variantcace8e80494e0b855e42c11629dc16c7c6d03c2ee138f6711f5456b1f149dc25.lean/declarations/largecategory--85fd0b30d44ce6f2f56e24c0.md) | 57 | `declaration-track:85fd0b30d44ce6f2f56e24c00d5060bb21116929c5188213834b0b6a22c203fb` |
| 6 | `def` | [Iso.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variantcace8e80494e0b855e42c11629dc16c7c6d03c2ee138f6711f5456b1f149dc25.lean/declarations/iso-mk--a61d4882040ae8e058185496.md) | 67 | `declaration-track:a61d4882040ae8e058185496c0fad3b5728b69737aefc11f5ce9b44f39dd3efc` |
| 7 | `def` | [typeToPartialFun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variantcace8e80494e0b855e42c11629dc16c7c6d03c2ee138f6711f5456b1f149dc25.lean/declarations/typetopartialfun--d3e43a4d9b8f34297f91b870.md) | 80 | `declaration-track:d3e43a4d9b8f34297f91b870d86689e4f8e20db81e562841f9ec6ecce8598c32` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variantcace8e80494e0b855e42c11629dc16c7c6d03c2ee138f6711f5456b1f149dc25.lean/declarations/instance--c283da13ef5ceeb2c6cd027a.md) | 85 | `declaration-track:c283da13ef5ceeb2c6cd027abbd03681bd848bf616b2d651e1a54f87dc0f0cfd` |
| 9 | `def` | [pointedToPartialFun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variantcace8e80494e0b855e42c11629dc16c7c6d03c2ee138f6711f5456b1f149dc25.lean/declarations/pointedtopartialfun--a1ceaaca33ef71840147d3a4.md) | 92 | `declaration-track:a1ceaaca33ef71840147d3a45fb34097bb4e145687e57bd393da54ed7afcabc6` |
| 10 | `def` | [partialFunToPointed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variantcace8e80494e0b855e42c11629dc16c7c6d03c2ee138f6711f5456b1f149dc25.lean/declarations/partialfuntopointed--1b516aa4c55b045ec22f1716.md) | 112 | `declaration-track:1b516aa4c55b045ec22f171601d812e8d734db6d01cf87dca4e0952cee4c8bfa` |
| 11 | `def` | [partialFunEquivPointed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variantcace8e80494e0b855e42c11629dc16c7c6d03c2ee138f6711f5456b1f149dc25.lean/declarations/partialfunequivpointed--85fefc2438bfc125d8c60b05.md) | 127 | `declaration-track:85fefc2438bfc125d8c60b05066e8911f052cbd8335cdd9c3884359b3b19a0a7` |
| 12 | `def` | [typeToPartialFunIsoPartialFunToPointed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variantcace8e80494e0b855e42c11629dc16c7c6d03c2ee138f6711f5456b1f149dc25.lean/declarations/typetopartialfunisopartialfuntopointed--325e9f5b2bd6b2b25032d88c.md) | 171 | `declaration-track:325e9f5b2bd6b2b25032d88c9094f44b050fa26fc6bb93c5c5f1bfd2faff228b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
