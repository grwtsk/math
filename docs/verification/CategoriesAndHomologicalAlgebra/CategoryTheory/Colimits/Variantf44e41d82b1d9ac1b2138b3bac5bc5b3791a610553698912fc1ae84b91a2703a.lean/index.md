# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Colimits.Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46b69c1eebebcd5084b1c7c425f6279f8e0bffd7",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46b69c1eebebcd5084b1c7c425f6279f8e0bffd7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.GroupCat.Preadditive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Prequotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/declarations/prequotient--c96023d84d193755f39ecb1d.md) | 52 | `declaration-track:c96023d84d193755f39ecb1d13935305407c20833acc1144cc495574f04475aa` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/declarations/instance--663c811b1ae3fbed9cde8a0e.md) | 61 | `declaration-track:663c811b1ae3fbed9cde8a0edc7e2ae4dd7b8fb1477299e181ab5500d10c9794` |
| 3 | `inductive` | [Relation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/declarations/relation--f29097dc642aa6657baf6ac1.md) | 70 | `declaration-track:f29097dc642aa6657baf6ac1ff83a9e808d1cee9f12ada931f49d0afc2c80df5` |
| 4 | `def` | [colimitSetoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/declarations/colimitsetoid--c31747f4043cbed985062bad.md) | 98 | `declaration-track:c31747f4043cbed985062bad116a24b5104a1b61ac55253a39d6fb19236ea679` |
| 5 | `def` | [ColimitType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/declarations/colimittype--d060d52f2d0a5a5b67e76fac.md) | 107 | `declaration-track:d060d52f2d0a5a5b67e76fac71d0b9b3165e3c6851670f8619df4e32abce0d26` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/declarations/instance--99017e7defa4ff37682016fc.md) | 111 | `declaration-track:99017e7defa4ff37682016fc1258eea2227d33642335cc9db887956f9768224c` |
| 7 | `instance` | [ColimitTypeInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/declarations/colimittypeinhabited--6137e636b30850a836997f6a.md) | 123 | `declaration-track:6137e636b30850a836997f6adaab336e1dc5f864fbef2572f83a066515f9aecd` |
| 8 | `theorem` | [quot_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/declarations/quot-zero--18d883e03aea51b052d8d0dd.md) | 126 | `result-track:18d883e03aea51b052d8d0dd246b6a50752926900ebd5d6e8ebb086d4820ff3c` |
| 9 | `theorem` | [quot_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/declarations/quot-neg--f01294477e1a3530ed78bec1.md) | 131 | `result-track:f01294477e1a3530ed78bec166370ada81541192ee3e6c9644b9de12573ef880` |
| 10 | `theorem` | [quot_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/declarations/quot-add--cc31813b5f74320970557faa.md) | 138 | `result-track:cc31813b5f74320970557faae6fd565ed997e9e2fb14d2df70569fa7df7fd8a2` |
| 11 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/declarations/colimit--40a403c94f332d6eba7a4965.md) | 146 | `declaration-track:40a403c94f332d6eba7a4965fbff247da0e346b64389136d840ab354cf947094` |
| 12 | `def` | [coconeFun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/declarations/coconefun--d24b9bfab8fc3e44d201cea4.md) | 151 | `declaration-track:d24b9bfab8fc3e44d201cea4b3dd6c9432e9cfa3d8a13c4af88eedd92561a298` |
| 13 | `def` | [coconeMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/declarations/coconemorphism--6d57eb4d4228686a41334b75.md) | 157 | `declaration-track:6d57eb4d4228686a41334b75edc1fe287c224d7132b92b030eaf42122284e634` |
| 14 | `theorem` | [cocone_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/declarations/cocone-naturality--114f8f2d45c66d6b83b85d5d.md) | 164 | `result-track:114f8f2d45c66d6b83b85d5dc5089cbbe4cd432b8b75511ecb92e2f219a01e66` |
| 15 | `theorem` | [cocone_naturality_components](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/declarations/cocone-naturality-components--9947f95fd8605ba1742c5f99.md) | 172 | `result-track:9947f95fd8605ba1742c5f9913ecb0a895eaa8bc2f874f44ade6d4acbf346c35` |
| 16 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/declarations/colimitcocone--d1268fa5ece5990a594028e6.md) | 179 | `declaration-track:d1268fa5ece5990a594028e65497e0f8d506c5391b76cd1ff1e19022528486c5` |
| 17 | `def` | [descFunLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/declarations/descfunlift--476c43f82bf68adec8c045ae.md) | 187 | `declaration-track:476c43f82bf68adec8c045aecec84756a68d40e4487e9bec8e371844d6a63336` |
| 18 | `def` | [descFun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/declarations/descfun--2c55b01bd5ea81c778bd93c2.md) | 195 | `declaration-track:2c55b01bd5ea81c778bd93c2c1e6ffeaacebf28c77cde74de815cb8a51a3f1f7` |
| 19 | `def` | [descMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/declarations/descmorphism--f324dca2d11573851b45727b.md) | 219 | `declaration-track:f324dca2d11573851b45727b438299cdde8a8565cbcc80df5e49362e93c5104a` |
| 20 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/declarations/colimitcoconeiscolimit--94891f575df0ee601e28d0f2.md) | 227 | `declaration-track:94891f575df0ee601e28d0f286929d00f141884ce2e648f7bb371db6a2c6ff63` |
| 21 | `instance` | [hasColimits_addCommGroupCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/declarations/hascolimits-addcommgroupcat--f7c8a4c60b41616ed0bbc714.md) | 244 | `declaration-track:f7c8a4c60b41616ed0bbc714b00eb70af1db438d19f2d95d2e4e7738f4211a58` |
| 22 | `def` | [cokernelIsoQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantf44e41d82b1d9ac1b2138b3bac5bc5b3791a610553698912fc1ae84b91a2703a.lean/declarations/cokernelisoquotient--1d7e014bbbe5d48938e8db6d.md) | 261 | `declaration-track:1d7e014bbbe5d48938e8db6d5d1267383c82e9906270e73ce685b29d3dcd6b70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
