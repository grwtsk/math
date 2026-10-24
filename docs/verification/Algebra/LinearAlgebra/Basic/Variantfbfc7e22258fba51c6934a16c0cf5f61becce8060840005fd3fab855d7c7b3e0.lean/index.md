# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53058a759ec2aac96260db3402f95b5b96c8c477",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53058a759ec2aac96260db3402f95b5b96c8c477`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean.json)

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
| 1 | `class` | [IsPerfPair](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/isperfpair--c20df5e065d67fc984e43e90.md) | 39 | `declaration-track:c20df5e065d67fc984e43e90f0884f7cc8c577bd53ddbf79263165a499744f09` |
| 2 | `lemma` | [IsPerfPair.flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/isperfpair-flip--79cf8d8fce4134a1831e5ce5.md) | 44 | `result-track:79cf8d8fce4134a1831e5ce5f35adb5c91a4552a199fb86e5d00ceb282d6efb3` |
| 3 | `instance` | [flip.instIsPerfPair](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/flip-instisperfpair--1619a58820a7cb8f3fb49a6a.md) | 51 | `declaration-track:1619a58820a7cb8f3fb49a6a8b0dc18357a69c77c48ee216f662fae506620cc5` |
| 4 | `def` | [toPerfPair](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/toperfpair--38d1767214be8aa8bdc43980.md) | 57 | `declaration-track:38d1767214be8aa8bdc439800840081452e67815eeac576848e5a97917fa2836` |
| 5 | `lemma` | [toLinearMap_toPerfPair](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/tolinearmap-toperfpair--5258135710ffcd23db2a73a8.md) | 61 | `result-track:5258135710ffcd23db2a73a8e6111fc65b19e985d3e1f82e37185fa71a018369` |
| 6 | `lemma` | [toPerfPair_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/toperfpair-apply--4d7aac18f87b657bf08fd134.md) | 62 | `result-track:4d7aac18f87b657bf08fd134e9eaf3ecf112995cfcdaa7359a5b940362c2e4b6` |
| 7 | `lemma` | [apply_symm_toPerfPair_self](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/apply-symm-toperfpair-self--ca7f5b583bf0bc47625e56f8.md) | 64 | `result-track:ca7f5b583bf0bc47625e56f881f6bd5bbac658f74ec00aa0c9c085be38def65a` |
| 8 | `lemma` | [apply_toPerfPair_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/apply-toperfpair-flip--254af2f4dcc48b27c430fd06.md) | 67 | `result-track:254af2f4dcc48b27c430fd0665910d743ae838c7c885d0d5202027a5956bdec1` |
| 9 | `lemma` | [_root_.Module.IsReflexive.of_isPerfPair](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/root-module-isreflexive-of-isperfpair--d25cd639db2b1216ee69ce3c.md) | 71 | `result-track:d25cd639db2b1216ee69ce3cf9895d6bc855d38c67c18c2e3db3dd8319432b43` |
| 10 | `lemma` | [_root_.Module.finrank_of_isPerfPair](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/root-module-finrank-of-isperfpair--a18f92ddc22a1ac5b5594734.md) | 78 | `result-track:a18f92ddc22a1ac5b5594734cb32172a3cd8126a27dc76e7c931d244d756e33b` |
| 11 | `instance` | [IsPerfPair.id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/isperfpair-id--19a9bb71097bf7b3a61d1aec.md) | 83 | `declaration-track:19a9bb71097bf7b3a61d1aecfdfc808c223c707e31c6819336af33a22befe11d` |
| 12 | `instance` | [IsPerfPair.dualEval](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/isperfpair-dualeval--1f32d27f9b0a3eb913bcd949.md) | 88 | `declaration-track:1f32d27f9b0a3eb913bcd9499a701e302c8abefc77647ab9e81a213311e53cd0` |
| 13 | `instance` | [IsPerfPair.compl₁₂](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/isperfpair-compl--487ba8b88ddc61d68a0da77a.md) | 90 | `declaration-track:487ba8b88ddc61d68a0da77a2ac318e6f4450c29bb6dba24e2c5d8eb178276cf` |
| 14 | `lemma` | [IsPerfPair.congr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/isperfpair-congr--e63d9b67a4502f72834f1811.md) | 97 | `result-track:e63d9b67a4502f72834f1811dfb1a20654b7dcb24733b1da29f07300aa5c7341` |
| 15 | `lemma` | [IsPerfPair.of_bijective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/isperfpair-of-bijective--d78ed3b767f196f7757bb90c.md) | 102 | `result-track:d78ed3b767f196f7757bb90c9e08ebe0a3917a4da995f2a1a771479c496a9518` |
| 16 | `lemma` | [IsPerfPair.separatingLeft](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/isperfpair-separatingleft--c909c3b1719a6ba64e21767e.md) | 108 | `result-track:c909c3b1719a6ba64e21767eacff2a36481ddd2ed191c0647246e1d801da8808` |
| 17 | `lemma` | [IsPerfPair.separatingRight](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/isperfpair-separatingright--30ba24df4cd0c2b60055718f.md) | 112 | `result-track:30ba24df4cd0c2b60055718fb4987f4038b06f1a3899dd68f7effc08063213ce` |
| 18 | `lemma` | [IsPerfPair.nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/isperfpair-nondegenerate--2ef6aa5528a31d875f728128.md) | 115 | `result-track:2ef6aa5528a31d875f728128d7badc0bd2463aded41de94fdf03d2049fb83422` |
| 19 | `lemma` | [IsPerfPair.of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/isperfpair-of-injective--02ac317a18c71323a08885d9.md) | 126 | `result-track:02ac317a18c71323a08885d9f71690ca15ffa2e85f5291d3be50c55fbabb29c3` |
| 20 | `lemma` | [IsPerfPair.of_injective'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/isperfpair-of-injective--cfbaa51b2530814ead55f0e7.md) | 135 | `result-track:cfbaa51b2530814ead55f0e752e10a7699810a2ad663c56d1df38186fdc42e1e` |
| 21 | `structure` | [IsPerfectCompl](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/isperfectcompl--9f098bd8e9810f0a6bc88812.md) | 153 | `declaration-track:9f098bd8e9810f0a6bc8881295b36ca32f12e99cd9f6d26791db44aaecaa543f` |
| 22 | `lemma` | [flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/flip--f3ba9631b4b52acd4b443c57.md) | 160 | `result-track:f3ba9631b4b52acd4b443c57cf926bbc5d6aaf0f6bb4aece4bbd594e5ce87c38` |
| 23 | `lemma` | [flip_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/flip-iff--902a0e950b3761a2f009f45a.md) | 166 | `result-track:902a0e950b3761a2f009f45a0a976c31a94b9862b5401615e8d6485e0616a6e9` |
| 24 | `lemma` | [left_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/left-top-iff--7e34f9726f743c7b373fd90a.md) | 171 | `result-track:7e34f9726f743c7b373fd90a672adf69a5c4088f92b607cdb8780f17c3416e99` |
| 25 | `lemma` | [right_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/right-top-iff--559434b83672de01c895367d.md) | 181 | `result-track:559434b83672de01c895367d2a6c2a140a5ed3dbbee51dda293e0b5d15922f87` |
| 26 | `def` | [flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/flip--c33eb03b284be30f1834c9b9.md) | 198 | `declaration-track:c33eb03b284be30f1834c9b94463e9381e8f30b158e95b7803eb9f2a9f1cee11` |
| 27 | `lemma` | [coe_toLinearMap_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/coe-tolinearmap-flip--60c1bb34856a1a37f81f18fc.md) | 201 | `result-track:60c1bb34856a1a37f81f18fcd3474039467c9ad0d752c8234e8e19ff96cf9bda` |
| 28 | `lemma` | [flip_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/flip-apply--1688d371bc44d7e2602feec0.md) | 203 | `result-track:1688d371bc44d7e2602feec0fa2ff52ca366bba7df5a918cbb60cabd0cae8bdd` |
| 29 | `lemma` | [symm_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/symm-flip--944be9af49bde5ae2ccbe002.md) | 205 | `result-track:944be9af49bde5ae2ccbe00269e21596af0858ec234c7b7e52cdd0a43e50e00e` |
| 30 | `lemma` | [trans_dualMap_symm_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/trans-dualmap-symm-flip--033013c5e17e7d60ef57f01e.md) | 207 | `result-track:033013c5e17e7d60ef57f01e8593de95e916c737975323695c05d4203abbbc89` |
| 31 | `lemma` | [isReflexive_of_equiv_dual_of_isReflexive](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/isreflexive-of-equiv-dual-of-isreflexive--841bd99a71bd65628b76ba4a.md) | 212 | `result-track:841bd99a71bd65628b76ba4a020bd9854659a8e482a4aca160d115bd99cf67a4` |
| 32 | `lemma` | [flip_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/flip-flip--c8fd5b1a33ab505342358869.md) | 217 | `result-track:c8fd5b1a33ab505342358869bdb9b234f32fe7274707d0ae762fc15b55b91475` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/instance--0eb617553145b410adbba094.md) | 221 | `declaration-track:0eb617553145b410adbba094b7d6732b67c47bd459160363babbef27f09f3ec8` |
| 34 | `lemma` | [dualCoannihilator_map_linearEquiv_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/dualcoannihilator-map-linearequiv-flip--7030b143c51e41ac828e743e.md) | 233 | `result-track:7030b143c51e41ac828e743e6e046ab5db36785b327fa3ba3d7a9823562fa92b` |
| 35 | `lemma` | [map_dualAnnihilator_linearEquiv_flip_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/map-dualannihilator-linearequiv-flip-symm--3a9a5100fbea356ae7249ac9.md) | 239 | `result-track:3a9a5100fbea356ae7249ac935b6601326644e9279af7bcdf192be2ce6ef4391` |
| 36 | `lemma` | [map_dualCoannihilator_linearEquiv_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/map-dualcoannihilator-linearequiv-flip--457593060630be50a3481483.md) | 247 | `result-track:457593060630be50a34814839335af1b1b08c7f2037e471d954b396cd9352eb7` |
| 37 | `lemma` | [dualAnnihilator_map_linearEquiv_flip_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.lean/declarations/dualannihilator-map-linearequiv-flip-symm--a7e69af665b61d08eed9acf6.md) | 260 | `result-track:a7e69af665b61d08eed9acf6d623c7dd93b4a8cc972fe72080c00aef7e6c635e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
