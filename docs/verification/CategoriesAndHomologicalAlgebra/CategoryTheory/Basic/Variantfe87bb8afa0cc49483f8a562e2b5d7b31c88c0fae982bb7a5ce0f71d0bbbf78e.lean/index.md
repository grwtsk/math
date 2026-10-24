# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d10b44639e34d0750b039cf30b44ead5eb56ac0a",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d10b44639e34d0750b039cf30b44ead5eb56ac0a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EqToHom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Const` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/prod--9d5942349365665e90d26f4f.md) | 45 | `declaration-track:9d5942349365665e90d26f4f489e842730b1682c22465fbe24f9646c648de9a3` |
| 2 | `theorem` | [prod_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/prod-id--2812c02752469d245be48729.md) | 54 | `result-track:2812c02752469d245be48729812392919f0fcab9a48fba8b44d7ef84c29ece6b` |
| 3 | `theorem` | [prod_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/prod-comp--277c411c15d950c144ae1feb.md) | 59 | `result-track:277c411c15d950c144ae1feb54cbb3945011310179002e07c85ec7625d6d5e41` |
| 4 | `theorem` | [isIso_prod_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/isiso-prod-iff--dae0b3324852769b1c24629c.md) | 64 | `result-track:dae0b3324852769b1c24629ccd00fa8f543c5a685bcd8a6797557177ba95022a` |
| 5 | `def` | [prod.etaIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/prod-etaiso--cca06a6d96e93f0be3e74e58.md) | 84 | `declaration-track:cca06a6d96e93f0be3e74e58826f08671fb986924558ab6a186e25ab3bbad14e` |
| 6 | `def` | [Iso.prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/iso-prod--835d58122eed73c474b480d2.md) | 92 | `declaration-track:835d58122eed73c474b480d2124b28cb92d7590000132226590c45c19fef8e59` |
| 7 | `instance` | [uniformProd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/uniformprod--3d874ff94f3bcbfcaebee392.md) | 109 | `declaration-track:3d874ff94f3bcbfcaebee39282bb291122fe984c20add07b94f249ed4e0e453f` |
| 8 | `def` | [sectl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/sectl--486c6f59d42bc5ceb66614ce.md) | 121 | `declaration-track:486c6f59d42bc5ceb66614cefb18434c5dbf07632cf45317fbd47b879d69903a` |
| 9 | `def` | [sectr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/sectr--6f455f373958c67935215a5e.md) | 129 | `declaration-track:6f455f373958c67935215a5e7d4edc9b228293013db5b256ca2195c83bb386ce` |
| 10 | `def` | [fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/fst--a053cd2eb27aa3123438d45f.md) | 139 | `declaration-track:a053cd2eb27aa3123438d45f009d86a0e325be539f4157e1dd37ac1d88891e78` |
| 11 | `def` | [snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/snd--33238b48b5b23bf1f698a857.md) | 146 | `declaration-track:33238b48b5b23bf1f698a8574c87fed96a6dcb60112014a359c75155f3bb45a0` |
| 12 | `def` | [swap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/swap--ce3e522e1770f2c101a41bf6.md) | 153 | `declaration-track:ce3e522e1770f2c101a41bf6f65ea2012e52c83caf42ce3947351804b3ae5e09` |
| 13 | `def` | [symmetry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/symmetry--4299a13588e42b4234e9813e.md) | 162 | `declaration-track:4299a13588e42b4234e9813e40bd0d82842ed9a1d4df6ac03f8ed10f5f42700b` |
| 14 | `def` | [braiding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/braiding--f80c9b379452391fae75ea59.md) | 171 | `declaration-track:f80c9b379452391fae75ea59bd99d90b197cf8715d8bdb56392f4a16b25d8001` |
| 15 | `instance` | [swapIsEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/swapisequivalence--1f0c515027ec27be9c51a34a.md) | 177 | `declaration-track:1f0c515027ec27be9c51a34ab330eef6be90dd15e5c136e84287c932464f7be9` |
| 16 | `def` | [evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/evaluation--30f07e6ccd7c28a43a0a6829.md) | 192 | `declaration-track:30f07e6ccd7c28a43a0a682914352892eeee482a2fc570ed0fda22d051d23853` |
| 17 | `def` | [evaluationUncurried](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/evaluationuncurried--39d2363dfd4441b0fed06877.md) | 205 | `declaration-track:39d2363dfd4441b0fed068778c50db96944fc77bcbc4f5690de4623a581bd11e` |
| 18 | `def` | [Functor.constCompEvaluationObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/functor-constcompevaluationobj--ff80140f0db074870bd6173c.md) | 219 | `declaration-track:ff80140f0db074870bd6173c1a7996a975a02215dbbc1d0c8fd9039ca0988d16` |
| 19 | `def` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/prod--036f4bce38dc5ba085a516fa.md) | 232 | `declaration-track:036f4bce38dc5ba085a516fa59465135b4e0e7650ea4c357abe480945a5031e9` |
| 20 | `def` | [prod'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/prod--5dc6c01c3a1bafd98a3cc3f9.md) | 241 | `declaration-track:5dc6c01c3a1bafd98a3cc3f9a7114dea8d0d663ac1fc742029beaceddd91a1d2` |
| 21 | `def` | [prod'CompFst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/prod-compfst--35f0dca4585061f3f59b60dd.md) | 248 | `declaration-track:35f0dca4585061f3f59b60dd94dfdd3ecb56192132db29c2638c9d3ccb58a2bf` |
| 22 | `def` | [prod'CompSnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/prod-compsnd--b56a38bb40801ead830ced63.md) | 254 | `declaration-track:b56a38bb40801ead830ced6353a11efe6516a4af2b042957b176916b288b68cd` |
| 23 | `def` | [diag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/diag--a6d04d38f97165f5672d7691.md) | 263 | `declaration-track:a6d04d38f97165f5672d769154764b5cb4d4d63a8f71fd722c36d940c434cd2a` |
| 24 | `theorem` | [diag_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/diag-obj--d27b5132c2c4428d51959d17.md) | 268 | `result-track:d27b5132c2c4428d51959d1744c2e8b5221a1ed94d7a56d9c7dbd5473751e1fa` |
| 25 | `theorem` | [diag_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/diag-map--6a33e732595e96807db02350.md) | 273 | `result-track:6a33e732595e96807db02350ba43ffc0347156aa8b0160a1c62768d66f4b539d` |
| 26 | `def` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/prod--bb1b9e068e0738f91ace890b.md) | 285 | `declaration-track:bb1b9e068e0738f91ace890bfa53dfad20a417a681e797c6fb000a80d0391c86` |
| 27 | `def` | [flipCompEvaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/flipcompevaluation--3d75256f3dd01f77f5d2c09f.md) | 302 | `declaration-track:3d75256f3dd01f77f5d2c09f533c3087ab585ea0a40c342db2836bfcad5e110c` |
| 28 | `def` | [prodFunctorToFunctorProd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/prodfunctortofunctorprod--2c83c7c1f6f8ad95142fb997.md) | 310 | `declaration-track:2c83c7c1f6f8ad95142fb997a432c5d3022c84d399fbd0a49b7dc46bcd686bb2` |
| 29 | `def` | [functorProdToProdFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/functorprodtoprodfunctor--6f472feb2974a6ba459de5e1.md) | 318 | `declaration-track:6f472feb2974a6ba459de5e1cf2b4747bd70a7fecf68ab1349602625fcbf7125` |
| 30 | `def` | [functorProdFunctorEquivUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/functorprodfunctorequivunitiso--9740613bea33a7f6fb4c511a.md) | 332 | `declaration-track:9740613bea33a7f6fb4c511a513de6d904599353b6dbc9e81484d251e195d456` |
| 31 | `def` | [functorProdFunctorEquivCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/functorprodfunctorequivcounitiso--04d3c47b75d5a2d1a6076675.md) | 341 | `declaration-track:04d3c47b75d5a2d1a607667596e67a09afb9bf844d2f6da5964ad0163f8c626f` |
| 32 | `def` | [functorProdFunctorEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/declarations/functorprodfunctorequiv--65cf2b3108438d682a6ac6bb.md) | 348 | `declaration-track:65cf2b3108438d682a6ac6bbc0deba1ccc0baf702ac6fe96a2d52aecfdbf271a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
