# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Fold.Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e14011ff5f84834f83bacc37a70cf48ab147cf7d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e14011ff5f84834f83bacc37a70cf48ab147cf7d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fold](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold--3294431f496b48a324badca4.md) | 38 | `declaration-track:3294431f496b48a324badca4a2e38367141dee843ec753638a65a83394443533` |
| 2 | `theorem` | [fold_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-empty--0686f6edacd2c90f2957b216.md) | 44 | `result-track:0686f6edacd2c90f2957b21657b977ca451d83f671fe02ffba523ba991ae4a71` |
| 3 | `theorem` | [fold_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-cons--b7eb2fe936329914f0278f95.md) | 48 | `result-track:b7eb2fe936329914f0278f95f4a36a173a67777499f1f2ce2eb53e942230397e` |
| 4 | `theorem` | [fold_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-insert--fb2436827564cf0a87ff0b97.md) | 53 | `result-track:fb2436827564cf0a87ff0b97ecdf183fb6279bd64d79adf95dc14d7fdc64873a` |
| 5 | `theorem` | [fold_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-singleton--92de948d73d018060f6cefc4.md) | 59 | `result-track:92de948d73d018060f6cefc4aa579f0b25feffb391ac17e4457faaa379e91e6f` |
| 6 | `theorem` | [fold_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-map--b03f89596484ad5ea72d691c.md) | 63 | `result-track:b03f89596484ad5ea72d691ce7c2104d6077b634e7c301c6d8884e4501b618f4` |
| 7 | `theorem` | [fold_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-image--39d6678b1cc0df87a00420a3.md) | 67 | `result-track:39d6678b1cc0df87a00420a3861591a81778bbea5ec539cb47d039c947e02c99` |
| 8 | `theorem` | [fold_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-congr--b7fcb8fd03083daac6448846.md) | 72 | `result-track:b7fcb8fd03083daac644884636aa0bcc732ee2d8f5c8c6b11774bb602ad9eee6` |
| 9 | `theorem` | [fold_op_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-op-distrib--91628848731066eb69501ed4.md) | 75 | `result-track:91628848731066eb69501ed4b24bd980b19464689460e809bdb7c5e4d36ec63c` |
| 10 | `theorem` | [fold_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-const--5e49f52242d02ccc2a6890a2.md) | 79 | `result-track:5e49f52242d02ccc2a6890a20158bb6d9cadf20430b385be96c9e5e65b83a447` |
| 11 | `theorem` | [fold_hom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-hom--c2e4f3d411159dbd103eb653.md) | 90 | `result-track:c2e4f3d411159dbd103eb6536fdb39089a675bc902d3898c375da762bf07891f` |
| 12 | `theorem` | [fold_disjUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-disjunion--13e8b3c4c5cf7cbf69c6abbe.md) | 96 | `result-track:13e8b3c4c5cf7cbf69c6abbe4a1699fd360d14aeb00199ea232ab880244c45c5` |
| 13 | `theorem` | [fold_union_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-union-inter--45c0def1eff94e8733d6a65c.md) | 100 | `result-track:45c0def1eff94e8733d6a65cfd406d0e4e8ff0761d019fab78d73bda67edef54` |
| 14 | `theorem` | [fold_insert_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-insert-idem--b2060635f95e6c9109368f66.md) | 107 | `result-track:b2060635f95e6c9109368f66eecf988373828f6a2c79cb837010d17881221207` |
| 15 | `theorem` | [fold_image_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-image-idem--8a2235d1632aff296456d541.md) | 114 | `result-track:8a2235d1632aff296456d541567493733b631f003e3e55e45d9191ddf3efefad` |
| 16 | `theorem` | [fold_ite'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-ite--cc903573ceaf7fd42775c4b5.md) | 126 | `result-track:cc903573ceaf7fd42775c4b5c6d5d6af888284fbdb8d6f2f806d7a14b339a770` |
| 17 | `theorem` | [fold_ite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-ite--76b8a3c625d0585ea08cc1a0.md) | 144 | `result-track:76b8a3c625d0585ea08cc1a0ca4e888e24209a20e987dfcc08c2c7aec660de32` |
| 18 | `theorem` | [fold_op_rel_iff_and](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-op-rel-iff-and--a236fe56797fb4d6c82d3a70.md) | 149 | `result-track:a236fe56797fb4d6c82d3a70f711d9ece211882530e4ae4796980335ee69dbd7` |
| 19 | `theorem` | [fold_op_rel_iff_or](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-op-rel-iff-or--96e2965896ed2acad64f6262.md) | 158 | `result-track:96e2965896ed2acad64f6262324627a2cb69a60b9f1fd35a59f08b3457326a8e` |
| 20 | `theorem` | [fold_union_empty_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-union-empty-singleton--2ea44d3bf77bfa633d2c4e00.md) | 168 | `result-track:2ea44d3bf77bfa633d2c4e008fafa23a93b94346b97b23101549ab28d9478522` |
| 21 | `theorem` | [fold_sup_bot_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-sup-bot-singleton--6a2f055b0c1f972198f24bab.md) | 174 | `result-track:6a2f055b0c1f972198f24babd88cb1f7eeecf8f76b9a1ec2ed481b2bede99408` |
| 22 | `theorem` | [le_fold_min](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/le-fold-min--8d78c7c52feb91b6586f9bf9.md) | 182 | `result-track:8d78c7c52feb91b6586f9bf9cc232eaa436377cbb2aa36119f492f9effea7fd7` |
| 23 | `theorem` | [fold_min_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-min-le--424599b8622a28876346d455.md) | 185 | `result-track:424599b8622a28876346d45517b73987a18843b7d5b081846f4682d12a7a8ca2` |
| 24 | `theorem` | [lt_fold_min](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/lt-fold-min--5a417e95ec0c778cb5276bfc.md) | 192 | `result-track:5a417e95ec0c778cb5276bfc012446e956682d4d31ce4b5a2472158d5592fb48` |
| 25 | `theorem` | [fold_min_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-min-lt--3f623847fc8f2548f84a8c81.md) | 195 | `result-track:3f623847fc8f2548f84a8c818d9276354c9dc1c79c10b5051a488e40f81e8f9d` |
| 26 | `theorem` | [fold_max_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-max-le--e5bfc8f0629662745f9f825c.md) | 202 | `result-track:e5bfc8f0629662745f9f825c8d6573fa59066d340cd434c47e24725f638732ca` |
| 27 | `theorem` | [le_fold_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/le-fold-max--2076fdfeb3b864f6b878124d.md) | 209 | `result-track:2076fdfeb3b864f6b878124d61b8ae307ee47c56f53565e599546c52424f9ca5` |
| 28 | `theorem` | [fold_max_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/fold-max-lt--352b0d74bd07ed4813678604.md) | 212 | `result-track:352b0d74bd07ed481367860438a35112f748781fef0218cfdb9c6c6db82ce27d` |
| 29 | `theorem` | [lt_fold_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/declarations/lt-fold-max--6d085281cc4e2ec57868e4c8.md) | 219 | `result-track:6d085281cc4e2ec57868e4c8e5c2d958ecbddd0f90042941e2cdbd2696c01634` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
