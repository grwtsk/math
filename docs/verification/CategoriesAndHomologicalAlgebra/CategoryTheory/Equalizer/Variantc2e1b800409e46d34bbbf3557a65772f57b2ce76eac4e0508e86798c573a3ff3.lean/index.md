# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equalizer.Variantc2e1b800409e46d34bbbf3557a65772f57b2ce76eac4e0508e86798c573a3ff3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e51c89581bfb967b866754f5e87b8b996f7f228d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantc2e1b800409e46d34bbbf3557a65772f57b2ce76eac4e0508e86798c573a3ff3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantc2e1b800409e46d34bbbf3557a65772f57b2ce76eac4e0508e86798c573a3ff3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantc2e1b800409e46d34bbbf3557a65772f57b2ce76eac4e0508e86798c573a3ff3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e51c89581bfb967b866754f5e87b8b996f7f228d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantc2e1b800409e46d34bbbf3557a65772f57b2ce76eac4e0508e86798c573a3ff3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantc2e1b800409e46d34bbbf3557a65772f57b2ce76eac4e0508e86798c573a3ff3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isPullback_equalizer_prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantc2e1b800409e46d34bbbf3557a65772f57b2ce76eac4e0508e86798c573a3ff3.lean/declarations/ispullback-equalizer-prod--c1217e82f213dc802c1091f2.md) | 27 | `result-track:c1217e82f213dc802c1091f2ee3fc3631b3e6f1eeab404375aac2a9570dfa495` |
| 2 | `lemma` | [isPushout_coequalizer_coprod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantc2e1b800409e46d34bbbf3557a65772f57b2ce76eac4e0508e86798c573a3ff3.lean/declarations/ispushout-coequalizer-coprod--2c0651870004c42725587c0d.md) | 40 | `result-track:2c0651870004c42725587c0d6c918c7c390a99d893362c2b3e6807352d0b835f` |
| 3 | `def` | [equalizerPullbackMapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantc2e1b800409e46d34bbbf3557a65772f57b2ce76eac4e0508e86798c573a3ff3.lean/declarations/equalizerpullbackmapiso--9da99d113a645f2d1f3cc087.md) | 58 | `declaration-track:9da99d113a645f2d1f3cc087ad65e6775bdbe53cbdf9bb51a1ff58effbbcff0b` |
| 4 | `lemma` | [equalizerPullbackMapIso_hom_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantc2e1b800409e46d34bbbf3557a65772f57b2ce76eac4e0508e86798c573a3ff3.lean/declarations/equalizerpullbackmapiso-hom-fst--24f381cfdc29ec9a8963277b.md) | 87 | `result-track:24f381cfdc29ec9a8963277b8d7b104921202d5ebeee934416af7bce18cfb8f6` |
| 5 | `lemma` | [equalizerPullbackMapIso_hom_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantc2e1b800409e46d34bbbf3557a65772f57b2ce76eac4e0508e86798c573a3ff3.lean/declarations/equalizerpullbackmapiso-hom-snd--829c9710d684a4d8f11bde4d.md) | 94 | `result-track:829c9710d684a4d8f11bde4d15719fe24cc7ab6d818ed94a8f8419b9ee8ed712` |
| 6 | `lemma` | [equalizerPullbackMapIso_inv_ι_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantc2e1b800409e46d34bbbf3557a65772f57b2ce76eac4e0508e86798c573a3ff3.lean/declarations/equalizerpullbackmapiso-inv-fst--c3e3d50e977772a548b76b67.md) | 101 | `result-track:c3e3d50e977772a548b76b67f87e75ded8b29a326685beef2331b7dca2f85fa1` |
| 7 | `lemma` | [equalizerPullbackMapIso_inv_ι_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantc2e1b800409e46d34bbbf3557a65772f57b2ce76eac4e0508e86798c573a3ff3.lean/declarations/equalizerpullbackmapiso-inv-snd--ff4fe17845968d8e2b3dca72.md) | 108 | `result-track:ff4fe17845968d8e2b3dca721297876408afa8cf639e19e7bbc1fdfcf68db3bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
