# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SplitCoequalizer.Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d28e76f1313d5ff91535b6baddb1c2ca65c0a14",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d28e76f1313d5ff91535b6baddb1c2ca65c0a14`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSplitCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b.lean/declarations/issplitcoequalizer--af133b8347ca65b228626ad4.md) | 57 | `declaration-track:af133b8347ca65b228626ad4fb1f19f87214d1d90470bdd535e46f213e32339b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b.lean/declarations/instance--478d512e11bc001888a88b82.md) | 71 | `declaration-track:478d512e11bc001888a88b82aac2c75aeba13beaf159746136a283692a1d76ae` |
| 3 | `def` | [IsSplitCoequalizer.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b.lean/declarations/issplitcoequalizer-map--503fbf2fb74450b1d4d39e62.md) | 84 | `declaration-track:503fbf2fb74450b1d4d39e626d2fee483052ef2f432978b257dc30d7c2af4317` |
| 4 | `def` | [IsSplitCoequalizer.asCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b.lean/declarations/issplitcoequalizer-ascofork--b659e2b0158f25cb55029303.md) | 99 | `declaration-track:b659e2b0158f25cb550293038a5a55eeb282b9e8268a133299194a5fdedbe991` |
| 5 | `theorem` | [IsSplitCoequalizer.asCofork_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b.lean/declarations/issplitcoequalizer-ascofork--65d151230893c213b704263c.md) | 103 | `result-track:65d151230893c213b704263ccf4c2cace948697db705c60b889149cdcd8570ea` |
| 6 | `def` | [IsSplitCoequalizer.isCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b.lean/declarations/issplitcoequalizer-iscoequalizer--65a37663daf1f23511ecc8a5.md) | 110 | `declaration-track:65a37663daf1f23511ecc8a5c10db5bdf810d99194f6496d7c59ed41d208eb43` |
| 7 | `class` | [HasSplitCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b.lean/declarations/hassplitcoequalizer--72351dac415f5d680b744f92.md) | 126 | `declaration-track:72351dac415f5d680b744f92b0b5c0e6cd511b936530fd88cc221549274d0289` |
| 8 | `abbrev` | [Functor.IsSplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b.lean/declarations/functor-issplitpair--44626b463084797a9a6f8183.md) | 134 | `declaration-track:44626b463084797a9a6f818335d02ad0fef1a1bc245edd14a3f7eb3bbf4d54ed` |
| 9 | `def` | [HasSplitCoequalizer.coequalizerOfSplit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b.lean/declarations/hassplitcoequalizer-coequalizerofsplit--2b3354185dfa74a418fc3c18.md) | 138 | `declaration-track:2b3354185dfa74a418fc3c1873b2791a163e9ab60f9509bba6880ca63c81f4f8` |
| 10 | `def` | [HasSplitCoequalizer.coequalizerπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b.lean/declarations/hassplitcoequalizer-coequalizer--e6fdb05c9f5919f467dc5a56.md) | 142 | `declaration-track:e6fdb05c9f5919f467dc5a5645f2edd33a7b9502c68cb726c1f3c87bf9f2b4ae` |
| 11 | `def` | [HasSplitCoequalizer.isSplitCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b.lean/declarations/hassplitcoequalizer-issplitcoequalizer--53c14288b035225291a6b2eb.md) | 147 | `declaration-track:53c14288b035225291a6b2eb72a0b8f180d10cfb969fc5fb1ec00e8a8c7a67ba` |
| 12 | `instance` | [map_is_split_pair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b.lean/declarations/map-is-split-pair--069544008ff3c0d85807f094.md) | 152 | `declaration-track:069544008ff3c0d85807f094faa9e15dc70c0ef182d94bf54ea091ab4f3ddf7b` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b.lean/declarations/instance--1b73303fea78f923091ec91c.md) | 159 | `declaration-track:1b73303fea78f923091ec91ca77a54c8019bfb2a7ade7c83e14a0fccbfde6824` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
