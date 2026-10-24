# Verification target: GRWTSK.Analysis.Complex.Checks.RationalTentQuadratureControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef284a7f750075d87a414bc47b5debfa988553ff",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/Checks/RationalTentQuadratureControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentQuadratureControls.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentQuadratureControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef284a7f750075d87a414bc47b5debfa988553ff`.

Source path: `GRWTSK/Analysis/Complex/Checks/RationalTentQuadratureControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/Checks/RationalTentQuadratureControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalTentQuadrature`](../../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitResolution](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentQuadratureControls.lean/declarations/unitresolution--a55fd795285a156d167534dd.md) | 15 | `declaration-track:a55fd795285a156d167534dd99ac8df2f7ea7b8a13aab4237195b27c324902ee` |
| 2 | `def` | [unitTrace](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentQuadratureControls.lean/declarations/unittrace--fc860247f865885a9cb88189.md) | 16 | `declaration-track:fc860247f865885a9cb881893313d20716c5c96647377af4edc0c64c399ee968` |
| 3 | `theorem` | [midpoint_mass_control](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentQuadratureControls.lean/declarations/midpoint-mass-control--dc37cb2b77e1da7c2bf3566e.md) | 19 | `result-track:dc37cb2b77e1da7c2bf3566ef739ff4f8390a60377e77d2ff00a5a26eadb45dc` |
| 4 | `theorem` | [constant_exact_control](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentQuadratureControls.lean/declarations/constant-exact-control--14bff2c87a42d6644c0a136a.md) | 23 | `result-track:14bff2c87a42d6644c0a136a3e6f963dda21ddd1165befbfdb767f7f39eb5e12` |
| 5 | `theorem` | [tent_not_unweighted_interval](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentQuadratureControls.lean/declarations/tent-not-unweighted-interval--df96ea78ec4838ef90af0dac.md) | 27 | `result-track:df96ea78ec4838ef90af0dac91f6c8cad0e73d2221c5ea396de1a0157d4ecf9c` |
| 6 | `theorem` | [shifted_center_domain_control](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentQuadratureControls.lean/declarations/shifted-center-domain-control--fa283dcc237204a13fb5990b.md) | 34 | `result-track:fa283dcc237204a13fb5990b3ef6535ee0a1bfb3461aea2d56761641dab79284` |
| 7 | `def` | [nonconstantResolution](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentQuadratureControls.lean/declarations/nonconstantresolution--769664323927fbbc4ebbb62f.md) | 37 | `declaration-track:769664323927fbbc4ebbb62f87c11dee2b6b7a012173044084a4ff3d2d706805` |
| 8 | `def` | [nonconstantTrace](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentQuadratureControls.lean/declarations/nonconstanttrace--dfb788469e0c705e9af3eacd.md) | 38 | `declaration-track:dfb788469e0c705e9af3eacd364982ae61380afb75281567f631c6fd4bee7074` |
| 9 | `theorem` | [nonconstant_control](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentQuadratureControls.lean/declarations/nonconstant-control--abb0132ed11861b81f06aa0d.md) | 41 | `result-track:abb0132ed11861b81f06aa0d6c0bf9718ee507d3a51bd5336f9c183a54c58771` |
| 10 | `theorem` | [node_precision_not_tent_precision](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentQuadratureControls.lean/declarations/node-precision-not-tent-precision--49598a83d12ee7d887d11ed0.md) | 48 | `result-track:49598a83d12ee7d887d11ed04d0c7ed0e6abe3a2ef152a954bf2539cbbf22999` |
| 11 | `theorem` | [actual_tent_enclosure](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentQuadratureControls.lean/declarations/actual-tent-enclosure--6fa5e8b6458d9596da54e44c.md) | 55 | `result-track:6fa5e8b6458d9596da54e44c47c3b0f5791a39e08525c9a97c692a411affda19` |
| 12 | `theorem` | [geometry_rejections](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentQuadratureControls.lean/declarations/geometry-rejections--d1b4bc733c46d28a116e4746.md) | 62 | `result-track:d1b4bc733c46d28a116e4746cd55d07ac27cb0e3f1374598cf9314de90bce167` |
| 13 | `theorem` | [missing_half_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentQuadratureControls.lean/declarations/missing-half-rejected--73511435614fce1bdc627efb.md) | 68 | `result-track:73511435614fce1bdc627efb8b773362c97be7acf68b6e926ed9a1e7420d32fa` |
| 14 | `theorem` | [doubled_normalization_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentQuadratureControls.lean/declarations/doubled-normalization-rejected--9831172fc65a8215ab7e7b03.md) | 72 | `result-track:9831172fc65a8215ab7e7b031e20fe215cc1911452953d2982a969cbc313ce4b` |
| 15 | `theorem` | [correct_final_wrong_middle_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentQuadratureControls.lean/declarations/correct-final-wrong-middle-rejected--1a1a10e71738b175551a511f.md) | 76 | `result-track:1a1a10e71738b175551a511f417a75cfad58cf74d902247fff1be535331d890c` |
| 16 | `def` | [roundedTrace](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentQuadratureControls.lean/declarations/roundedtrace--b28f9751c614e38794cea89b.md) | 80 | `declaration-track:b28f9751c614e38794cea89b85c6e96bfe7cbf36b6e1919eb7699a6390eddd5e` |
| 17 | `theorem` | [imaginary_rounding_retained](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentQuadratureControls.lean/declarations/imaginary-rounding-retained--2f20ab2116e28515703d78d0.md) | 83 | `result-track:2f20ab2116e28515703d78d0a666e1347146ab10dd18ab275ce0f955a6e8b599` |
| 18 | `theorem` | [negative_radius_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentQuadratureControls.lean/declarations/negative-radius-rejected--58a45c3c6ba5c4240067214e.md) | 87 | `result-track:58a45c3c6ba5c4240067214e2d76fde30dd698d8a2cb71c51569d83efb62aba8` |
| 19 | `theorem` | [negative_tolerance_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentQuadratureControls.lean/declarations/negative-tolerance-rejected--a364d3f41e883f2a949c4c6c.md) | 91 | `result-track:a364d3f41e883f2a949c4c6caff14fc279853fba82ad709b2a8c5254a969d5b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
