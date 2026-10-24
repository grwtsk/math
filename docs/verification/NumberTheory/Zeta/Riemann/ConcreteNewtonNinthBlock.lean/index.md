# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonNinthBlock

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc0c4938a72feb5d45ec39452e0f1bcd40a4b550",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc0c4938a72feb5d45ec39452e0f1bcd40a4b550`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonNinthBlockSeeds`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlockSeeds.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [output](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean/declarations/output--9e47f385cca836ec7c69a2ff.md) | 24 | `declaration-track:9e47f385cca836ec7c69a2ff9924da6d1e89f7218ccce572f28f975264c4a86d` |
| 2 | `theorem` | [endpoint_compute](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean/declarations/endpoint-compute--589d076bd03022532be293f6.md) | 26 | `result-track:589d076bd03022532be293f6b63eb4a38d2cfad36cff23f75a89983f7f78aec8` |
| 3 | `theorem` | [endpoint_enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean/declarations/endpoint-enclosure--ce7f477c5a76b47d598bf438.md) | 31 | `result-track:ce7f477c5a76b47d598bf43846e12d55ff4290ada923a2da776d809df107a810` |
| 4 | `def` | [prefixIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean/declarations/prefixindex--ba995f71c9ca06506413748f.md) | 38 | `declaration-track:ba995f71c9ca06506413748f3bae782b5bde8d4e7c6e756dba1d656884922184` |
| 5 | `theorem` | [base_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean/declarations/base-at-index--704d96e64082c4de28c8fac7.md) | 41 | `result-track:704d96e64082c4de28c8fac799f55fcaaa10308b09b3d6e566aa409f29bdd557` |
| 6 | `theorem` | [rational_base_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean/declarations/rational-base-at-index--22ae37d6a721c2a0b81616ba.md) | 43 | `result-track:22ae37d6a721c2a0b81616ba9c3f24773d3d2166348fde5913aed5c51b9599e4` |
| 7 | `theorem` | [schedule_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean/declarations/schedule-at-index--a9069a82a6357bbd46f154be.md) | 47 | `result-track:a9069a82a6357bbd46f154beb5a92f4095d01b5821812e707a4e8528f76777f4` |
| 8 | `theorem` | [mem_ninth_block](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean/declarations/mem-ninth-block--133eb9be40f119eba763df81.md) | 49 | `result-track:133eb9be40f119eba763df8107e2cd8ef3da468b56a4cce1a98b8fb32c8b8e65` |
| 9 | `theorem` | [index_mem](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean/declarations/index-mem--1a59f7ab6f4d6f186ca97aec.md) | 54 | `result-track:1a59f7ab6f4d6f186ca97aecef53e63f62d83082fd754b019f0eb9f62c6195ce` |
| 10 | `theorem` | [index_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean/declarations/index-cover--9b946a67cc6956bc0671dad9.md) | 60 | `result-track:9b946a67cc6956bc0671dad92d11b4abbb50bf2fffba3376feeec161a5943503` |
| 11 | `theorem` | [ninth_block_of_records](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean/declarations/ninth-block-of-records--486261da3c2fef595148b6b2.md) | 69 | `result-track:486261da3c2fef595148b6b228f2a1b26d647b5f3a34f5775356748e2db8eef7` |
| 12 | `def` | [fill](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean/declarations/fill--12197a42b5f3ba0e45f3c61c.md) | 78 | `declaration-track:12197a42b5f3ba0e45f3c61c4cd102fc9d54eb47f79e397d37abfc496976b83f` |
| 13 | `theorem` | [fill_record](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean/declarations/fill-record--0791992e8e98aac30b0c19f2.md) | 83 | `result-track:0791992e8e98aac30b0c19f2d654cacdf6e2ba81399ab719de0561c6fcd63f4d` |
| 14 | `theorem` | [ninth_block_check](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean/declarations/ninth-block-check--08465936ff57965afea312cf.md) | 91 | `result-track:08465936ff57965afea312cf08904786492220a0aac61f289eb8336b7f1913b4` |
| 15 | `theorem` | [fill_preserves_outside](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean/declarations/fill-preserves-outside--f987930bdda8f1feb72227e9.md) | 96 | `result-track:f987930bdda8f1feb72227e92ccd2cec2a8b2e25d09960a18bb09c1257a2f519` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
