# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EndpointDerivativesAttempt06.Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90932f5cefc6f14545b202bbe5fae2196423a2f6",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90932f5cefc6f14545b202bbe5fae2196423a2f6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean.json)

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
| 1 | `def` | [endpointFirstPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/declarations/endpointfirstpolynomial--7fd52b80553aa239c0a6cacc.md) | 26 | `declaration-track:7fd52b80553aa239c0a6cacc636364dc9c40eaec3b8ef37f08dee8076f5b77d8` |
| 2 | `def` | [endpointSecondPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/declarations/endpointsecondpolynomial--f695f4544429af90238acaee.md) | 55 | `declaration-track:f695f4544429af90238acaee22bfb333b698c17660d235c1677b1e84a56bedf9` |
| 3 | `def` | [endpointFullSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/declarations/endpointfullslope--19ec71e7edbbfde1aa03deb5.md) | 84 | `declaration-track:19ec71e7edbbfde1aa03deb5e1938ea80036c05365a00dc8cc50b6d06523b9c2` |
| 4 | `def` | [endpointFullCurvature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/declarations/endpointfullcurvature--72b02b24893225637a501ff5.md) | 87 | `declaration-track:72b02b24893225637a501ff5e7574cd53a8babc27e6ecbb25c22ad680bc399d4` |
| 5 | `theorem` | [endpointFullPolynomial_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/declarations/endpointfullpolynomial-contdiff--84cfe4db19b3ecd0085af2f3.md) | 90 | `result-track:84cfe4db19b3ecd0085af2f304f5a0e163c5e614f722c09a6c2825fccf45be1f` |
| 6 | `theorem` | [endpointFirstPolynomial_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/declarations/endpointfirstpolynomial-contdiff--81a095eced1bab69e2bfad1d.md) | 94 | `result-track:81a095eced1bab69e2bfad1de302270d4cd8805be67b1348f55dd611a7a1b2f2` |
| 7 | `theorem` | [endpoint_full_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/declarations/endpoint-full-deriv--15298c7e1cafd9f44f17a1cc.md) | 98 | `result-track:15298c7e1cafd9f44f17a1cca847008d3a17c79a015006e47be89e58ccaea93b` |
| 8 | `theorem` | [endpoint_first_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/declarations/endpoint-first-deriv--60177654b16ef494e5378538.md) | 104 | `result-track:60177654b16ef494e5378538b5e8556e5ba4b4e3371f436690803622a25f3b4d` |
| 9 | `theorem` | [endpoint_full_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/declarations/endpoint-full-hasderivat--05005abbd224ea4ef4b4f868.md) | 110 | `result-track:05005abbd224ea4ef4b4f8683fd4eea513c48b14948e6cac16dffaaa54d41401` |
| 10 | `theorem` | [endpoint_first_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/declarations/endpoint-first-hasderivat--80348a7b8e8a3b6003e2b449.md) | 115 | `result-track:80348a7b8e8a3b6003e2b4496214244d97b7c0c84701cabb19b104500d174b2a` |
| 11 | `theorem` | [endpoint_slope_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/declarations/endpoint-slope-zero--d9f8d32a2cc3f27680aa895f.md) | 120 | `result-track:d9f8d32a2cc3f27680aa895faec9485557f1b49347f3888514d904b014c6c9a3` |
| 12 | `theorem` | [endpoint_curvature_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/declarations/endpoint-curvature-zero--3eead8c0b7d4aa6a6af38a52.md) | 124 | `result-track:3eead8c0b7d4aa6a6af38a52206de6e7572c4d018d2145f6b92c7f251df93e33` |
| 13 | `theorem` | [endpoint_slope_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/declarations/endpoint-slope-continuous--ac7e986d54e2b39d05ac9c6e.md) | 130 | `result-track:ac7e986d54e2b39d05ac9c6e66560c091e9d4715da96a7bfcc655bb05dab5981` |
| 14 | `theorem` | [endpoint_curvature_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/declarations/endpoint-curvature-continuous--89a58f53eaa8d004e0eb9a82.md) | 134 | `result-track:89a58f53eaa8d004e0eb9a82246eb4c80def337f986f20605f5dadacd848f6e5` |
| 15 | `theorem` | [endpoint_slope_uniform_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/declarations/endpoint-slope-uniform-remainder--55e3131b926a0769fef0ad80.md) | 140 | `result-track:55e3131b926a0769fef0ad8028c8a1654cd76fc427a8191709943a1cc2b4f1e8` |
| 16 | `theorem` | [endpoint_curvature_uniform_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/declarations/endpoint-curvature-uniform-remainder--988e8706ad0a68251ea565dc.md) | 153 | `result-track:988e8706ad0a68251ea565dc2b5ae2575ef2ea942796d4c86cc78ca34732d9b3` |
| 17 | `theorem` | [actual_endpoint_model_eventuallyEq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/declarations/actual-endpoint-model-eventuallyeq--ed65032a8e56079d829d2fd3.md) | 168 | `result-track:ed65032a8e56079d829d2fd31e5d8f5d0402a6a61a3c3eea2340081bb8cdc0f7` |
| 18 | `theorem` | [actual_endpoint_first_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/declarations/actual-endpoint-first-hasderivat--0473e790af441e1bb9ef8a09.md) | 184 | `result-track:0473e790af441e1bb9ef8a093e41f7094ba1062fadfcbd680485675a8385604c` |
| 19 | `theorem` | [actual_endpoint_second_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/declarations/actual-endpoint-second-hasderivat--1bc44bcc7110185b7b1c7069.md) | 199 | `result-track:1bc44bcc7110185b7b1c7069ff0fa5e12616c4f0601a83ad4090510010dc4c7c` |
| 20 | `theorem` | [actual_endpoint_uniform_derivative_remainders](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/declarations/actual-endpoint-uniform-derivative-remainders--7f010e24b5fe29ea7123420b.md) | 221 | `result-track:7f010e24b5fe29ea7123420bf853ab36816b0fe8b48a7d1ae544272ee3c4a17a` |
| 21 | `theorem` | [actual_endpoint_strict_phase_eventually](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/declarations/actual-endpoint-strict-phase-eventually--fb677129ec901906e4a50a43.md) | 235 | `result-track:fb677129ec901906e4a50a43ed90cc040bd9a7e3a70894d1ae0e19d72a340b9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
