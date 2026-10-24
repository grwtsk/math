# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightAmplitudeEnvelope

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "626068b47c529c01361f775183bde7e10478dfa0",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `626068b47c529c01361f775183bde7e10478dfa0`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightBoundedCapacity`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pinnedPrimeWeightAmplitudeRequirement](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/declarations/pinnedprimeweightamplituderequirement--ccc35f13d5e7bded9c788e60.md) | 40 | `declaration-track:ccc35f13d5e7bded9c788e60edb953181cea0f7e90180e95aff81420bfd51b1a` |
| 2 | `def` | [pinnedPrimeWeightStageErrorEnvelope](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/declarations/pinnedprimeweightstageerrorenvelope--6de7aeda8cb04e08d3cdfcf7.md) | 46 | `declaration-track:6de7aeda8cb04e08d3cdfcf773b6fb5a8cdbe727ae5e5e8eb838007960378f82` |
| 3 | `theorem` | [pinnedPrimeWeightStageErrorEnvelope_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/declarations/pinnedprimeweightstageerrorenvelope-nonnegative--469c1f91645ad19e5f64ef67.md) | 52 | `result-track:469c1f91645ad19e5f64ef6724de5d914d8d5460d4f15a6fdeb3459681c4b310` |
| 4 | `theorem` | [pinnedPrimeWeightBoundedDeficit_le_iff_target_sub_error_le_capacity](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/declarations/pinnedprimeweightboundeddeficit-le-iff-target-sub-error-le-capacity--5fda1bb12f87585dee01fa71.md) | 61 | `result-track:5fda1bb12f87585dee01fa716d86491bc1d79c511259cdcff715bd480cca5d10` |
| 5 | `theorem` | [pinnedPrimeWeightBoundedDeficit_le_iff_amplitudeRequirement](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/declarations/pinnedprimeweightboundeddeficit-le-iff-amplituderequirement--a9600f2cf7414a221cacb528.md) | 81 | `result-track:a9600f2cf7414a221cacb5284126c24c438f5b5ec1f91bfb8cb78a804ab0b805` |
| 6 | `theorem` | [pinnedPrimeWeightBoundedDeficit_eq_zero_iff_amplitudeRequirement](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/declarations/pinnedprimeweightboundeddeficit-eq-zero-iff-amplituderequirement--a2fafa88ba138e30e0265142.md) | 103 | `result-track:a2fafa88ba138e30e0265142fa7f4a8c7544b095ab5b4a4233ea1c2dbc53fecd` |
| 7 | `theorem` | [pinnedPrimeWeightAmplitudeRequirement_of_target_le_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/declarations/pinnedprimeweightamplituderequirement-of-target-le-error--19beac07c6886fd342f58d63.md) | 125 | `result-track:19beac07c6886fd342f58d638e414f6c66b308ce656e301b0cdce60e94169ac6` |
| 8 | `def` | [PinnedPrimeWeightAmplitudeCriterionAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/declarations/pinnedprimeweightamplitudecriterionat--d986a8020f7131e46cfe6bd2.md) | 143 | `declaration-track:d986a8020f7131e46cfe6bd2578528bc3e96757a8b7c2e2a8fcd5215350aff8b` |
| 9 | `def` | [PinnedPrimeWeightFixedCapacityAmplitudeCriterionAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/declarations/pinnedprimeweightfixedcapacityamplitudecriterionat--4612a5004c4753541b202271.md) | 156 | `declaration-track:4612a5004c4753541b202271e563388e8fb1e057059151b93bfc4c3d25d0044b` |
| 10 | `theorem` | [pinnedPrimeWeightCapacityCriterion_iff_amplitudeCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/declarations/pinnedprimeweightcapacitycriterion-iff-amplitudecriterion--72085e9ef8f5f8aca7a67336.md) | 170 | `result-track:72085e9ef8f5f8aca7a67336f52b14470e858c98b0e88dd7881e87e986337387` |
| 11 | `theorem` | [pinnedPrimeWeightFixedCapacityCriterion_iff_amplitudeCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/declarations/pinnedprimeweightfixedcapacitycriterion-iff-amplitudecriterion--b68c32bd81adca33db9efaa6.md) | 219 | `result-track:b68c32bd81adca33db9efaa6dc59c21aaec7854f1e2ef6e0e99797e50f1d844a` |
| 12 | `theorem` | [pinnedPrimeWeightRuleDeficitCriterion_to_amplitudeCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/declarations/pinnedprimeweightruledeficitcriterion-to-amplitudecriterion--91a37064587c99eecbc879e4.md) | 272 | `result-track:91a37064587c99eecbc879e4a83393c8d15b6d8ef0be8b31577f9c5f45c034fb` |
| 13 | `theorem` | [pinnedPrimeWeightFixedCapacityAmplitudeCriterion_iff_constantRule](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/declarations/pinnedprimeweightfixedcapacityamplitudecriterion-iff-constantrule--e92de11b0a94ef0ce70cc00d.md) | 283 | `result-track:e92de11b0a94ef0ce70cc00d84bb91555e59e48156d17cdfd38423c33fab06bd` |
| 14 | `theorem` | [pinnedPrimeWeightFixedCapacityAmplitudeCriterion_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/declarations/pinnedprimeweightfixedcapacityamplitudecriterion-to-recurrence--3843fea2787865d09bbb8d33.md) | 302 | `result-track:3843fea2787865d09bbb8d33ee0f9a27124cb4d5fec8ead429c8c74b8735fa07` |
| 15 | `theorem` | [pinnedPrimeWeightFixedCapacityAmplitudeCriterion_to_descent](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/declarations/pinnedprimeweightfixedcapacityamplitudecriterion-to-descent--87fb3debb317e90d01ec08f9.md) | 313 | `result-track:87fb3debb317e90d01ec08f9d315e5c85dadc67c80bb698e4fe06c1637f8f379` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
