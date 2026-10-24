# Verification target: GRWTSK.Analysis.MeasureTheory.Metrizable.Variant4c73a8c0f0bd714d1260a24485c2f8e6a5285f2b480dbcdb2f71d1d7e4f5a35e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1350f7b11e4e09009e88a8df977520d52a52c400",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Metrizable/Variant4c73a8c0f0bd714d1260a24485c2f8e6a5285f2b480dbcdb2f71d1d7e4f5a35e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant4c73a8c0f0bd714d1260a24485c2f8e6a5285f2b480dbcdb2f71d1d7e4f5a35e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant4c73a8c0f0bd714d1260a24485c2f8e6a5285f2b480dbcdb2f71d1d7e4f5a35e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1350f7b11e4e09009e88a8df977520d52a52c400`.

Source path: `GRWTSK/Analysis/MeasureTheory/Metrizable/Variant4c73a8c0f0bd714d1260a24485c2f8e6a5285f2b480dbcdb2f71d1d7e4f5a35e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Metrizable/Variant4c73a8c0f0bd714d1260a24485c2f8e6a5285f2b480dbcdb2f71d1d7e4f5a35e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Metric` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Real` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.IndicatorConstPointwise` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_of_tendsto_metrizable'](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant4c73a8c0f0bd714d1260a24485c2f8e6a5285f2b480dbcdb2f71d1d7e4f5a35e.lean/declarations/measurable-of-tendsto-metrizable--3f9e02f22055365191c87e03.md) | 27 | `result-track:3f9e02f22055365191c87e03dbc874b014deebca9bf0e91e416e20b273bf3bee` |
| 2 | `theorem` | [measurable_of_tendsto_metrizable](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant4c73a8c0f0bd714d1260a24485c2f8e6a5285f2b480dbcdb2f71d1d7e4f5a35e.lean/declarations/measurable-of-tendsto-metrizable--9984994dc5cd0ae8aaa0cb06.md) | 47 | `result-track:9984994dc5cd0ae8aaa0cb06b0ba2f0adaca1f52665e60f22abf5cc869b32f7e` |
| 3 | `theorem` | [aemeasurable_of_tendsto_metrizable_ae](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant4c73a8c0f0bd714d1260a24485c2f8e6a5285f2b480dbcdb2f71d1d7e4f5a35e.lean/declarations/aemeasurable-of-tendsto-metrizable-ae--96a97ca023ba210af9ebabf2.md) | 51 | `result-track:96a97ca023ba210af9ebabf2549a30025365cb28ef06dedb790b1805545cf1c1` |
| 4 | `theorem` | [aemeasurable_of_tendsto_metrizable_ae'](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant4c73a8c0f0bd714d1260a24485c2f8e6a5285f2b480dbcdb2f71d1d7e4f5a35e.lean/declarations/aemeasurable-of-tendsto-metrizable-ae--c7e1a50cea36b973cee72e15.md) | 75 | `result-track:c7e1a50cea36b973cee72e15a317975d7352ef9f02d05bac5658cdcff8580f7e` |
| 5 | `theorem` | [aemeasurable_of_unif_approx](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant4c73a8c0f0bd714d1260a24485c2f8e6a5285f2b480dbcdb2f71d1d7e4f5a35e.lean/declarations/aemeasurable-of-unif-approx--a812ccdc20deb33cebe97f79.md) | 80 | `result-track:a812ccdc20deb33cebe97f79dcb1cd743e877b67c25415028e0707353efe2d1a` |
| 6 | `theorem` | [measurable_of_tendsto_metrizable_ae](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant4c73a8c0f0bd714d1260a24485c2f8e6a5285f2b480dbcdb2f71d1d7e4f5a35e.lean/declarations/measurable-of-tendsto-metrizable-ae--fae216ed6e85509ae9be263e.md) | 96 | `result-track:fae216ed6e85509ae9be263e4847b3225ba72b50ca5adf4e58e03dca433283d6` |
| 7 | `theorem` | [measurable_limit_of_tendsto_metrizable_ae](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant4c73a8c0f0bd714d1260a24485c2f8e6a5285f2b480dbcdb2f71d1d7e4f5a35e.lean/declarations/measurable-limit-of-tendsto-metrizable-ae--8f399f68d240a89b62a50788.md) | 102 | `result-track:8f399f68d240a89b62a5078810b7ad5d521625ae3b9469f8eb1d797708f1ba4b` |
| 8 | `lemma` | [measurableSet_of_tendsto_indicator](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant4c73a8c0f0bd714d1260a24485c2f8e6a5285f2b480dbcdb2f71d1d7e4f5a35e.lean/declarations/measurableset-of-tendsto-indicator--cbab1e659483c80507554d99.md) | 139 | `result-track:cbab1e659483c80507554d996b65b1da3a7f8d5155cc593bbada99e14a038d89` |
| 9 | `lemma` | [nullMeasurableSet_of_tendsto_indicator](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant4c73a8c0f0bd714d1260a24485c2f8e6a5285f2b480dbcdb2f71d1d7e4f5a35e.lean/declarations/nullmeasurableset-of-tendsto-indicator--f6293eee21f294f22d3aeed1.md) | 148 | `result-track:f6293eee21f294f22d3aeed1930e855024119e8382a5cdad59c3ea8173c2d310` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
