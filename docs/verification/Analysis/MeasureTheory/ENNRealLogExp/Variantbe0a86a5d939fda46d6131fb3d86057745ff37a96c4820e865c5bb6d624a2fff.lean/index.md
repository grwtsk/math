# Verification target: GRWTSK.Analysis.MeasureTheory.ENNRealLogExp.Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77181d4404770889d1c31fa246208e38d1770b40",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77181d4404770889d1c31fa246208e38d1770b40`.

Source path: `GRWTSK/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean.json)

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
| 1 | `lemma` | [EReal.log_exp](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/ereal-log-exp--fb3b0e2d7af780fbf8afb914.md) | 41 | `result-track:fb3b0e2d7af780fbf8afb914f6f62ede86c36ad8120f41aabb44fda3210fce90` |
| 2 | `lemma` | [ENNReal.exp_log](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/ennreal-exp-log--8b210f3bc1d4a946ba3f043f.md) | 47 | `result-track:8b210f3bc1d4a946ba3f043f3336cf9652273021bb09c5f7708e95ef98a0ec8b` |
| 3 | `lemma` | [exp_nmul](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/exp-nmul--86047fab57c69c787c20c294.md) | 60 | `result-track:86047fab57c69c787c20c294f4d1e59ed4b4dc7fb1c38fc8e57b976b6cd52ebd` |
| 4 | `lemma` | [exp_mul](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/exp-mul--8bd64ba283a4366abf8c7845.md) | 63 | `result-track:8bd64ba283a4366abf8c7845b059f9daa7cc3f7c50fb6c61bb71859687776deb` |
| 5 | `lemma` | [rpow_eq_exp_mul_log](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/rpow-eq-exp-mul-log--597ab2412204babac581dbdf.md) | 71 | `result-track:597ab2412204babac581dbdfcab1ec07a1f17093858480492f36cd0fd712ecc0` |
| 6 | `def` | [logOrderIso](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/logorderiso--a681250b33df51958c9baaa8.md) | 82 | `declaration-track:a681250b33df51958c9baaa83fedf12c3496bc96a928fe40b6e13144291f687f` |
| 7 | `lemma` | [logOrderIso_apply](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/logorderiso-apply--ba191a57587ddf5b5c68bea0.md) | 89 | `result-track:ba191a57587ddf5b5c68bea0079b627ecfc91fcd62f7897c8289900c5a4a2f8b` |
| 8 | `def` | [_root_.EReal.expOrderIso](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/root-ereal-exporderiso--627afa9a3657e7f28eae0a42.md) | 94 | `declaration-track:627afa9a3657e7f28eae0a420e828065a52ec4fbabe089b552593b7066b1a6a7` |
| 9 | `lemma` | [_root_.EReal.expOrderIso_apply](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/root-ereal-exporderiso-apply--f35a5106911d82983d4e2b39.md) | 96 | `result-track:f35a5106911d82983d4e2b39ec781d5a3d5902da15296540c37e63475518d1ff` |
| 10 | `lemma` | [logOrderIso_symm](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/logorderiso-symm--0bd6d046f636bd2ba92f3868.md) | 98 | `result-track:0bd6d046f636bd2ba92f3868b15f7487325b0c7b9f55ed7e4d43ac6b36bc6c95` |
| 11 | `lemma` | [_root_.EReal.expOrderIso_symm](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/root-ereal-exporderiso-symm--fa73c04fc3dbf78cd7338610.md) | 99 | `result-track:fa73c04fc3dbf78cd73386105d8d32334a74746e79317a9ac8658e4f556d1a8c` |
| 12 | `def` | [logHomeomorph](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/loghomeomorph--5a40a53e1f2e53c0cab3d8bb.md) | 106 | `declaration-track:5a40a53e1f2e53c0cab3d8bba17951730b22d6e00e4319d20dcd611894942a99` |
| 13 | `lemma` | [logHomeomorph_apply](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/loghomeomorph-apply--d782eb1bab2a9a5e7bb0afbd.md) | 108 | `result-track:d782eb1bab2a9a5e7bb0afbd825c3e553d6ab66359d3f6fbd81940002ce364bf` |
| 14 | `def` | [_root_.EReal.expHomeomorph](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/root-ereal-exphomeomorph--7eb787c90729bf49fbfbe870.md) | 111 | `declaration-track:7eb787c90729bf49fbfbe8700cc1c53f17b142d08d71cf77accc516654f94206` |
| 15 | `lemma` | [_root_.EReal.expHomeomorph_apply](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/root-ereal-exphomeomorph-apply--78dc61859b6de768ca0ef492.md) | 113 | `result-track:78dc61859b6de768ca0ef49200a796a79e1e82bd23dfe8682b45c917e4746991` |
| 16 | `lemma` | [logHomeomorph_symm](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/loghomeomorph-symm--89833f981e9795d22abc8d18.md) | 115 | `result-track:89833f981e9795d22abc8d18567fa50b602fea4afdfa63f9490034644d36c51b` |
| 17 | `lemma` | [_root_.EReal.expHomeomorph_symm](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/root-ereal-exphomeomorph-symm--51c9e4a45b69075ac426f9a1.md) | 117 | `result-track:51c9e4a45b69075ac426f9a128ca554156af7c1f6e3934094fd8aeb94c1b324d` |
| 18 | `lemma` | [continuous_log](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/continuous-log--637ff309a1deca8a667483f5.md) | 120 | `result-track:637ff309a1deca8a667483f5761dee67b3df02c511add5c098e86f2ead8556b2` |
| 19 | `lemma` | [continuous_exp](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/continuous-exp--ce5b5f42ec9d8ceeb9615142.md) | 123 | `result-track:ce5b5f42ec9d8ceeb96151423f1f7ed28d47c78fd446423a7b0bea676aad8cf0` |
| 20 | `lemma` | [_root_.EReal.tendsto_exp_nhds_top_nhds_top](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/root-ereal-tendsto-exp-nhds-top-nhds-top--ba241870f03d89c46e6f4c67.md) | 125 | `result-track:ba241870f03d89c46e6f4c675d5eef4514add0376ea341acf09b835dd96da90f` |
| 21 | `lemma` | [_root_.EReal.tendsto_exp_nhds_zero_nhds_one](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/root-ereal-tendsto-exp-nhds-zero-nhds-one--b4a6799fea67417757ebb1e5.md) | 128 | `result-track:b4a6799fea67417757ebb1e5852782272980fe8893580ad5cfb8dafd66fe05ff` |
| 22 | `lemma` | [_root_.EReal.tendsto_exp_nhds_bot_nhds_zero](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/root-ereal-tendsto-exp-nhds-bot-nhds-zero--ff68950762edf8ac526b6ca0.md) | 132 | `result-track:ff68950762edf8ac526b6ca00d8a0f108ec81aecdf1470464b69d715e301ebcd` |
| 23 | `lemma` | [tendsto_rpow_atTop_of_one_lt_base](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/tendsto-rpow-attop-of-one-lt-base--fb414a684127bdea2d59daa6.md) | 135 | `result-track:fb414a684127bdea2d59daa67e6a47eae77c7fe758f3ec997465f150aedb5f7b` |
| 24 | `lemma` | [tendsto_rpow_atTop_of_base_lt_one](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/tendsto-rpow-attop-of-base-lt-one--484e205bb68a8261fface96f.md) | 143 | `result-track:484e205bb68a8261fface96fa610109bfa84725cbc63e9bb847cd84abbca15f1` |
| 25 | `lemma` | [tendsto_rpow_atBot_of_one_lt_base](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/tendsto-rpow-atbot-of-one-lt-base--626334a9fea7b8b42952a8d3.md) | 151 | `result-track:626334a9fea7b8b42952a8d33ac22dff3fb440e9599c623c30b010debd989331` |
| 26 | `lemma` | [tendsto_rpow_atBot_of_base_lt_one](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/tendsto-rpow-atbot-of-base-lt-one--03ad0505e6eb180c71a36e2e.md) | 159 | `result-track:03ad0505e6eb180c71a36e2e4f9d634f93c9bddd915c46d65539195bcc80366e` |
| 27 | `lemma` | [measurable_log](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/measurable-log--78b991d2894209c37883cde3.md) | 172 | `result-track:78b991d2894209c37883cde3b9e8b0cd15e1f21fafbd6d653b704ec23c5cb41c` |
| 28 | `lemma` | [_root_.EReal.measurable_exp](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/root-ereal-measurable-exp--75b57ca8f8ea25412b2cb0ae.md) | 175 | `result-track:75b57ca8f8ea25412b2cb0ae3e6ac09d193bd5bdfdb3a8ff5eeae91ff022b3eb` |
| 29 | `lemma` | [_root_.Measurable.ennreal_log](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/root-measurable-ennreal-log--d99504e802382017ebc2efdd.md) | 178 | `result-track:d99504e802382017ebc2efdd87640473e76d741bcda273786014dbed64d2f290` |
| 30 | `lemma` | [_root_.Measurable.ereal_exp](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/root-measurable-ereal-exp--ec53eb7db69fc5d6fe981288.md) | 183 | `result-track:ec53eb7db69fc5d6fe98128889db7579f21d10890251421324cd41a9daa9383b` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/declarations/instance--e527e77ee8f7963abe0a1866.md) | 191 | `declaration-track:e527e77ee8f7963abe0a1866693c7de5065e740c1d997b01b7b4e82d3de4550b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
