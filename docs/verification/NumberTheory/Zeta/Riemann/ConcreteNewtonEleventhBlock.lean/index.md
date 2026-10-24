# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonEleventhBlock

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "daedec53c9f5c4b502caea7283f87ca2077109f7",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlock.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlock.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlock.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `daedec53c9f5c4b502caea7283f87ca2077109f7`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlock.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlock.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonEleventhBlockSeeds`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlockSeeds.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [output](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlock.lean/declarations/output--c171276b973735a485a96d63.md) | 24 | `declaration-track:c171276b973735a485a96d63e3b90f363665b39908af07fdfdb3fa09d5fd870e` |
| 2 | `theorem` | [endpoint_compute](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlock.lean/declarations/endpoint-compute--17b9c8ef2f2c9230eb7b6c13.md) | 26 | `result-track:17b9c8ef2f2c9230eb7b6c13f4e325b0bc8e9f2996af190e465cabcf9b827e2a` |
| 3 | `theorem` | [endpoint_enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlock.lean/declarations/endpoint-enclosure--c79128585d976030b67011a6.md) | 31 | `result-track:c79128585d976030b67011a69b3148d5585ca912885520c0e9f6d39cd590bceb` |
| 4 | `def` | [prefixIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlock.lean/declarations/prefixindex--eac51973724fc1c56ccc64e9.md) | 38 | `declaration-track:eac51973724fc1c56ccc64e94d9cd78a9b63e070c87d55fc9755aa1175616b87` |
| 5 | `theorem` | [base_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlock.lean/declarations/base-at-index--fefc891b82fc29078abf7bb3.md) | 41 | `result-track:fefc891b82fc29078abf7bb346a64ebd8e0576d22c32171324198475321639f2` |
| 6 | `theorem` | [rational_base_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlock.lean/declarations/rational-base-at-index--629542f6387aea2dce60bf4e.md) | 43 | `result-track:629542f6387aea2dce60bf4e9d3d9d81e5dcc7c5d75fa6961e286cc61a2d75be` |
| 7 | `theorem` | [schedule_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlock.lean/declarations/schedule-at-index--0dd0a187a8d1e608bad26723.md) | 47 | `result-track:0dd0a187a8d1e608bad267230a2d81bdd5c96bc08eefc4adf3a26a5c4da74f42` |
| 8 | `theorem` | [mem_eleventh_block](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlock.lean/declarations/mem-eleventh-block--1c0b4054b3718999ff9217db.md) | 49 | `result-track:1c0b4054b3718999ff9217dba12edc3515ea2d561b7fba457ea0703c9fef6d8f` |
| 9 | `theorem` | [index_mem](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlock.lean/declarations/index-mem--4b4972f961eae9012ad09a34.md) | 54 | `result-track:4b4972f961eae9012ad09a340e6813e3385ffe9dbb9e5018a48c194e7917da4c` |
| 10 | `theorem` | [index_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlock.lean/declarations/index-cover--38918d3af45017c6fe7e8c1d.md) | 60 | `result-track:38918d3af45017c6fe7e8c1d1c9f4fad0765d69e1c1b6ec435c6af6d25df7bca` |
| 11 | `theorem` | [eleventh_block_of_records](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlock.lean/declarations/eleventh-block-of-records--3aaf27e399d129221e898bb3.md) | 69 | `result-track:3aaf27e399d129221e898bb36a6328c16191a1d2035ec917d85b66b8c5a92581` |
| 12 | `def` | [fill](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlock.lean/declarations/fill--a3cd7bd683db9bde6f2b62d0.md) | 78 | `declaration-track:a3cd7bd683db9bde6f2b62d021e99e4f622db9853c5384c296135776788c2d6a` |
| 13 | `theorem` | [fill_record](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlock.lean/declarations/fill-record--47b6f4752b0f1454e76a70db.md) | 83 | `result-track:47b6f4752b0f1454e76a70dbc74db78c7d0b6cd48da3b7386ed4ba71962e9582` |
| 14 | `theorem` | [eleventh_block_check](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlock.lean/declarations/eleventh-block-check--cd3fe4d5b07deea7a9949add.md) | 91 | `result-track:cd3fe4d5b07deea7a9949add7abcb361d20f3c442917a72a9aa170836b68baff` |
| 15 | `theorem` | [fill_preserves_outside](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlock.lean/declarations/fill-preserves-outside--eed41d9f83ac832112e0cb7f.md) | 96 | `result-track:eed41d9f83ac832112e0cb7fb7db600b37378a28e32a9c55cb5c850125f01261` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
