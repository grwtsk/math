# Verification target: GRWTSK.Analysis.MeasureTheory.RCLike.Variantf42193077f03ce4508bc06d94a92041c79e5bb0d3d85d52c9608549451d8dde6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11ac13cf11d0c8ac632bdd3742b45162c83a1569",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/RCLike/Variantf42193077f03ce4508bc06d94a92041c79e5bb0d3d85d52c9608549451d8dde6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variantf42193077f03ce4508bc06d94a92041c79e5bb0d3d85d52c9608549451d8dde6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variantf42193077f03ce4508bc06d94a92041c79e5bb0d3d85d52c9608549451d8dde6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11ac13cf11d0c8ac632bdd3742b45162c83a1569`.

Source path: `GRWTSK/Analysis/MeasureTheory/RCLike/Variantf42193077f03ce4508bc06d94a92041c79e5bb0d3d85d52c9608549451d8dde6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/RCLike/Variantf42193077f03ce4508bc06d94a92041c79e5bb0d3d85d52c9608549451d8dde6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.RCLike.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Complex` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_re](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variantf42193077f03ce4508bc06d94a92041c79e5bb0d3d85d52c9608549451d8dde6.lean/declarations/measurable-re--db11f96cd9ec951603892e4f.md) | 32 | `result-track:db11f96cd9ec951603892e4fde30f245d90460149331612943c9dc88119aaef3` |
| 2 | `theorem` | [measurable_im](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variantf42193077f03ce4508bc06d94a92041c79e5bb0d3d85d52c9608549451d8dde6.lean/declarations/measurable-im--0a2a105b278ea91df5acffde.md) | 36 | `result-track:0a2a105b278ea91df5acffdecf2c35c75bb33c7a1a2766fa602834f4d2280dba` |
| 3 | `theorem` | [Measurable.re](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variantf42193077f03ce4508bc06d94a92041c79e5bb0d3d85d52c9608549451d8dde6.lean/declarations/measurable-re--380e3b9aeb9dac6e43a556eb.md) | 47 | `result-track:380e3b9aeb9dac6e43a556eba803f8d5372f98c3da6731d91877b559ca1cb7f9` |
| 4 | `theorem` | [AEMeasurable.re](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variantf42193077f03ce4508bc06d94a92041c79e5bb0d3d85d52c9608549451d8dde6.lean/declarations/aemeasurable-re--876dcf855c9da320f9333bde.md) | 51 | `result-track:876dcf855c9da320f9333bde3d8dc657ab09965486de075c9a1bec7ae569cb38` |
| 5 | `theorem` | [Measurable.im](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variantf42193077f03ce4508bc06d94a92041c79e5bb0d3d85d52c9608549451d8dde6.lean/declarations/measurable-im--2268977869b38dba1959bd1b.md) | 55 | `result-track:2268977869b38dba1959bd1b3b059ceeef5c2c1615ddc862f00912e7690a775b` |
| 6 | `theorem` | [AEMeasurable.im](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variantf42193077f03ce4508bc06d94a92041c79e5bb0d3d85d52c9608549451d8dde6.lean/declarations/aemeasurable-im--d1fba2b87564bd9f684b3c61.md) | 59 | `result-track:d1fba2b87564bd9f684b3c61dee670214794f297e618e7b6860f4056f23b60ad` |
| 7 | `theorem` | [RCLike.measurable_ofReal](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variantf42193077f03ce4508bc06d94a92041c79e5bb0d3d85d52c9608549451d8dde6.lean/declarations/rclike-measurable-ofreal--2ab790d0b38bc2ddac8be8ac.md) | 69 | `result-track:2ab790d0b38bc2ddac8be8acf340acacb9b6c71855c532a141fb343d29ab34da` |
| 8 | `theorem` | [measurable_of_re_im](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variantf42193077f03ce4508bc06d94a92041c79e5bb0d3d85d52c9608549451d8dde6.lean/declarations/measurable-of-re-im--b8cfb29cc9f16d0154990a46.md) | 72 | `result-track:b8cfb29cc9f16d0154990a4644dcc5bed5734f22ea950809b1df840b7b273f56` |
| 9 | `theorem` | [aemeasurable_of_re_im](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variantf42193077f03ce4508bc06d94a92041c79e5bb0d3d85d52c9608549451d8dde6.lean/declarations/aemeasurable-of-re-im--f3b134370dd16a3c77b7e74f.md) | 78 | `result-track:f3b134370dd16a3c77b7e74f6308864edf689302703ae6f506b70ca6b03091a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
