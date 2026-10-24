# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TransfiniteComposition.Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e232be2bade3b5b142662d39d966a3aed3689df0",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e232be2bade3b5b142662d39d966a3aed3689df0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Constructions.EventuallyConstant` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Composition` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Preorder.TransfiniteCompositionOfShape` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Shrink` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.SuccOrder` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.UnivLE` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TransfiniteCompositionOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/transfinitecompositionofshape--ddeb9d900200f00520625661.md) | 50 | `declaration-track:ddeb9d900200f00520625661492ffd83f7082b73ca65896143043b7a3733d019` |
| 2 | `def` | [ofArrowIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/ofarrowiso--05701582614979bcef884215.md) | 63 | `declaration-track:05701582614979bcef884215386d1b66f76d890de8a698f5853c6d0795bde4c6` |
| 3 | `def` | [ofLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/ofle--723e9143a6a37c4107ad242d.md) | 72 | `declaration-track:723e9143a6a37c4107ad242d626125d35da72a01d338d92679515c6cfd87c9f7` |
| 4 | `def` | [ofOrderIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/oforderiso--ba1039ea1e2a7a873455d609.md) | 79 | `declaration-track:ba1039ea1e2a7a873455d6094acd7b5a121e80b9cd994572d4bb042cca4c8a13` |
| 5 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/map--9d70c7804698bde51c212d1c.md) | 96 | `declaration-track:9d70c7804698bde51c212d1cb2acefed77bc807b9d5157bc07b526b4c0514129` |
| 6 | `def` | [iic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/iic--46fc38a256b70009bc172492.md) | 106 | `declaration-track:46fc38a256b70009bc17249240c7814efdaa4750338bc337f9f339f6566b2548` |
| 7 | `def` | [ici](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/ici--396f8b31f4f9b9f39a6d3387.md) | 123 | `declaration-track:396f8b31f4f9b9f39a6d3387bc08ac34dc5940e0057746b6676b1efa1aea9056` |
| 8 | `def` | [ofComposableArrows](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/ofcomposablearrows--a97fc0b927866443c66c191c.md) | 141 | `declaration-track:a97fc0b927866443c66c191c6a9f844c0a8dbdf48603f1114395c03ce0aed611` |
| 9 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/id--bc2e0dc58b46547d3754c6d0.md) | 158 | `declaration-track:bc2e0dc58b46547d3754c6d02e396e429df3e9a65ed871cbe517873873320d6f` |
| 10 | `def` | [ofMem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/ofmem--01245ec97a7d7e12ac004b39.md) | 165 | `declaration-track:01245ec97a7d7e12ac004b391b64e810b2d5f8bc3adeb0da694cbe40b1952090` |
| 11 | `def` | [ofComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/ofcomp--266bbbbeb0f9a129c7826c4e.md) | 171 | `declaration-track:266bbbbeb0f9a129c7826c4ebc50ae0fd923908deb5506b2a7a90aef84665398` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/instance--6f39094d2f388e1cabbc9333.md) | 181 | `declaration-track:6f39094d2f388e1cabbc9333da1d65159f8574ca18e434c90d617a1026daaabe` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/instance--5b9179e2672e792d9681920a.md) | 199 | `declaration-track:5b9179e2672e792d9681920afa024d35e4944ce2f1c84f5a7cc8c19e6a5f3948` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/instance--ccb970a483020407d37b55c9.md) | 202 | `declaration-track:ccb970a483020407d37b55c9908ec8afd2be883d532547686b0ed09b666dd2f5` |
| 15 | `lemma` | [isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/isiso--62164a9bfac03bb932314257.md) | 208 | `result-track:62164a9bfac03bb9323142578bd439fde0c0c49facfbba000d2042dbdb94379e` |
| 16 | `def` | [transfiniteCompositionsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/transfinitecompositionsofshape--ad80bd00839daca7b9d995f2.md) | 219 | `declaration-track:ad80bd00839daca7b9d995f27245581a921c16bcad4ec622a2b507d3357e0685` |
| 17 | `lemma` | [transfiniteCompositionsOfShape_monotone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/transfinitecompositionsofshape-monotone--bca7381a144d883985113087.md) | 222 | `result-track:bca7381a144d883985113087dbca0a0d03cb3337423e4a27070a8bf20822c405` |
| 18 | `lemma` | [transfiniteCompositionsOfShape_eq_of_orderIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/transfinitecompositionsofshape-eq-of-orderiso--b4e5df805d31066a09edd399.md) | 228 | `result-track:b4e5df805d31066a09edd3997c37d62d162ef593134ccb9e9851aba91c39f29c` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/instance--a4958beb27b202054a0076b5.md) | 234 | `declaration-track:a4958beb27b202054a0076b5d7552df3299980b02e96b9eea1ada5fde10ecae6` |
| 20 | `lemma` | [TransfiniteCompositionOfShape.mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/transfinitecompositionofshape-mem--df9ef581713241470227032e.md) | 238 | `result-track:df9ef581713241470227032e55dc2d6a74a197bbbe62906e909f032135725768` |
| 21 | `lemma` | [transfiniteCompositionsOfShape_map_of_preserves](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/transfinitecompositionsofshape-map-of-preserves--8714c8f7926d8924b55d17e2.md) | 242 | `result-track:8714c8f7926d8924b55d17e217dce3641ae078134ef740eaba130fb8794627d8` |
| 22 | `class` | [IsStableUnderTransfiniteCompositionOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/isstableundertransfinitecompositionofshape--0b811879e6ea007e63b526ed.md) | 255 | `declaration-track:0b811879e6ea007e63b526edf92e18f3fc44e854461645b376e904299497f561` |
| 23 | `lemma` | [transfiniteCompositionsOfShape_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/transfinitecompositionsofshape-le--5e455b962b40a8b88dde535a.md) | 258 | `result-track:5e455b962b40a8b88dde535ab2e0c10de040b8d2be3566b072628494661aab1d` |
| 24 | `lemma` | [isStableUnderTransfiniteCompositionOfShape_iff_of_orderIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/isstableundertransfinitecompositionofshape-iff-of-orderiso--af6fbedee0414032a704f066.md) | 264 | `result-track:af6fbedee0414032a704f066c590d517c6d10c7418195ef7506d160ee2d110cc` |
| 25 | `abbrev` | [IsStableUnderInfiniteComposition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/isstableunderinfinitecomposition--3abf97ffbe35124836422d13.md) | 275 | `declaration-track:3abf97ffbe35124836422d13c48d141442147ba2b1e3f2252145c710ddaf1c1d` |
| 26 | `class` | [IsStableUnderTransfiniteComposition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/isstableundertransfinitecomposition--008d244a1bf736c906a1133e.md) | 281 | `declaration-track:008d244a1bf736c906a1133efff1a55075f99471a372c14d78db6cce5a5b3aaa` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/instance--297c8b4b869fec4385e6dd33.md) | 290 | `declaration-track:297c8b4b869fec4385e6dd33e3c811787a7d6d52b9f08e197db42022b9019605` |
| 28 | `lemma` | [shrink](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/shrink--873d931e21506154ab02a514.md) | 297 | `result-track:873d931e21506154ab02a514209c1c3c0bb16290e0c5004779998ccaa7fc8fab` |
| 29 | `lemma` | [shrink₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/shrink--738a0bfe19f96bf4a9e807dd.md) | 304 | `result-track:738a0bfe19f96bf4a9e807dddba7718b4b670de0375e23c299e27c1c8913d596` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/instance--b48556cc85f9d4effa64b6f6.md) | 308 | `declaration-track:b48556cc85f9d4effa64b6f6d5c38d3812d604e540180121319eab345202be73` |
| 31 | `def` | [transfiniteCompositions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/transfinitecompositions--6f96342672abdd1c21e3c333.md) | 321 | `declaration-track:6f96342672abdd1c21e3c333978e57ee04b33dcff6b836615939ad400aa5d180` |
| 32 | `lemma` | [transfiniteCompositions_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/transfinitecompositions-iff--25f94070fab5c5f4b24cb86d.md) | 325 | `result-track:25f94070fab5c5f4b24cb86df0f4f7bf76b51d9f6f5b5d5181f4d16ce7a5480d` |
| 33 | `lemma` | [transfiniteCompositionsOfShape_le_transfiniteCompositions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/transfinitecompositionsofshape-le-transfinitecompositions--18f2d5bdf56bcdddba95faa8.md) | 331 | `result-track:18f2d5bdf56bcdddba95faa84214f0195dad478f75c1c144e015eb425ea28be3` |
| 34 | `lemma` | [transfiniteCompositions_monotone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/transfinitecompositions-monotone--dbbd8a95f34b45e3fd0f9950.md) | 338 | `result-track:dbbd8a95f34b45e3fd0f99506c9197434ed7d3b4a855247c4c40e7d2065ce526` |
| 35 | `lemma` | [le_transfiniteCompositions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/le-transfinitecompositions--569ed15c03645994d612f921.md) | 346 | `result-track:569ed15c03645994d612f921fa7a7aeaada47dd1f76c8c34d8f0f8a21728dc47` |
| 36 | `lemma` | [transfiniteCompositions_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/transfinitecompositions-le--75830d24fbdb722b314a027e.md) | 353 | `result-track:75830d24fbdb722b314a027edc2a72b49335e3dd996306c11e781e7b9a028d6a` |
| 37 | `lemma` | [transfiniteCompositions_le_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4.lean/declarations/transfinitecompositions-le-iff--4ee58d58dc812f2c3b85d1d7.md) | 361 | `result-track:4ee58d58dc812f2c3b85d1d7b16e2285637753f0198e97c54d85218de403d189` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
