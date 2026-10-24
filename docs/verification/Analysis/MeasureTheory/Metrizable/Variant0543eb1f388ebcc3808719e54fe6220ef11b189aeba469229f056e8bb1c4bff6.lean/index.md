# Verification target: GRWTSK.Analysis.MeasureTheory.Metrizable.Variant0543eb1f388ebcc3808719e54fe6220ef11b189aeba469229f056e8bb1c4bff6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09e7aeba209eb07846383f5bf8f8cbf6c85fd7a1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Metrizable/Variant0543eb1f388ebcc3808719e54fe6220ef11b189aeba469229f056e8bb1c4bff6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0543eb1f388ebcc3808719e54fe6220ef11b189aeba469229f056e8bb1c4bff6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0543eb1f388ebcc3808719e54fe6220ef11b189aeba469229f056e8bb1c4bff6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09e7aeba209eb07846383f5bf8f8cbf6c85fd7a1`.

Source path: `GRWTSK/Analysis/MeasureTheory/Metrizable/Variant0543eb1f388ebcc3808719e54fe6220ef11b189aeba469229f056e8bb1c4bff6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Metrizable/Variant0543eb1f388ebcc3808719e54fe6220ef11b189aeba469229f056e8bb1c4bff6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Metric` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Real` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Real` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.IndicatorConstPointwise` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_of_tendsto_metrizable'](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0543eb1f388ebcc3808719e54fe6220ef11b189aeba469229f056e8bb1c4bff6.lean/declarations/measurable-of-tendsto-metrizable--e00778ae6e256020c0409f3d.md) | 35 | `result-track:e00778ae6e256020c0409f3d9e694978c118f5b5198c0ccebf1c7ed5fed32d87` |
| 2 | `theorem` | [measurable_of_tendsto_metrizable](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0543eb1f388ebcc3808719e54fe6220ef11b189aeba469229f056e8bb1c4bff6.lean/declarations/measurable-of-tendsto-metrizable--d6c5e4778a5044b9272f1ff7.md) | 55 | `result-track:d6c5e4778a5044b9272f1ff7b8a1a5e55c8d752053d23927b907169a28ee185d` |
| 3 | `theorem` | [aemeasurable_of_tendsto_metrizable_ae](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0543eb1f388ebcc3808719e54fe6220ef11b189aeba469229f056e8bb1c4bff6.lean/declarations/aemeasurable-of-tendsto-metrizable-ae--2c1e9f6404a6e4e5f38d77e3.md) | 59 | `result-track:2c1e9f6404a6e4e5f38d77e3219aceb6775bd0eeb2f67781b25925b3ac187e82` |
| 4 | `theorem` | [aemeasurable_of_tendsto_metrizable_ae'](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0543eb1f388ebcc3808719e54fe6220ef11b189aeba469229f056e8bb1c4bff6.lean/declarations/aemeasurable-of-tendsto-metrizable-ae--c9b1791d58b4212fe80d4780.md) | 83 | `result-track:c9b1791d58b4212fe80d47805c63caf2ecee1b9ad92864038cc9c43e0f1af055` |
| 5 | `theorem` | [aemeasurable_of_unif_approx](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0543eb1f388ebcc3808719e54fe6220ef11b189aeba469229f056e8bb1c4bff6.lean/declarations/aemeasurable-of-unif-approx--bc2f771836d98c427ba32ba7.md) | 88 | `result-track:bc2f771836d98c427ba32ba7d38631304dad79786ee0a0aeb18cd2ae0d2c6a0b` |
| 6 | `theorem` | [measurable_of_tendsto_metrizable_ae](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0543eb1f388ebcc3808719e54fe6220ef11b189aeba469229f056e8bb1c4bff6.lean/declarations/measurable-of-tendsto-metrizable-ae--e2dff8b33a6ee93572970974.md) | 104 | `result-track:e2dff8b33a6ee93572970974a173e6ae488a30ad84da623fe36391a310b8fe58` |
| 7 | `theorem` | [measurable_limit_of_tendsto_metrizable_ae](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0543eb1f388ebcc3808719e54fe6220ef11b189aeba469229f056e8bb1c4bff6.lean/declarations/measurable-limit-of-tendsto-metrizable-ae--ee4ef91ac1ead307a60d1250.md) | 110 | `result-track:ee4ef91ac1ead307a60d12506abc85923fa2d241112f1686d5f35dd7209f1590` |
| 8 | `lemma` | [measurableSet_of_tendsto_indicator](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0543eb1f388ebcc3808719e54fe6220ef11b189aeba469229f056e8bb1c4bff6.lean/declarations/measurableset-of-tendsto-indicator--e76030a56ca6f99773ea7d20.md) | 147 | `result-track:e76030a56ca6f99773ea7d2086b08a04e11372f8251f1cf3e501eb2a6d2d5c0e` |
| 9 | `lemma` | [nullMeasurableSet_of_tendsto_indicator](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0543eb1f388ebcc3808719e54fe6220ef11b189aeba469229f056e8bb1c4bff6.lean/declarations/nullmeasurableset-of-tendsto-indicator--4a16120a8a5ca2aa73abdf7e.md) | 156 | `result-track:4a16120a8a5ca2aa73abdf7e885c4d3b0b1da0d7edd480649cf02cdc351b65f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
