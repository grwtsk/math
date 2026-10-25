# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.ElementarySubstructures.Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f86a721592250495c341d0d131c507be204963f",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f86a721592250495c341d0d131c507be204963f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.ElementaryMaps` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Substructure.IsElementary](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/declarations/substructure-iselementary--10e029ae2a156805f42edeba.md) | 36 | `declaration-track:10e029ae2a156805f42edebad59aaf9445c1feb9d3230bb5ac7b5dec4cfa7219` |
| 2 | `structure` | [ElementarySubstructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/declarations/elementarysubstructure--1f1c96784f6830ff4e08b027.md) | 43 | `declaration-track:1f1c96784f6830ff4e08b0276ceaaf9a91b709bed2ef689271e17993a4cbc8de` |
| 3 | `instance` | [instCoe](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/declarations/instcoe--5182c951b29307f77d3c3b2a.md) | 54 | `declaration-track:5182c951b29307f77d3c3b2aa3627f48703f984e030d8328ab0b93694ebf6d94` |
| 4 | `instance` | [instSetLike](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/declarations/instsetlike--53a47e4e7b57b7a67a158d55.md) | 57 | `declaration-track:53a47e4e7b57b7a67a158d552ed8f4c01ab0783a2f88b91b597b13c524efba22` |
| 5 | `instance` | [inducedStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/declarations/inducedstructure--194f99cdfb05377363c492fb.md) | 61 | `declaration-track:194f99cdfb05377363c492fb9d956aed06b61e0deaf6b84be8595e7a33427326` |
| 6 | `theorem` | [isElementary](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/declarations/iselementary--ef165316235ec04b1d28bb0c.md) | 65 | `result-track:ef165316235ec04b1d28bb0c6822af927818c04f7f078607175faa51fe57e557` |
| 7 | `def` | [subtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/declarations/subtype--d6382ded77f9e464be2ce805.md) | 69 | `declaration-track:d6382ded77f9e464be2ce805c52c4df446056e598752bda0400e8ffa5ce483e0` |
| 8 | `theorem` | [subtype_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/declarations/subtype-apply--7cf56794d36c89e761d7ce97.md) | 74 | `result-track:7cf56794d36c89e761d7ce970a0f193ae2f39898d0c6527ef91ffbaa9b883d49` |
| 9 | `theorem` | [subtype_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/declarations/subtype-injective--249f93484fd7544fab243afd.md) | 77 | `result-track:249f93484fd7544fab243afdf3fe37a175f6cdec1a316f8710f7a3fcc7cc99de` |
| 10 | `theorem` | [coe_subtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/declarations/coe-subtype--a536586f74f09af5e7493a31.md) | 81 | `result-track:a536586f74f09af5e7493a311f6eda8653a8c45b62db9f7c1ef5a473cc3e4f22` |
| 11 | `instance` | [instTop](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/declarations/insttop--1f92fda67c4a109b4d0001f3.md) | 88 | `declaration-track:1f92fda67c4a109b4d0001f3b06bbea62d5ee2b89849e3e7a6f64103d811e7bf` |
| 12 | `instance` | [instInhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/declarations/instinhabited--554fb7c682caf4685bf77bb1.md) | 91 | `declaration-track:554fb7c682caf4685bf77bb182a938ac286b82f3bc741c6b70dbf8e64715f715` |
| 13 | `theorem` | [mem_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/declarations/mem-top--b0bff201a72d5d709b0aee81.md) | 95 | `result-track:b0bff201a72d5d709b0aee81a9965f48277bdb5a24e447bd07a579d5d4b25ab1` |
| 14 | `theorem` | [coe_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/declarations/coe-top--ecd80ed1cba6334b4f881854.md) | 99 | `result-track:ecd80ed1cba6334b4f881854599edc5bab56e400d67935c712bbe2caabb51a8c` |
| 15 | `theorem` | [realize_sentence](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/declarations/realize-sentence--7ca4517fcdee6392f00e3e23.md) | 103 | `result-track:7ca4517fcdee6392f00e3e2309fb78915b1fdf83c9a12e2a22fbf73df930f6ca` |
| 16 | `theorem` | [theory_model_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/declarations/theory-model-iff--15fbfcb3c0ea9b46bc992d54.md) | 107 | `result-track:15fbfcb3c0ea9b46bc992d54c0b71b3d513dfd926338f26316174b2794fd66bd` |
| 17 | `instance` | [theory_model](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/declarations/theory-model--3af7fd73c554b57460fd493a.md) | 110 | `declaration-track:3af7fd73c554b57460fd493a4c3d5a00719b223064194fdcf7a2c664e36e5f85` |
| 18 | `instance` | [instNonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/declarations/instnonempty--b66c0f8f96537064dc3b2b2d.md) | 113 | `declaration-track:b66c0f8f96537064dc3b2b2ddc80265d7e1f6eba0fa3c842f08ff0b2070a5ef6` |
| 19 | `theorem` | [elementarilyEquivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/declarations/elementarilyequivalent--fb6823622a92df6a4eb408c5.md) | 116 | `result-track:fb6823622a92df6a4eb408c585b1610a6f21eb332e2a6090527882f629422383` |
| 20 | `theorem` | [isElementary_of_exists](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/declarations/iselementary-of-exists--15dce8e83d9bbf0003cc4f07.md) | 124 | `result-track:15dce8e83d9bbf0003cc4f073a28c149f22a671d2929d2e3a535e265c00282fe` |
| 21 | `def` | [toElementarySubstructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/declarations/toelementarysubstructure--470133bb3793fe207eeda936.md) | 133 | `declaration-track:470133bb3793fe207eeda9365bf26c6ab98a3a772492340eaad323d9d91a798a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
