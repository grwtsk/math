# Verification target: GRWTSK.NumberTheory.Moebius.MertensLogThresholdShortBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a89adc83da32b460277b54ec3f5135b52fdf7037",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/MertensLogThresholdShortBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/MertensLogThresholdShortBudget.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/MertensLogThresholdShortBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a89adc83da32b460277b54ec3f5135b52fdf7037`.

Source path: `GRWTSK/NumberTheory/Moebius/MertensLogThresholdShortBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/MertensLogThresholdShortBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MertensShortLongShiftThreshold`](../../../../mathematics/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logarithmicShiftThreshold](../../../../mathematics/NumberTheory/Moebius/MertensLogThresholdShortBudget.lean/declarations/logarithmicshiftthreshold--81e32a27a594a32843cb1eb7.md) | 21 | `declaration-track:81e32a27a594a32843cb1eb701ff3dc05b05cdf9de5b782b8e6b25e085c80f9b` |
| 2 | `def` | [harmonicInitialDenominator](../../../../mathematics/NumberTheory/Moebius/MertensLogThresholdShortBudget.lean/declarations/harmonicinitialdenominator--2f1e3e34c39d12dfbdf91007.md) | 25 | `declaration-track:2f1e3e34c39d12dfbdf9100788226e014c2d81d362820b085919244e702599d7` |
| 3 | `theorem` | [harmonicShiftFirstDifference_zero_eq_maxDrop](../../../../mathematics/NumberTheory/Moebius/MertensLogThresholdShortBudget.lean/declarations/harmonicshiftfirstdifference-zero-eq-maxdrop--fb65fab32b04180b9bd7e0cb.md) | 30 | `result-track:fb65fab32b04180b9bd7e0cb02105d9c96d9f9f90f5b6f802d3a27961cf30e58` |
| 4 | `def` | [normalizedShortDepthBudget](../../../../mathematics/NumberTheory/Moebius/MertensLogThresholdShortBudget.lean/declarations/normalizedshortdepthbudget--34055b335d5ef5090d8cc5f4.md) | 44 | `declaration-track:34055b335d5ef5090d8cc5f4331f4e628827c290c5f3ee059033cf73a9fcf210` |
| 5 | `theorem` | [normalized_shortContribution_le_budget](../../../../mathematics/NumberTheory/Moebius/MertensLogThresholdShortBudget.lean/declarations/normalized-shortcontribution-le-budget--8d644ef2a2c20985b2dc96ea.md) | 52 | `result-track:8d644ef2a2c20985b2dc96ea06b40d25cb0442f54a5318adc0d4cffac6234e50` |
| 6 | `def` | [normalizedShortPacketBudget](../../../../mathematics/NumberTheory/Moebius/MertensLogThresholdShortBudget.lean/declarations/normalizedshortpacketbudget--08267bd8087c776b7235b3f7.md) | 82 | `declaration-track:08267bd8087c776b7235b3f737f259e66b9f336ee1bc9c499234e5b6bf4cd53d` |
| 7 | `def` | [LogThresholdFiniteDepthBudget](../../../../mathematics/NumberTheory/Moebius/MertensLogThresholdShortBudget.lean/declarations/logthresholdfinitedepthbudget--fce99cb5c05e65cee628cc02.md) | 90 | `declaration-track:fce99cb5c05e65cee628cc02344a7a0db447802099c7a5e80b653447e65d976e` |
| 8 | `theorem` | [normalizedShortPacketBudget_le_six_logThreshold_of_finiteDepthBudget](../../../../mathematics/NumberTheory/Moebius/MertensLogThresholdShortBudget.lean/declarations/normalizedshortpacketbudget-le-six-logthreshold-of-finitedepthbudget--f1cff5dc05c3e0de88840c9b.md) | 99 | `result-track:f1cff5dc05c3e0de88840c9be910c42abee819bc1b4ddd289bd88c891abef15e` |
| 9 | `theorem` | [logarithmicShiftThreshold_ge_two](../../../../mathematics/NumberTheory/Moebius/MertensLogThresholdShortBudget.lean/declarations/logarithmicshiftthreshold-ge-two--95ef8e71893a3359f6a041c9.md) | 117 | `result-track:95ef8e71893a3359f6a041c911a115f5f7ac6fa2831e53432e361145b79c588c` |
| 10 | `def` | [LogThresholdLongLengthCondition](../../../../mathematics/NumberTheory/Moebius/MertensLogThresholdShortBudget.lean/declarations/logthresholdlonglengthcondition--e0cf207ad81e9146197ae633.md) | 125 | `declaration-track:e0cf207ad81e9146197ae633768070a90ffb594e6cdd4f81a7730dc4c42d3019` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
