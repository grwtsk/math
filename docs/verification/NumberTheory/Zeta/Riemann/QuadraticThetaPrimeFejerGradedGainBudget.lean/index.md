# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerGradedGainBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d75d123d728a702fe0536bd8cc7c10b1dc46057e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d75d123d728a702fe0536bd8cc7c10b1dc46057e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaGradedFourierNoDescent`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaGradedFourierNoDescent.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeDFTSmoothingWindow`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingWindow.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gradedSmoothedValueGainRequirement](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean/declarations/gradedsmoothedvaluegainrequirement--6cca8d79be909b3a60b4df07.md) | 46 | `declaration-track:6cca8d79be909b3a60b4df0731b3d98711a1f141f6367da9d79f19363c23e71e` |
| 2 | `def` | [gradedSmoothedValueExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean/declarations/gradedsmoothedvalueexponent--63a55a316d1090ca63b09fa4.md) | 50 | `declaration-track:63a55a316d1090ca63b09fa4786e729ba48af8f09ba30b52da4d4ed904691beb` |
| 3 | `theorem` | [gradedSmoothedValueGainRequirement_eq_gap](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean/declarations/gradedsmoothedvaluegainrequirement-eq-gap--5b4ba397c6f017b7d7eeae3e.md) | 55 | `result-track:5b4ba397c6f017b7d7eeae3e2bbcf2430534113673fa7e608c9021109af0827f` |
| 4 | `theorem` | [gradedSmoothedValueExponent_le_quadratic_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean/declarations/gradedsmoothedvalueexponent-le-quadratic-iff--21946416f16e58f8ab2d7790.md) | 66 | `result-track:21946416f16e58f8ab2d77906fbf64ff079c9673d0dc403d1369938277c0f065` |
| 5 | `theorem` | [truncatedFourierBoundary_le_quadratic_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean/declarations/truncatedfourierboundary-le-quadratic-iff--7b42ebbe1af7b928e1d74f5a.md) | 78 | `result-track:7b42ebbe1af7b928e1d74f5a69f765dda489374f0a63988ff43d2f7ef9c65062` |
| 6 | `theorem` | [fejerBoundary_forces_gainRequirementFloor](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean/declarations/fejerboundary-forces-gainrequirementfloor--7d5fd758e29f263a9e15382f.md) | 88 | `result-track:7d5fd758e29f263a9e15382ffe9fa28d51d1d5842e8878feb650c2210df430c2` |
| 7 | `theorem` | [gradedSmoothedValueExponent_cancel_bandwidth](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean/declarations/gradedsmoothedvalueexponent-cancel-bandwidth--1da7dee7aa72e2f4dc9437e2.md) | 103 | `result-track:1da7dee7aa72e2f4dc9437e27527166af3b0cad4ff0e12a400095b87e5c48816` |
| 8 | `theorem` | [pureBandwidthGain_misses_quadratic](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean/declarations/purebandwidthgain-misses-quadratic--c6b8ff720248681894e6a4c7.md) | 111 | `result-track:c6b8ff720248681894e6a4c7f14904ec8750fca6a2122a51af76a76fcd602cd9` |
| 9 | `theorem` | [smoothedValueClosure_forces_extraArithmeticGain](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean/declarations/smoothedvalueclosure-forces-extraarithmeticgain--519e5bece4a2d167dcac9861.md) | 122 | `result-track:519e5bece4a2d167dcac986119012fab8fe9cece2fdf3e0719f455c64c1e1444` |
| 10 | `theorem` | [fejerBoundary_and_valueClosure_force_doubleGap](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean/declarations/fejerboundary-and-valueclosure-force-doublegap--b1d17ef1c52b0a926c255642.md) | 136 | `result-track:b1d17ef1c52b0a926c25564262ab4145c7e694499140a51e80b9aaa51d3997a1` |
| 11 | `structure` | [ThresholdGradedPrimeFejerSupplier](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean/declarations/thresholdgradedprimefejersupplier--13d4bc792722bda16701fe2a.md) | 153 | `declaration-track:13d4bc792722bda16701fe2aa4e3e43a8c32bc7020c66fcab74663710e033265` |
| 12 | `theorem` | [thresholdGradedPrimeFejerSupplier_gain_requirement](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean/declarations/thresholdgradedprimefejersupplier-gain-requirement--3a06cd1b634814addf54cdaf.md) | 166 | `result-track:3a06cd1b634814addf54cdaf888c088f1d4492b4b1ca522e50e495be9dbf804e` |
| 13 | `theorem` | [thresholdGradedPrimeFejerSupplier_gain_floor](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean/declarations/thresholdgradedprimefejersupplier-gain-floor--3f3e7734fa57872aa332308e.md) | 174 | `result-track:3f3e7734fa57872aa332308e57fd6804e85bc4036331849ffb8fcd088ad00c4c` |
| 14 | `theorem` | [thresholdGradedPrimeFejerSupplier_extraArithmeticGain](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean/declarations/thresholdgradedprimefejersupplier-extraarithmeticgain--df7bf3649cb6743a8a643393.md) | 181 | `result-track:df7bf3649cb6743a8a643393a2f2265a116a1f673bbf624e45781884637c4634` |
| 15 | `theorem` | [sevenEighths_gradedSmoothedValueGainRequirement](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean/declarations/seveneighths-gradedsmoothedvaluegainrequirement--e6a190d90324741d8018c6e5.md) | 189 | `result-track:e6a190d90324741d8018c6e5d37afa36873b0b19e03bb1d403bd050d09ffc01c` |
| 16 | `theorem` | [sevenEighths_oneThird_gainRequirement](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean/declarations/seveneighths-onethird-gainrequirement--15ddef6c700f018fa2e7b47d.md) | 197 | `result-track:15ddef6c700f018fa2e7b47dd21489e1d93d14600d7830e761a4dd453a1c9a32` |
| 17 | `theorem` | [sevenEighths_boundaryMinimal_gainPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean/declarations/seveneighths-boundaryminimal-gainpoint--cc4e0f74495ef9fc1309d1e5.md) | 205 | `result-track:cc4e0f74495ef9fc1309d1e55e75da102b6ba760a6a75228f87d613567201dbe` |
| 18 | `theorem` | [sevenEighths_thresholdGradedPrimeFejerSupplier_gain_ge_quarter](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean/declarations/seveneighths-thresholdgradedprimefejersupplier-gain-ge-quarter--30d2841e1fbd3c8545722adc.md) | 218 | `result-track:30d2841e1fbd3c8545722adc6c293ed74b29b29249b2b4ef39cc9c0c5f0a1796` |
| 19 | `theorem` | [sevenEighths_thresholdGradedPrimeFejerSupplier_extra_gain_ge_eighth](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean/declarations/seveneighths-thresholdgradedprimefejersupplier-extra-gain-ge-eighth--3e2a9a5ef99be26f0ffdb654.md) | 231 | `result-track:3e2a9a5ef99be26f0ffdb6540b00968d9dd8801ccf57dde3feac8a90cb6e4eec` |
| 20 | `theorem` | [sevenEighths_thresholdGradedPrimeFejerSupplier_to_partialDiscrepancy](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean/declarations/seveneighths-thresholdgradedprimefejersupplier-to-partialdiscrepancy--08a9c5c0d6fed6d38814d084.md) | 244 | `result-track:08a9c5c0d6fed6d38814d084ae29353c878c82055d7fd0397ed7fb4ae63c8e3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
