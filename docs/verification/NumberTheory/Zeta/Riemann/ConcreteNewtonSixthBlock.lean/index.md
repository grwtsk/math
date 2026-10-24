# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSixthBlock

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3aa7bba4e8579824658d271b753a4f03a6ae05dc",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlock.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlock.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlock.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3aa7bba4e8579824658d271b753a4f03a6ae05dc`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlock.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlock.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSixthBlockSeeds`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlockSeeds.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [output](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlock.lean/declarations/output--6af7c1ff40217bc817a6bb78.md) | 24 | `declaration-track:6af7c1ff40217bc817a6bb789d8c24b542eaa3c5de860285628affbc6efd7e64` |
| 2 | `theorem` | [endpoint_compute](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlock.lean/declarations/endpoint-compute--2f85dd26c6c34a25a68b2c5e.md) | 26 | `result-track:2f85dd26c6c34a25a68b2c5ecb65499470928b96ae807fcde7b82db0fa3c871a` |
| 3 | `theorem` | [endpoint_enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlock.lean/declarations/endpoint-enclosure--ed68c9af6a500d3040255790.md) | 31 | `result-track:ed68c9af6a500d304025579028c1c751681e2103a2b91af4847a8d4140ed7d75` |
| 4 | `def` | [prefixIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlock.lean/declarations/prefixindex--6a584cc2f68887759da27503.md) | 38 | `declaration-track:6a584cc2f68887759da27503596cfd8251d50ae9606783daa93d77fca31d7428` |
| 5 | `theorem` | [base_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlock.lean/declarations/base-at-index--3488440a19ed637a41fc431a.md) | 41 | `result-track:3488440a19ed637a41fc431ab6ebf529d973d1f53bd0e7bf4dd52765f465ea77` |
| 6 | `theorem` | [rational_base_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlock.lean/declarations/rational-base-at-index--ffbc8e86984d46fbf3fad735.md) | 43 | `result-track:ffbc8e86984d46fbf3fad735922834f4bed249504d11154d22861c080dbbc715` |
| 7 | `theorem` | [schedule_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlock.lean/declarations/schedule-at-index--3c854aa7cc265db9704da639.md) | 47 | `result-track:3c854aa7cc265db9704da6393d8a7f92e900ab6513ae3d59f59469bf5692f705` |
| 8 | `theorem` | [mem_sixth_block](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlock.lean/declarations/mem-sixth-block--88d678e57ecb4121d4f4caf7.md) | 49 | `result-track:88d678e57ecb4121d4f4caf75515d91eed72e29a39e6474477ebffe86cc41922` |
| 9 | `theorem` | [index_mem](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlock.lean/declarations/index-mem--1fba793f78d216758b7b0fab.md) | 54 | `result-track:1fba793f78d216758b7b0fab86407c8b6f9754a1cadfe3809a0542d0dd65560e` |
| 10 | `theorem` | [index_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlock.lean/declarations/index-cover--5837f298bf3044c133f7d997.md) | 60 | `result-track:5837f298bf3044c133f7d997d73c08c32803aa2b78acef83aaa5545c5276aad6` |
| 11 | `theorem` | [sixth_block_of_records](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlock.lean/declarations/sixth-block-of-records--4bd0151fea7c6a9c13941d6c.md) | 69 | `result-track:4bd0151fea7c6a9c13941d6c668c51ed9ae459e3b7d4905b7d0d936ac0f653ec` |
| 12 | `def` | [fill](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlock.lean/declarations/fill--99f731ecc367f005ea7d8e95.md) | 78 | `declaration-track:99f731ecc367f005ea7d8e951e43eeba3e4b247b2c9c4ab0d895a7a046fdc7fd` |
| 13 | `theorem` | [fill_record](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlock.lean/declarations/fill-record--44aacd5a5de804ad10d7b487.md) | 83 | `result-track:44aacd5a5de804ad10d7b487f38c7e3cebeb6539de89974105d18d4b4af3ed50` |
| 14 | `theorem` | [sixth_block_check](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlock.lean/declarations/sixth-block-check--4e6e5538e0d0867a8bda0ab3.md) | 91 | `result-track:4e6e5538e0d0867a8bda0ab3cd62c430a036036fffb8c52646d17ad85c31cb75` |
| 15 | `theorem` | [fill_preserves_outside](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlock.lean/declarations/fill-preserves-outside--e8b2f380cf02a21efd6ac24e.md) | 96 | `result-track:e8b2f380cf02a21efd6ac24ef6391a8c92a977c2eea89eb17131c59af1a7ce68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
