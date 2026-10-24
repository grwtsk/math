# Verification target: GRWTSK.Analysis.MeasureTheory.EventuallyMeasurable.Varianta4868fe60ebaee7c5aefac91b148265c94838034df602d0b9471f3fc472fd845

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49c60644c6e680d695022c0fa15cd8c96bb8cf8c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/EventuallyMeasurable/Varianta4868fe60ebaee7c5aefac91b148265c94838034df602d0b9471f3fc472fd845.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Varianta4868fe60ebaee7c5aefac91b148265c94838034df602d0b9471f3fc472fd845.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Varianta4868fe60ebaee7c5aefac91b148265c94838034df602d0b9471f3fc472fd845.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49c60644c6e680d695022c0fa15cd8c96bb8cf8c`.

Source path: `GRWTSK/Analysis/MeasureTheory/EventuallyMeasurable/Varianta4868fe60ebaee7c5aefac91b148265c94838034df602d0b9471f3fc472fd845.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/EventuallyMeasurable/Varianta4868fe60ebaee7c5aefac91b148265c94838034df602d0b9471f3fc472fd845.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountableInter` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EventuallyMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Varianta4868fe60ebaee7c5aefac91b148265c94838034df602d0b9471f3fc472fd845.lean/declarations/eventuallymeasurablespace--f1efbd03c93c0ed6955d4643.md) | 48 | `declaration-track:f1efbd03c93c0ed6955d464371ade16d68a79ae9d2f3ec6143cf3ac85de6c3a9` |
| 2 | `def` | [EventuallyMeasurableSet](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Varianta4868fe60ebaee7c5aefac91b148265c94838034df602d0b9471f3fc472fd845.lean/declarations/eventuallymeasurableset--59b3774e0f46e42a01bdc761.md) | 59 | `declaration-track:59b3774e0f46e42a01bdc7613710ddb9a27824d9952abbd38aa5f7beca8b3b04` |
| 3 | `theorem` | [MeasurableSet.eventuallyMeasurableSet](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Varianta4868fe60ebaee7c5aefac91b148265c94838034df602d0b9471f3fc472fd845.lean/declarations/measurableset-eventuallymeasurableset--c5a4a11a3d192ad4eef4874f.md) | 65 | `result-track:c5a4a11a3d192ad4eef4874f02d314361e20ddc584696dd261ed115b21f5fe24` |
| 4 | `theorem` | [EventuallyMeasurableSpace.measurable_le](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Varianta4868fe60ebaee7c5aefac91b148265c94838034df602d0b9471f3fc472fd845.lean/declarations/eventuallymeasurablespace-measurable-le--b41ad2cedba5fb907122c627.md) | 69 | `result-track:b41ad2cedba5fb907122c62767e7f454536d97205e01544c514fbcf21c483fc4` |
| 5 | `theorem` | [eventuallyMeasurableSet_of_mem_filter](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Varianta4868fe60ebaee7c5aefac91b148265c94838034df602d0b9471f3fc472fd845.lean/declarations/eventuallymeasurableset-of-mem-filter--3fdb623345a6bedf04260deb.md) | 72 | `result-track:3fdb623345a6bedf04260debc54e7f428d0d47ca35dce03017760a371d32f96d` |
| 6 | `theorem` | [EventuallyMeasurableSet.congr](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Varianta4868fe60ebaee7c5aefac91b148265c94838034df602d0b9471f3fc472fd845.lean/declarations/eventuallymeasurableset-congr--20f0f865ddf1d915e317f4ac.md) | 77 | `result-track:20f0f865ddf1d915e317f4acd8a41cd49c75e504371ca2f8c09bc16c2f69248c` |
| 7 | `instance` | [measurableSingleton](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Varianta4868fe60ebaee7c5aefac91b148265c94838034df602d0b9471f3fc472fd845.lean/declarations/measurablesingleton--6114cf6ea0733f9c0161bed3.md) | 86 | `declaration-track:6114cf6ea0733f9c0161bed316b52a71260ccec28ccefb80fdc62b68b57d102a` |
| 8 | `def` | [EventuallyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Varianta4868fe60ebaee7c5aefac91b148265c94838034df602d0b9471f3fc472fd845.lean/declarations/eventuallymeasurable--1b95b49a0ee699c5ed26fbee.md) | 106 | `declaration-track:1b95b49a0ee699c5ed26fbee7e635cf00ad00c4f9ca0976a8667b9b311321f10` |
| 9 | `theorem` | [Measurable.eventuallyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Varianta4868fe60ebaee7c5aefac91b148265c94838034df602d0b9471f3fc472fd845.lean/declarations/measurable-eventuallymeasurable--07c3b5ae92159797db838d0f.md) | 110 | `result-track:07c3b5ae92159797db838d0f4011f8b04face704e8f861e4af79406566f4ad0b` |
| 10 | `theorem` | [Measurable.comp_eventuallyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Varianta4868fe60ebaee7c5aefac91b148265c94838034df602d0b9471f3fc472fd845.lean/declarations/measurable-comp-eventuallymeasurable--10b1ccb39b70404170ef7aa3.md) | 113 | `result-track:10b1ccb39b70404170ef7aa34af9fe9cfa84a18ea60e622b0f7a98b8cbf6c34f` |
| 11 | `theorem` | [EventuallyMeasurable.congr](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Varianta4868fe60ebaee7c5aefac91b148265c94838034df602d0b9471f3fc472fd845.lean/declarations/eventuallymeasurable-congr--37c788a38fa1fdd7758e741d.md) | 119 | `result-track:37c788a38fa1fdd7758e741da10d9d7a1dbf6194c54821b647c8ca4302a4aa3d` |
| 12 | `theorem` | [Measurable.eventuallyMeasurable_of_eventuallyEq](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Varianta4868fe60ebaee7c5aefac91b148265c94838034df602d0b9471f3fc472fd845.lean/declarations/measurable-eventuallymeasurable-of-eventuallyeq--b472f552c7ac2829a817be83.md) | 125 | `result-track:b472f552c7ac2829a817be837149bf03d229fc25ad0c3e1d3f8eb5faa7015d98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
