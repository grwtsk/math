# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTwelfthBlock

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12e8174feb340e3c907e8d58c7e1122c6a19441d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonTwelfthBlock.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTwelfthBlock.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTwelfthBlock.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12e8174feb340e3c907e8d58c7e1122c6a19441d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonTwelfthBlock.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonTwelfthBlock.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTwelfthBlockSeeds`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTwelfthBlockSeeds.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [output](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTwelfthBlock.lean/declarations/output--92b6706e2c5ca46165fee68b.md) | 24 | `declaration-track:92b6706e2c5ca46165fee68ba914b9c2a14ef6eeef8c9feae7e20d36d01f3ea1` |
| 2 | `theorem` | [endpoint_compute](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTwelfthBlock.lean/declarations/endpoint-compute--996b30cc7438f95be725dd43.md) | 26 | `result-track:996b30cc7438f95be725dd434b0af2534ce9696387ce186e20f1bd269d4306a7` |
| 3 | `theorem` | [endpoint_enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTwelfthBlock.lean/declarations/endpoint-enclosure--c33b54c4747fae7affbbc878.md) | 31 | `result-track:c33b54c4747fae7affbbc878493c08a34d2778eddf5b584a6c269917101a522d` |
| 4 | `def` | [prefixIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTwelfthBlock.lean/declarations/prefixindex--126938c965f9216b47ced619.md) | 38 | `declaration-track:126938c965f9216b47ced619e101b1972217ef076636c2b115bfca622cee8b43` |
| 5 | `theorem` | [base_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTwelfthBlock.lean/declarations/base-at-index--4ca43048bc62c486bc57194e.md) | 41 | `result-track:4ca43048bc62c486bc57194eb528b9ff756a1df7f780ff49a30cf07d113f619e` |
| 6 | `theorem` | [rational_base_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTwelfthBlock.lean/declarations/rational-base-at-index--88816ad540b97ef8b31107d0.md) | 43 | `result-track:88816ad540b97ef8b31107d015773f3c09fba21020cfaa979eacc857e22b23af` |
| 7 | `theorem` | [schedule_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTwelfthBlock.lean/declarations/schedule-at-index--394ad4ec6086b4003e29eac5.md) | 47 | `result-track:394ad4ec6086b4003e29eac531763cc79a5be11890f0e3aa797bc543cdc6645c` |
| 8 | `theorem` | [mem_twelfth_block](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTwelfthBlock.lean/declarations/mem-twelfth-block--661784bac36430ea14b07864.md) | 49 | `result-track:661784bac36430ea14b07864d39d5017f2d782b1eae386b5e8faa5c360baca30` |
| 9 | `theorem` | [index_mem](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTwelfthBlock.lean/declarations/index-mem--88936b74b7f77e1ecf5c6c87.md) | 54 | `result-track:88936b74b7f77e1ecf5c6c873365711420ca5806fd5cc33a0b0b519225be227d` |
| 10 | `theorem` | [index_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTwelfthBlock.lean/declarations/index-cover--f0c2b41528583f5c986b03c7.md) | 60 | `result-track:f0c2b41528583f5c986b03c7da873e67e262a077c63675d109505e8d40b085a4` |
| 11 | `theorem` | [twelfth_block_of_records](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTwelfthBlock.lean/declarations/twelfth-block-of-records--ecbb1cea5f6e8228492a3155.md) | 69 | `result-track:ecbb1cea5f6e8228492a3155da795c82814388f7964f7bae08257e88da550209` |
| 12 | `def` | [fill](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTwelfthBlock.lean/declarations/fill--15bdd76d27609a076159ccbc.md) | 78 | `declaration-track:15bdd76d27609a076159ccbced9c1799042d543aefbbd8719c1bac12077c691c` |
| 13 | `theorem` | [fill_record](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTwelfthBlock.lean/declarations/fill-record--7ce15a00aad2f29051b86b10.md) | 83 | `result-track:7ce15a00aad2f29051b86b108e36ab50e72483edb0a48971790f12ddda2a2320` |
| 14 | `theorem` | [twelfth_block_check](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTwelfthBlock.lean/declarations/twelfth-block-check--4cf9fabcf16041672af4666d.md) | 91 | `result-track:4cf9fabcf16041672af4666d9d50960a364025b2bb06d98fa17f843246544a7a` |
| 15 | `theorem` | [fill_preserves_outside](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTwelfthBlock.lean/declarations/fill-preserves-outside--108556fdd473f36fa6b6e5d9.md) | 96 | `result-track:108556fdd473f36fa6b6e5d9bfd8dd9486d7e584151e0c34c777cb5adaca1c73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
