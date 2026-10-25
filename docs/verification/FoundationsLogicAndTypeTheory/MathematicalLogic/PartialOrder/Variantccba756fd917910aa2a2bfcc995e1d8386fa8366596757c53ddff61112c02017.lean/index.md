# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PartialOrder.Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e701542406433049d7c4962d51f322fce26dc174",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e701542406433049d7c4962d51f322fce26dc174`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Trans` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ExtendDoc` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lemma` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SplitIfs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Preorder](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/preorder--f7f953a9f1f173d558b80965.md) | 39 | `declaration-track:f7f953a9f1f173d558b80965038d78db952aaed8cbd8cbac7e56b381e7d10bb2` |
| 2 | `lemma` | [le_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/le-refl--3214da4b53d41a6bb4ac6592.md) | 48 | `result-track:3214da4b53d41a6bb4ac6592bdadad745e452bcf5c7fe4f621ec803f7848affd` |
| 3 | `lemma` | [le_rfl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/le-rfl--927b2af55c091378b63774f1.md) | 51 | `result-track:927b2af55c091378b63774f133db0b2e773ac302cf1635449d343853ff8546e1` |
| 4 | `lemma` | [le_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/le-trans--8ea1077c9e498ccb39abf4ff.md) | 54 | `result-track:8ea1077c9e498ccb39abf4ffcc04e3386cfd4be2e8d1c268b448a39e6aa933d8` |
| 5 | `lemma` | [lt_iff_le_not_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/lt-iff-le-not-le--bd465f3ed87db730bb9c7a18.md) | 56 | `result-track:bd465f3ed87db730bb9c7a18b4ea3d133a10debd0b81aad7e4f4db6c953ebbb4` |
| 6 | `lemma` | [lt_of_le_not_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/lt-of-le-not-le--1b5f17316870e07e29aa60c5.md) | 58 | `result-track:1b5f17316870e07e29aa60c508cdfa39397987d8305f93c2eefe87e84b93c298` |
| 7 | `lemma` | [le_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/le-of-eq--628500dc235d284c8ff8c779.md) | 60 | `result-track:628500dc235d284c8ff8c779b8bd46df3e3f753b561cdeb5b4b6b605113bd6b2` |
| 8 | `lemma` | [le_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/le-of-lt--154011f6129c1f36f96f8c15.md) | 61 | `result-track:154011f6129c1f36f96f8c150433840030c0e99f12442e338c3be71a1f28eb4d` |
| 9 | `lemma` | [not_le_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/not-le-of-lt--67839ce9c07c9cbb26c732e2.md) | 62 | `result-track:67839ce9c07c9cbb26c732e2c3f513c9cce697b5912959449efbff05d779ce10` |
| 10 | `lemma` | [not_le_of_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/not-le-of-gt--cf3ac66edbc5ab3e33f8e44c.md) | 63 | `result-track:cf3ac66edbc5ab3e33f8e44cff0a8a0a58078cdfb81c5d2213c70eb5a017a15c` |
| 11 | `lemma` | [not_lt_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/not-lt-of-le--3267c91def7865716b0b43e8.md) | 64 | `result-track:3267c91def7865716b0b43e830d2bbcc6a7c3bed1b61ca4559b53f7efae2b6f1` |
| 12 | `lemma` | [not_lt_of_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/not-lt-of-ge--bda19111cfb981ed075cf1dd.md) | 65 | `result-track:bda19111cfb981ed075cf1dd231f7e029e670f79e9071ccb107291582dee555c` |
| 13 | `lemma` | [ge_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/ge-trans--2c844b47c90574020cddf590.md) | 70 | `result-track:2c844b47c90574020cddf590584c41f73eacf87b17b766191de8a8e80de9e855` |
| 14 | `lemma` | [lt_irrefl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/lt-irrefl--aa390431516270cbcead6893.md) | 72 | `result-track:aa390431516270cbcead68936f403ecfc0fbaea0df115d9d4ccee10efc043eb5` |
| 15 | `lemma` | [gt_irrefl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/gt-irrefl--f396f6cd552770e57edb8b7b.md) | 73 | `result-track:f396f6cd552770e57edb8b7be661ebe1047f1e1167c0762420c10993a573d09e` |
| 16 | `lemma` | [lt_of_lt_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/lt-of-lt-of-le--221c13d1fcc911d670b49ed1.md) | 75 | `result-track:221c13d1fcc911d670b49ed19e1b81df3dde6395171df674d241fffc0236594f` |
| 17 | `lemma` | [lt_of_le_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/lt-of-le-of-lt--c9af60a675deff08cfd8a2a7.md) | 78 | `result-track:c9af60a675deff08cfd8a2a78ceddf2aa214376314cfd9277fb4e3cd709b6581` |
| 18 | `lemma` | [gt_of_gt_of_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/gt-of-gt-of-ge--d4a7c9c94214a4dea0f1a530.md) | 81 | `result-track:d4a7c9c94214a4dea0f1a530fba659aa276b287bd0f7f20cec0a02b75af38f99` |
| 19 | `lemma` | [gt_of_ge_of_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/gt-of-ge-of-gt--27361701087fb8ca97f2d23f.md) | 82 | `result-track:27361701087fb8ca97f2d23f220e4a39542566f3bc68b2995f9609778ecddb00` |
| 20 | `lemma` | [lt_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/lt-trans--23ce5894df87ad47c2182ab9.md) | 84 | `result-track:23ce5894df87ad47c2182ab92d31c146b90db08035e5154e7f8edcc2a2020ae4` |
| 21 | `lemma` | [gt_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/gt-trans--d0baa530eb7b4621ce6e734d.md) | 85 | `result-track:d0baa530eb7b4621ce6e734de575e42163e8b21fd03163ee4ca9745a96bdbb9b` |
| 22 | `lemma` | [ne_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/ne-of-lt--0061ea3b2678bbcd8f8a52ab.md) | 87 | `result-track:0061ea3b2678bbcd8f8a52abf99d82ca3224b30c3353261ab8a09fd3747d466a` |
| 23 | `lemma` | [ne_of_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/ne-of-gt--5e21a1bb792275660e61108a.md) | 88 | `result-track:5e21a1bb792275660e61108ad170418105bfef80cdde74bb2d119ba9b5895f7f` |
| 24 | `lemma` | [lt_asymm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/lt-asymm--009a61cc2b8bdec7e3d37c5c.md) | 89 | `result-track:009a61cc2b8bdec7e3d37c5c9a43379d5ede1fe0f164f5c15d18a1a964414c85` |
| 25 | `lemma` | [le_of_lt_or_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/le-of-lt-or-eq--68098a49ecd09326a49106d8.md) | 94 | `result-track:68098a49ecd09326a49106d8a99d051d2560928cf2fe42f7dea20d2f39c7d2dc` |
| 26 | `lemma` | [le_of_eq_or_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/le-of-eq-or-lt--c4c25a32d3c8eef98e7dd6b2.md) | 95 | `result-track:c4c25a32d3c8eef98e7dd6b2e2cb1fb930469260f1b380bb50abe673a39d989d` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/instance--11a7c3728b9c468248efe7f1.md) | 97 | `declaration-track:11a7c3728b9c468248efe7f1afa8649f6a859eaf59eec51b89e19a03ae88e3d7` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/instance--23b2b50f17b17885e40385d4.md) | 98 | `declaration-track:23b2b50f17b17885e40385d487b5bec37e7b625344e124ca05c1ccfa4f385ca8` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/instance--d46adf86509fc3e584dc0c02.md) | 99 | `declaration-track:d46adf86509fc3e584dc0c020ef5e14d2aafd41abd3b3ce19b963c2aeb8188a1` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/instance--9ac5df110708839710a7f277.md) | 100 | `declaration-track:9ac5df110708839710a7f2774f9f93ff6c9311771ee251a150c96ead6a93b7f3` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/instance--4e5242029dc5f73f147b794f.md) | 101 | `declaration-track:4e5242029dc5f73f147b794f3de297d901651f622fc795b949917c6a597c4431` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/instance--dd88a72c568c043047550cb6.md) | 102 | `declaration-track:dd88a72c568c043047550cb6251ca0e79af8f0dcbceebe5260b171d2aaa22d09` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/instance--155141bf0147613dff9605ea.md) | 103 | `declaration-track:155141bf0147613dff9605ea991e4c825522b0052279dc861e9b2152bce56e93` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/instance--ae27f6801f01c3838019b27b.md) | 104 | `declaration-track:ae27f6801f01c3838019b27b1ca576a753f76ed7bd9b4074f3484aae82fc4eb3` |
| 35 | `def` | [decidableLTOfDecidableLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/decidableltofdecidablele--9a4756bab0fb40f06191907c.md) | 107 | `declaration-track:9a4756bab0fb40f06191907c85c2046d6e96492202e9d18d5bb89fc2347095dc` |
| 36 | `def` | [WCovBy](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/wcovby--44f651c3173e08abe16f7a07.md) | 117 | `declaration-track:44f651c3173e08abe16f7a077fb77affa574d75c2f25f3ee17570fe6d980243e` |
| 37 | `def` | [CovBy](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/covby--bcf960ada9975b09a51cc702.md) | 124 | `declaration-track:bcf960ada9975b09a51cc7026956d303b257407f13aee8aa5c47d6f08c3c195e` |
| 38 | `class` | [PartialOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/partialorder--3de31ffa86cdc954ce90b830.md) | 139 | `declaration-track:3de31ffa86cdc954ce90b830380dc1f9d8ea09c4661bdcdb90889a6882c24be7` |
| 39 | `lemma` | [le_antisymm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/le-antisymm--d4352afa2d423d1b8ae5198f.md) | 144 | `result-track:d4352afa2d423d1b8ae5198f10573c2ac8915fe20e213f441aed278c8201a200` |
| 40 | `lemma` | [le_antisymm_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/le-antisymm-iff--d3f9f76a6cf111ce27414ac4.md) | 148 | `result-track:d3f9f76a6cf111ce27414ac477827aedb34548bb61e5b91a69d4039fb9ef6f69` |
| 41 | `lemma` | [lt_of_le_of_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/lt-of-le-of-ne--78d6031388e8947e7c7ed2f1.md) | 151 | `result-track:78d6031388e8947e7c7ed2f1c3647850b305cb5f4b3ef84fb79b781771b740cf` |
| 42 | `def` | [decidableEqOfDecidableLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/decidableeqofdecidablele--c338ada0e5df7fe1214fb581.md) | 155 | `declaration-track:c338ada0e5df7fe1214fb581a2ba1589f222f29c35d36c20d4d8cf44bc165534` |
| 43 | `lemma` | [lt_or_eq_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/lt-or-eq-of-le--809635047c7cddba5b7f7dfe.md) | 165 | `result-track:809635047c7cddba5b7f7dfef24bfee186e631287a1e507d1a900ac3688c774d` |
| 44 | `lemma` | [eq_or_lt_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/eq-or-lt-of-le--fae163cd88d10a33b1f86597.md) | 168 | `result-track:fae163cd88d10a33b1f86597e5e4d832a89108c70e7b55eeb0f9cfc73810f626` |
| 45 | `lemma` | [le_iff_lt_or_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/le-iff-lt-or-eq--b216e799913b1651c0982429.md) | 171 | `result-track:b216e799913b1651c0982429c2e974173e4c4ba450b04ff8c4f4541e79308413` |
| 46 | `lemma` | [lt_or_eq_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/lt-or-eq-of-le--d23bfd23ca3cb23461b78550.md) | 176 | `result-track:d23bfd23ca3cb23461b78550d7955f0a34559c70c925ab8abadce709256de596` |
| 47 | `lemma` | [le_iff_lt_or_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantccba756fd917910aa2a2bfcc995e1d8386fa8366596757c53ddff61112c02017.lean/declarations/le-iff-lt-or-eq--c16e4526ceb8b8b2e49e8e6c.md) | 177 | `result-track:c16e4526ceb8b8b2e49e8e6c1e04372ba7aace7eaafa4ca4ea932a6c8fa5753c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
