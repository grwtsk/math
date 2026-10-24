# Verification target: GRWTSK.Analysis.Operator.HolomorphicLineGaugePort

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4325e920fc1439dc74e55ade57940e4012df800f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/HolomorphicLineGaugePort.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineGaugePort.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineGaugePort.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4325e920fc1439dc74e55ade57940e4012df800f`.

Source path: `GRWTSK/Analysis/Operator/HolomorphicLineGaugePort.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/HolomorphicLineGaugePort.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Operator.HolomorphicLinePort`](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLinePort.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicLineGaugeTopology`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transport](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineGaugePort.lean/declarations/transport--25e7453ac91be0a2873a315d.md) | 25 | `declaration-track:25e7453ac91be0a2873a315ddfcfecc8297a8560610ed1ccf96e534961949153` |
| 2 | `theorem` | [transport_apply](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineGaugePort.lean/declarations/transport-apply--2d432fa744f547a01f60f748.md) | 42 | `result-track:2d432fa744f547a01f60f748f3e86c77908a66c5d4d4df7ef817ed57e1d97251` |
| 3 | `theorem` | [descend_intertwines](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineGaugePort.lean/declarations/descend-intertwines--582d9af56cbfea5e07c5fb12.md) | 48 | `result-track:582d9af56cbfea5e07c5fb121de3396ba8cb7c6a2e73f675386d43e0571e4ba9` |
| 4 | `theorem` | [descend_conjugacy](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineGaugePort.lean/declarations/descend-conjugacy--fd1f3b41597836b3a396c421.md) | 61 | `result-track:fd1f3b41597836b3a396c4213b69183ec3e8b30409b166502cee861bccc795dc` |
| 5 | `theorem` | [transport_comp_descend](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineGaugePort.lean/declarations/transport-comp-descend--b8ee527517f57bfc3290372e.md) | 71 | `result-track:b8ee527517f57bfc3290372e756e91998537e621ecfd17dcbd8759403c95515d` |
| 6 | `theorem` | [transport_preservesHolomorphy](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineGaugePort.lean/declarations/transport-preservesholomorphy--a2d603e156e02f7d3e0318ab.md) | 91 | `result-track:a2d603e156e02f7d3e0318abd4f34b6d83ea79d494c73751b09221c6b902a2cd` |
| 7 | `theorem` | [mapSection_naturality](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineGaugePort.lean/declarations/mapsection-naturality--19d47054dba2269c65c16fdd.md) | 101 | `result-track:19d47054dba2269c65c16fdd2c5bc635b475e78347edceb6e1dd274b4cbe5fc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
