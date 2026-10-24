# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightCapacityRatio

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c8a6c10724828c18cf3429d0dd6d25ce415f7dd",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c8a6c10724828c18cf3429d0dd6d25ce415f7dd`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightAmplitudeEnvelope`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pinnedPrimeWeightRemainingTarget](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/declarations/pinnedprimeweightremainingtarget--1e3cec7bdde2c3fac2ec842c.md) | 45 | `declaration-track:1e3cec7bdde2c3fac2ec842cd360d83e9a604116356dea570242c5afa65b0365` |
| 2 | `def` | [pinnedPrimeWeightRequiredCapacity](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/declarations/pinnedprimeweightrequiredcapacity--2a913fa68eb1dc5b168dfd7a.md) | 51 | `declaration-track:2a913fa68eb1dc5b168dfd7a1fb8469f4614e1c2d17a90a94c64839c3f78dcf9` |
| 3 | `def` | [pinnedPrimeWeightFiniteCapacityRequirement](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/declarations/pinnedprimeweightfinitecapacityrequirement--76e2a03202721c4731d92a31.md) | 58 | `declaration-track:76e2a03202721c4731d92a319dba9bd96898c8ecc179693b65061b654ac1dcb5` |
| 4 | `theorem` | [pinnedPrimeWeightRemainingTarget_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/declarations/pinnedprimeweightremainingtarget-nonnegative--9b7fed13823acdfdf0237c0f.md) | 64 | `result-track:9b7fed13823acdfdf0237c0f22fc3eca72abeb93b2654417fa1e533c50b8ee56` |
| 5 | `theorem` | [pinnedPrimeWeightRemainingTarget_eq_zero_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/declarations/pinnedprimeweightremainingtarget-eq-zero-iff--e3445f40f2b3e8ab01f89aad.md) | 72 | `result-track:e3445f40f2b3e8ab01f89aadd481607559071f70e2e5f6c4363d42df0e51a4f2` |
| 6 | `theorem` | [pinnedPrimeWeightRemainingTarget_eq_sub_of_lt](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/declarations/pinnedprimeweightremainingtarget-eq-sub-of-lt--f53c142e4cc416a4460cf980.md) | 91 | `result-track:f53c142e4cc416a4460cf98080a99e511808702d84bebac961014a7f1aeebb9d` |
| 7 | `theorem` | [pinnedPrimeWeightAmplitudeRequirement_iff_remainingTarget](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/declarations/pinnedprimeweightamplituderequirement-iff-remainingtarget--09d1f564f112315278c49601.md) | 101 | `result-track:09d1f564f112315278c496010a39f5b81d2adc06a1a0d7d9c146f3003438baea` |
| 8 | `theorem` | [pinnedPrimeWeightRequiredCapacity_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/declarations/pinnedprimeweightrequiredcapacity-nonnegative--496213d06ccbf1fbde49c2f2.md) | 122 | `result-track:496213d06ccbf1fbde49c2f2d97098883602c3ee03647b581ee2bfdff102fad3` |
| 9 | `theorem` | [pinnedPrimeWeightAmplitudeRequirement_iff_requiredCapacity_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/declarations/pinnedprimeweightamplituderequirement-iff-requiredcapacity-le--c498d33e70516fba3eb3d0a0.md) | 133 | `result-track:c498d33e70516fba3eb3d0a0c97d42b71413662ced057b15cb0bc08a91da5edd` |
| 10 | `theorem` | [pinnedPrimeWeightRequiredCapacity_is_least_nonnegative_budget](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/declarations/pinnedprimeweightrequiredcapacity-is-least-nonnegative-budget--ac977bc7d02ff9d3c1970788.md) | 151 | `result-track:ac977bc7d02ff9d3c197078870a5c56e15199f77d9a9ce4ff8354d232f5b56d9` |
| 11 | `theorem` | [pinnedPrimeWeightAmplitudeRequirement_of_amplitude_eq_zero_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/declarations/pinnedprimeweightamplituderequirement-of-amplitude-eq-zero-iff--6409a7e0e028f809ddb20c84.md) | 173 | `result-track:6409a7e0e028f809ddb20c844d5c86661ba3721550e44ab581813ac4ea2252eb` |
| 12 | `theorem` | [pinnedPrimeWeightAmplitudeRequirement_nonvacuous_amplitude_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/declarations/pinnedprimeweightamplituderequirement-nonvacuous-amplitude-ne-zero--15d11b2ecb3ee388a7329d59.md) | 190 | `result-track:15d11b2ecb3ee388a7329d59cb614f79bad1d0887c71d190c92e0e156f335778` |
| 13 | `theorem` | [pinnedPrimeWeightAmplitudeRequirement_nonvacuous_capacity_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/declarations/pinnedprimeweightamplituderequirement-nonvacuous-capacity-pos--b529de4bded19a8154c26d0d.md) | 204 | `result-track:b529de4bded19a8154c26d0d57a90a3b503bb37440a9421dfe48b07f3b224696` |
| 14 | `theorem` | [pinnedPrimeWeightAmplitudeRequirement_iff_finiteCapacityRequirement](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/declarations/pinnedprimeweightamplituderequirement-iff-finitecapacityrequirement--42bd147e40dc46a2e410da02.md) | 226 | `result-track:42bd147e40dc46a2e410da0287b7e5b8fd408ca1b14c91a7e6c43441a572fee8` |
| 15 | `def` | [PinnedPrimeWeightCapacityRatioCriterionAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/declarations/pinnedprimeweightcapacityratiocriterionat--1f5272fbcc1f93b7aeb04c41.md) | 253 | `declaration-track:1f5272fbcc1f93b7aeb04c41ec9a0dc85d3d0e900b7dde01820752880aae2bbc` |
| 16 | `def` | [PinnedPrimeWeightFixedCapacityRatioCriterionAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/declarations/pinnedprimeweightfixedcapacityratiocriterionat--4ff67d7f5f7761135b878c15.md) | 266 | `declaration-track:4ff67d7f5f7761135b878c15a6c5fb42a08ae4c796dc8964051b552ea26479ee` |
| 17 | `theorem` | [pinnedPrimeWeightCapacityRatioCriterion_iff_amplitudeCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/declarations/pinnedprimeweightcapacityratiocriterion-iff-amplitudecriterion--b991b54b1beba6d3083a8447.md) | 280 | `result-track:b991b54b1beba6d3083a8447371863bea7b6e985e7a9cfbf8c2ffe54d1cb8d3c` |
| 18 | `theorem` | [pinnedPrimeWeightFixedCapacityRatioCriterion_iff_amplitudeCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/declarations/pinnedprimeweightfixedcapacityratiocriterion-iff-amplitudecriterion--acd7a7c660b2c8eda50c2580.md) | 308 | `result-track:acd7a7c660b2c8eda50c2580422cd79ea9589878d03c786b0790083a52514f66` |
| 19 | `theorem` | [pinnedPrimeWeightRuleDeficitCriterion_to_capacityRatioCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/declarations/pinnedprimeweightruledeficitcriterion-to-capacityratiocriterion--454ee4384d123eb3f241e8e0.md) | 340 | `result-track:454ee4384d123eb3f241e8e0f8b4bacd7bc7afe9d3559d2e2b9d827f1a703634` |
| 20 | `theorem` | [pinnedPrimeWeightFixedCapacityRatioCriterion_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/declarations/pinnedprimeweightfixedcapacityratiocriterion-to-recurrence--e820393eda016a6586a7207f.md) | 351 | `result-track:e820393eda016a6586a7207fe955ea29fc859189d2c4b237cb19f1b2df79c5fb` |
| 21 | `theorem` | [pinnedPrimeWeightFixedCapacityRatioCriterion_to_descent](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/declarations/pinnedprimeweightfixedcapacityratiocriterion-to-descent--12e02d077a25acf5a61c89bb.md) | 362 | `result-track:12e02d077a25acf5a61c89bb5d7dc1736318a39c00e0836c368d81e71faa0928` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
