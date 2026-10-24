# Verification target: GRWTSK.Analysis.MeasureTheory.ConvergenceInMeasure.Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea81916c9b9bb173df04ddb5f9933c88f7b9a3de",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea81916c9b9bb173df04ddb5f9933c88f7b9a3de`.

Source path: `GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean.json)

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
| 1 | `def` | [TendstoInMeasure](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/tendstoinmeasure--11cf3c706000017ee4636743.md) | 65 | `declaration-track:11cf3c706000017ee46367438b8d515c8152deff22e332e5320f897465def973` |
| 2 | `lemma` | [tendstoInMeasure_of_ne_top](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/tendstoinmeasure-of-ne-top--34ad82ce5a37810dcbdc5681.md) | 69 | `result-track:34ad82ce5a37810dcbdc56818e3525df3608028171552e425448384abcf2d34e` |
| 3 | `theorem` | [tendstoInMeasure_iff_enorm](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/tendstoinmeasure-iff-enorm--33a0132db8196175bed8426b.md) | 83 | `result-track:33a0132db8196175bed8426b4d4bfe50f56eb72e2501a971bfd29f9ed64a108a` |
| 4 | `theorem` | [tendstoInMeasure_iff_measureReal_enorm](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/tendstoinmeasure-iff-measurereal-enorm--f1e839ef4785a310cfea6cb8.md) | 95 | `result-track:f1e839ef4785a310cfea6cb8a3c548d475ebc28e98a75aafc49f88de791b50f8` |
| 5 | `lemma` | [tendstoInMeasure_iff_dist](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/tendstoinmeasure-iff-dist--1885b100e26a6a4bb6bd03da.md) | 104 | `result-track:1885b100e26a6a4bb6bd03da801bd28eda8b2aa5249efe4f00d9561dc796f6af` |
| 6 | `lemma` | [tendstoInMeasure_iff_measureReal_dist](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/tendstoinmeasure-iff-measurereal-dist--b460ffc4f3234b021eb95339.md) | 118 | `result-track:b460ffc4f3234b021eb9533965eeac75bf0ea736877a793e73acc779bae57052` |
| 7 | `theorem` | [tendstoInMeasure_iff_norm](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/tendstoinmeasure-iff-norm--530bac866c3e8185f0719972.md) | 127 | `result-track:530bac866c3e8185f0719972f7aaff2ac17e464e88b4de0dc86bfeb8e5dd5083` |
| 8 | `lemma` | [tendstoInMeasure_iff_measureReal_norm](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/tendstoinmeasure-iff-measurereal-norm--3e2780bdbb6dcfb2a5538c62.md) | 137 | `result-track:3e2780bdbb6dcfb2a5538c62679e4e88c3563b46eaf3caa607f0d585957c007c` |
| 9 | `theorem` | [tendstoInMeasure_iff_tendsto_toNNReal](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/tendstoinmeasure-iff-tendsto-tonnreal--6a3b8c8adbb697bba599db9d.md) | 145 | `result-track:6a3b8c8adbb697bba599db9d0bd1ff57a849f1cf1b883120b4b4e6e88704d9f7` |
| 10 | `lemma` | [mono](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/mono--0c0c9e1cbc9dff46f6e7d7b4.md) | 163 | `result-track:0c0c9e1cbc9dff46f6e7d7b4fd47851d420b100c1602ebeef083ec88ad41ca03` |
| 11 | `lemma` | [comp](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/comp--5d27ccbf05661c7924b03c81.md) | 166 | `result-track:5d27ccbf05661c7924b03c8108a0c724bb99ff69b27addebe29245d6e4506edc` |
| 12 | `theorem` | [indicator](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/indicator--dcc37997f91dd4733803cdee.md) | 169 | `result-track:dcc37997f91dd4733803cdee2a59b2e4651baae7d706145bf2963eefd9242028` |
| 13 | `theorem` | [congr'](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/congr--ac331eb881c3f023fc233bed.md) | 177 | `result-track:ac331eb881c3f023fc233bedf28695e1aec4742652e202b7b040ebf6f13e3a3b` |
| 14 | `theorem` | [congr](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/congr--c033a14a9a3327c40e21d7ce.md) | 190 | `result-track:c033a14a9a3327c40e21d7cec69e9026849cbc680e16df9cec3db457235661cd` |
| 15 | `theorem` | [congr_left](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/congr-left--6a5e060b2d834ec58991c8bd.md) | 194 | `result-track:6a5e060b2d834ec58991c8bda9c253e2e0e70532d9b5d5bb3ef4ae3b7ed6a8c8` |
| 16 | `theorem` | [congr_right](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/congr-right--d9e5ff67ddb6eea571ea20be.md) | 198 | `result-track:d9e5ff67ddb6eea571ea20bece8415c2cacc92ddfa9cc42cd2418673b503e8d9` |
| 17 | `theorem` | [tendstoInMeasure_of_tendsto_ae_of_measurable_edist](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/tendstoinmeasure-of-tendsto-ae-of-measurable-edist--463737d6388ce78c17dd7266.md) | 209 | `result-track:463737d6388ce78c17dd72664cf669622ba4c6953f00f2e6499965d4ed8bbb19` |
| 18 | `theorem` | [tendstoInMeasure_of_tendsto_ae](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/tendstoinmeasure-of-tendsto-ae--0ac1bc615be27a5156abade3.md) | 227 | `result-track:0ac1bc615be27a5156abade3a3ee991afbe84ea59bea476c5245b6b11363c89f` |
| 19 | `theorem` | [exists_nat_measure_lt_two_inv](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/exists-nat-measure-lt-two-inv--7c87e8e06aa5656e2e773190.md) | 241 | `result-track:7c87e8e06aa5656e2e773190e10d1529ba1518374c266963ac68da29c5f9666d` |
| 20 | `def` | [seqTendstoAeSeqAux](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/seqtendstoaeseqaux--471f51da29a7fe290b250521.md) | 250 | `declaration-track:471f51da29a7fe290b25052169547c84a090968fb0894693bffb993c397c364f` |
| 21 | `def` | [seqTendstoAeSeq](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/seqtendstoaeseq--e58ce9f80abde3bac14e4484.md) | 254 | `declaration-track:e58ce9f80abde3bac14e44848f47ec3b6837a3c3796782f91f9b8b358bcf8e0c` |
| 22 | `theorem` | [seqTendstoAeSeq_succ](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/seqtendstoaeseq-succ--b707937b91fbd728c9677b6d.md) | 258 | `result-track:b707937b91fbd728c9677b6d6128483150366186da17fda0ffc4cdeb8d4125c4` |
| 23 | `theorem` | [seqTendstoAeSeq_spec](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/seqtendstoaeseq-spec--8ed79416a5d192ef3b8786c0.md) | 263 | `result-track:8ed79416a5d192ef3b8786c0435549706f8f964ceadd32d0c8d9b46d8a188b4b` |
| 24 | `theorem` | [seqTendstoAeSeq_strictMono](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/seqtendstoaeseq-strictmono--b21eb49b5a75e48daeacda86.md) | 271 | `result-track:b21eb49b5a75e48daeacda866ffbfaa20f059035458df1c7a5161bbf85805707` |
| 25 | `theorem` | [TendstoInMeasure.exists_seq_tendsto_ae](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/tendstoinmeasure-exists-seq-tendsto-ae--46973ba9f4e3c20d32fa5adb.md) | 281 | `result-track:46973ba9f4e3c20d32fa5adbaa32d4a8c2d5cc51f3d0f02d8da9f73706d099e0` |
| 26 | `theorem` | [TendstoInMeasure.exists_seq_tendstoInMeasure_atTop](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/tendstoinmeasure-exists-seq-tendstoinmeasure-attop--9c7f28d3f70eed69fc84f00b.md) | 328 | `result-track:9c7f28d3f70eed69fc84f00b5dc0be3778ddc2c6b95fc4a517d2a6cef167e847` |
| 27 | `theorem` | [TendstoInMeasure.exists_seq_tendsto_ae'](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/tendstoinmeasure-exists-seq-tendsto-ae--46e9ab9beabecb32b0119a6a.md) | 334 | `result-track:46e9ab9beabecb32b0119a6a72fdd54810db5e0d346137a5f969f345a9b384bc` |
| 28 | `theorem` | [exists_seq_tendstoInMeasure_atTop_iff](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/exists-seq-tendstoinmeasure-attop-iff--3a1ae317d6bccc59c0c211a3.md) | 343 | `result-track:3a1ae317d6bccc59c0c211a33de4321ccae7218c748b0457bcd61798988fbe92` |
| 29 | `lemma` | [eLpNorm_le_of_tendstoInMeasure](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/elpnorm-le-of-tendstoinmeasure--9f46f1f7543db9b31e851de8.md) | 366 | `result-track:9f46f1f7543db9b31e851de8e4fccdb8cd30e4760dde74651ac4119446996dc8` |
| 30 | `theorem` | [tendstoInMeasure_ae_unique](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/tendstoinmeasure-ae-unique--e4ea7839f7ced57316d12573.md) | 377 | `result-track:e4ea7839f7ced57316d125736abe9408fd1c56435a8be057a6e2df93a9825aab` |
| 31 | `theorem` | [TendstoInMeasure.aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/tendstoinmeasure-aestronglymeasurable--c573741f5d328129267c9337.md) | 391 | `result-track:c573741f5d328129267c9337a0a899356ddb331cc94e8bfc4ed0138e8a5612af` |
| 32 | `theorem` | [TendstoInMeasure.aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/tendstoinmeasure-aemeasurable--f0e0ad313458a041d802d88c.md) | 399 | `result-track:f0e0ad313458a041d802d88c7e0a32e144fd973f8c4fcc879d104a6fa7df4b3d` |
| 33 | `theorem` | [tendstoInMeasure_of_tendsto_eLpNorm_of_ne_top](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/tendstoinmeasure-of-tendsto-elpnorm-of-ne-top--23e9b9a16427cef42e7ed0a1.md) | 414 | `result-track:23e9b9a16427cef42e7ed0a13fc809e531a7a14e5482d4870f1b8e94c461f695` |
| 34 | `theorem` | [tendstoInMeasure_of_tendsto_eLpNorm_top](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/tendstoinmeasure-of-tendsto-elpnorm-top--30c9aabff409d7d87dd77a10.md) | 441 | `result-track:30c9aabff409d7d87dd77a102aadc1f3596783bf51abc2256296377a6fae57e2` |
| 35 | `theorem` | [tendstoInMeasure_of_tendsto_eLpNorm](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/tendstoinmeasure-of-tendsto-elpnorm--24f1c889111ef8ae7cc2fb8b.md) | 460 | `result-track:24f1c889111ef8ae7cc2fb8b65e2bd5bb067af40963e71ed1635e92a4e56276a` |
| 36 | `theorem` | [tendstoInMeasure_of_tendsto_Lp](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/declarations/tendstoinmeasure-of-tendsto-lp--10df91be751a59a3b8c40d9f.md) | 469 | `result-track:10df91be751a59a3b8c40d9fb8b9a3dc662f4fb47a2c38a640104d49b9320ea0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
