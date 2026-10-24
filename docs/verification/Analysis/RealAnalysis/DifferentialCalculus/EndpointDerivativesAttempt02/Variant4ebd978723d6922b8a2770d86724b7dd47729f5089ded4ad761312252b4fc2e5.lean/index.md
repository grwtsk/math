# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EndpointDerivativesAttempt02.Variant4ebd978723d6922b8a2770d86724b7dd47729f5089ded4ad761312252b4fc2e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32dbcb8ac08242281a47256db8a57e02508ee02c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant4ebd978723d6922b8a2770d86724b7dd47729f5089ded4ad761312252b4fc2e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant4ebd978723d6922b8a2770d86724b7dd47729f5089ded4ad761312252b4fc2e5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant4ebd978723d6922b8a2770d86724b7dd47729f5089ded4ad761312252b4fc2e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32dbcb8ac08242281a47256db8a57e02508ee02c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant4ebd978723d6922b8a2770d86724b7dd47729f5089ded4ad761312252b4fc2e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant4ebd978723d6922b8a2770d86724b7dd47729f5089ded4ad761312252b4fc2e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `EndpointExpansion` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointFirstPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant4ebd978723d6922b8a2770d86724b7dd47729f5089ded4ad761312252b4fc2e5.lean/declarations/endpointfirstpolynomial--acbd89f82c66aa2c9f7e3830.md) | 26 | `declaration-track:acbd89f82c66aa2c9f7e3830fbeaf8bda043746b03bd9460d8956958ce327711` |
| 2 | `def` | [endpointSecondPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant4ebd978723d6922b8a2770d86724b7dd47729f5089ded4ad761312252b4fc2e5.lean/declarations/endpointsecondpolynomial--6878423525dab45c7951e6ee.md) | 55 | `declaration-track:6878423525dab45c7951e6eee5a1f0b7c6d376ec87cdb4558e519c11cba5b217` |
| 3 | `def` | [endpointFullSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant4ebd978723d6922b8a2770d86724b7dd47729f5089ded4ad761312252b4fc2e5.lean/declarations/endpointfullslope--ed6545ae4749cf5d339e115e.md) | 84 | `declaration-track:ed6545ae4749cf5d339e115e01c37ebb6ba4f4f15b5091ea5eea38b6142b52aa` |
| 4 | `def` | [endpointFullCurvature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant4ebd978723d6922b8a2770d86724b7dd47729f5089ded4ad761312252b4fc2e5.lean/declarations/endpointfullcurvature--096f48b1fbb5d8e343bbca6e.md) | 87 | `declaration-track:096f48b1fbb5d8e343bbca6ee34b5593a91afa3f9e155c7d326615297a487404` |
| 5 | `theorem` | [endpointFullPolynomial_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant4ebd978723d6922b8a2770d86724b7dd47729f5089ded4ad761312252b4fc2e5.lean/declarations/endpointfullpolynomial-contdiff--071edd964a92c2fb28151541.md) | 90 | `result-track:071edd964a92c2fb28151541f0ee4b0ca6afa6d2b99c55744da3dbd383815087` |
| 6 | `theorem` | [endpointFirstPolynomial_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant4ebd978723d6922b8a2770d86724b7dd47729f5089ded4ad761312252b4fc2e5.lean/declarations/endpointfirstpolynomial-contdiff--f10554efe72498f0fe1152a0.md) | 94 | `result-track:f10554efe72498f0fe1152a010ac55c93c3a1a0f64563296c0d47065b9157ad4` |
| 7 | `theorem` | [endpoint_full_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant4ebd978723d6922b8a2770d86724b7dd47729f5089ded4ad761312252b4fc2e5.lean/declarations/endpoint-full-deriv--b4590ab1c4774ac23d6c9203.md) | 98 | `result-track:b4590ab1c4774ac23d6c920347cfaee1758f55d5b6dbf512ffdaae8533631250` |
| 8 | `theorem` | [endpoint_first_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant4ebd978723d6922b8a2770d86724b7dd47729f5089ded4ad761312252b4fc2e5.lean/declarations/endpoint-first-deriv--aa7c1dcc0e9da24620197897.md) | 104 | `result-track:aa7c1dcc0e9da246201978974aeec6a7ed1dfcc9ab1c8e8fae7d4bdf442e19b8` |
| 9 | `theorem` | [endpoint_full_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant4ebd978723d6922b8a2770d86724b7dd47729f5089ded4ad761312252b4fc2e5.lean/declarations/endpoint-full-hasderivat--722738b7d2e5ee36fe6e4133.md) | 110 | `result-track:722738b7d2e5ee36fe6e4133abc24384272e7bcf8e7755998e6e1bb2a7dd1ee9` |
| 10 | `theorem` | [endpoint_first_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant4ebd978723d6922b8a2770d86724b7dd47729f5089ded4ad761312252b4fc2e5.lean/declarations/endpoint-first-hasderivat--8b571da6cb835fcc5c013ab4.md) | 115 | `result-track:8b571da6cb835fcc5c013ab45ff306d0e9b1beae4b273b9302c8fec1c33b1d54` |
| 11 | `theorem` | [endpoint_slope_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant4ebd978723d6922b8a2770d86724b7dd47729f5089ded4ad761312252b4fc2e5.lean/declarations/endpoint-slope-zero--d6b9b558d47849b29672bcde.md) | 120 | `result-track:d6b9b558d47849b29672bcdef963309c39cdcb9716d8745c4e288501fbdd001f` |
| 12 | `theorem` | [endpoint_curvature_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant4ebd978723d6922b8a2770d86724b7dd47729f5089ded4ad761312252b4fc2e5.lean/declarations/endpoint-curvature-zero--61b643bcba7779b0ac559804.md) | 124 | `result-track:61b643bcba7779b0ac5598041dfd4b49f71e3c34b52e48e3ddac3b61156b15be` |
| 13 | `theorem` | [endpoint_slope_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant4ebd978723d6922b8a2770d86724b7dd47729f5089ded4ad761312252b4fc2e5.lean/declarations/endpoint-slope-continuous--a9399cae2ec0d2accbc86323.md) | 130 | `result-track:a9399cae2ec0d2accbc86323f5b9340626a0a1bcc42b29f997649d71b3b8267d` |
| 14 | `theorem` | [endpoint_curvature_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant4ebd978723d6922b8a2770d86724b7dd47729f5089ded4ad761312252b4fc2e5.lean/declarations/endpoint-curvature-continuous--627c575b1e90bdf9c9e2e63f.md) | 134 | `result-track:627c575b1e90bdf9c9e2e63fced0fa6990e1c99273f1d852553a3c6b8749f44e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
