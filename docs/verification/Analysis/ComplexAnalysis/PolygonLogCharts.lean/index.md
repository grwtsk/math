# Verification target: GRWTSK.Analysis.Complex.PolygonLogCharts

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "726608258a3f78c6469d4a5bc239a6c598bf7691",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/PolygonLogCharts.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/PolygonLogCharts.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/PolygonLogCharts.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `726608258a3f78c6469d4a5bc239a6c598bf7691`.

Source path: `GRWTSK/Analysis/Complex/PolygonLogCharts.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/PolygonLogCharts.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.ExponentialLoopIndex`](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.PolygonTube`](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [below](../../../../mathematics/Analysis/ComplexAnalysis/PolygonLogCharts.lean/declarations/below--4fe2c958be4ae80b582bf5ff.md) | 27 | `declaration-track:4fe2c958be4ae80b582bf5ffbf22e488007aaafb562914289538f02d2e663529` |
| 2 | `def` | [negativeLog](../../../../mathematics/Analysis/ComplexAnalysis/PolygonLogCharts.lean/declarations/negativelog--59dc0c15055927fa2385c7dd.md) | 29 | `declaration-track:59dc0c15055927fa2385c7dd1660cadfbe9848c58f2ad79846bcd482a7fa293e` |
| 3 | `theorem` | [exp_negativeLog](../../../../mathematics/Analysis/ComplexAnalysis/PolygonLogCharts.lean/declarations/exp-negativelog--62e54ec7b982febb475c94b0.md) | 32 | `result-track:62e54ec7b982febb475c94b01831ca2bf053ec0d8461861827217ce0ecae59ea` |
| 4 | `theorem` | [negativeLog_eq](../../../../mathematics/Analysis/ComplexAnalysis/PolygonLogCharts.lean/declarations/negativelog-eq--f4c2eac1a37faab2b786242a.md) | 38 | `result-track:f4c2eac1a37faab2b786242a93774807508b3ca809402df7623fb7e94877ee59` |
| 5 | `theorem` | [positive_blend](../../../../mathematics/Analysis/ComplexAnalysis/PolygonLogCharts.lean/declarations/positive-blend--bbe5cd7faffde9c7e10b1f7e.md) | 55 | `result-track:bbe5cd7faffde9c7e10b1f7e7e6bb28d32b5ccad5c29aa57a921379bf0066724` |
| 6 | `def` | [PrincipalEdge](../../../../mathematics/Analysis/ComplexAnalysis/PolygonLogCharts.lean/declarations/principaledge--a8de181f06694e9993d99b8f.md) | 64 | `declaration-track:a8de181f06694e9993d99b8fe7619f21214c0f4fd366dba5c346971830655f62` |
| 7 | `theorem` | [principal_edge_mem](../../../../mathematics/Analysis/ComplexAnalysis/PolygonLogCharts.lean/declarations/principal-edge-mem--1b1d91f386f8dada6f8d5e5c.md) | 67 | `result-track:1b1d91f386f8dada6f8d5e5c2f68730fe9249e705cc7bc225254f1c7e44a4ca2` |
| 8 | `theorem` | [negative_edge_re](../../../../mathematics/Analysis/ComplexAnalysis/PolygonLogCharts.lean/declarations/negative-edge-re--643ad790801c28bd44540256.md) | 85 | `result-track:643ad790801c28bd44540256cbde99b6391c75cf59b0f680ba0c2495a88a9384` |
| 9 | `theorem` | [negative_edge_mem](../../../../mathematics/Analysis/ComplexAnalysis/PolygonLogCharts.lean/declarations/negative-edge-mem--a702761b2f728c75aa81f1ab.md) | 92 | `result-track:a702761b2f728c75aa81f1abda89f4c62786c84da2643f927e119160b16f8e3a` |
| 10 | `theorem` | [continuous_principal_edge](../../../../mathematics/Analysis/ComplexAnalysis/PolygonLogCharts.lean/declarations/continuous-principal-edge--b338abbd8220128ff55b219e.md) | 97 | `result-track:b338abbd8220128ff55b219e88cc65c4102a51e6ef69a80ba8374e0e759510e7` |
| 11 | `theorem` | [continuous_negative_edge](../../../../mathematics/Analysis/ComplexAnalysis/PolygonLogCharts.lean/declarations/continuous-negative-edge--481e9e74033b725df1142666.md) | 102 | `result-track:481e9e74033b725df11426664f81a67c33f5da6accd926186c720f8d5338dfa5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
