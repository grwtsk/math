# Verification target: GRWTSK.Analysis.Complex.RoundedLogPowerEvaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2eaf7b78a1618bef98852a95741166beed41076",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RoundedLogPowerEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RoundedLogPowerEvaluation.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RoundedLogPowerEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2eaf7b78a1618bef98852a95741166beed41076`.

Source path: `GRWTSK/Analysis/Complex/RoundedLogPowerEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RoundedLogPowerEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.ScaledLogPowerEvaluation`](../../../../mathematics/Analysis/ComplexAnalysis/ScaledLogPowerEvaluation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.DyadicRoundedSquaring`](../../../../mathematics/Analysis/ComplexAnalysis/DyadicRoundedSquaring.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.FinitePrecisionSelection`](../../../../mathematics/Analysis/ErrorBounds/FinitePrecisionSelection.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PowerInput](../../../../mathematics/Analysis/ComplexAnalysis/RoundedLogPowerEvaluation.lean/declarations/powerinput--9a178abeaf284bc2b7eff6cf.md) | 33 | `declaration-track:9a178abeaf284bc2b7eff6cf1dd06b075bd236e00b99d5f8b8613857384bb6fb` |
| 2 | `def` | [seed](../../../../mathematics/Analysis/ComplexAnalysis/RoundedLogPowerEvaluation.lean/declarations/seed--73b70c1d76b8cc573329027e.md) | 41 | `declaration-track:73b70c1d76b8cc573329027efa348f0e905a6aad9626b65345285c677524d2b8` |
| 3 | `def` | [seedError](../../../../mathematics/Analysis/ComplexAnalysis/RoundedLogPowerEvaluation.lean/declarations/seederror--77548f83a10de0c98a169fe2.md) | 45 | `declaration-track:77548f83a10de0c98a169fe283250961963efcc209a2a92dd75f0224e3b350af` |
| 4 | `def` | [value](../../../../mathematics/Analysis/ComplexAnalysis/RoundedLogPowerEvaluation.lean/declarations/value--b9ab66b052cf894f9b357aa6.md) | 49 | `declaration-track:b9ab66b052cf894f9b357aa63613bf73c5d72b6b2b2cb3c8321cfb20f8c75d39` |
| 5 | `def` | [error](../../../../mathematics/Analysis/ComplexAnalysis/RoundedLogPowerEvaluation.lean/declarations/error--2bd5eceb9490183237836295.md) | 52 | `declaration-track:2bd5eceb9490183237836295d924c9eeef61bb1e6b43cb8e172011b77eafd26a` |
| 6 | `theorem` | [seed_sound](../../../../mathematics/Analysis/ComplexAnalysis/RoundedLogPowerEvaluation.lean/declarations/seed-sound--18e9275cff6eb3eb8df21157.md) | 56 | `result-track:18e9275cff6eb3eb8df211570c29416765c01fd5774ef0d261bb1677f17f1b25` |
| 7 | `theorem` | [sound](../../../../mathematics/Analysis/ComplexAnalysis/RoundedLogPowerEvaluation.lean/declarations/sound--187cc0f1f769090a1b73c34a.md) | 81 | `result-track:187cc0f1f769090a1b73c34a89981f8df96cb9411eab7254bd69dfec453ad7f5` |
| 8 | `theorem` | [error_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/RoundedLogPowerEvaluation.lean/declarations/error-nonneg--58533ab73a80247ce2b51073.md) | 88 | `result-track:58533ab73a80247ce2b510730b14f4007fa4a21257bbf588e698c592788eb121` |
| 9 | `theorem` | [output_on_grid](../../../../mathematics/Analysis/ComplexAnalysis/RoundedLogPowerEvaluation.lean/declarations/output-on-grid--9d2509124336a24b1e5f3681.md) | 92 | `result-track:9d2509124336a24b1e5f36817394533bfe696d1a632e17b05cb2e80b79936423` |
| 10 | `def` | [selectPower](../../../../mathematics/Analysis/ComplexAnalysis/RoundedLogPowerEvaluation.lean/declarations/selectpower--278360c951989c6cd98d2a77.md) | 101 | `declaration-track:278360c951989c6cd98d2a776192d91d1e604d6ee221ef3240b60030c14789bd` |
| 11 | `theorem` | [selectPower_sound](../../../../mathematics/Analysis/ComplexAnalysis/RoundedLogPowerEvaluation.lean/declarations/selectpower-sound--e8cbc7d334e1c5e8aad28fb5.md) | 104 | `result-track:e8cbc7d334e1c5e8aad28fb5d1157f8bf9787a456ceed22295042620a9c803af` |
| 12 | `theorem` | [selectPower_none_iff](../../../../mathematics/Analysis/ComplexAnalysis/RoundedLogPowerEvaluation.lean/declarations/selectpower-none-iff--7705b1dbabcbc19f7d724988.md) | 112 | `result-track:7705b1dbabcbc19f7d724988ee75e40047258e48a0653a8a1128fcb68de52d3e` |
| 13 | `structure` | [PointInput](../../../../mathematics/Analysis/ComplexAnalysis/RoundedLogPowerEvaluation.lean/declarations/pointinput--e8c2a8ddc19bcfa1470b5d4b.md) | 119 | `declaration-track:e8c2a8ddc19bcfa1470b5d4ba66a0f9a6e627fa81dbcab5d514fa37608bef17e` |
| 14 | `def` | [value](../../../../mathematics/Analysis/ComplexAnalysis/RoundedLogPowerEvaluation.lean/declarations/value--ccdbb8e7d087d735352ac229.md) | 135 | `declaration-track:ccdbb8e7d087d735352ac229efe89483cde0ff90d2dcea15f1ac4e0fa550974a` |
| 15 | `def` | [error](../../../../mathematics/Analysis/ComplexAnalysis/RoundedLogPowerEvaluation.lean/declarations/error--f319f65b131183b4b940eb04.md) | 139 | `declaration-track:f319f65b131183b4b940eb04136a51d8573afedfef1d1636fb57707f9d28ae55` |
| 16 | `theorem` | [sound](../../../../mathematics/Analysis/ComplexAnalysis/RoundedLogPowerEvaluation.lean/declarations/sound--34bf1671d556fdae65cfc03b.md) | 145 | `result-track:34bf1671d556fdae65cfc03bec971f74fb84d700da59a6b760d4c869f4c72105` |
| 17 | `theorem` | [error_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/RoundedLogPowerEvaluation.lean/declarations/error-nonneg--e8f4bff241eb00dac4a31bf8.md) | 170 | `result-track:e8f4bff241eb00dac4a31bf8ebd173a3a4a8f0298da1d26cf215f676cea6a06f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
