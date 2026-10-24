# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cat.Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0edb9d693105589e7381e92b7df01317b0efe6c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0edb9d693105589e7381e92b7df01317b0efe6c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Cartesian.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [chosenTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/declarations/chosenterminal--ca1d128c471ba3b156c6cdcb.md) | 23 | `declaration-track:ca1d128c471ba3b156c6cdcbbab1c8ed8f2f4429d9aa2cd8f565968eb05f3cb7` |
| 2 | `def` | [chosenTerminalIsTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/declarations/chosenterminalisterminal--43718679c049b554fb4d7433.md) | 26 | `declaration-track:43718679c049b554fb4d7433088205b90774e469aee3602fcc2b3e86c775db16` |
| 3 | `def` | [prodCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/declarations/prodcone--167242a28539b61f3d746ca2.md) | 30 | `declaration-track:167242a28539b61f3d746ca2e6cb211d76175a9dcf3e6f648892ed834d8ed2d1` |
| 4 | `def` | [isLimitProdCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/declarations/islimitprodcone--7e007b909f55f149a6491d26.md) | 34 | `declaration-track:7e007b909f55f149a6491d26aea707bff0603ca5c466505180625733e2daaf49` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/declarations/instance--b5388223fe2439ab4b74c6d6.md) | 40 | `declaration-track:b5388223fe2439ab4b74c6d6d19e090fc8d4d5254be3aef353a626ae6780872e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/declarations/instance--328d342282fa597c193f45a1.md) | 44 | `declaration-track:328d342282fa597c193f45a107ffc079a0ce69f02d83da8e8eba6926353b5e87` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/declarations/example--1ca9992d692270349f6e9bf0.md) | 47 | `declaration-track:1ca9992d692270349f6e9bf0c4c57c58b1de82870886fb6059b0baad7dee2af1` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/declarations/example--90e2b6873200afe1d4b4489a.md) | 51 | `declaration-track:90e2b6873200afe1d4b4489aa7b7c1f22df162a7ea240c82b8a6c2e2cc64fe34` |
| 9 | `lemma` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/declarations/tensorobj--19916a354137f44f4dcd95c7.md) | 59 | `result-track:19916a354137f44f4dcd95c7794aa56ed6529a2d9a617be2776223ca4cf5260d` |
| 10 | `lemma` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/declarations/whiskerleft--edc08efe1534a56f739cb82e.md) | 61 | `result-track:edc08efe1534a56f739cb82eb4550e9c920dcc588b3d365e63b7db4994f27bb0` |
| 11 | `lemma` | [whiskerLeft_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/declarations/whiskerleft-fst--68648982eadba8eb4707de3b.md) | 64 | `result-track:68648982eadba8eb4707de3bc8434929c916d500e6787ea0369ce48f0b38da4f` |
| 12 | `lemma` | [whiskerLeft_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/declarations/whiskerleft-snd--f9f3d57a623d12cf6619aa6c.md) | 67 | `result-track:f9f3d57a623d12cf6619aa6c7190257203b396733e0028001dbbc660d55f5a7a` |
| 13 | `lemma` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/declarations/whiskerright--56af8cfabd89b5a6e1335d93.md) | 70 | `result-track:56af8cfabd89b5a6e1335d93c9e0ba2a19c0e0568eeae8d188ab88d7a2b951cf` |
| 14 | `lemma` | [whiskerRight_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/declarations/whiskerright-fst--ce6436260c13882bfc58369d.md) | 73 | `result-track:ce6436260c13882bfc58369d63f1530c46d429b630e2d1baba56657432c6bfe8` |
| 15 | `lemma` | [whiskerRight_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/declarations/whiskerright-snd--f061a35e7581949164d60c9e.md) | 76 | `result-track:f061a35e7581949164d60c9e8227bb0c30b391fd38469238efdde720ac3b3793` |
| 16 | `lemma` | [tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/declarations/tensorhom--a8c49c5a80b5dccb5adcc75c.md) | 79 | `result-track:a8c49c5a80b5dccb5adcc75c5e40694fad29895c389e044b6d50776bc465698c` |
| 17 | `lemma` | [tensorUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/declarations/tensorunit--5a5108d170dabe74f44e040e.md) | 82 | `result-track:5a5108d170dabe74f44e040ee1e6aeca8b35bdbef1dbf0f7b133f9298a82f49e` |
| 18 | `lemma` | [associator_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/declarations/associator-hom--8ac9e608474fe5970c6dc983.md) | 84 | `result-track:8ac9e608474fe5970c6dc983a19fd3e8a82e6629d974dca4477b3faefb0cf766` |
| 19 | `lemma` | [associator_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/declarations/associator-inv--39e36afdb9f57c5c5ff30c75.md) | 89 | `result-track:39e36afdb9f57c5c5ff30c750eefbaa4004c2d7275979e146b772d11352d5775` |
| 20 | `lemma` | [leftUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/declarations/leftunitor-hom--c00e0885cec25ffbd49f5b35.md) | 93 | `result-track:c00e0885cec25ffbd49f5b35c3efb2eea3c31af7356b4952726e8a852070fc06` |
| 21 | `lemma` | [leftUnitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/declarations/leftunitor-inv--c46b502ced1c85ea8d0e2e0c.md) | 95 | `result-track:c46b502ced1c85ea8d0e2e0c5e15c58b8175d64247ce82354604d7783fd35397` |
| 22 | `lemma` | [rightUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/declarations/rightunitor-hom--67dfffb5f1a6c4322cd17ee2.md) | 97 | `result-track:67dfffb5f1a6c4322cd17ee2fefdfbc31e9e8b08948362f30d414af211d2f172` |
| 23 | `lemma` | [rightUnitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b.lean/declarations/rightunitor-inv--cd2970c1ebd99c19fbcbf5d9.md) | 99 | `result-track:cd2970c1ebd99c19fbcbf5d97636451844cdd8aa26c3777978137fa1bf68354c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
