# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Colimits.Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4c5f552300ce581d4a14124752e2c7f7b68cdaa",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4c5f552300ce581d4a14124752e2c7f7b68cdaa`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.GroupCat.Preadditive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Prequotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/declarations/prequotient--f0e13329bfb812dc1a06785a.md) | 60 | `declaration-track:f0e13329bfb812dc1a06785a7b22f87752dbbb193bea3c4a0212c3b4651d4352` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/declarations/instance--624a552aeec6ae3c70dc392d.md) | 69 | `declaration-track:624a552aeec6ae3c70dc392d0d2ab6774ea455997002700cb660551b457caca0` |
| 3 | `inductive` | [Relation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/declarations/relation--0601e312dead53346a48e297.md) | 78 | `declaration-track:0601e312dead53346a48e297537904f0aaf2e8e15fade468d53436c5ae44d969` |
| 4 | `def` | [colimitSetoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/declarations/colimitsetoid--a39520b86a85b4fa0ed9d02a.md) | 106 | `declaration-track:a39520b86a85b4fa0ed9d02a60e4a19269e90c7e236b8e43208cf2299e3993b6` |
| 5 | `def` | [ColimitType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/declarations/colimittype--f8a07199491014d3a020518b.md) | 115 | `declaration-track:f8a07199491014d3a020518b9ae026a70fcd1b07d8a0f70d32d9001c1b47f1e1` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/declarations/instance--7666d991c6cb383e451f8450.md) | 119 | `declaration-track:7666d991c6cb383e451f8450fce6c7c1c61701eff9bbebde72376022dab65333` |
| 7 | `instance` | [ColimitTypeInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/declarations/colimittypeinhabited--545104e5c3ac037140cbf24a.md) | 131 | `declaration-track:545104e5c3ac037140cbf24a013f4a34add47bb900bced581e57d069fed48263` |
| 8 | `theorem` | [quot_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/declarations/quot-zero--28011abf2d1ab990920f19e8.md) | 134 | `result-track:28011abf2d1ab990920f19e83e402bbb4e204d1c4fed7bb193c8456fcf4ef0ea` |
| 9 | `theorem` | [quot_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/declarations/quot-neg--b9471feeaa72152fa12d8f62.md) | 139 | `result-track:b9471feeaa72152fa12d8f62af567c45e6804a2c77848e82d21f0574b680d747` |
| 10 | `theorem` | [quot_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/declarations/quot-add--ac3ee92619574e027385a2cc.md) | 146 | `result-track:ac3ee92619574e027385a2ccf3d87c597bf9549afe2f83f1a449dd4627104e4f` |
| 11 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/declarations/colimit--b076d0c0448dba583cefd068.md) | 154 | `declaration-track:b076d0c0448dba583cefd068f0a64f8109976e017c603694a1fed89eb8b74a3f` |
| 12 | `def` | [coconeFun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/declarations/coconefun--07af71f600f2a119037b6881.md) | 159 | `declaration-track:07af71f600f2a119037b68811cae2799045b5a0dc9ede084412cad0d82313d55` |
| 13 | `def` | [coconeMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/declarations/coconemorphism--00e22d20a6e171b5bb263e8f.md) | 165 | `declaration-track:00e22d20a6e171b5bb263e8fc5720e1bdad23ef7c35b4916141788d1058b5b9e` |
| 14 | `theorem` | [cocone_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/declarations/cocone-naturality--953438c72f47e95a28a93b07.md) | 172 | `result-track:953438c72f47e95a28a93b0720b559029388277b86c91cafd67dcd0cb8c1c3d0` |
| 15 | `theorem` | [cocone_naturality_components](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/declarations/cocone-naturality-components--97205325da34f4103eebbc16.md) | 180 | `result-track:97205325da34f4103eebbc16f568f664af759402feec656b8bd1a22f45bedb09` |
| 16 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/declarations/colimitcocone--e746d9417401918d044977a4.md) | 187 | `declaration-track:e746d9417401918d044977a42b6cc5f4f83aae67e63b4ca77530c3f03a8bd689` |
| 17 | `def` | [descFunLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/declarations/descfunlift--67b8ac098cc154b2dfc2a906.md) | 195 | `declaration-track:67b8ac098cc154b2dfc2a906b4fdc015ddf6b30d8139123f8bfad6d6d10f815e` |
| 18 | `def` | [descFun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/declarations/descfun--7a6db78091fabfb3ca1188ee.md) | 203 | `declaration-track:7a6db78091fabfb3ca1188ee8902aa34ae851ad02be051b0a8a98233886350ed` |
| 19 | `def` | [descMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/declarations/descmorphism--b88dd65d7fc05c82d139307e.md) | 227 | `declaration-track:b88dd65d7fc05c82d139307ebf8ca5258bebdefb54feedb862c78ad18947f552` |
| 20 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/declarations/colimitcoconeiscolimit--6c1f6d777c87965655d4f823.md) | 235 | `declaration-track:6c1f6d777c87965655d4f82330815c039e18a747f917331ff88a68f6c4c7aff0` |
| 21 | `instance` | [hasColimits_addCommGroupCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/declarations/hascolimits-addcommgroupcat--7e76c7665c5e98c4b6afaf6f.md) | 252 | `declaration-track:7e76c7665c5e98c4b6afaf6f9523d8871471f6b7deb7c4ebf01c8334dbe10412` |
| 22 | `def` | [cokernelIsoQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf705fc87bb2e7208a104720cd83d9e81498e63648608586532b0cc7771434de9.lean/declarations/cokernelisoquotient--04732a873a40dec88c342b35.md) | 269 | `declaration-track:04732a873a40dec88c342b352920f2cf2f3b511cc0bcb66c6ad361264dd87618` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
