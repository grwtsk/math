# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomologySequence.Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93426cb64c1e46fa454e7b7c030b6de2da429e93",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93426cb64c1e46fa454e7b7c030b6de2da429e93`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.SnakeLemma` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.ShortExact` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomologicalComplexLimits` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [opcyclesToCycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/opcyclestocycles--2eafc538904820e10b86b455.md) | 51 | `declaration-track:2eafc538904820e10b86b455ec50af0ac2bdbee33a2de0a80ba4371d33c07b03` |
| 2 | `lemma` | [opcyclesToCycles_iCycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/opcyclestocycles-icycles--39aaa8b1bc1d6e9f3a1e934d.md) | 56 | `result-track:39aaa8b1bc1d6e9f3a1e934d8ff8f4c8f08aeed9ac7dd87f7c62be2aa7a84e8b` |
| 3 | `lemma` | [pOpcycles_opcyclesToCycles_iCycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/popcycles-opcyclestocycles-icycles--3d0537e99030216161c1d114.md) | 61 | `result-track:3d0537e99030216161c1d1147ac2fa65df0fba8ca570074464e03ebd5117724c` |
| 4 | `lemma` | [pOpcycles_opcyclesToCycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/popcycles-opcyclestocycles--ba9f821f931833d0c42c9450.md) | 66 | `result-track:ba9f821f931833d0c42c9450a30a2f0777ad860f5ae8daa1c235a14992ab6d0e` |
| 5 | `lemma` | [homologyι_opcyclesToCycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/homology-opcyclestocycles--e77ddfd7d67430ed110631ba.md) | 72 | `result-track:e77ddfd7d67430ed110631baf1decd7f70920c9b984a0b576e38e7e8a31c2783` |
| 6 | `lemma` | [opcyclesToCycles_homologyπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/opcyclestocycles-homology--0483a9fbb725b131719b3d7a.md) | 78 | `result-track:0483a9fbb725b131719b3d7a1d896dc8da1cf48afcf5cd2d2bcc0d8d2a4ee287` |
| 7 | `lemma` | [opcyclesToCycles_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/opcyclestocycles-naturality--f93d3eb1b652e0d7eb229898.md) | 86 | `result-track:f93d3eb1b652e0d7eb2298987918d5db200aa2a808f428687736eafa41af0b18` |
| 8 | `def` | [natTransOpCyclesToCycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/nattransopcyclestocycles--b3b10338bb4970e705e57f65.md) | 97 | `declaration-track:b3b10338bb4970e705e57f651fa431a7c31fc89026a27f02c39c452499ebbc24` |
| 9 | `def` | [composableArrows₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/composablearrows--3e8d41f40e9442d1343419c5.md) | 112 | `declaration-track:3e8d41f40e9442d1343419c522293d4487083721b85d575b0b2590c1653a97f2` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/instance--085f8ced0923eb493cdb4276.md) | 116 | `declaration-track:085f8ced0923eb493cdb427653343e20813c36384e06590c7e008deaeecc1406` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/instance--df8db49c484732f203b0fbca.md) | 127 | `declaration-track:df8db49c484732f203b0fbca3de2d349fbe91c94ed92490edccbe68eebfe709a` |
| 12 | `lemma` | [composableArrows₃_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/composablearrows-exact--db2fbe745ad9ff2559e9aa06.md) | 135 | `result-track:db2fbe745ad9ff2559e9aa0626f38ba0ad69dbac8686e7258cf873f037fa0ac0` |
| 13 | `def` | [composableArrows₃Functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/composablearrows-functor--6bc71a8fc2dc9abb566c0769.md) | 172 | `declaration-track:6bc71a8fc2dc9abb566c0769ce8688755b1a3065fc766cf23f6418de429f6ff5` |
| 14 | `lemma` | [opcycles_right_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/opcycles-right-exact--3eac77016722c2671206f93f.md) | 190 | `result-track:3eac77016722c2671206f93face34d0e4dcbe68aa99174688a15a43ab1c3faf2` |
| 15 | `lemma` | [cycles_left_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/cycles-left-exact--b7ea679ba4ede80aae1c6486.md) | 212 | `result-track:b7ea679ba4ede80aae1c648672bf238bde260d724435826ec967586ab855c941` |
| 16 | `def` | [snakeInput](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/snakeinput--08700f0cf52162db57894347.md) | 241 | `declaration-track:08700f0cf52162db57894347c293e388204b526dc4e0a8f61bcb5a79a54bfb66` |
| 17 | `def` | [δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/anonymous--5eb6406bdfaa9c9c2c2b4d85.md) | 295 | `declaration-track:5eb6406bdfaa9c9c2c2b4d85670baabaa5ad22774a1e22fb2cefd70b9fc2acc8` |
| 18 | `lemma` | [δ_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/comp--5bab4131fd8aaedc6dd79fcc.md) | 298 | `result-track:5bab4131fd8aaedc6dd79fccc8f062ac3a06661020a1e5e18697c66f551f3129` |
| 19 | `lemma` | [comp_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/comp--870eb4eebe5c5605aa5d75ee.md) | 302 | `result-track:870eb4eebe5c5605aa5d75ee2a6e084c9f1483e500c1065b3df66d8c59df0d3a` |
| 20 | `lemma` | [homology_exact₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/homology-exact--3ea9a2d7d139a44c7a8447d6.md) | 306 | `result-track:3ea9a2d7d139a44c7a8447d6de6edeb5d9aee96e4b3243b126839461d6adf46f` |
| 21 | `lemma` | [homology_exact₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/homology-exact--249941b30fbbbd0dd6100394.md) | 311 | `result-track:249941b30fbbbd0dd6100394a0bfad463f7d76bd4bcdf7454ed0de9284c5b2de` |
| 22 | `lemma` | [homology_exact₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/homology-exact--da2c60f44a686129d818c0c2.md) | 326 | `result-track:da2c60f44a686129d818c0c2fc7bffcde57d364584c956c553ac533b985d4be7` |
| 23 | `lemma` | [δ_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/eq--64875b578f37a4cb0ffb1271.md) | 329 | `result-track:64875b578f37a4cb0ffb1271d1ca79a350f8878c3d6a66f7ab64a9d40188ec63` |
| 24 | `lemma` | [δ_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/declarations/eq--61641cc23ceaea58e6095b0e.md) | 336 | `result-track:61641cc23ceaea58e6095b0eaf47c0bca57057e28632ece1548bc46247d0096a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
