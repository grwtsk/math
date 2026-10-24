# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FlatMap.Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bf18efa35e418de31294db95b40bbfce5ea5f4e",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bf18efa35e418de31294db95b40bbfce5ea5f4e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Combinators.FilterMap` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Combinators.Monadic.FilterMap` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Combinators.Monadic.FlatMap` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.List.Monadic` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Flatten.IsPlausibleStep.outerYield_flatMapM_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/flatten-isplausiblestep-outeryield-flatmapm-pure--2e311d5ecb41560b58818fc0.md) | 32 | `result-track:2e311d5ecb41560b58818fc0365c478d36ab4be59eac21ad16b083fd222ebab7` |
| 2 | `theorem` | [Flatten.IsPlausibleStep.outerSkip_flatMapM_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/flatten-isplausiblestep-outerskip-flatmapm-pure--ad76833dfbef88729a51878f.md) | 43 | `result-track:ad76833dfbef88729a51878f52a4cbc66fc986628c63fa7ce0b72bd13419f70d` |
| 3 | `theorem` | [Flatten.IsPlausibleStep.outerDone_flatMapM_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/flatten-isplausiblestep-outerdone-flatmapm-pure--85c9b7d2a976fd22df27a99f.md) | 51 | `result-track:85c9b7d2a976fd22df27a99f9a9fe5d0f1e9615f8946b0029343b6b491a97a04` |
| 4 | `theorem` | [Flatten.IsPlausibleStep.innerYield_flatMapM_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/flatten-isplausiblestep-inneryield-flatmapm-pure--d93898b57ab23415f69a1281.md) | 59 | `result-track:d93898b57ab23415f69a12819278c716a3006de5b634d5aa32ae22320c8ee7b8` |
| 5 | `theorem` | [Flatten.IsPlausibleStep.innerSkip_flatMapM_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/flatten-isplausiblestep-innerskip-flatmapm-pure--ba9921d88adea67b5e59cd75.md) | 67 | `result-track:ba9921d88adea67b5e59cd751a66fcbc75655dbbea20ce69348d559235f15464` |
| 6 | `theorem` | [Flatten.IsPlausibleStep.innerDone_flatMapM_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/flatten-isplausiblestep-innerdone-flatmapm-pure--c6071c3bf52bb271fbaa4771.md) | 75 | `result-track:c6071c3bf52bb271fbaa4771b37398122944a77e4418106ae550cdd65d08281a` |
| 7 | `theorem` | [Flatten.IsPlausibleStep.outerYield_flatMap_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/flatten-isplausiblestep-outeryield-flatmap-pure--1e466d523d75875cdc6aaf65.md) | 83 | `result-track:1e466d523d75875cdc6aaf654aebf73fcf514bb46e4deb47ad16bec71ab7c2e1` |
| 8 | `theorem` | [Flatten.IsPlausibleStep.outerSkip_flatMap_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/flatten-isplausiblestep-outerskip-flatmap-pure--a6c368e67b24711c2177d6a8.md) | 90 | `result-track:a6c368e67b24711c2177d6a82dbf2c4abe4bc4e5f519a68bbd98488326b5e2d7` |
| 9 | `theorem` | [Flatten.IsPlausibleStep.outerDone_flatMap_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/flatten-isplausiblestep-outerdone-flatmap-pure--5ae636b97bf6c80f4bee7b3f.md) | 97 | `result-track:5ae636b97bf6c80f4bee7b3f7a8417ad435c2a12c71d784b5d66dd4ef225417f` |
| 10 | `theorem` | [Flatten.IsPlausibleStep.innerYield_flatMap_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/flatten-isplausiblestep-inneryield-flatmap-pure--ef2d09a7017aa208d276842e.md) | 104 | `result-track:ef2d09a7017aa208d276842e5296267bf460593ea14332ad9d1b16791c2da5ae` |
| 11 | `theorem` | [Flatten.IsPlausibleStep.innerSkip_flatMap_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/flatten-isplausiblestep-innerskip-flatmap-pure--06db85f3ab8e99c43a8b52b3.md) | 111 | `result-track:06db85f3ab8e99c43a8b52b3b696138a44dc904b175af40da5c630f1db17d026` |
| 12 | `theorem` | [Flatten.IsPlausibleStep.innerDone_flatMap_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/flatten-isplausiblestep-innerdone-flatmap-pure--f6137655cb20b05afd9e684f.md) | 118 | `result-track:f6137655cb20b05afd9e684fa69cc88d9424fa83e12fbd979fd5515bc8b57319` |
| 13 | `theorem` | [Iter.step_flatMapAfterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/iter-step-flatmapafterm--edb5871f496ce5103d4bc3cf.md) | 127 | `result-track:edb5871f496ce5103d4bc3cf40a028682a133379e9358324fc3ea8906d2561a5` |
| 14 | `theorem` | [Iter.step_flatMapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/iter-step-flatmapm--4bb1c823963d272d45d51a63.md) | 154 | `result-track:4bb1c823963d272d45d51a636ea119bded97e689d6b5aad10002e1c115c745fb` |
| 15 | `theorem` | [Iter.step_flatMapAfter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/iter-step-flatmapafter--05f074bf519eafee697f77ff.md) | 168 | `result-track:05f074bf519eafee697f77ffe1fc38f9b44dd89380505125d42017b3b7397f17` |
| 16 | `theorem` | [Iter.step_flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/iter-step-flatmap--17c45dd0aaf58fdae402f867.md) | 191 | `result-track:17c45dd0aaf58fdae402f8675d7367e11e1e7944893865a0341e2feee428179d` |
| 17 | `theorem` | [Iter.toList_flatMapAfterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/iter-tolist-flatmapafterm--650543c6ea2e573d9e2774fa.md) | 201 | `result-track:650543c6ea2e573d9e2774fab7d5c521b9ff5506eaa2765d7f03eae23b493c5d` |
| 18 | `theorem` | [Iter.toArray_flatMapAfterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/iter-toarray-flatmapafterm--ecafec9185ec4bb96c815e29.md) | 214 | `result-track:ecafec9185ec4bb96c815e299a1520d40b29b7673064b5e044326f9709b92850` |
| 19 | `theorem` | [Iter.toList_flatMapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/iter-tolist-flatmapm--f9a51363f6c9c039457102e1.md) | 227 | `result-track:f9a51363f6c9c039457102e115b45b8491673f900a14fc1508d6c96b7004e43e` |
| 20 | `theorem` | [Iter.toArray_flatMapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/iter-toarray-flatmapm--3036834762daff0500a26425.md) | 235 | `result-track:3036834762daff0500a2642548920708a84c93e88b2d063252ca5204fe6f9a1e` |
| 21 | `theorem` | [Iter.toList_flatMapAfter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/iter-tolist-flatmapafter--013af27eaf7a245beb2b889d.md) | 243 | `result-track:013af27eaf7a245beb2b889d15ef7f2b5c2f4756816361ccfc51b3308ed273b6` |
| 22 | `theorem` | [Iter.toArray_flatMapAfter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/iter-toarray-flatmapafter--fedba7f7c35652a2a442167a.md) | 254 | `result-track:fedba7f7c35652a2a442167ad3423f70fbc28e387a22c5e5c8f59ab89f7cec24` |
| 23 | `theorem` | [Iter.toList_flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/iter-tolist-flatmap--91a43395ac6cd626884eb5c0.md) | 266 | `result-track:91a43395ac6cd626884eb5c066dd4a3af0fe32986f1da2b98682ce9a099a7871` |
| 24 | `theorem` | [Iter.toArray_flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/declarations/iter-toarray-flatmap--e2554eadad55154f9fa4b92e.md) | 274 | `result-track:e2554eadad55154f9fa4b92e1d66ffcc4247384cb8856f26c9ef352d7b36f6df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
