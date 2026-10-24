# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "584cfefc256e82687f679b86cc5ed8f43765cbbf",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `584cfefc256e82687f679b86cc5ed8f43765cbbf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EqToHom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Const` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/prod--ab840ba55fbc9b59515fbd1d.md) | 53 | `declaration-track:ab840ba55fbc9b59515fbd1db64229a2e3a9db81496c277ba19e9de70de30346` |
| 2 | `theorem` | [prod_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/prod-id--33d137ff177b11157a37768f.md) | 62 | `result-track:33d137ff177b11157a37768f58404c2fda9c15bd75879c79ab0dac22d569e316` |
| 3 | `theorem` | [prod_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/prod-comp--33f1f9bec881f8ff375d24c3.md) | 67 | `result-track:33f1f9bec881f8ff375d24c39dcf70be0340161d40881941400e8198aef473fe` |
| 4 | `theorem` | [isIso_prod_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/isiso-prod-iff--3f4206697ca00c691405819c.md) | 72 | `result-track:3f4206697ca00c691405819c7ca65c6785209896313c0a375540d739949e6c63` |
| 5 | `def` | [prod.etaIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/prod-etaiso--2ac5014cdb1cbf9c52b8a3b8.md) | 92 | `declaration-track:2ac5014cdb1cbf9c52b8a3b8f79ccc3d643813c679f8419f778f7de11a3ff217` |
| 6 | `def` | [Iso.prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/iso-prod--89959e686a2d80d9a274d65d.md) | 100 | `declaration-track:89959e686a2d80d9a274d65dc058dc7a36603124edabb0719e77dd6b9a156ee0` |
| 7 | `instance` | [uniformProd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/uniformprod--571d55832a8e947f46b73b8a.md) | 117 | `declaration-track:571d55832a8e947f46b73b8af60701a156a2df73c4c8a789f1a383bcd6119580` |
| 8 | `def` | [sectl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/sectl--fc3414a2644ebc89c9bf5819.md) | 129 | `declaration-track:fc3414a2644ebc89c9bf5819ce4f4e7a879268521a414f0d5b5b092b7670474e` |
| 9 | `def` | [sectr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/sectr--9f30c34bca3c6aee64df43a3.md) | 137 | `declaration-track:9f30c34bca3c6aee64df43a37417096b2d637064df9627ae6afea5c5bfb5cf54` |
| 10 | `def` | [fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/fst--cc26496e716d14ccacd5c539.md) | 147 | `declaration-track:cc26496e716d14ccacd5c539c4a4a8904fdf2c60a73f7117aab609b29de7e8d7` |
| 11 | `def` | [snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/snd--85cdaff095d2a3b294d22378.md) | 154 | `declaration-track:85cdaff095d2a3b294d2237832c63ae6028a0d9a1be6cc11a24e5f3144f44a73` |
| 12 | `def` | [swap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/swap--3dd6d8ef7db0ef06b1822987.md) | 161 | `declaration-track:3dd6d8ef7db0ef06b1822987fe3acbc2680ec74c10597ef2b5682e127d5c4516` |
| 13 | `def` | [symmetry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/symmetry--eccce5ef8511d8e5f7d2eb35.md) | 170 | `declaration-track:eccce5ef8511d8e5f7d2eb35a5382fe48a4d0d4769353fe4a197277dae8c721b` |
| 14 | `def` | [braiding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/braiding--5e37393ccd69aadf87270cf6.md) | 179 | `declaration-track:5e37393ccd69aadf87270cf69f7913b4c54acdbfc5d9fa98fe57bb8918d55628` |
| 15 | `instance` | [swapIsEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/swapisequivalence--fefa30cca2fa6c95621d6185.md) | 185 | `declaration-track:fefa30cca2fa6c95621d61853ccc8f3f32cc0d27f321ef0b437188b50260edd9` |
| 16 | `def` | [evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/evaluation--3166b7ffe31495b8180f9e6f.md) | 200 | `declaration-track:3166b7ffe31495b8180f9e6fcb127fbd3106070b47d55a93780c4dfc7f385194` |
| 17 | `def` | [evaluationUncurried](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/evaluationuncurried--166f2cb4de3c59fda15c45fb.md) | 213 | `declaration-track:166f2cb4de3c59fda15c45fb4b06be9fb85d36e5d9d9ace311095550b32b314f` |
| 18 | `def` | [Functor.constCompEvaluationObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/functor-constcompevaluationobj--94412981e3b070d9481fac80.md) | 227 | `declaration-track:94412981e3b070d9481fac80a2499a80a24e57db27b4b16e8b025b0f6e212177` |
| 19 | `def` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/prod--176438cb030edbeff137b7e4.md) | 240 | `declaration-track:176438cb030edbeff137b7e4244ae18efbffed8b6f791edf762ec2b99ad72591` |
| 20 | `def` | [prod'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/prod--659d8231098ba06964da7be9.md) | 249 | `declaration-track:659d8231098ba06964da7be911f18df48d0f3e1674f6864f7967cebf8a1d47c0` |
| 21 | `def` | [prod'CompFst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/prod-compfst--74f017dd46cd74fdcbef6343.md) | 256 | `declaration-track:74f017dd46cd74fdcbef63437f936ce3f0a99ff98f0563b6a03e7f4d24fffad7` |
| 22 | `def` | [prod'CompSnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/prod-compsnd--0e46c944bfde7d1680362533.md) | 262 | `declaration-track:0e46c944bfde7d168036253332c4135478a3b79104eeb7bd9c7b8f9d37576b9d` |
| 23 | `def` | [diag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/diag--1f8eca1a2770fdfc231ad5ef.md) | 271 | `declaration-track:1f8eca1a2770fdfc231ad5ef999ad5a3428023c993246b7f28a25a42957ca7ae` |
| 24 | `theorem` | [diag_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/diag-obj--144a252e40c3a5af1fa57af1.md) | 276 | `result-track:144a252e40c3a5af1fa57af1dcb9aecee8d7e8be322fc4a3791535f9ad320102` |
| 25 | `theorem` | [diag_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/diag-map--20da60b62528e0f6b53a3c45.md) | 281 | `result-track:20da60b62528e0f6b53a3c4563c29c798aa264be746476bfd99b93e4b8f53493` |
| 26 | `def` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/prod--6de0b1f167b74d2855661028.md) | 293 | `declaration-track:6de0b1f167b74d28556610287197693d87f10e69f73c66ca04df7a42ff5bb193` |
| 27 | `def` | [flipCompEvaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/flipcompevaluation--402090280cbeb4c2e757857e.md) | 310 | `declaration-track:402090280cbeb4c2e757857efe99d066d89e4cf5bf27e4119d5680dc84a1c3d8` |
| 28 | `def` | [prodFunctorToFunctorProd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/prodfunctortofunctorprod--b5641095349e819193182afd.md) | 318 | `declaration-track:b5641095349e819193182afdc6d561c3650b1a58a51ea6f71ae390021f05ef41` |
| 29 | `def` | [functorProdToProdFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/functorprodtoprodfunctor--31b63cdb97787b5cda2c3689.md) | 326 | `declaration-track:31b63cdb97787b5cda2c36891e67224adfaf50ca826e58bbb28ac56853d9a0db` |
| 30 | `def` | [functorProdFunctorEquivUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/functorprodfunctorequivunitiso--52d6cf8fac0fd41fa5bb632e.md) | 340 | `declaration-track:52d6cf8fac0fd41fa5bb632edbe8dc63ad12164baac98336dbbfec4d43e73dfd` |
| 31 | `def` | [functorProdFunctorEquivCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/functorprodfunctorequivcounitiso--981367bc9d1ec21d32d97fd5.md) | 349 | `declaration-track:981367bc9d1ec21d32d97fd56a27f9b56a3e759f11276bb5ba35d7c03fd6ff0a` |
| 32 | `def` | [functorProdFunctorEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00797a3344684c0347103689d3378dd4caf5bdcae53c13e41ad207d3c5dccfb1.lean/declarations/functorprodfunctorequiv--928e1babb849cfb99714a562.md) | 356 | `declaration-track:928e1babb849cfb99714a562230804a16180d92b4b9d4fcfa5222223377ccfc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
