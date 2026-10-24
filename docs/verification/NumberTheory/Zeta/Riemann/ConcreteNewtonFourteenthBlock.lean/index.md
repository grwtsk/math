# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFourteenthBlock

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15e46741bc3fa4c5af1cb4ffe372386190b69e31",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenthBlock.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenthBlock.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenthBlock.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15e46741bc3fa4c5af1cb4ffe372386190b69e31`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenthBlock.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenthBlock.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFourteenthBlockSeeds`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenthBlockSeeds.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [output](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenthBlock.lean/declarations/output--05c90fe0a8ddacf8bf07768e.md) | 24 | `declaration-track:05c90fe0a8ddacf8bf07768eeab6ed2b84626a16b14cbab1e455d128e7af0e6e` |
| 2 | `theorem` | [endpoint_compute](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenthBlock.lean/declarations/endpoint-compute--dddac9ae9d515b9b660272b4.md) | 26 | `result-track:dddac9ae9d515b9b660272b4de05fc57277a977ebacfa3af7441ba549da09a8b` |
| 3 | `theorem` | [endpoint_enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenthBlock.lean/declarations/endpoint-enclosure--b314cd42050f169fe6224c9d.md) | 31 | `result-track:b314cd42050f169fe6224c9d8c4ade6a282a78b1833cd9a47227a627f60469c6` |
| 4 | `def` | [prefixIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenthBlock.lean/declarations/prefixindex--fca1c9c83fbca58ff863962a.md) | 38 | `declaration-track:fca1c9c83fbca58ff863962a7691d97b16571a2ecddd10933c2a678d5bead658` |
| 5 | `theorem` | [base_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenthBlock.lean/declarations/base-at-index--341fb417c7275082cb993f8c.md) | 41 | `result-track:341fb417c7275082cb993f8c5e3c7872213c6a2135aa7a3427ee3478adcf8a4b` |
| 6 | `theorem` | [rational_base_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenthBlock.lean/declarations/rational-base-at-index--55ec3abcfa59ecdf5960e62c.md) | 43 | `result-track:55ec3abcfa59ecdf5960e62c46e430212eb8960f24914f7f656cb9c51a25bc41` |
| 7 | `theorem` | [schedule_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenthBlock.lean/declarations/schedule-at-index--8ee27daffcb5d38405828039.md) | 47 | `result-track:8ee27daffcb5d38405828039b69c1bd1efb2ccf367fb02b5f0f0e7a9decf2618` |
| 8 | `theorem` | [mem_fourteenth_block](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenthBlock.lean/declarations/mem-fourteenth-block--167111dbd9c8fb4119e4c340.md) | 49 | `result-track:167111dbd9c8fb4119e4c34064dab9ebf362d1a2473dcdf865a456e4ec8136ac` |
| 9 | `theorem` | [index_mem](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenthBlock.lean/declarations/index-mem--f7661cbf514d4ce9b1135de9.md) | 54 | `result-track:f7661cbf514d4ce9b1135de9b9f2f9c02d6ef5240ea556a6ec75bef090080655` |
| 10 | `theorem` | [index_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenthBlock.lean/declarations/index-cover--0e90c90f407314c576c1e525.md) | 60 | `result-track:0e90c90f407314c576c1e525e5dc5920abb7ad5c48864b55a8f249e5b0415349` |
| 11 | `theorem` | [fourteenth_block_of_records](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenthBlock.lean/declarations/fourteenth-block-of-records--978ccf38b2c247b7761d5be1.md) | 69 | `result-track:978ccf38b2c247b7761d5be1e0a6e58f8fef5317e45f196802f2d0fb4948d0aa` |
| 12 | `def` | [fill](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenthBlock.lean/declarations/fill--21c183647653e96dfe215653.md) | 78 | `declaration-track:21c183647653e96dfe2156534f329a06af5868fb7411a844f05f845e9fbe2f98` |
| 13 | `theorem` | [fill_record](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenthBlock.lean/declarations/fill-record--71266daaa6d6aeea0e807862.md) | 83 | `result-track:71266daaa6d6aeea0e807862c1ed0459502a10c34109a27915444a549e396dce` |
| 14 | `theorem` | [fourteenth_block_check](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenthBlock.lean/declarations/fourteenth-block-check--b83a5c6fd01161598a3086d8.md) | 91 | `result-track:b83a5c6fd01161598a3086d834c54ac05f3181dd297b8924d863b9f4183eb2d7` |
| 15 | `theorem` | [fill_preserves_outside](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenthBlock.lean/declarations/fill-preserves-outside--2cd75d6e0d3afcb0ad6bddfd.md) | 96 | `result-track:2cd75d6e0d3afcb0ad6bddfdaf97d5aadc925da8258f52d7dc17c1f88bb217ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
