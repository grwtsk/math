# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFourthBlock

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a891dd4b435576710f221d6bc6750a1e6c9f5e3",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlock.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlock.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlock.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a891dd4b435576710f221d6bc6750a1e6c9f5e3`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlock.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlock.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFourthBlockSeeds`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlockSeeds.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [output](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlock.lean/declarations/output--e525124ebd15dc29a89611f4.md) | 15 | `declaration-track:e525124ebd15dc29a89611f40c7e2061bd33a607debaf15f08faae198ddff698` |
| 2 | `theorem` | [endpoint_compute](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlock.lean/declarations/endpoint-compute--b68e22f610a687782d8eeb60.md) | 17 | `result-track:b68e22f610a687782d8eeb60396f617bf8c424ad4c61b2c051041b4650903a52` |
| 3 | `theorem` | [endpoint_enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlock.lean/declarations/endpoint-enclosure--c44c4b9b1ba1b86c2b5c8dd5.md) | 22 | `result-track:c44c4b9b1ba1b86c2b5c8dd531566d0a2ea886655efc1263a789f8655a267c32` |
| 4 | `def` | [prefixIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlock.lean/declarations/prefixindex--c00acd020d2feeb2ed3fcd92.md) | 29 | `declaration-track:c00acd020d2feeb2ed3fcd92aa536bab1fe2904645b6f8935897ccf73b0d59d6` |
| 5 | `theorem` | [base_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlock.lean/declarations/base-at-index--0da4ff06ea6048e7b7300d14.md) | 32 | `result-track:0da4ff06ea6048e7b7300d147e3f527e3d3e41190bd2c05d81d695d64fd76652` |
| 6 | `theorem` | [rational_base_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlock.lean/declarations/rational-base-at-index--7144ddc5436094cd9fbce134.md) | 34 | `result-track:7144ddc5436094cd9fbce134397bd5db3a7ac4ce458bcd523ab45407fdcf1070` |
| 7 | `theorem` | [schedule_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlock.lean/declarations/schedule-at-index--cd9d1e00ad5d0f58b99da464.md) | 38 | `result-track:cd9d1e00ad5d0f58b99da464ce3f3bd50b8aafcfb2ad496e217ba31c94dd09c9` |
| 8 | `theorem` | [mem_fourth_block](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlock.lean/declarations/mem-fourth-block--a21f1bc4ed20204e6679a999.md) | 40 | `result-track:a21f1bc4ed20204e6679a9995dd7dfa168858415d1ba4fcb34ada114c8cd01d8` |
| 9 | `theorem` | [index_mem](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlock.lean/declarations/index-mem--b694c3d8cca080c41a263c6d.md) | 45 | `result-track:b694c3d8cca080c41a263c6def297928d701ef9b84aa542bf23cfe9c3d81bf49` |
| 10 | `theorem` | [index_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlock.lean/declarations/index-cover--3979611bc5fd2662db535dd2.md) | 51 | `result-track:3979611bc5fd2662db535dd26a384e93917015a3fc3f5a5d68d3d31e2df02b3f` |
| 11 | `theorem` | [fourth_block_of_records](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlock.lean/declarations/fourth-block-of-records--967a68a0dd7f7bcd24621c82.md) | 60 | `result-track:967a68a0dd7f7bcd24621c82433fcd6325a51b202ecf3b58e04b456a05964130` |
| 12 | `def` | [fill](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlock.lean/declarations/fill--932f910fe0f8b890715bf5b7.md) | 69 | `declaration-track:932f910fe0f8b890715bf5b756c3e250dd0fa7f2b8d493d6bba84756e7de72f7` |
| 13 | `theorem` | [fill_record](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlock.lean/declarations/fill-record--7ba79f0f090f7cffdf38ab49.md) | 74 | `result-track:7ba79f0f090f7cffdf38ab499c08ac7ae831d485017c62c4b596b261c8a195ac` |
| 14 | `theorem` | [fourth_block_check](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlock.lean/declarations/fourth-block-check--ac285bff91d190b6b5828be1.md) | 82 | `result-track:ac285bff91d190b6b5828be1afccd8ca6c77d827811adce82ba28e284904f551` |
| 15 | `theorem` | [fill_preserves_outside](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlock.lean/declarations/fill-preserves-outside--4858b0174eae2239c0282ba2.md) | 87 | `result-track:4858b0174eae2239c0282ba2f6b0940e74ce44653f3ee524e47a59ba796696f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
