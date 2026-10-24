# Verification target: GRWTSK.Analysis.MeasureTheory.NativeOffGridCounting.Variant0f16d9d25a5093dac8a1d3f1d89861a00d0f728ce2ab1ade60f8a60e731e2559

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "027fc26a5a08cdc94cdd17467c5e4a54c9360e0a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/NativeOffGridCounting/Variant0f16d9d25a5093dac8a1d3f1d89861a00d0f728ce2ab1ade60f8a60e731e2559.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/NativeOffGridCounting/Variant0f16d9d25a5093dac8a1d3f1d89861a00d0f728ce2ab1ade60f8a60e731e2559.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/NativeOffGridCounting/Variant0f16d9d25a5093dac8a1d3f1d89861a00d0f728ce2ab1ade60f8a60e731e2559.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `027fc26a5a08cdc94cdd17467c5e4a54c9360e0a`.

Source path: `GRWTSK/Analysis/MeasureTheory/NativeOffGridCounting/Variant0f16d9d25a5093dac8a1d3f1d89861a00d0f728ce2ab1ade60f8a60e731e2559.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/NativeOffGridCounting/Variant0f16d9d25a5093dac8a1d3f1d89861a00d0f728ce2ab1ade60f8a60e731e2559.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.NativeOffGridDensity` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [countingPrimitive](../../../../../mathematics/Analysis/MeasureTheory/NativeOffGridCounting/Variant0f16d9d25a5093dac8a1d3f1d89861a00d0f728ce2ab1ade60f8a60e731e2559.lean/declarations/countingprimitive--96f988cc341f5ffd6c127aad.md) | 26 | `declaration-track:96f988cc341f5ffd6c127aad4bdaa7e47a0d153720609e313a22d14120139e72` |
| 2 | `theorem` | [literal_density_continuous_at](../../../../../mathematics/Analysis/MeasureTheory/NativeOffGridCounting/Variant0f16d9d25a5093dac8a1d3f1d89861a00d0f728ce2ab1ade60f8a60e731e2559.lean/declarations/literal-density-continuous-at--0d023fd1c8e282d45b96fa67.md) | 29 | `result-track:0d023fd1c8e282d45b96fa673c301d14274bdb99a4d830ce3198fec8247b3ef7` |
| 3 | `theorem` | [literal_density_smooth_at](../../../../../mathematics/Analysis/MeasureTheory/NativeOffGridCounting/Variant0f16d9d25a5093dac8a1d3f1d89861a00d0f728ce2ab1ade60f8a60e731e2559.lean/declarations/literal-density-smooth-at--dde58c20213558a6bce39088.md) | 34 | `result-track:dde58c20213558a6bce390880ee3d4686d3b0ad7e830e5271a93946aa3aac2e9` |
| 4 | `theorem` | [literal_complex_counting_derivative](../../../../../mathematics/Analysis/MeasureTheory/NativeOffGridCounting/Variant0f16d9d25a5093dac8a1d3f1d89861a00d0f728ce2ab1ade60f8a60e731e2559.lean/declarations/literal-complex-counting-derivative--37c4c94cc252339444a4beb9.md) | 48 | `result-track:37c4c94cc252339444a4beb901b4ed3845a2c6320640015187cbc371eaf1d4d8` |
| 5 | `theorem` | [literal_counting_primitive_derivative](../../../../../mathematics/Analysis/MeasureTheory/NativeOffGridCounting/Variant0f16d9d25a5093dac8a1d3f1d89861a00d0f728ce2ab1ade60f8a60e731e2559.lean/declarations/literal-counting-primitive-derivative--92cf46cb8622482cfa9e9de8.md) | 62 | `result-track:92cf46cb8622482cfa9e9de87bd04870fad908ef8c6614d28b080212d31c0d76` |
| 6 | `theorem` | [literal_density_interval_integrable](../../../../../mathematics/Analysis/MeasureTheory/NativeOffGridCounting/Variant0f16d9d25a5093dac8a1d3f1d89861a00d0f728ce2ab1ade60f8a60e731e2559.lean/declarations/literal-density-interval-integrable--9887dfa4479160a70f7094c1.md) | 70 | `result-track:9887dfa4479160a70f7094c1baafaf1754ae9badb5cf7d5723511c960b9e9b2d` |
| 7 | `theorem` | [literal_density_exact_counting_error](../../../../../mathematics/Analysis/MeasureTheory/NativeOffGridCounting/Variant0f16d9d25a5093dac8a1d3f1d89861a00d0f728ce2ab1ade60f8a60e731e2559.lean/declarations/literal-density-exact-counting-error--6d86c9f243eceb650851742c.md) | 79 | `result-track:6d86c9f243eceb650851742cc695c0925af0c608045ba80f5b19d3c1e31993af` |
| 8 | `theorem` | [literal_phase_norm_le_one_sixth](../../../../../mathematics/Analysis/MeasureTheory/NativeOffGridCounting/Variant0f16d9d25a5093dac8a1d3f1d89861a00d0f728ce2ab1ade60f8a60e731e2559.lean/declarations/literal-phase-norm-le-one-sixth--bc2924277beae6b4ec643e2b.md) | 90 | `result-track:bc2924277beae6b4ec643e2bc880a669ec74ff8b1cd15ed2d0d03d2e6f6c7af6` |
| 9 | `theorem` | [literal_counting_error_power_envelope](../../../../../mathematics/Analysis/MeasureTheory/NativeOffGridCounting/Variant0f16d9d25a5093dac8a1d3f1d89861a00d0f728ce2ab1ade60f8a60e731e2559.lean/declarations/literal-counting-error-power-envelope--45337891c56c616c82b78a47.md) | 97 | `result-track:45337891c56c616c82b78a47b5873fa1fc6fa0fc15b9f4f14b073a6ef4e365be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
