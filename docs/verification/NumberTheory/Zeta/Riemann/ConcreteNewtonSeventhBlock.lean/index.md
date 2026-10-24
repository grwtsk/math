# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSeventhBlock

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd66dd530d7c1c7955905cb3c938385787f1e807",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd66dd530d7c1c7955905cb3c938385787f1e807`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSeventhBlockSeeds`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlockSeeds.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [output](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean/declarations/output--b71a82c62b4b51cb0b282e6d.md) | 24 | `declaration-track:b71a82c62b4b51cb0b282e6d557cc055690df133232ce08bb3600ee71594cf39` |
| 2 | `theorem` | [endpoint_compute](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean/declarations/endpoint-compute--fc4e1f863feb0045ce03129e.md) | 26 | `result-track:fc4e1f863feb0045ce03129efe064ced879b167f4b3d113c1b25d86f84804d82` |
| 3 | `theorem` | [endpoint_enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean/declarations/endpoint-enclosure--dd563c28dde033a0f58765c9.md) | 31 | `result-track:dd563c28dde033a0f58765c95e5e6897f3062dad03ffc883b59117cb85dad493` |
| 4 | `def` | [prefixIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean/declarations/prefixindex--7ee7d82213bd33c863ad3769.md) | 38 | `declaration-track:7ee7d82213bd33c863ad37699175c2d7754d5e398d70f8bf74da1b5bed9ff09d` |
| 5 | `theorem` | [base_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean/declarations/base-at-index--27f0b0147c37222962ebb406.md) | 41 | `result-track:27f0b0147c37222962ebb406534ad0e3a0b7d985b5c204d5bac47b081edfeef7` |
| 6 | `theorem` | [rational_base_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean/declarations/rational-base-at-index--14725c5841d0b6a4c6dad2e0.md) | 43 | `result-track:14725c5841d0b6a4c6dad2e03acb6d7d6d19cc69408b5c5cf008ab9b7b3733d1` |
| 7 | `theorem` | [schedule_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean/declarations/schedule-at-index--c5f6277a87ce9c5ab0f329f6.md) | 47 | `result-track:c5f6277a87ce9c5ab0f329f6d8667b83d7c7c5dc212409c02433566d69350323` |
| 8 | `theorem` | [mem_seventh_block](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean/declarations/mem-seventh-block--d24c049ee60da03f5f4bf2c2.md) | 49 | `result-track:d24c049ee60da03f5f4bf2c259926c55fecd9845e25a20b39ecec0aa451b924a` |
| 9 | `theorem` | [index_mem](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean/declarations/index-mem--86f4d7f9c18796a91a4360c2.md) | 54 | `result-track:86f4d7f9c18796a91a4360c267ec6434b1406b3ae63b821039f04e22d498f39c` |
| 10 | `theorem` | [index_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean/declarations/index-cover--17fc1f4c71e0e3ddec53bf28.md) | 60 | `result-track:17fc1f4c71e0e3ddec53bf288dd79fc4e71e678f9d83549ddb38ab53e739dded` |
| 11 | `theorem` | [seventh_block_of_records](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean/declarations/seventh-block-of-records--efd99bb4c6c19bc137d7e395.md) | 69 | `result-track:efd99bb4c6c19bc137d7e395f5a2fbb934791531e76efd5a6529169c3c796f1e` |
| 12 | `def` | [fill](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean/declarations/fill--446edfd24656755a4c38b4fe.md) | 78 | `declaration-track:446edfd24656755a4c38b4fe352e68b5df6393b89372ca4943abebb8d35ef9f4` |
| 13 | `theorem` | [fill_record](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean/declarations/fill-record--d6a753cf92328286bc58dd01.md) | 83 | `result-track:d6a753cf92328286bc58dd010c1327591a3dfab0e36b8a5cac8560e61ccf74d0` |
| 14 | `theorem` | [seventh_block_check](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean/declarations/seventh-block-check--a4161bbeb8d41349a912ff38.md) | 91 | `result-track:a4161bbeb8d41349a912ff380f27bb7d1937e1cea9a5874139494976eebc4d67` |
| 15 | `theorem` | [fill_preserves_outside](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean/declarations/fill-preserves-outside--cfd6d1901c2f29feb36721ef.md) | 96 | `result-track:cfd6d1901c2f29feb36721ef1b5f81f6b5ee2b8eba6aa8c0e84d2f78535c411d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
