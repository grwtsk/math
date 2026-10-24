# Verification target: GRWTSK.Analysis.MeasureTheory.FiniteMeasurePi.Variantc390bbcc27eca198fba49a7c48bd8d3e0be6db5a4143fec2cc08bddbd467240a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90c3382306c5d989480670d0224b18923be5c18b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/FiniteMeasurePi/Variantc390bbcc27eca198fba49a7c48bd8d3e0be6db5a4143fec2cc08bddbd467240a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasurePi/Variantc390bbcc27eca198fba49a7c48bd8d3e0be6db5a4143fec2cc08bddbd467240a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasurePi/Variantc390bbcc27eca198fba49a7c48bd8d3e0be6db5a4143fec2cc08bddbd467240a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90c3382306c5d989480670d0224b18923be5c18b`.

Source path: `GRWTSK/Analysis/MeasureTheory/FiniteMeasurePi/Variantc390bbcc27eca198fba49a7c48bd8d3e0be6db5a4143fec2cc08bddbd467240a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/FiniteMeasurePi/Variantc390bbcc27eca198fba49a7c48bd8d3e0be6db5a4143fec2cc08bddbd467240a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pi](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasurePi/Variantc390bbcc27eca198fba49a7c48bd8d3e0be6db5a4143fec2cc08bddbd467240a.lean/declarations/pi--e265c61bf1e797cd7c8409e0.md) | 52 | `declaration-track:e265c61bf1e797cd7c8409e02989c57ccacc9ebb1958399205364878fd4696f7` |
| 2 | `lemma` | [toMeasure_pi](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasurePi/Variantc390bbcc27eca198fba49a7c48bd8d3e0be6db5a4143fec2cc08bddbd467240a.lean/declarations/tomeasure-pi--3afeff5d38ae000b6ce7d9aa.md) | 57 | `result-track:3afeff5d38ae000b6ce7d9aa908e19a86800bad0b172c1a18a70beea5b5f829e` |
| 3 | `lemma` | [pi_pi](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasurePi/Variantc390bbcc27eca198fba49a7c48bd8d3e0be6db5a4143fec2cc08bddbd467240a.lean/declarations/pi-pi--1fb50c8d3c545001ad07437d.md) | 59 | `result-track:1fb50c8d3c545001ad07437ddc46cb385e5f9dfb9340b4c88ee2d03f9e5ced3d` |
| 4 | `lemma` | [mass_pi](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasurePi/Variantc390bbcc27eca198fba49a7c48bd8d3e0be6db5a4143fec2cc08bddbd467240a.lean/declarations/mass-pi--a88eb7f54809c02bba39add0.md) | 63 | `result-track:a88eb7f54809c02bba39add03a63d74f38a6ea67e1eddb6a7f0ee1b71a9a241c` |
| 5 | `lemma` | [pi_map_pi](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasurePi/Variantc390bbcc27eca198fba49a7c48bd8d3e0be6db5a4143fec2cc08bddbd467240a.lean/declarations/pi-map-pi--729f26d25e7671abb8f4f07c.md) | 67 | `result-track:729f26d25e7671abb8f4f07c7383f90ab6fed2eb692f33fd6132ac4fba677814` |
| 6 | `def` | [pi](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasurePi/Variantc390bbcc27eca198fba49a7c48bd8d3e0be6db5a4143fec2cc08bddbd467240a.lean/declarations/pi--4c219dc822b37be807f785a2.md) | 80 | `declaration-track:4c219dc822b37be807f785a20fa7b1b8aeea4680f22099eb354309ab627a1390` |
| 7 | `lemma` | [toMeasure_pi](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasurePi/Variantc390bbcc27eca198fba49a7c48bd8d3e0be6db5a4143fec2cc08bddbd467240a.lean/declarations/tomeasure-pi--f03d6542d8fc50ce10b9274c.md) | 85 | `result-track:f03d6542d8fc50ce10b9274c8192485ab64ffef47eb822be5853bf3f96ce9b16` |
| 8 | `lemma` | [pi_pi](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasurePi/Variantc390bbcc27eca198fba49a7c48bd8d3e0be6db5a4143fec2cc08bddbd467240a.lean/declarations/pi-pi--00bcad7ea22c0018282489d6.md) | 88 | `result-track:00bcad7ea22c0018282489d6a8556f8607b895768ad97494e2c3e87e1269eae3` |
| 9 | `theorem` | [continuous_pi](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasurePi/Variantc390bbcc27eca198fba49a7c48bd8d3e0be6db5a4143fec2cc08bddbd467240a.lean/declarations/continuous-pi--3e786cf021bdb85c6da52dbb.md) | 96 | `result-track:3e786cf021bdb85c6da52dbb824727c0092e18d675e4f088eca56d4e9ba157e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
