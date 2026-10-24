# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EndpointDerivatives.Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27281d2d834a7c968d56107092d5dcbdcb875adc",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27281d2d834a7c968d56107092d5dcbdcb875adc`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean.json)

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
| 1 | `def` | [endpointFirstPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/declarations/endpointfirstpolynomial--9119d9669f73bf8be8b8f78f.md) | 18 | `declaration-track:9119d9669f73bf8be8b8f78f935d0aacb5e89abcb95bfb27be2b3a4aa19b0cf7` |
| 2 | `def` | [endpointSecondPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/declarations/endpointsecondpolynomial--6c55a4d7432292e683db2d0c.md) | 47 | `declaration-track:6c55a4d7432292e683db2d0c224229c2586b2c572edff4553ae857189d438b98` |
| 3 | `def` | [endpointFullSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/declarations/endpointfullslope--2a4e771f471d4069d9323822.md) | 76 | `declaration-track:2a4e771f471d4069d9323822282a0d43bd5feec439872fd0e5a69b0d3d00b914` |
| 4 | `def` | [endpointFullCurvature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/declarations/endpointfullcurvature--ad3b21b624d82073d79d5a00.md) | 79 | `declaration-track:ad3b21b624d82073d79d5a000027fe85406f19bd4a4552bfc9089c91714836c9` |
| 5 | `theorem` | [endpointFullPolynomial_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/declarations/endpointfullpolynomial-contdiff--6231f1e92207c108cb08d1a4.md) | 82 | `result-track:6231f1e92207c108cb08d1a4678a410c103be9d8fdee2bb001e6b352952a8097` |
| 6 | `theorem` | [endpointFirstPolynomial_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/declarations/endpointfirstpolynomial-contdiff--3ab94d395b51741fcd0a0dd5.md) | 86 | `result-track:3ab94d395b51741fcd0a0dd58f1a4c1ee7e54d380019a46da48834ee759743f0` |
| 7 | `theorem` | [endpoint_full_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/declarations/endpoint-full-deriv--79128f3be8b229d86d89e0fd.md) | 90 | `result-track:79128f3be8b229d86d89e0fd0d641478175df0f23c0e4f28c57eb10e7987206a` |
| 8 | `theorem` | [endpoint_first_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/declarations/endpoint-first-deriv--5398c0783e39fd1e9eff6432.md) | 96 | `result-track:5398c0783e39fd1e9eff64327c65d911c9f12a96e84da9635644e5c5ac418740` |
| 9 | `theorem` | [endpoint_full_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/declarations/endpoint-full-hasderivat--a02a4fdccf3d9b5a3754a6db.md) | 102 | `result-track:a02a4fdccf3d9b5a3754a6db9fd090766f65f5147d8d96bb82349d357239685d` |
| 10 | `theorem` | [endpoint_first_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/declarations/endpoint-first-hasderivat--d06744aaa298535ee8e8aa82.md) | 107 | `result-track:d06744aaa298535ee8e8aa82823e43a6c8f5dc02de70c9a450cbc410be805738` |
| 11 | `theorem` | [endpoint_slope_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/declarations/endpoint-slope-zero--b97d0c041e76fc9d9c8d016a.md) | 112 | `result-track:b97d0c041e76fc9d9c8d016aba08f1deb7619fc4608fe056f2f421913e7012cd` |
| 12 | `theorem` | [endpoint_curvature_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/declarations/endpoint-curvature-zero--239b902a48a652133c15cd41.md) | 116 | `result-track:239b902a48a652133c15cd41b356642909c626ef9ad6cb7660ea86808e8b39d6` |
| 13 | `theorem` | [endpoint_slope_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/declarations/endpoint-slope-continuous--5056d1dbe65e9fcdadc386db.md) | 122 | `result-track:5056d1dbe65e9fcdadc386db6adf27e8fb3ef0936a32caeab9f6e88f72e5591a` |
| 14 | `theorem` | [endpoint_curvature_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/declarations/endpoint-curvature-continuous--99bf12d9f8324c844a4a4ed6.md) | 126 | `result-track:99bf12d9f8324c844a4a4ed67a2ccc8e2cbd7e8e12ff54d35d8b6974c45d203f` |
| 15 | `theorem` | [endpoint_slope_uniform_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/declarations/endpoint-slope-uniform-remainder--f41b9034303c3da4b084e3b5.md) | 132 | `result-track:f41b9034303c3da4b084e3b5259e8bd917d0c673061e3d0e9abe732474ac9665` |
| 16 | `theorem` | [endpoint_curvature_uniform_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/declarations/endpoint-curvature-uniform-remainder--3a872be3f24177a5a873f545.md) | 145 | `result-track:3a872be3f24177a5a873f545d31c8ea305a307caca0f4afcf83666b40e9ce1d3` |
| 17 | `theorem` | [actual_endpoint_model_eventuallyEq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/declarations/actual-endpoint-model-eventuallyeq--e295b41f3967acd8d0d57d5a.md) | 160 | `result-track:e295b41f3967acd8d0d57d5af82b54a335adb7c9d208edd485b0a32b428e9aa4` |
| 18 | `theorem` | [actual_endpoint_first_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/declarations/actual-endpoint-first-hasderivat--f39e6a52a76bec800ffa15a3.md) | 176 | `result-track:f39e6a52a76bec800ffa15a3265577860bc06327e23cb071c530a9d053d7a642` |
| 19 | `theorem` | [actual_endpoint_second_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/declarations/actual-endpoint-second-hasderivat--428ad91d0e1286c5e4054dfd.md) | 191 | `result-track:428ad91d0e1286c5e4054dfd6cc634c52936ffbb44207b956f5d49a810e7ade0` |
| 20 | `theorem` | [actual_endpoint_uniform_derivative_remainders](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/declarations/actual-endpoint-uniform-derivative-remainders--c5410228e878616e5a319e5d.md) | 213 | `result-track:c5410228e878616e5a319e5d7d54e5d2f1381c5be04e17ff0a1c42b473c1c46b` |
| 21 | `theorem` | [actual_endpoint_strict_phase_eventually](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/declarations/actual-endpoint-strict-phase-eventually--050ef9a4491967007c1b51ae.md) | 227 | `result-track:050ef9a4491967007c1b51ae3416507726675a6e117983342537f04260786215` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
