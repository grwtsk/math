# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bridge.Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96b4cccff534b3b1b2d808c4f7c9c8e94a1bb9aa",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96b4cccff534b3b1b2d808c4f7c9c8e94a1bb9aa`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Logic.Category.Hom` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CategoricalBridgeEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean/declarations/categoricalbridgeequivalence--9291031f115f959f1cb6daa9.md) | 7 | `declaration-track:9291031f115f959f1cb6daa9f5235db6631dbb42efaa466af8db9340f94126c4` |
| 2 | `theorem` | [CategoricalBridgeEquivalence.object_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean/declarations/categoricalbridgeequivalence-object-injective--abf7251ee1e052b1a8bc4ef2.md) | 33 | `result-track:abf7251ee1e052b1a8bc4ef212a46d1a5b69dc57630983fc764d8812bd1e3abe` |
| 3 | `theorem` | [CategoricalBridgeEquivalence.object_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean/declarations/categoricalbridgeequivalence-object-surjective--9692368484e77679fe03a6ea.md) | 44 | `result-track:9692368484e77679fe03a6eafa08c01fb44da9f52922363b4fdbb3f10b920a62` |
| 4 | `theorem` | [CategoricalBridgeEquivalence.object_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean/declarations/categoricalbridgeequivalence-object-bijective--82701336280bf013ad1388c2.md) | 51 | `result-track:82701336280bf013ad1388c2cc63092a1d51c2ecd16492ec90cc2ee84d6d7175` |
| 5 | `theorem` | [CategoricalBridgeEquivalence.morphism_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean/declarations/categoricalbridgeequivalence-morphism-injective--840000aa7340c946bff070af.md) | 58 | `result-track:840000aa7340c946bff070afd88a48e5b284decf5e89405be7e4558f80b10c2c` |
| 6 | `theorem` | [CategoricalBridgeEquivalence.morphism_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean/declarations/categoricalbridgeequivalence-morphism-surjective--2387fbc459d789b08775c427.md) | 66 | `result-track:2387fbc459d789b08775c427dcdd62eefd5e3af16cce8ce4a8a3178dfc188a80` |
| 7 | `structure` | [LayerCategories](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean/declarations/layercategories--b1dd488b984e844688f379f9.md) | 74 | `declaration-track:b1dd488b984e844688f379f95fb0c6b7696153823335424f4cf042fdf5fed041` |
| 8 | `structure` | [LayerObjectRoundTrips](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean/declarations/layerobjectroundtrips--750716232c95480ce40b51c4.md) | 99 | `declaration-track:750716232c95480ce40b51c4aebf323c64af5392ef49c12f997b97b55b741b84` |
| 9 | `structure` | [LayerHomRoundTrips](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean/declarations/layerhomroundtrips--fe03beb812346f663bea43fe.md) | 125 | `declaration-track:fe03beb812346f663bea43fec8d7da8e0349568e56f48a867f6216c5a7c0ad65` |
| 10 | `structure` | [LayerCategoryEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean/declarations/layercategoryequivalence--91f982d4c192f9ef70067b9b.md) | 135 | `declaration-track:91f982d4c192f9ef70067b9b8d1a7138afad01171129bbe247c61fb409b335bd` |
| 11 | `def` | [LayerCategoryEquivalence.logicToWisdom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean/declarations/layercategoryequivalence-logictowisdom--397b68feb7d3fde994ae938a.md) | 145 | `declaration-track:397b68feb7d3fde994ae938a71b289551b225475819b1c28ef46241969042a7c` |
| 12 | `def` | [LayerCategoryEquivalence.wisdomToLogic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean/declarations/layercategoryequivalence-wisdomtologic--71a1ca7a538b87ceea02eb6c.md) | 169 | `declaration-track:71a1ca7a538b87ceea02eb6c0db8e0f714eb1ca897ece760db1ab07568bc85a3` |
| 13 | `theorem` | [LayerCategoryEquivalence.logic_wisdom_object_round_trip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean/declarations/layercategoryequivalence-logic-wisdom-object-round-trip--6197000e6cd8158cbb22ce94.md) | 193 | `result-track:6197000e6cd8158cbb22ce942ff87a57f62007ec643348f273d15b0ed7792252` |
| 14 | `theorem` | [LayerCategoryEquivalence.wisdom_logic_object_round_trip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean/declarations/layercategoryequivalence-wisdom-logic-object-round-trip--0f8cfb95624f103308fd8660.md) | 205 | `result-track:0f8cfb95624f103308fd8660bf6a163e6b96cf0b0dd1ad1df50747b8627cf0a8` |
| 15 | `theorem` | [LayerCategoryEquivalence.logicToWisdom_object_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean/declarations/layercategoryequivalence-logictowisdom-object-bijective--6f459c267700a6348dfbddc2.md) | 217 | `result-track:6f459c267700a6348dfbddc2dfe56aff1b90278ab32b3829615edfa2354383d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
