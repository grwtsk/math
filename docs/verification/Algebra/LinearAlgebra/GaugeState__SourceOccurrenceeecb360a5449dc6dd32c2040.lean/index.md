# Verification target: GRWTSK.Algebra.LinearAlgebra.GaugeState

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b362be50e819aee7d1195881c2d07dd21098938",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GaugeState.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/GaugeState__SourceOccurrenceeecb360a5449dc6dd32c2040.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/GaugeState__SourceOccurrenceeecb360a5449dc6dd32c2040.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b362be50e819aee7d1195881c2d07dd21098938`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GaugeState.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GaugeState.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.OrderedProductGauge`](../../../../mathematics/Algebra/OrderedProductGauge.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Algebra.LinearAlgebra.CocycleProduct`](../../../../mathematics/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceb5bffab815bf751db331a991.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaugeState](../../../../mathematics/Algebra/LinearAlgebra/GaugeState__SourceOccurrenceeecb360a5449dc6dd32c2040.lean/declarations/gaugestate--ace315f185865237f064f7e2.md) | 53 | `declaration-track:ace315f185865237f064f7e2bc67e30f36a49a9d877f7816a7a1a73447f25923` |
| 2 | `theorem` | [gaugeState_step_iff](../../../../mathematics/Algebra/LinearAlgebra/GaugeState__SourceOccurrenceeecb360a5449dc6dd32c2040.lean/declarations/gaugestate-step-iff--804cba8ba7cc73d40c38678f.md) | 60 | `result-track:804cba8ba7cc73d40c38678f03ad6a1a025f0f1c227035690d087e378765e791` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
