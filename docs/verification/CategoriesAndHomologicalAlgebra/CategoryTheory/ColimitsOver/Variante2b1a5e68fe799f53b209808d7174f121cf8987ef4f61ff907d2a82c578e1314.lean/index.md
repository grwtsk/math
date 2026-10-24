# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ColimitsOver.Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df3e1cbd5a174f6e271346af5460e6ee9abd0018",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df3e1cbd5a174f6e271346af5460e6ee9abd0018`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean.json)

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
| 1 | `structure` | [ColimitGluingData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/declarations/colimitgluingdata--1e30743d3e2757b286d3d732.md) | 52 | `declaration-track:1e30743d3e2757b286d3d732b471d8562089380a126c13c93cef6d5b1383d038` |
| 2 | `def` | [trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/declarations/trans--63c68309b60766870b8691d3.md) | 68 | `declaration-track:63c68309b60766870b8691d3439e28e396adb8c20c4cc0d4cc4823da55fb0e79` |
| 3 | `def` | [transitionCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/declarations/transitioncocone--9d459a753ecdb9e27ba4ecb8.md) | 77 | `declaration-track:9d459a753ecdb9e27ba4ecb8d6a2d706875a58ae2b35a7f9fe48e2a58fab43e3` |
| 4 | `def` | [transitionMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/declarations/transitionmap--ef6ee1ea490f6b9252d1b523.md) | 84 | `declaration-track:ef6ee1ea490f6b9252d1b5237b1f72deb00b8056c12501a4fbf0496f693245b2` |
| 5 | `lemma` | [cocone_ι_transitionMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/declarations/cocone-transitionmap--98639b7be1934653ab85e1d1.md) | 90 | `result-track:98639b7be1934653ab85e1d17ab4f6de3f0598939ea70b64286852c598a24f55` |
| 6 | `lemma` | [transitionMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/declarations/transitionmap-id--63094ed7dbd63872951cb916.md) | 97 | `result-track:63094ed7dbd63872951cb916b4a6d0d21a6d6207489fd70031be07829c2bc235` |
| 7 | `lemma` | [transitionMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/declarations/transitionmap-comp--d141c804a284bebdc46db6f9.md) | 107 | `result-track:d141c804a284bebdc46db6f9adbd345109f24c81720b66e22cb4a114645ed44b` |
| 8 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/declarations/functor--d916169c26c28d39828a5b5d.md) | 119 | `declaration-track:d916169c26c28d39828a5b5d62ae1fa3e8517f2763f0c5a64100cef536b9cc7f` |
| 9 | `lemma` | [isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/declarations/ispullback--39b1d1da2b7f175ddb974d23.md) | 127 | `result-track:39b1d1da2b7f175ddb974d23ec628314871af5df57fe2801925808a2c24ad474` |
| 10 | `def` | [relativeGluingData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/declarations/relativegluingdata--53b67683156ae7c584e675da.md) | 160 | `declaration-track:53b67683156ae7c584e675da2026cd523eba7e052c265f7817364fe9196bf763` |
| 11 | `def` | [glued](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/declarations/glued--63e5b3dc20a39a8edb95e12e.md) | 169 | `declaration-track:63e5b3dc20a39a8edb95e12ef21a3502bc4dcba6a3e34f95d634cfa7feac55d4` |
| 12 | `def` | [pullbackGluedIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/declarations/pullbackgluediso--c7c0f8e52c3ea7704782f0eb.md) | 181 | `declaration-track:c7c0f8e52c3ea7704782f0eb0240d42376d647505cdf2508e9ecdff709f875ad` |
| 13 | `lemma` | [pullbackGluedIso_inv_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/declarations/pullbackgluediso-inv-fst--4c3dcc1e141cf73e8de61f2f.md) | 188 | `result-track:4c3dcc1e141cf73e8de61f2f475475e0d397273c87211df3c8b39ee1cad6d955` |
| 14 | `lemma` | [pullbackGluedIso_inv_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/declarations/pullbackgluediso-inv-snd--5ccc9ac7fdb2fc81097b887b.md) | 195 | `result-track:5ccc9ac7fdb2fc81097b887b346c5eb1e8378ea7ccd2d7316171b9593036cfc0` |
| 15 | `def` | [gluedCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/declarations/gluedcocone--9669f8e6984529ae230ab66b.md) | 203 | `declaration-track:9669f8e6984529ae230ab66b2cbd62bfbb4481cf51cc3d6b7c66ec96606c60ea` |
| 16 | `lemma` | [fst_gluedCocone_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/declarations/fst-gluedcocone--627630a4a3a82c4dc7f33751.md) | 229 | `result-track:627630a4a3a82c4dc7f337518624629042b5384f256b13a92fd848d94875e5cc` |
| 17 | `def` | [isColimitGluedCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/declarations/iscolimitgluedcocone--bffdb788d88c2856636cc100.md) | 242 | `declaration-track:bffdb788d88c2856636cc10002114a423b6da5ad8087695a4ca1896f88fafed9` |
| 18 | `lemma` | [hasColimit_of_locallyDirected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/declarations/hascolimit-of-locallydirected--e99483a1afd4b9f81f84f658.md) | 298 | `result-track:e99483a1afd4b9f81f84f6585489a8ca62b3e6f204aa48640e0d6f31e67a1f4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
