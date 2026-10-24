# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExactSequences.Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4eb09eac1879fc03ecfc8f1bfbdeff44bbbe0e23",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4eb09eac1879fc03ecfc8f1bfbdeff44bbbe0e23`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.DerivedCategory.Ext.ExtClass` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Yoneda` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hom_comp_singleFunctor_map_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/declarations/hom-comp-singlefunctor-map-shift--19b4500154c2f897ffbc7a4a.md) | 36 | `result-track:19b4500154c2f897ffbc7a4a03a56493fa74fa964e60e86774377cd5ba8e6fa1` |
| 2 | `lemma` | [preadditiveCoyoneda_homologySequenceδ_singleTriangle_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/declarations/preadditivecoyoneda-homologysequence-singletriangle-apply--2595dd81c143c34f258bcec1.md) | 44 | `result-track:2595dd81c143c34f258bcec13f81f20e4ca119b6bfaf8c85adb839d33b73fa34` |
| 3 | `lemma` | [covariant_sequence_exact₂'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/declarations/covariant-sequence-exact--534dc9992e255613e7138502.md) | 58 | `result-track:534dc9992e255613e7138502b9204e2727ee3067e3dfa073718b243653503166` |
| 4 | `lemma` | [covariant_sequence_exact₃'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/declarations/covariant-sequence-exact--b4b8f93c467e0a015a024037.md) | 78 | `result-track:b4b8f93c467e0a015a0240379da68ce49723b8baedd556c325970e378da70183` |
| 5 | `lemma` | [covariant_sequence_exact₁'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/declarations/covariant-sequence-exact--a876772f868a6e25afa4a763.md) | 96 | `result-track:a876772f868a6e25afa4a763b4de1aa2b51031a53aab4da3a938c951c0b4173e` |
| 6 | `def` | [covariantSequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/declarations/covariantsequence--41fb5e5e89e3c60f107934b7.md) | 120 | `declaration-track:41fb5e5e89e3c60f107934b7cd974f222cb155453fc63bb5948017c5e2293809` |
| 7 | `lemma` | [covariantSequence_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/declarations/covariantsequence-exact--3dbd96e4563216b6671b9711.md) | 127 | `result-track:3dbd96e4563216b6671b9711d9650456e9aa9c7c5f6cae610aba4bdf04a8fe67` |
| 8 | `lemma` | [covariant_sequence_exact₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/declarations/covariant-sequence-exact--eec2254bfe372b8ac2741379.md) | 136 | `result-track:eec2254bfe372b8ac27413795ace4fe46ede5c226b878937f45166d4ca0648a3` |
| 9 | `lemma` | [covariant_sequence_exact₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/declarations/covariant-sequence-exact--2dd767a6295e4bf325306c05.md) | 144 | `result-track:2dd767a6295e4bf325306c0590efb049dbe1058a741a33be64e34893f419b6d4` |
| 10 | `lemma` | [covariant_sequence_exact₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/declarations/covariant-sequence-exact--3747313ba9a5b02c41cf90d5.md) | 151 | `result-track:3747313ba9a5b02c41cf90d528bd6e8a2cb2280cc934489399ffb33d322b5c93` |
| 11 | `lemma` | [singleFunctor_map_comp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/declarations/singlefunctor-map-comp-hom--405e5d62dcbb68df9c667bfd.md) | 164 | `result-track:405e5d62dcbb68df9c667bfd0d037d348adb6b512b3b45a87b013ea3f53cadc5` |
| 12 | `lemma` | [preadditiveYoneda_homologySequenceδ_singleTriangle_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/declarations/preadditiveyoneda-homologysequence-singletriangle-apply--fed47e0d8d7ba46d993b6f8f.md) | 170 | `result-track:fed47e0d8d7ba46d993b6f8faacdfb7a6e0dc7216e5c648b853598451058bace` |
| 13 | `lemma` | [contravariant_sequence_exact₂'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/declarations/contravariant-sequence-exact--7b4f0437f5fd4e4e35c774cc.md) | 182 | `result-track:7b4f0437f5fd4e4e35c774ccf9c21e5314c47be00751f7c1f0fabdf01e41c3de` |
| 14 | `lemma` | [contravariant_sequence_exact₁'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/declarations/contravariant-sequence-exact--b182fb84e7ee1b8d75fe4455.md) | 201 | `result-track:b182fb84e7ee1b8d75fe4455269d18972476bb2eaa2b270a3c334a123629c45e` |
| 15 | `lemma` | [contravariant_sequence_exact₃'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/declarations/contravariant-sequence-exact--eed38d844cddcc7b16d62691.md) | 217 | `result-track:eed38d844cddcc7b16d62691e158d8d1378014588a1768ea44ad3d480a61832e` |
| 16 | `def` | [contravariantSequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/declarations/contravariantsequence--50087c7ee46061f3afd98fda.md) | 238 | `declaration-track:50087c7ee46061f3afd98fda127dff9f4c229edff9ab8e4286c157671eff6679` |
| 17 | `lemma` | [contravariantSequence_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/declarations/contravariantsequence-exact--4f31a5ae79dc84ab49360d6d.md) | 245 | `result-track:4f31a5ae79dc84ab49360d6d1a6e8a771b551a79308650a004b0c821092a8df8` |
| 18 | `lemma` | [contravariant_sequence_exact₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/declarations/contravariant-sequence-exact--3680270d87707862dd295bab.md) | 254 | `result-track:3680270d87707862dd295bab1a55cf3bd4691b75c44dba90dc08303e508a2103` |
| 19 | `lemma` | [contravariant_sequence_exact₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/declarations/contravariant-sequence-exact--9a95c50bade8e13572196d1c.md) | 262 | `result-track:9a95c50bade8e13572196d1cbf18384924e18a2d745a2611c0316ec1155d4d35` |
| 20 | `lemma` | [contravariant_sequence_exact₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/declarations/contravariant-sequence-exact--1c79b96adf1c46b460c7b609.md) | 269 | `result-track:1c79b96adf1c46b460c7b609ab31cb733c076bacf9dd888f104afae813984a70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
