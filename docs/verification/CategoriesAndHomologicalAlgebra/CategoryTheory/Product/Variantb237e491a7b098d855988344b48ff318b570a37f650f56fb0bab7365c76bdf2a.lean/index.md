# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Product.Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3d83ec1bf215ce6a51633392eca341bd9b064c1",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3d83ec1bf215ce6a51633392eca341bd9b064c1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Groupoid` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.FundamentalGroupoid.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Products` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Product` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [proj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean/declarations/proj--352c88d02b32e08a52e58af6.md) | 46 | `declaration-track:352c88d02b32e08a52e58af607ecdc20aac0eff31026a025a4eae70c8b562f0c` |
| 2 | `theorem` | [proj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean/declarations/proj-map--bf99349ea75e56d487d4fb79.md) | 52 | `result-track:bf99349ea75e56d487d4fb795218ce95b916d38f1f5ab844a96a2014ab5c2f1b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean/declarations/instance--3cea3fcb0c0dd9bafccbcad6.md) | 58 | `declaration-track:3cea3fcb0c0dd9bafccbcad6a54303929dbcb97db1e03a9c1ef2f7e32323c57b` |
| 4 | `def` | [piToPiTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean/declarations/pitopitop--41a43b8e7ab503f78fb28c93.md) | 64 | `declaration-track:41a43b8e7ab503f78fb28c93e34889337dc2fae36fd05277eff2bd0fed119ab0` |
| 5 | `def` | [piIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean/declarations/piiso--8c653cb59c0075565539dafe.md) | 78 | `declaration-track:8c653cb59c0075565539dafe51a5b130e5727c69cba954a53fa64b77b8100339` |
| 6 | `def` | [coneDiscreteComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean/declarations/conediscretecomp--19b5b8f4704e54f0e55090f2.md) | 101 | `declaration-track:19b5b8f4704e54f0e55090f2d235ed7d8566f24d10935965c8680b4855b565a1` |
| 7 | `theorem` | [coneDiscreteComp_obj_mapCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean/declarations/conediscretecomp-obj-mapcone--f0b91ba981eabef06a8acfd0.md) | 106 | `result-track:f0b91ba981eabef06a8acfd0cb2c6894355e402659df740b72b2aa780a01dae8` |
| 8 | `def` | [piTopToPiCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean/declarations/pitoptopicone--21a078037ee2e580c237a27a.md) | 114 | `declaration-track:21a078037ee2e580c237a27af8c1b5d6c63386e6254872153720d8da893d31a7` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean/declarations/instance--ffc19bdcf83a486d63bfad72.md) | 119 | `declaration-track:ffc19bdcf83a486d63bfad723952dc097050b19b7bee47d1c6c37035e8635cb6` |
| 10 | `def` | [preservesProduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean/declarations/preservesproduct--1d8a2cd645fc661b429e4640.md) | 124 | `declaration-track:1d8a2cd645fc661b429e4640b00659555cbb7959706cc40dfadf9bb05799aec0` |
| 11 | `def` | [projLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean/declarations/projleft--315fd202f8aac5ff3f73a441.md) | 142 | `declaration-track:315fd202f8aac5ff3f73a441260ca4dd69f1b14a3f551c28f5053aced0cf68f2` |
| 12 | `def` | [projRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean/declarations/projright--726bfa63a1203f6b1b618d97.md) | 147 | `declaration-track:726bfa63a1203f6b1b618d975dbb9c2904a41d56398bb21cd05fb66ab7926ae2` |
| 13 | `theorem` | [projLeft_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean/declarations/projleft-map--9abc6e92894b788d4b18cf1d.md) | 152 | `result-track:9abc6e92894b788d4b18cf1dba81348f09402259183eb35d6b9afea67372003b` |
| 14 | `theorem` | [projRight_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean/declarations/projright-map--5456c80013413c39fb17b07f.md) | 158 | `result-track:5456c80013413c39fb17b07f1d79c46bc4eebd706f4f6dec0957ebac6d7ffab7` |
| 15 | `def` | [prodToProdTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean/declarations/prodtoprodtop--96f44015b60675bdd2bfa1c9.md) | 168 | `declaration-track:96f44015b60675bdd2bfa1c93a2153d4c78df366c9e62c2b5623893ecd10f6cc` |
| 16 | `theorem` | [prodToProdTop_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean/declarations/prodtoprodtop-map--9f5e7671785ced75cb9e0536.md) | 183 | `result-track:9f5e7671785ced75cb9e0536ce6487826f10f4cebf3e6e8035031b521405d71e` |
| 17 | `def` | [prodIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean/declarations/prodiso--2ef53966f089c2b2e458e10c.md) | 193 | `declaration-track:2ef53966f089c2b2e458e10cc79416652e0362dd76ed1e4a7027a064065ede0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
