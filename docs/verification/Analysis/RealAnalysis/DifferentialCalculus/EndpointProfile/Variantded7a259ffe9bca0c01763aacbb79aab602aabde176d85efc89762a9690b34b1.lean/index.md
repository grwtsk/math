# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EndpointProfile.Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1207a673823f68faa3c2557b45f9795c3be44f04",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1207a673823f68faa3c2557b45f9795c3be44f04`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualPhaseCurvature` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointInteriorPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1.lean/declarations/endpointinteriorpolynomial--49385658a1b185d199e17252.md) | 24 | `declaration-track:49385658a1b185d199e17252b11fd946ec12e226160292b31e0cf31e437db661` |
| 2 | `def` | [endpointLeadingSource](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1.lean/declarations/endpointleadingsource--efd79bb2ae7b2f20d3bf463e.md) | 28 | `declaration-track:efd79bb2ae7b2f20d3bf463e7042ab78bd8c53171872110f2d95f24d656e747a` |
| 3 | `def` | [endpointLeadingCorrelation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1.lean/declarations/endpointleadingcorrelation--91710dc9b9f794a74a17b0f7.md) | 30 | `declaration-track:91710dc9b9f794a74a17b0f7a9c15d5f3281c19570700c1fbca4a09f89d0bf0c` |
| 4 | `def` | [endpointLeadingSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1.lean/declarations/endpointleadingslope--01ff598f4288091f9b6790c9.md) | 33 | `declaration-track:01ff598f4288091f9b6790c93622bdb451187646c2fa85dcb5bf865c9c13ce72` |
| 5 | `def` | [endpointLeadingCurvature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1.lean/declarations/endpointleadingcurvature--ebc478c5898d32f59f04c7be.md) | 36 | `declaration-track:ebc478c5898d32f59f04c7bec7d18f0e38b1141a3c264e605750822ab8a8f67e` |
| 6 | `theorem` | [actual_interior_endpoint_polynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1.lean/declarations/actual-interior-endpoint-polynomial--fb40584672a8adb74db2ae1e.md) | 40 | `result-track:fb40584672a8adb74db2ae1e55e2ae4b53e4ac9ba796f560b083f7e4347480f3` |
| 7 | `theorem` | [actual_dilation_endpoint_polynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1.lean/declarations/actual-dilation-endpoint-polynomial--616859872788fb72d2cae824.md) | 50 | `result-track:616859872788fb72d2cae8248edc6aaba50789d4e1ab1d4d19d33f1f3321f3e2` |
| 8 | `theorem` | [endpointInteriorPolynomial_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1.lean/declarations/endpointinteriorpolynomial-at-zero--5352718325acd981311bd7e0.md) | 58 | `result-track:5352718325acd981311bd7e084afd838bf4839fe82d467da40380fc5a61ca67f` |
| 9 | `theorem` | [endpoint_leading_convolution](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1.lean/declarations/endpoint-leading-convolution--766d786309c55a427e35e2d9.md) | 63 | `result-track:766d786309c55a427e35e2d9472e3f230615316de5251c8bcb0bfee9a8bd2e77` |
| 10 | `theorem` | [endpoint_leading_correlation_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1.lean/declarations/endpoint-leading-correlation-hasderivat--91deb5227c42de530b0747b9.md) | 80 | `result-track:91deb5227c42de530b0747b9c081bfc4a713368f79a34a76950ab74972e0ba61` |
| 11 | `theorem` | [endpoint_leading_slope_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1.lean/declarations/endpoint-leading-slope-eq--d47e24d65920289376ad0263.md) | 87 | `result-track:d47e24d65920289376ad0263c3c68419880806a014457a933ccb0d685b92ddc9` |
| 12 | `theorem` | [endpoint_leading_slope_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1.lean/declarations/endpoint-leading-slope-hasderivat--2f291ebc113ca04b05469d08.md) | 93 | `result-track:2f291ebc113ca04b05469d08f0aecbd8b8eaf45bf4f917a5824bfdec8485c361` |
| 13 | `theorem` | [endpoint_leading_slope_upper](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1.lean/declarations/endpoint-leading-slope-upper--4c7959401dae4eaedff5fa4e.md) | 104 | `result-track:4c7959401dae4eaedff5fa4e7d223ee76ec54c9e44d95a9034bb763751b65146` |
| 14 | `theorem` | [endpoint_leading_curvature_lower](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1.lean/declarations/endpoint-leading-curvature-lower--08f936e0e05e26bb02d710d9.md) | 113 | `result-track:08f936e0e05e26bb02d710d9395e720c00106e315264aa0af8cb428a08bf851c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
