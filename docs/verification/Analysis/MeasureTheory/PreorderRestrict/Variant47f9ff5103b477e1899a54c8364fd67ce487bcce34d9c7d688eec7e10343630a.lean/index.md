# Verification target: GRWTSK.Analysis.MeasureTheory.PreorderRestrict.Variant47f9ff5103b477e1899a54c8364fd67ce487bcce34d9c7d688eec7e10343630a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c90369494549b0e82cd5434dcc7c55d452c0fb2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/PreorderRestrict/Variant47f9ff5103b477e1899a54c8364fd67ce487bcce34d9c7d688eec7e10343630a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/PreorderRestrict/Variant47f9ff5103b477e1899a54c8364fd67ce487bcce34d9c7d688eec7e10343630a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/PreorderRestrict/Variant47f9ff5103b477e1899a54c8364fd67ce487bcce34d9c7d688eec7e10343630a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c90369494549b0e82cd5434dcc7c55d452c0fb2`.

Source path: `GRWTSK/Analysis/MeasureTheory/PreorderRestrict/Variant47f9ff5103b477e1899a54c8364fd67ce487bcce34d9c7d688eec7e10343630a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/PreorderRestrict/Variant47f9ff5103b477e1899a54c8364fd67ce487bcce34d9c7d688eec7e10343630a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Restriction` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_restrictLe](../../../../../mathematics/Analysis/MeasureTheory/PreorderRestrict/Variant47f9ff5103b477e1899a54c8364fd67ce487bcce34d9c7d688eec7e10343630a.lean/declarations/measurable-restrictle--05988dd2428185f85a75470b.md) | 23 | `result-track:05988dd2428185f85a75470b170de69e5420d3c645549ac178a21f57fdff476b` |
| 2 | `theorem` | [measurable_restrictLe₂](../../../../../mathematics/Analysis/MeasureTheory/PreorderRestrict/Variant47f9ff5103b477e1899a54c8364fd67ce487bcce34d9c7d688eec7e10343630a.lean/declarations/measurable-restrictle--240bdf8186a2eac50f7b4b06.md) | 27 | `result-track:240bdf8186a2eac50f7b4b06117d66abe077774bebccf22169d6dd59103d9a20` |
| 3 | `theorem` | [measurable_frestrictLe](../../../../../mathematics/Analysis/MeasureTheory/PreorderRestrict/Variant47f9ff5103b477e1899a54c8364fd67ce487bcce34d9c7d688eec7e10343630a.lean/declarations/measurable-frestrictle--984118847c67167b1c51a671.md) | 33 | `result-track:984118847c67167b1c51a671419b46cbfa46f9b3a8c1a43d877d40228656b88f` |
| 4 | `theorem` | [measurable_frestrictLe₂](../../../../../mathematics/Analysis/MeasureTheory/PreorderRestrict/Variant47f9ff5103b477e1899a54c8364fd67ce487bcce34d9c7d688eec7e10343630a.lean/declarations/measurable-frestrictle--ba671e7f80cc44e77db48506.md) | 37 | `result-track:ba671e7f80cc44e77db48506dfb6256b5ee637590085e879a7b62f5d800459b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
