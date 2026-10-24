# Verification target: GRWTSK.Topology.GeneralTopology.ContinuousCompMeasurePreserving.Variantb9e8f9d5212498c372bd5a41e46624575524d3c0bc62b8de6a999628a71435ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a5146365f18954b53f8b36885c023bdccd1107c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variantb9e8f9d5212498c372bd5a41e46624575524d3c0bc62b8de6a999628a71435ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variantb9e8f9d5212498c372bd5a41e46624575524d3c0bc62b8de6a999628a71435ec.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variantb9e8f9d5212498c372bd5a41e46624575524d3c0bc62b8de6a999628a71435ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a5146365f18954b53f8b36885c023bdccd1107c`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variantb9e8f9d5212498c372bd5a41e46624575524d3c0bc62b8de6a999628a71435ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variantb9e8f9d5212498c372bd5a41e46624575524d3c0bc62b8de6a999628a71435ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.SimpleFuncDenseLp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.ContinuousPreimage` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [compMeasurePreserving_continuous](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variantb9e8f9d5212498c372bd5a41e46624575524d3c0bc62b8de6a999628a71435ec.lean/declarations/compmeasurepreserving-continuous--257f81cde9652fecb663404a.md) | 54 | `result-track:257f81cde9652fecb663404ade5faccb862816c95be8047219dc7a9e1b55be1f` |
| 2 | `theorem` | [Filter.Tendsto.compMeasurePreservingLp](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variantb9e8f9d5212498c372bd5a41e46624575524d3c0bc62b8de6a999628a71435ec.lean/declarations/filter-tendsto-compmeasurepreservinglp--f5065ef71f5351c19e0f689f.md) | 77 | `result-track:f5065ef71f5351c19e0f689fcf841cec501eb4dd3cdfa1965c6f0ced003eae0f` |
| 3 | `theorem` | [ContinuousWithinAt.compMeasurePreservingLp](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variantb9e8f9d5212498c372bd5a41e46624575524d3c0bc62b8de6a999628a71435ec.lean/declarations/continuouswithinat-compmeasurepreservinglp--93337ef216420b1204c25902.md) | 91 | `result-track:93337ef216420b1204c25902081cc5f0511305162d7467d9dcc0ed2d32a5a3da` |
| 4 | `theorem` | [ContinuousAt.compMeasurePreservingLp](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variantb9e8f9d5212498c372bd5a41e46624575524d3c0bc62b8de6a999628a71435ec.lean/declarations/continuousat-compmeasurepreservinglp--2bc0b4bcfb3bd838a041d7b9.md) | 96 | `result-track:2bc0b4bcfb3bd838a041d7b9b70391d5568674dc23c3a072480d0d08a08e759d` |
| 5 | `theorem` | [ContinuousOn.compMeasurePreservingLp](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variantb9e8f9d5212498c372bd5a41e46624575524d3c0bc62b8de6a999628a71435ec.lean/declarations/continuouson-compmeasurepreservinglp--10473a438f5fe9351511c9f0.md) | 101 | `result-track:10473a438f5fe9351511c9f013da8deae0640af72d007c83fed5e78d35491a90` |
| 6 | `theorem` | [Continuous.compMeasurePreservingLp](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variantb9e8f9d5212498c372bd5a41e46624575524d3c0bc62b8de6a999628a71435ec.lean/declarations/continuous-compmeasurepreservinglp--57eb05688fdc57c95a24855c.md) | 106 | `result-track:57eb05688fdc57c95a24855c92e4181d2ee79b1468351dbfcb491acc58caa08a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
