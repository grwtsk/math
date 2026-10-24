# Verification target: GRWTSK.Analysis.MeasureTheory.ENNRealLogExp.Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3500b3eb32c792a6d9d525b20b5e1d133d24caa3",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3500b3eb32c792a6d9d525b20b5e1d133d24caa3`.

Source path: `GRWTSK/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean.json)

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
| 1 | `lemma` | [EReal.log_exp](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/ereal-log-exp--8bce5290906a0c94b30bd190.md) | 49 | `result-track:8bce5290906a0c94b30bd1909bf2a19ccc6780ec05e610d901b7621d59522ee6` |
| 2 | `lemma` | [ENNReal.exp_log](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/ennreal-exp-log--736d98b1a6c517667d1c578c.md) | 55 | `result-track:736d98b1a6c517667d1c578c08b10743f5a5ef28d7f2aee95dbd6c6b13a366b4` |
| 3 | `lemma` | [exp_nmul](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/exp-nmul--fe617955a166298542920cbe.md) | 68 | `result-track:fe617955a166298542920cbeb303239b9379ab745cab9a7cf4af869867a5f649` |
| 4 | `lemma` | [exp_mul](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/exp-mul--6bbd13a1bc046c53c9f8c44d.md) | 71 | `result-track:6bbd13a1bc046c53c9f8c44d97e25d48d4443353fc46e959b709fde0cfc18c87` |
| 5 | `lemma` | [rpow_eq_exp_mul_log](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/rpow-eq-exp-mul-log--3943325cf75cc883a2ea1b5d.md) | 79 | `result-track:3943325cf75cc883a2ea1b5d6ee843c0772ccac950ab47eed47d85678f5a2d40` |
| 6 | `def` | [logOrderIso](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/logorderiso--38012a890aa782cc45cc6b87.md) | 90 | `declaration-track:38012a890aa782cc45cc6b8753547946fa3960845db57a5d1124cbe7223cacae` |
| 7 | `lemma` | [logOrderIso_apply](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/logorderiso-apply--b22441a72764c32a300bd803.md) | 97 | `result-track:b22441a72764c32a300bd803d19417fbabca4031884a0cb0bd620e9a53e13dd4` |
| 8 | `def` | [_root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.EReal.expOrderIso](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/root-grwtsk-analysis-measuretheory-expnmul-variantbe0a86a5d939fda46d6131--307270aa29174c54dd0851cf.md) | 102 | `declaration-track:307270aa29174c54dd0851cf650cb5b5c98f74572fe026cd4f7fed69e32bc917` |
| 9 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.EReal.expOrderIso_apply](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/root-grwtsk-analysis-measuretheory-expnmul-variantbe0a86a5d939fda46d6131--2816cdfe120bf051234a2f61.md) | 104 | `result-track:2816cdfe120bf051234a2f613235c913b0547bdf5c31e2552a488bc3d6856cd7` |
| 10 | `lemma` | [logOrderIso_symm](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/logorderiso-symm--2f1ce1ecd0db266f10642822.md) | 106 | `result-track:2f1ce1ecd0db266f106428223e309600cf4c6a0edee076127ad48172ad1df0ba` |
| 11 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.EReal.expOrderIso_symm](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/root-grwtsk-analysis-measuretheory-expnmul-variantbe0a86a5d939fda46d6131--fd1ef4b3f1abe60e2d2ee781.md) | 107 | `result-track:fd1ef4b3f1abe60e2d2ee781c71e420ce95b76d82fd139557a6c4ec9e75f9763` |
| 12 | `def` | [logHomeomorph](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/loghomeomorph--1e842d82687f68e60f4feec2.md) | 114 | `declaration-track:1e842d82687f68e60f4feec271fae3a4ec82d3a56cf619094e4efcc07d6a525d` |
| 13 | `lemma` | [logHomeomorph_apply](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/loghomeomorph-apply--d5b2f5963d23cd48aba7a24f.md) | 116 | `result-track:d5b2f5963d23cd48aba7a24f464dd5a6f2e102a3f388c4a7e6b95dab81d913b8` |
| 14 | `def` | [_root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.EReal.expHomeomorph](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/root-grwtsk-analysis-measuretheory-expnmul-variantbe0a86a5d939fda46d6131--4ecf336d3f192e104ee0977d.md) | 119 | `declaration-track:4ecf336d3f192e104ee0977d145eec5d66822e4bc14007e324fb73913725b2f4` |
| 15 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.EReal.expHomeomorph_apply](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/root-grwtsk-analysis-measuretheory-expnmul-variantbe0a86a5d939fda46d6131--eb23f9ae827d91f1ad83e527.md) | 121 | `result-track:eb23f9ae827d91f1ad83e527af46eeb535d39b6af64b2014e3f0e4aec8e764b6` |
| 16 | `lemma` | [logHomeomorph_symm](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/loghomeomorph-symm--213248fda69c1bd96b53925b.md) | 123 | `result-track:213248fda69c1bd96b53925bc307069d0f2cba4298153ae6d80b7945dc987007` |
| 17 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.EReal.expHomeomorph_symm](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/root-grwtsk-analysis-measuretheory-expnmul-variantbe0a86a5d939fda46d6131--b931824c58050016eda2411e.md) | 125 | `result-track:b931824c58050016eda2411e17741bbb8fd963a7fbea864f7803fd53591a4cc5` |
| 18 | `lemma` | [continuous_log](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/continuous-log--b3b7635040744d09fb40543c.md) | 128 | `result-track:b3b7635040744d09fb40543ce03f6c0ab87edb1170d0caffe15ebb91e58aa356` |
| 19 | `lemma` | [continuous_exp](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/continuous-exp--17e7e36b77116ce46f2f31b0.md) | 131 | `result-track:17e7e36b77116ce46f2f31b08ea2c6a197c122d945ea08b773e726abbd6b9e4f` |
| 20 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.EReal.tendsto_exp_nhds_top_nhds_top](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/root-grwtsk-analysis-measuretheory-expnmul-variantbe0a86a5d939fda46d6131--a42360974c1e4bb2dc9b97c0.md) | 133 | `result-track:a42360974c1e4bb2dc9b97c09eb1ba96c8351c54fc6d634143392b9bc8e9aec9` |
| 21 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.EReal.tendsto_exp_nhds_zero_nhds_one](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/root-grwtsk-analysis-measuretheory-expnmul-variantbe0a86a5d939fda46d6131--fd1ee37760801b734fdb7dea.md) | 136 | `result-track:fd1ee37760801b734fdb7dea7a8f125edadb5592f81b5b8d0d0e0f286029720d` |
| 22 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.EReal.tendsto_exp_nhds_bot_nhds_zero](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/root-grwtsk-analysis-measuretheory-expnmul-variantbe0a86a5d939fda46d6131--949b87e0d10cc6ab6b45c732.md) | 140 | `result-track:949b87e0d10cc6ab6b45c732d75cf8f623ffae89f7e3d7515443ad5868936cfc` |
| 23 | `lemma` | [tendsto_rpow_atTop_of_one_lt_base](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/tendsto-rpow-attop-of-one-lt-base--7e6afef36794b21662e3e2d1.md) | 143 | `result-track:7e6afef36794b21662e3e2d1a9f0ddd98259355a21841007b1ec28e8036b7e13` |
| 24 | `lemma` | [tendsto_rpow_atTop_of_base_lt_one](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/tendsto-rpow-attop-of-base-lt-one--adf49b0298616c8b2c7b0329.md) | 151 | `result-track:adf49b0298616c8b2c7b032919e067935bd7e1c43a24d02f54f729496542ba6f` |
| 25 | `lemma` | [tendsto_rpow_atBot_of_one_lt_base](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/tendsto-rpow-atbot-of-one-lt-base--08836fdb1a3c159800adebe5.md) | 159 | `result-track:08836fdb1a3c159800adebe596835ec4395b81ecb9f1369bab1cd7b3dc94475c` |
| 26 | `lemma` | [tendsto_rpow_atBot_of_base_lt_one](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/tendsto-rpow-atbot-of-base-lt-one--37657d5c71a41f278f1ee96e.md) | 167 | `result-track:37657d5c71a41f278f1ee96edd805ae44c5795f17333de28e95974c84c850c8a` |
| 27 | `lemma` | [measurable_log](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/measurable-log--99dd2bd795b648cffd801bf7.md) | 180 | `result-track:99dd2bd795b648cffd801bf7f7a6fcf36a1b8723ca934bc9fc0a3f8cc300648c` |
| 28 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.EReal.measurable_exp](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/root-grwtsk-analysis-measuretheory-expnmul-variantbe0a86a5d939fda46d6131--0e4e0b65b0b50d78b3cb4775.md) | 183 | `result-track:0e4e0b65b0b50d78b3cb4775f6abdbc68273ed2a4dd30142576f5f43bb9897dd` |
| 29 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.Measurable.ennreal_log](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/root-grwtsk-analysis-measuretheory-expnmul-variantbe0a86a5d939fda46d6131--c72ca38d01ad3526ba09c532.md) | 186 | `result-track:c72ca38d01ad3526ba09c532c99dfd4fb851878e965068c49eca76e38de31c73` |
| 30 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.Measurable.ereal_exp](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/root-grwtsk-analysis-measuretheory-expnmul-variantbe0a86a5d939fda46d6131--1e3b6353ab917faa3d656bd6.md) | 191 | `result-track:1e3b6353ab917faa3d656bd6316bf906535383335e4b20c12843d82410af5e95` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/declarations/instance--200e2450bd52c53469904d36.md) | 199 | `declaration-track:200e2450bd52c53469904d367df4013b66d5b56bbeb06f08bb5b0b1bb82415f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
