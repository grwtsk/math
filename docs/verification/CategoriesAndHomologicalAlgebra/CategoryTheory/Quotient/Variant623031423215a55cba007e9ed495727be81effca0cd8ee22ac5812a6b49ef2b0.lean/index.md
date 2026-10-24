# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Quotient.Variant623031423215a55cba007e9ed495727be81effca0cd8ee22ac5812a6b49ef2b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a536a910f61b967df8ac30767d06737362f6631",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant623031423215a55cba007e9ed495727be81effca0cd8ee22ac5812a6b49ef2b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant623031423215a55cba007e9ed495727be81effca0cd8ee22ac5812a6b49ef2b0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant623031423215a55cba007e9ed495727be81effca0cd8ee22ac5812a6b49ef2b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a536a910f61b967df8ac30767d06737362f6631`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant623031423215a55cba007e9ed495727be81effca0cd8ee22ac5812a6b49ef2b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant623031423215a55cba007e9ed495727be81effca0cd8ee22ac5812a6b49ef2b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCompatibleWithShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant623031423215a55cba007e9ed495727be81effca0cd8ee22ac5812a6b49ef2b0.lean/declarations/iscompatiblewithshift--457fd0517c600b591dcd4e35.md) | 47 | `declaration-track:457fd0517c600b591dcd4e357490d6cc0c4b2a1353da2e4e607fdf9a33c0e93e` |
| 2 | `instance` | [HasShift.quotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant623031423215a55cba007e9ed495727be81effca0cd8ee22ac5812a6b49ef2b0.lean/declarations/hasshift-quotient--cf0168cafb49978e1ff2cd67.md) | 57 | `declaration-track:cf0168cafb49978e1ff2cd671fe76bec83ea9d6cb8a8faa54800f5f4c52bf397` |
| 3 | `instance` | [Quotient.functor_commShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant623031423215a55cba007e9ed495727be81effca0cd8ee22ac5812a6b49ef2b0.lean/declarations/quotient-functor-commshift--fce1b215db4073f0d3c62d53.md) | 65 | `declaration-track:fce1b215db4073f0d3c62d5394c640d66a757c514519346e89a941e7eca3f283` |
| 4 | `lemma` | [Quotient.functor_obj_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant623031423215a55cba007e9ed495727be81effca0cd8ee22ac5812a6b49ef2b0.lean/declarations/quotient-functor-obj-shift--58a7cbc636052ba76ae0145a.md) | 69 | `result-track:58a7cbc636052ba76ae0145ac9febef1b3504706bdadf1052650e335e823f051` |
| 5 | `def` | [iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant623031423215a55cba007e9ed495727be81effca0cd8ee22ac5812a6b49ef2b0.lean/declarations/iso--b439cbcad497dbea3cff011b.md) | 85 | `declaration-track:b439cbcad497dbea3cff011b00c9860fb43ebc374c0639ac1849f24dc7d25d04` |
| 6 | `lemma` | [iso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant623031423215a55cba007e9ed495727be81effca0cd8ee22ac5812a6b49ef2b0.lean/declarations/iso-hom-app--bf45437d071533eb7fd9d64f.md) | 94 | `result-track:bf45437d071533eb7fd9d64f8d53c0cc5196e19c6bc3db738aafe684120c66e4` |
| 7 | `lemma` | [iso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant623031423215a55cba007e9ed495727be81effca0cd8ee22ac5812a6b49ef2b0.lean/declarations/iso-inv-app--77d7c36452fdbdb1bb9a2da2.md) | 102 | `result-track:77d7c36452fdbdb1bb9a2da2a2fa298569bfc587af0cd33fc2c1857055582020` |
| 8 | `instance` | [liftCommShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant623031423215a55cba007e9ed495727be81effca0cd8ee22ac5812a6b49ef2b0.lean/declarations/liftcommshift--459fc44a8603d915d9788b99.md) | 117 | `declaration-track:459fc44a8603d915d9788b99b7b472595523614da29c1d50e2a78b4f82ea43e8` |
| 9 | `instance` | [liftCommShift_compatibility](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant623031423215a55cba007e9ed495727be81effca0cd8ee22ac5812a6b49ef2b0.lean/declarations/liftcommshift-compatibility--01d7feff88f004c4b560d3f6.md) | 150 | `declaration-track:01d7feff88f004c4b560d3f6e3b34784e8d91f03faf7eb4184c3ca9b854ce369` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
