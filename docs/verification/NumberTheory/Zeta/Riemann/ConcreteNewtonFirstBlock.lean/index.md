# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFirstBlock

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42533b891a33d952c2d500b68d84e168427e2864",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlock.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlock.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlock.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42533b891a33d952c2d500b68d84e168427e2864`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlock.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlock.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFirstBlockSeeds`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlockSeeds.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [output](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlock.lean/declarations/output--306b6a08c7e34dfa0bee447d.md) | 29 | `declaration-track:306b6a08c7e34dfa0bee447dab56fa1ac4c8726177bdcc48d10fe8bd0789d805` |
| 2 | `theorem` | [endpoint_compute](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlock.lean/declarations/endpoint-compute--f8733ef0233e1c56e8ed49dc.md) | 32 | `result-track:f8733ef0233e1c56e8ed49dc80674926ae11a704db068e09fe941aff6abcd53c` |
| 3 | `theorem` | [endpoint_enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlock.lean/declarations/endpoint-enclosure--da525bc1efb03810d47b8ebc.md) | 38 | `result-track:da525bc1efb03810d47b8ebc265f2dff9a0a5872edeac6dd59b251eb75da7a2c` |
| 4 | `theorem` | [mem_first_block](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlock.lean/declarations/mem-first-block--599c966a8589db8db0d7aec6.md) | 46 | `result-track:599c966a8589db8db0d7aec6f6e0186dc31f5fa280f6627689cb7ae8efdd20d2` |
| 5 | `def` | [fill](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlock.lean/declarations/fill--e0539fef718469e8c73ddadc.md) | 54 | `declaration-track:e0539fef718469e8c73ddadc968b0049b1cbd48c8e29a513c6c932e54e96fc92` |
| 6 | `theorem` | [first_block_check](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlock.lean/declarations/first-block-check--b7166a6e401d1ced807d939e.md) | 59 | `result-track:b7166a6e401d1ced807d939e99a5f64effa167af697b085cd2b612914519b4d6` |
| 7 | `theorem` | [first_block_of_records](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlock.lean/declarations/first-block-of-records--ac388cd55fc46be7ac560f73.md) | 71 | `result-track:ac388cd55fc46be7ac560f730d63d2109f9bade0c5068a7a46390ce60b419d70` |
| 8 | `theorem` | [source_of_remaining](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlock.lean/declarations/source-of-remaining--4a378f9a8605bebd69b56139.md) | 85 | `result-track:4a378f9a8605bebd69b56139e68e1a926ada14a9ad4bfe0d0c04d24f8a09918a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
