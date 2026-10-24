# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechIntegralGauge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "155bc57df48d9c6c7ff4ca47fed3ce6556858bcd",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechIntegralGauge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechIntegralGauge.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechIntegralGauge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `155bc57df48d9c6c7ff4ca47fed3ce6556858bcd`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechIntegralGauge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechIntegralGauge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.ThreeCellIntegralMinimum`](../../../../../mathematics/Algebra/LinearAlgebra/ThreeCellIntegralMinimum.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyArchimedeanRealization`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechGaugeMetric`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/index.md) — import line 12; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IntegerCell](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechIntegralGauge.lean/declarations/integercell--da7e4645797bba84c0cf6299.md) | 26 | `declaration-track:da7e4645797bba84c0cf6299efaed1e0e7b88a3e5990778ada64ef074da65209` |
| 2 | `abbrev` | [RealCell](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechIntegralGauge.lean/declarations/realcell--75a3c350e8e68a80ee72d368.md) | 27 | `declaration-track:75a3c350e8e68a80ee72d368790044ce86e60a6aceff3c08b0259fe54683818e` |
| 3 | `def` | [realize](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechIntegralGauge.lean/declarations/realize--8483061be10e8852e5dd7fe4.md) | 31 | `declaration-track:8483061be10e8852e5dd7fe434f250f316089c6dbd9332bbacc11926d18e4b7c` |
| 4 | `def` | [scalarCell](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechIntegralGauge.lean/declarations/scalarcell--e01534a35f201dc4790d261c.md) | 34 | `declaration-track:e01534a35f201dc4790d261cbe927c1f46797f6decf99c7410812809adcf630b` |
| 5 | `theorem` | [coefficient_realize](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechIntegralGauge.lean/declarations/coefficient-realize--49643a2233cb11d15e1310f4.md) | 37 | `result-track:49643a2233cb11d15e1310f4c6557fa9a42b3e8db636c9e0630e84132c0d1d70` |
| 6 | `theorem` | [fields_ext](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechIntegralGauge.lean/declarations/fields-ext--5608c3a6c1cb7ae3bf4e22e9.md) | 46 | `result-track:5608c3a6c1cb7ae3bf4e22e9d6c6c69a43d24a8d3e3f76fc570f6610710bb3da` |
| 7 | `theorem` | [in_realized_lattice_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechIntegralGauge.lean/declarations/in-realized-lattice-iff--47e1cad862ad7e795a54a6f3.md) | 61 | `result-track:47e1cad862ad7e795a54a6f3d3cf30aacdf68bdbf99cb3696b3d82e1b35e6174` |
| 8 | `theorem` | [normalForm_integral_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechIntegralGauge.lean/declarations/normalform-integral-iff--bc27cd0cbdb8f946f1fd6425.md) | 78 | `result-track:bc27cd0cbdb8f946f1fd64255e3d206cba61b8500829f366d2d9861988f34b8c` |
| 9 | `theorem` | [realized_full_recovery](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechIntegralGauge.lean/declarations/realized-full-recovery--1875409bd627990464e813a6.md) | 92 | `result-track:1875409bd627990464e813a649f02031425c2d8a86f4b351352ee7a0a05adac8` |
| 10 | `theorem` | [realize_anchor](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechIntegralGauge.lean/declarations/realize-anchor--48dd36b8cadb104bea1dc15b.md) | 96 | `result-track:48dd36b8cadb104bea1dc15bc38847e47338551fa7d62f1c80f6fe2c2e51fd50` |
| 11 | `def` | [integerPort](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechIntegralGauge.lean/declarations/integerport--e68f785481646d4a56583cc2.md) | 102 | `declaration-track:e68f785481646d4a56583cc2a3a29a2dfa6a810762d378c4acd7fd42cd16c126` |
| 12 | `theorem` | [integerPort_reduction](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechIntegralGauge.lean/declarations/integerport-reduction--065bbc03173f8682da3c0c34.md) | 105 | `result-track:065bbc03173f8682da3c0c34ea808a68f7df365db739a363d15c3dd9ecee900c` |
| 13 | `theorem` | [realize_integerPort](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechIntegralGauge.lean/declarations/realize-integerport--b2b491225ddb4da063c26ea6.md) | 112 | `result-track:b2b491225ddb4da063c26ea6872be1e7f004403fec962d89dc08448ea1779701` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
