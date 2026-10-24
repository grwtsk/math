# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EndpointDerivativesAttempt06.Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1457834c911f9c6a358a51c6abb90a4333a3c385",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1457834c911f9c6a358a51c6abb90a4333a3c385`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `EndpointExpansion` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointFirstPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/declarations/endpointfirstpolynomial--71f6d64f50d86fbd49172218.md) | 18 | `declaration-track:71f6d64f50d86fbd491722186a31335cb1f5600979c43f43ca9968f6bda091aa` |
| 2 | `def` | [endpointSecondPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/declarations/endpointsecondpolynomial--e2d25cf87267acd514e2a82e.md) | 47 | `declaration-track:e2d25cf87267acd514e2a82e24acf1bd005645bc812aaaa5a95fb430cb835db5` |
| 3 | `def` | [endpointFullSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/declarations/endpointfullslope--67e5609f55b5e2fc49354f5d.md) | 76 | `declaration-track:67e5609f55b5e2fc49354f5dcd2c2b1564ebc406d7a38f0e413b293ab413e7f0` |
| 4 | `def` | [endpointFullCurvature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/declarations/endpointfullcurvature--2a70e0b07a8a26c21c6b3191.md) | 79 | `declaration-track:2a70e0b07a8a26c21c6b3191315506f7d92aa1a0715a023b985fe6763389d427` |
| 5 | `theorem` | [endpointFullPolynomial_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/declarations/endpointfullpolynomial-contdiff--4015d55032b8bbce4d95f39a.md) | 82 | `result-track:4015d55032b8bbce4d95f39a96cd9b5c7b702435dfe044d1330c6129e9c31096` |
| 6 | `theorem` | [endpointFirstPolynomial_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/declarations/endpointfirstpolynomial-contdiff--74780603e0cd20948525a00a.md) | 86 | `result-track:74780603e0cd20948525a00ae1361be116ad9b6aceffd5216271200140842526` |
| 7 | `theorem` | [endpoint_full_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/declarations/endpoint-full-deriv--ffe59f46d3925bca06d52dff.md) | 90 | `result-track:ffe59f46d3925bca06d52dffa9b03e4e9158362fdedc39739f406f9d53a857c7` |
| 8 | `theorem` | [endpoint_first_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/declarations/endpoint-first-deriv--4aff8dc27cfe4081e2dc0838.md) | 96 | `result-track:4aff8dc27cfe4081e2dc0838410ed3b154f239ceb8af18f1721843e4c0381c79` |
| 9 | `theorem` | [endpoint_full_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/declarations/endpoint-full-hasderivat--cf3ffc395cc2e9553cb32a0a.md) | 102 | `result-track:cf3ffc395cc2e9553cb32a0ab2a216f68e133278100dab39157ad96cb4c6f2f8` |
| 10 | `theorem` | [endpoint_first_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/declarations/endpoint-first-hasderivat--d855f14773166ef86cfb86d4.md) | 107 | `result-track:d855f14773166ef86cfb86d4c7b278dc4e78feae88364a2ce2dffee39767549e` |
| 11 | `theorem` | [endpoint_slope_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/declarations/endpoint-slope-zero--d8d58689cc853d70b95e07a7.md) | 112 | `result-track:d8d58689cc853d70b95e07a767ebc9b2e00c53886a664861970d90743530b895` |
| 12 | `theorem` | [endpoint_curvature_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/declarations/endpoint-curvature-zero--725d1f389ecd95baeb6fe428.md) | 116 | `result-track:725d1f389ecd95baeb6fe4280723edc7c8debf51fce96b3e29bb0f24049e503f` |
| 13 | `theorem` | [endpoint_slope_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/declarations/endpoint-slope-continuous--00a2e2d716d97deb71cc6b0f.md) | 122 | `result-track:00a2e2d716d97deb71cc6b0f92e90b2bfc2ca3f92303c5434507b9bb7d760172` |
| 14 | `theorem` | [endpoint_curvature_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/declarations/endpoint-curvature-continuous--5702bebd2f6eca50ff44cc97.md) | 126 | `result-track:5702bebd2f6eca50ff44cc972bc43b7923e57a400a8540df84fa789201a99c1e` |
| 15 | `theorem` | [endpoint_slope_uniform_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/declarations/endpoint-slope-uniform-remainder--dc7c226e7a60d1326982bbf0.md) | 132 | `result-track:dc7c226e7a60d1326982bbf0e93f59d5890e315eedd5966a2ccc39f1659f849b` |
| 16 | `theorem` | [endpoint_curvature_uniform_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/declarations/endpoint-curvature-uniform-remainder--c60c65d2d55d631330a508f9.md) | 145 | `result-track:c60c65d2d55d631330a508f9613e44107cb56dd476b553c3f1c58a6ed1ff1db4` |
| 17 | `theorem` | [actual_endpoint_model_eventuallyEq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/declarations/actual-endpoint-model-eventuallyeq--c152089b4e3c254cf216a830.md) | 160 | `result-track:c152089b4e3c254cf216a8306880c637f08cf54b74273552883ec01669471a77` |
| 18 | `theorem` | [actual_endpoint_first_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/declarations/actual-endpoint-first-hasderivat--df34366949ab819ee5ec29b9.md) | 176 | `result-track:df34366949ab819ee5ec29b9381aef81b77fd5c671b2e643967dd56494646b17` |
| 19 | `theorem` | [actual_endpoint_second_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/declarations/actual-endpoint-second-hasderivat--45be600bcfa7a707972eb5b1.md) | 191 | `result-track:45be600bcfa7a707972eb5b1231310fcb84e01bed2eff77be715584459e2638d` |
| 20 | `theorem` | [actual_endpoint_uniform_derivative_remainders](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/declarations/actual-endpoint-uniform-derivative-remainders--9064daef92d336b07efadc40.md) | 213 | `result-track:9064daef92d336b07efadc40e708258350947b59dfa51522004b7f1fa6a190fb` |
| 21 | `theorem` | [actual_endpoint_strict_phase_eventually](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/declarations/actual-endpoint-strict-phase-eventually--491a69ceaed714491fdded4f.md) | 227 | `result-track:491a69ceaed714491fdded4fbc6141ded3497addff85e156b626dcc79c04bf0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
