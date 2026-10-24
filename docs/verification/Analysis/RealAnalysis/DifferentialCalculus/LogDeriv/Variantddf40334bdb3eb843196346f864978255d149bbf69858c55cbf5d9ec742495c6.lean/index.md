# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LogDeriv.Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08d54d356bcb2fd5e1aa24bde02529f2ec10e4c9",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08d54d356bcb2fd5e1aa24bde02529f2ec10e4c9`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv--09ede19919de0d518258890f.md) | 32 | `declaration-track:09ede19919de0d518258890f8eb5c8f9805d815119c8549d014f86329b276ce6` |
| 2 | `theorem` | [logDeriv_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv-apply--069705ec48ae5f5dab454437.md) | 35 | `result-track:069705ec48ae5f5dab454437f24475002b488ab94bb32039fd50723cfd1ec48b` |
| 3 | `lemma` | [logDeriv_eq_zero_of_not_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv-eq-zero-of-not-differentiableat--7558f7a5fe4968b8ffaf8abf.md) | 37 | `result-track:7558f7a5fe4968b8ffaf8abf52b79494bb407cdac29e2c49d54645d8425ba97d` |
| 4 | `lemma` | [logDeriv_congr_nhds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv-congr-nhds--f4c8385f015de2a197019d71.md) | 42 | `result-track:f4c8385f015de2a197019d7134d6c893c66facb067260106878ac1ab3083f241` |
| 5 | `lemma` | [logDeriv_congr_nhdsNE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv-congr-nhdsne--a30e60a2e03cf05dcf03a28b.md) | 48 | `result-track:a30e60a2e03cf05dcf03a28b2e408f42d24289fea5b74dd4dadebb313780073d` |
| 6 | `theorem` | [logDeriv_congr_codiscreteWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv-congr-codiscretewithin--5e09348cdfe7513f40f070de.md) | 55 | `result-track:5e09348cdfe7513f40f070ded0ee6b4bd43b60c0936a456f902de90b943b4acc` |
| 7 | `theorem` | [logDeriv_congr_codiscrete](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv-congr-codiscrete--41250cbc76ac0c4c41c19a72.md) | 67 | `result-track:41250cbc76ac0c4c41c19a72d02a4c8da1db123f0b27435c00ca6723881aacb0` |
| 8 | `theorem` | [logDeriv_id](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv-id--c45ae0c60ee6d0bf1b4064db.md) | 72 | `result-track:c45ae0c60ee6d0bf1b4064db31826fde34ee4212bb15f0b86eeae4e2676ac228` |
| 9 | `theorem` | [logDeriv_id'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv-id--522706d5a61aa4bed17dda9d.md) | 75 | `result-track:522706d5a61aa4bed17dda9d2a7e895663e62e3fd5841f79a1fdd11d7b6c1f90` |
| 10 | `theorem` | [logDeriv_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv-const--7d76e278ae99416279e4f1e3.md) | 78 | `result-track:7d76e278ae99416279e4f1e368e6915e555441e855a5783934b502d5c1b4f2f7` |
| 11 | `theorem` | [logDeriv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv-mul--3aa1da2f0855a5e277b60719.md) | 83 | `result-track:3aa1da2f0855a5e277b6071913d581df66f01bb6374f82592028097f9a58648e` |
| 12 | `theorem` | [logDeriv_div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv-div--27f4f0c983d3618d750136c1.md) | 89 | `result-track:27f4f0c983d3618d750136c142a4ef6d1a2888d262f2ae3bed037cc892ce1139` |
| 13 | `theorem` | [logDeriv_mul_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv-mul-const--dfaeeb67efaeb69d00012355.md) | 94 | `result-track:dfaeeb67efaeb69d00012355f7a6681e353554d12aa826aba12cb4a063814241` |
| 14 | `theorem` | [logDeriv_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv-const-mul--6ad24a3a796928238cb3f5c5.md) | 98 | `result-track:6ad24a3a796928238cb3f5c56bed0c7f85f700228e78b241c9588262e2501552` |
| 15 | `theorem` | [logDeriv_prod](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv-prod--beaa70f68d297f6bca265d27.md) | 104 | `result-track:beaa70f68d297f6bca265d2782be06c1a753aec668da9cafb11c5f775b6754de` |
| 16 | `lemma` | [logDeriv_fun_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv-fun-zpow--8708d61749b2fbd8b0c1bfb3.md) | 117 | `result-track:8708d61749b2fbd8b0c1bfb39417f61ffe2f6616c61caf1518e1de097731f7ea` |
| 17 | `lemma` | [logDeriv_fun_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv-fun-pow--6126e3a311526b3d549d5acd.md) | 126 | `result-track:6126e3a311526b3d549d5acd058bfe3410cd242223ff7c8ef59f7b8728087f90` |
| 18 | `lemma` | [logDeriv_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv-zpow--2f19c993ddfcbeabdd02c347.md) | 131 | `result-track:2f19c993ddfcbeabdd02c3474fc135c031bf94882f2ecf0943c0207f062d949b` |
| 19 | `lemma` | [logDeriv_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv-pow--620a4c22ee07e600fb8caed1.md) | 135 | `result-track:620a4c22ee07e600fb8caed12914556f0518f0d28520c965c160b98d79ed52ee` |
| 20 | `lemma` | [logDeriv_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv-inv--d93f4845d2e5f16cf57d8515.md) | 138 | `result-track:d93f4845d2e5f16cf57d8515c712ba859dc6f6b2d897e28876b6328c221a740c` |
| 21 | `theorem` | [logDeriv_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv-comp--7ee7b7886f9587da1e8ad816.md) | 142 | `result-track:7ee7b7886f9587da1e8ad816e199dcfd39f0820fa7c85a23bdfd59ebf799e74a` |
| 22 | `theorem` | [logDeriv_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv-neg--6af0212264c91fca27c50b13.md) | 147 | `result-track:6af0212264c91fca27c50b13fc0ac01e4bf9c5d3ffaa6dfe7a269725b29422f0` |
| 23 | `theorem` | [logDeriv_comp_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv-comp-neg--0476acb17304a08a3cfc3ae9.md) | 150 | `result-track:0476acb17304a08a3cfc3ae919ea5744b8b2958def4690ed187de2d2b124f560` |
| 24 | `lemma` | [logDeriv_eqOn_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/logderiv-eqon-iff--4badd8fa5554e8dee23ebe4a.md) | 154 | `result-track:4badd8fa5554e8dee23ebe4ad441f0da885d5dfe563ba42174afc24fa72506d4` |
| 25 | `theorem` | [AnalyticAt.tendsto_mul_logDeriv_simple_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantddf40334bdb3eb843196346f864978255d149bbf69858c55cbf5d9ec742495c6.lean/declarations/analyticat-tendsto-mul-logderiv-simple-zero--0eb16a9d3661e28747118ab2.md) | 184 | `result-track:0eb16a9d3661e28747118ab2fad1dd5a8753e8c508804656b3c3febc251660cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
