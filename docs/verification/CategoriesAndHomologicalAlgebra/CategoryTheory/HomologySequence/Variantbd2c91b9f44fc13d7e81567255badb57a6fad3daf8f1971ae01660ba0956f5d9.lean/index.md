# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomologySequence.Variantbd2c91b9f44fc13d7e81567255badb57a6fad3daf8f1971ae01660ba0956f5d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "865df8de2de37bf66e7b77dba109dfe30efece3d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Variantbd2c91b9f44fc13d7e81567255badb57a6fad3daf8f1971ae01660ba0956f5d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Variantbd2c91b9f44fc13d7e81567255badb57a6fad3daf8f1971ae01660ba0956f5d9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Variantbd2c91b9f44fc13d7e81567255badb57a6fad3daf8f1971ae01660ba0956f5d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `865df8de2de37bf66e7b77dba109dfe30efece3d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Variantbd2c91b9f44fc13d7e81567255badb57a6fad3daf8f1971ae01660ba0956f5d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Variantbd2c91b9f44fc13d7e81567255badb57a6fad3daf8f1971ae01660ba0956f5d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.DerivedCategory.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [homologyFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Variantbd2c91b9f44fc13d7e81567255badb57a6fad3daf8f1971ae01660ba0956f5d9.lean/declarations/homologyfunctor--2728cb4b558dbea9592f17c3.md) | 30 | `declaration-track:2728cb4b558dbea9592f17c3fc9bc0b5c0efd380ecdc206a72608a32906b8a22` |
| 2 | `def` | [homologyFunctorFactors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Variantbd2c91b9f44fc13d7e81567255badb57a6fad3daf8f1971ae01660ba0956f5d9.lean/declarations/homologyfunctorfactors--f15424053279c18a537a2410.md) | 35 | `declaration-track:f15424053279c18a537a241048ebf7648d0ad8650c8c9a19b01fe87f320a5030` |
| 3 | `def` | [homologyFunctorFactorsh](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Variantbd2c91b9f44fc13d7e81567255badb57a6fad3daf8f1971ae01660ba0956f5d9.lean/declarations/homologyfunctorfactorsh--e5e984f572433e6cda8c85e0.md) | 41 | `declaration-track:e5e984f572433e6cda8c85e0a6ecb87b609806515fe4b5879d6e60997aa3b01a` |
| 4 | `lemma` | [isIso_Qh_map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Variantbd2c91b9f44fc13d7e81567255badb57a6fad3daf8f1971ae01660ba0956f5d9.lean/declarations/isiso-qh-map-iff--8220e64be8bf16e72b83f3d9.md) | 46 | `result-track:8220e64be8bf16e72b83f3d9971d2a560ec92d6e7587d7734d4516f6a6599d14` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Variantbd2c91b9f44fc13d7e81567255badb57a6fad3daf8f1971ae01660ba0956f5d9.lean/declarations/instance--684726fe3aa9b4a0cf5ed138.md) | 57 | `declaration-track:684726fe3aa9b4a0cf5ed1388d9271fe90671cbf5ec1b04623d39b8553ddc636` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Variantbd2c91b9f44fc13d7e81567255badb57a6fad3daf8f1971ae01660ba0956f5d9.lean/declarations/instance--6ce2b73f26a736789e3a0ecb.md) | 63 | `declaration-track:6ce2b73f26a736789e3a0ecb6543bb9724ff64e9d0f992ba6f33812d4e38a388` |
| 7 | `def` | [δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Variantbd2c91b9f44fc13d7e81567255badb57a6fad3daf8f1971ae01660ba0956f5d9.lean/declarations/anonymous--42757741bd590594c75b71af.md) | 73 | `declaration-track:42757741bd590594c75b71afacebf9168ec2bbb5019d7050453496cee36ec77b` |
| 8 | `lemma` | [comp_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Variantbd2c91b9f44fc13d7e81567255badb57a6fad3daf8f1971ae01660ba0956f5d9.lean/declarations/comp--0c978c61bbc48d94ba8105de.md) | 82 | `result-track:0c978c61bbc48d94ba8105de7f5938c99a210b37576a979be2c2142801148cb4` |
| 9 | `lemma` | [δ_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Variantbd2c91b9f44fc13d7e81567255badb57a6fad3daf8f1971ae01660ba0956f5d9.lean/declarations/comp--fabfbbeee6c5f870d3a59275.md) | 86 | `result-track:fabfbbeee6c5f870d3a5927506d76c35ea33844e311b58ad56f58d74618744de` |
| 10 | `lemma` | [exact₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Variantbd2c91b9f44fc13d7e81567255badb57a6fad3daf8f1971ae01660ba0956f5d9.lean/declarations/exact--2fc9c968c634f29290ad07fb.md) | 89 | `result-track:2fc9c968c634f29290ad07fbd37cb299bd75ae7ed80be836853bbc72ed215436` |
| 11 | `lemma` | [exact₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Variantbd2c91b9f44fc13d7e81567255badb57a6fad3daf8f1971ae01660ba0956f5d9.lean/declarations/exact--335c6f7d80392b43c56ee309.md) | 95 | `result-track:335c6f7d80392b43c56ee3094ba46c2660efde4856771cabf0cf682ac474947d` |
| 12 | `lemma` | [exact₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Variantbd2c91b9f44fc13d7e81567255badb57a6fad3daf8f1971ae01660ba0956f5d9.lean/declarations/exact--0c4a80eced2a3a523fc7fd16.md) | 98 | `result-track:0c4a80eced2a3a523fc7fd168f3b598e7cbf279d5fee166a28305f2ee26b31c7` |
| 13 | `lemma` | [epi_homologyMap_mor₁_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Variantbd2c91b9f44fc13d7e81567255badb57a6fad3daf8f1971ae01660ba0956f5d9.lean/declarations/epi-homologymap-mor-iff--b5674347f0fbb5787da6078c.md) | 101 | `result-track:b5674347f0fbb5787da6078c2b05584c33956c2ab2546586621d3d0e64bf52a6` |
| 14 | `lemma` | [mono_homologyMap_mor₁_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Variantbd2c91b9f44fc13d7e81567255badb57a6fad3daf8f1971ae01660ba0956f5d9.lean/declarations/mono-homologymap-mor-iff--9d75f592339540dd8ce489a6.md) | 105 | `result-track:9d75f592339540dd8ce489a69068d49a24032f32a67be26386405d031156c922` |
| 15 | `lemma` | [epi_homologyMap_mor₂_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Variantbd2c91b9f44fc13d7e81567255badb57a6fad3daf8f1971ae01660ba0956f5d9.lean/declarations/epi-homologymap-mor-iff--b4989345b6e34dc37300ff66.md) | 109 | `result-track:b4989345b6e34dc37300ff66574379f1e21f06126ece84fb5ffea5a23cc2ee46` |
| 16 | `lemma` | [mono_homologyMap_mor₂_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Variantbd2c91b9f44fc13d7e81567255badb57a6fad3daf8f1971ae01660ba0956f5d9.lean/declarations/mono-homologymap-mor-iff--4c41f340b2bec50a2884fa18.md) | 113 | `result-track:4c41f340b2bec50a2884fa18f5d2b20cc6c6863cdbcb89a5cd7b347e2643870e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
