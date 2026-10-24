# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTenthBlock

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bdb4b3932f9f516b510bded3a824cfcf8cf9528",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonTenthBlock.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTenthBlock.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTenthBlock.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bdb4b3932f9f516b510bded3a824cfcf8cf9528`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonTenthBlock.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonTenthBlock.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTenthBlockSeeds`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTenthBlockSeeds.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [output](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTenthBlock.lean/declarations/output--db21550e8222f7f980de1a8c.md) | 24 | `declaration-track:db21550e8222f7f980de1a8c7b6efd92d2c0e83b1283b24890fd44539da71dab` |
| 2 | `theorem` | [endpoint_compute](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTenthBlock.lean/declarations/endpoint-compute--7096197b32bd0dce7871ce33.md) | 26 | `result-track:7096197b32bd0dce7871ce33c7255665cdec094e3c982ceb78c6e73d462d02ee` |
| 3 | `theorem` | [endpoint_enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTenthBlock.lean/declarations/endpoint-enclosure--7a35bde1b3056970d31df6e6.md) | 31 | `result-track:7a35bde1b3056970d31df6e6ebf93d2696a4d65eaba3dd5a52b587b8adb90a01` |
| 4 | `def` | [prefixIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTenthBlock.lean/declarations/prefixindex--2b802fc6be0297ae54b7630d.md) | 38 | `declaration-track:2b802fc6be0297ae54b7630d202ce72b86bb3c749f2331c96db61fdf77708928` |
| 5 | `theorem` | [base_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTenthBlock.lean/declarations/base-at-index--240ff39b3e878b3657f4ddc2.md) | 41 | `result-track:240ff39b3e878b3657f4ddc20eb058926692f1cc6729e14c16b75556aeafc75a` |
| 6 | `theorem` | [rational_base_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTenthBlock.lean/declarations/rational-base-at-index--e72fc8d3a38ee8ada8bdd872.md) | 43 | `result-track:e72fc8d3a38ee8ada8bdd872d0a29ac98e2df5f920f9a57c7dd93d6f8dae3e61` |
| 7 | `theorem` | [schedule_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTenthBlock.lean/declarations/schedule-at-index--0e474712ed01ef9d0766d8f1.md) | 47 | `result-track:0e474712ed01ef9d0766d8f19cc1190b2a33dc11a9aadb22d71d57d3f25f884d` |
| 8 | `theorem` | [mem_tenth_block](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTenthBlock.lean/declarations/mem-tenth-block--fadc683250e7b46ff823434e.md) | 49 | `result-track:fadc683250e7b46ff823434ee5c4d3c81b735813d5e3f2d23b69b1892d37c752` |
| 9 | `theorem` | [index_mem](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTenthBlock.lean/declarations/index-mem--70503d6d7963c58ad82457e6.md) | 54 | `result-track:70503d6d7963c58ad82457e6303cdddf31302c1ebcc523fa2c80365975918e34` |
| 10 | `theorem` | [index_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTenthBlock.lean/declarations/index-cover--5ab48d8bb1f6e2a63c2f8baa.md) | 60 | `result-track:5ab48d8bb1f6e2a63c2f8baa719f7ab6b3bce1281329354b7e8a14eaa10deca0` |
| 11 | `theorem` | [tenth_block_of_records](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTenthBlock.lean/declarations/tenth-block-of-records--a0131f1422c6de9de070a2e4.md) | 69 | `result-track:a0131f1422c6de9de070a2e4deba819ee97e0bcd0948f0ae9ed0cce48cf892c5` |
| 12 | `def` | [fill](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTenthBlock.lean/declarations/fill--a56096fc152601c8be22d0e6.md) | 78 | `declaration-track:a56096fc152601c8be22d0e6989d84e22bba4647eef2e4762318de1947754713` |
| 13 | `theorem` | [fill_record](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTenthBlock.lean/declarations/fill-record--014e07b8ab72ee332eaacf70.md) | 83 | `result-track:014e07b8ab72ee332eaacf70af74b1a822e1f7086f86dd1d968a3dc521f928f4` |
| 14 | `theorem` | [tenth_block_check](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTenthBlock.lean/declarations/tenth-block-check--dc23522de0e9b6ed83056564.md) | 91 | `result-track:dc23522de0e9b6ed830565649a228e171e760963c51c21522079d431cc3c3b2e` |
| 15 | `theorem` | [fill_preserves_outside](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTenthBlock.lean/declarations/fill-preserves-outside--804d3e7b2f6d5841500231f6.md) | 96 | `result-track:804d3e7b2f6d5841500231f6101f2b7f1f059d7e07665560cdaef2c7ed950e27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
