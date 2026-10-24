# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Products.Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d15f72b2b4ef22b60603e0b9f122ffc8f07bbca4",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d15f72b2b4ef22b60603e0b9f122ffc8f07bbca4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pullbackConeEquivBinaryFan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/pullbackconeequivbinaryfan--d4ad95ae015993803f914ebc.md) | 56 | `declaration-track:d4ad95ae015993803f914ebc10a8bbb1959aff757b9d4722348314c29657d8e3` |
| 2 | `def` | [IsLimit.pullbackConeEquivBinaryFanFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/islimit-pullbackconeequivbinaryfanfunctor--16c96f31d3afe11e48a28a34.md) | 75 | `declaration-track:16c96f31d3afe11e48a28a34de78d717a10bbc5cded9ea8cfbee6364f4f9f652` |
| 3 | `def` | [IsLimit.pullbackConeEquivBinaryFanInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/islimit-pullbackconeequivbinaryfaninverse--043a2274a77bcb3623d3d6dc.md) | 92 | `declaration-track:043a2274a77bcb3623d3d6dce1193660c5d1506a2ad1c8263de40decb74b8c10` |
| 4 | `def` | [pushoutCoconeEquivBinaryCofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/pushoutcoconeequivbinarycofan--41f87e77eb4046509cb83cc2.md) | 117 | `declaration-track:41f87e77eb4046509cb83cc2b071f289917f2cd56a1b5feca4bb8ff24ac81a64` |
| 5 | `def` | [IsColimit.pushoutCoconeEquivBinaryCofanFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/iscolimit-pushoutcoconeequivbinarycofanfunctor--5fabc00663dcec90ee4cf4b4.md) | 137 | `declaration-track:5fabc00663dcec90ee4cf4b4b8debce3d6bc1402ee64ff2ef273ad773fc217c8` |
| 6 | `def` | [IsColimit.pushoutCoconeEquivBinaryCofanInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/iscolimit-pushoutcoconeequivbinarycofaninverse--5bfa215baa254de663c70646.md) | 154 | `declaration-track:5bfa215baa254de663c70646a8c269c8adeeca5ca36610e83eaaa60746d3fe59` |
| 7 | `lemma` | [isPullback_of_binaryFan_isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/ispullback-of-binaryfan-islimit--67a4dcd389c17432fed6795c.md) | 181 | `result-track:67a4dcd389c17432fed6795cc9ff5164739e1ec69e635a1c70a0f460b175524a` |
| 8 | `def` | [prodLeftIsoPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/prodleftisopullback--647afdebbff4ccc251bbd3fa.md) | 189 | `declaration-track:647afdebbff4ccc251bbd3fa091825addb206780ad39b330680a690910077aea` |
| 9 | `lemma` | [prodLeftIsoPullback_hom_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/prodleftisopullback-hom-fst--0b6d94297f37ff023f4f72af.md) | 194 | `result-track:0b6d94297f37ff023f4f72afb49f4150ab7495e27d8610791cc52f9df61f856f` |
| 10 | `lemma` | [prodLeftIsoPullback_hom_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/prodleftisopullback-hom-snd--fc8f1e3c27101f5ffda918a1.md) | 199 | `result-track:fc8f1e3c27101f5ffda918a14c496b601b134d6309d7d07c31714560364d9882` |
| 11 | `lemma` | [prodLeftIsoPullback_inv_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/prodleftisopullback-inv-fst--ce610c54d9c6c0733bd29bbd.md) | 204 | `result-track:ce610c54d9c6c0733bd29bbdc17b65c5d9f06bf42b86550b4ebc6244889317fc` |
| 12 | `lemma` | [prodLeftIsoPullback_inv_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/prodleftisopullback-inv-snd--f57b193a248602c80324cf3c.md) | 209 | `result-track:f57b193a248602c80324cf3c6de2e1ee578d6376cf8a6217a1cc682064a6015b` |
| 13 | `abbrev` | [widePullbackDiagramOfDiagramOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/widepullbackdiagramofdiagramover--a42098006e50f9e33690cc6a.md) | 228 | `declaration-track:a42098006e50f9e33690cc6ae7c146bf231e8844474912d576a96593ddf2c23d` |
| 14 | `def` | [conesEquivInverseObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/conesequivinverseobj--c951824fd314c320fdcd6c81.md) | 234 | `declaration-track:c951824fd314c320fdcd6c81319cb807cf6f2b506fe72dac43270488a9d9b47c` |
| 15 | `def` | [conesEquivInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/conesequivinverse--077db84f9a929ab72275eac8.md) | 248 | `declaration-track:077db84f9a929ab72275eac89e2f02d439d5221a5d9607e158b2f09c799df960` |
| 16 | `def` | [conesEquivFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/conesequivfunctor--ea24e38e26c689dacde21868.md) | 266 | `declaration-track:ea24e38e26c689dacde21868931d24043edaf68513b110041385d665eb4c814f` |
| 17 | `def` | [conesEquivUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/conesequivunitiso--8d0eb24694fc9a6799d8aeed.md) | 283 | `declaration-track:8d0eb24694fc9a6799d8aeed1c5c4333d67b00b11aebd2e88ecfaa0fb234807d` |
| 18 | `def` | [conesEquivCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/conesequivcounitiso--3215def2bbbb397d71286092.md) | 295 | `declaration-track:3215def2bbbb397d71286092cc6bb5526c7f73f4ebf43479066a91b92e034afd` |
| 19 | `def` | [conesEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/conesequiv--2dd329af0124ad6decda014a.md) | 304 | `declaration-track:2dd329af0124ad6decda014ae99f5277d00ddbef1cd5ed374ef0e2c832d2f296` |
| 20 | `theorem` | [has_over_limit_discrete_of_widePullback_limit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/has-over-limit-discrete-of-widepullback-limit--5cc57b4f5bff8f9ed1344665.md) | 312 | `result-track:5cc57b4f5bff8f9ed13446656944b3a04bc3a33a909d8965d95beaa28f361f90` |
| 21 | `theorem` | [over_product_of_widePullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/over-product-of-widepullback--b31b364732754eb65ce47d02.md) | 320 | `result-track:b31b364732754eb65ce47d023c51585bffea13087bf7d246c75adc6b853cba75` |
| 22 | `theorem` | [over_binaryProduct_of_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/over-binaryproduct-of-pullback--fd214ce5924e78fb04cef211.md) | 325 | `result-track:fd214ce5924e78fb04cef2119d38fd0933d114ad6e6fa4aaa337a4cc48512529` |
| 23 | `theorem` | [over_products_of_widePullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/over-products-of-widepullbacks--e53a192bc9a841ad29bfc57c.md) | 329 | `result-track:e53a192bc9a841ad29bfc57cbd496b4b6f916f0cd516fa8dd820817219989e49` |
| 24 | `theorem` | [over_finiteProducts_of_finiteWidePullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/over-finiteproducts-of-finitewidepullbacks--ec74d15c6e3f119e350dc06b.md) | 334 | `result-track:ec74d15c6e3f119e350dc06b8e74cb5fc9f067304fb33da68193f47f6cbb385e` |
| 25 | `theorem` | [over_hasTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/declarations/over-hasterminal--d6cb2ab177ef50e8e3e4ece1.md) | 345 | `result-track:d6cb2ab177ef50e8e3e4ece1f7189541ed7b496896ab88c717d70186d032e74a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
