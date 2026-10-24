# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorMainCombined.Variant431dd7d487428d441c5b4dbd7fd6895f7042f12b999f8cf8b0d533cbde004cd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91b081c3aa695588135dc839769809a09ca7f124",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variant431dd7d487428d441c5b4dbd7fd6895f7042f12b999f8cf8b0d533cbde004cd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variant431dd7d487428d441c5b4dbd7fd6895f7042f12b999f8cf8b0d533cbde004cd0.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variant431dd7d487428d441c5b4dbd7fd6895f7042f12b999f8cf8b0d533cbde004cd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91b081c3aa695588135dc839769809a09ca7f124`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variant431dd7d487428d441c5b4dbd7fd6895f7042f12b999f8cf8b0d533cbde004cd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variant431dd7d487428d441c5b4dbd7fd6895f7042f12b999f8cf8b0d533cbde004cd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CoreTailSplit` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceWeightedMultiplier` — import line 4; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisorRemainderCore](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variant431dd7d487428d441c5b4dbd7fd6895f7042f12b999f8cf8b0d533cbde004cd0.lean/declarations/divisorremaindercore--8c69208498b109850ea5fcc3.md) | 16 | `declaration-track:8c69208498b109850ea5fcc35fe5b3325f5fa4a0a1c8b5a8614efdc7ce894326` |
| 2 | `theorem` | [divisorRemainderCore_measurable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variant431dd7d487428d441c5b4dbd7fd6895f7042f12b999f8cf8b0d533cbde004cd0.lean/declarations/divisorremaindercore-measurable--981594734ce2cab6d3ce6f22.md) | 22 | `result-track:981594734ce2cab6d3ce6f22fcd0b3377aedc194540e0a92de1cc4707b98c6af` |
| 3 | `theorem` | [divisorRemainderCore_sq_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variant431dd7d487428d441c5b4dbd7fd6895f7042f12b999f8cf8b0d533cbde004cd0.lean/declarations/divisorremaindercore-sq-le--a87a6ab06e53d6861458b8b8.md) | 34 | `result-track:a87a6ab06e53d6861458b8b8c32d3f19ef2ed501a1eed65e2a9a662efd394014` |
| 4 | `theorem` | [remainderMajorant_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variant431dd7d487428d441c5b4dbd7fd6895f7042f12b999f8cf8b0d533cbde004cd0.lean/declarations/remaindermajorant-integrable--8b79374d4fef38a82d3b3d97.md) | 63 | `result-track:8b79374d4fef38a82d3b3d97dba5744cf39e5e18cdbeb145dc8ba08b9090d877` |
| 5 | `theorem` | [divisorRemainderCore_memLp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variant431dd7d487428d441c5b4dbd7fd6895f7042f12b999f8cf8b0d533cbde004cd0.lean/declarations/divisorremaindercore-memlp--8df2bdfb8b082255e9b53d8e.md) | 70 | `result-track:8df2bdfb8b082255e9b53d8ef49dae91acec2f96129549aa032cec0cda39dc53` |
| 6 | `def` | [divisorRemainderVector](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variant431dd7d487428d441c5b4dbd7fd6895f7042f12b999f8cf8b0d533cbde004cd0.lean/declarations/divisorremaindervector--01b6a54a2434c5135ea939be.md) | 81 | `declaration-track:01b6a54a2434c5135ea939bee929d8791b1ed053ff32ad6c729dd626f53b6476` |
| 7 | `theorem` | [divisorRemainderVector_norm_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variant431dd7d487428d441c5b4dbd7fd6895f7042f12b999f8cf8b0d533cbde004cd0.lean/declarations/divisorremaindervector-norm-le--d6347e47ea4a118b63df1ca1.md) | 85 | `result-track:d6347e47ea4a118b63df1ca10f5fb49bed62b2a203f6a04e4242333e6ea42a0f` |
| 8 | `theorem` | [sourceMultiplier_divisorRemainder_norm_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variant431dd7d487428d441c5b4dbd7fd6895f7042f12b999f8cf8b0d533cbde004cd0.lean/declarations/sourcemultiplier-divisorremainder-norm-le--99b5342f6d8654b5859e263b.md) | 108 | `result-track:99b5342f6d8654b5859e263bf63cd026d6a19122f8ecb65e5f4d2d4c4d604c0b` |
| 9 | `def` | [divisorMainResidual](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variant431dd7d487428d441c5b4dbd7fd6895f7042f12b999f8cf8b0d533cbde004cd0.lean/declarations/divisormainresidual--ae66dd8beb6e8b96952633ad.md) | 133 | `declaration-track:ae66dd8beb6e8b96952633ad01ce3eecbbba7f30639897fcdab8ac648bb89eb4` |
| 10 | `theorem` | [arithmeticResidual_eq_main_sub_remainder](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variant431dd7d487428d441c5b4dbd7fd6895f7042f12b999f8cf8b0d533cbde004cd0.lean/declarations/arithmeticresidual-eq-main-sub-remainder--0922240a2510331acc536e9b.md) | 143 | `result-track:0922240a2510331acc536e9b1f968492232fc2a881e311ba6ecf45b302023057` |
| 11 | `def` | [divisorMainCore](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variant431dd7d487428d441c5b4dbd7fd6895f7042f12b999f8cf8b0d533cbde004cd0.lean/declarations/divisormaincore--4a201eede266c2d9b2fa51e0.md) | 154 | `declaration-track:4a201eede266c2d9b2fa51e0f9b682f1421de4cc7887c19981d6923824ac4e01` |
| 12 | `theorem` | [mainCore_eq_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variant431dd7d487428d441c5b4dbd7fd6895f7042f12b999f8cf8b0d533cbde004cd0.lean/declarations/maincore-eq-add--d715fea345dcc5ed6acc1c7e.md) | 158 | `result-track:d715fea345dcc5ed6acc1c7e64445e6b294849809e417c487e3e21faab581b44` |
| 13 | `theorem` | [divisorMainCore_memLp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variant431dd7d487428d441c5b4dbd7fd6895f7042f12b999f8cf8b0d533cbde004cd0.lean/declarations/divisormaincore-memlp--d13fbcf41dd76a5b01bbe4d0.md) | 173 | `result-track:d13fbcf41dd76a5b01bbe4d0b6b5ea63f47ceb61c1d178949fa5de73076dc13b` |
| 14 | `def` | [divisorMainVector](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variant431dd7d487428d441c5b4dbd7fd6895f7042f12b999f8cf8b0d533cbde004cd0.lean/declarations/divisormainvector--bf07aa310f5fb4d5db3770e9.md) | 181 | `declaration-track:bf07aa310f5fb4d5db3770e98b12bfdf1015a402949590d06e19dea984eb9205` |
| 15 | `theorem` | [mainVector_eq_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variant431dd7d487428d441c5b4dbd7fd6895f7042f12b999f8cf8b0d533cbde004cd0.lean/declarations/mainvector-eq-add--980afed59e29293c790c55f6.md) | 185 | `result-track:980afed59e29293c790c55f660f1bea157d7e41fe98bbc472182d70442abaa20` |
| 16 | `theorem` | [filtered_core_main_norm_difference_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variant431dd7d487428d441c5b4dbd7fd6895f7042f12b999f8cf8b0d533cbde004cd0.lean/declarations/filtered-core-main-norm-difference-le--8fbd4190b1f4f28b0f6ae453.md) | 203 | `result-track:8fbd4190b1f4f28b0f6ae45307222c9960b0c09fbe5b6be8d04a72bb2bee8d05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
