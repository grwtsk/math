# Verification target: GRWTSK.Topology.GeneralTopology.Completion.Varianta677421d353098c27093a09505cb1458b9d9606f3daa9fee486381988aa480a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9c3286ad4b7bee988ef64023c081bdee70babcf",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Completion/Varianta677421d353098c27093a09505cb1458b9d9606f3daa9fee486381988aa480a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Completion/Varianta677421d353098c27093a09505cb1458b9d9606f3daa9fee486381988aa480a8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Completion/Varianta677421d353098c27093a09505cb1458b9d9606f3daa9fee486381988aa480a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9c3286ad4b7bee988ef64023c081bdee70babcf`.

Source path: `GRWTSK/Topology/GeneralTopology/Completion/Varianta677421d353098c27093a09505cb1458b9d9606f3daa9fee486381988aa480a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Completion/Varianta677421d353098c27093a09505cb1458b9d9606f3daa9fee486381988aa480a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.LinearMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Completion` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Inseparable.inner_eq_inner](../../../../../mathematics/Topology/GeneralTopology/Completion/Varianta677421d353098c27093a09505cb1458b9d9606f3daa9fee486381988aa480a8.lean/declarations/inseparable-inner-eq-inner--ae4e607a68145d79091cba5e.md) | 33 | `result-track:ae4e607a68145d79091cba5e421823b2bc23bd566dfe759299b3eec68088cd43` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Completion/Varianta677421d353098c27093a09505cb1458b9d9606f3daa9fee486381988aa480a8.lean/declarations/instance--104d3d20733de4ad3b60f10a.md) | 40 | `declaration-track:104d3d20733de4ad3b60f10ae192cb65f8c160ac3578de1000da1c4bd462acbd` |
| 3 | `theorem` | [inner_mk_mk](../../../../../mathematics/Topology/GeneralTopology/Completion/Varianta677421d353098c27093a09505cb1458b9d9606f3daa9fee486381988aa480a8.lean/declarations/inner-mk-mk--b002ca6dcca16252cc8353c5.md) | 44 | `result-track:b002ca6dcca16252cc8353c5c0acf44a318d17dcef282b97f535725223d93ddc` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Completion/Varianta677421d353098c27093a09505cb1458b9d9606f3daa9fee486381988aa480a8.lean/declarations/instance--eab02f76a0187a21b4c66828.md) | 47 | `declaration-track:eab02f76a0187a21b4c66828d18e91d5fe8044f8580635a6c5d67ff7df0d14bd` |
| 5 | `instance` | [toInner](../../../../../mathematics/Topology/GeneralTopology/Completion/Varianta677421d353098c27093a09505cb1458b9d9606f3daa9fee486381988aa480a8.lean/declarations/toinner--44c6a6325325b39309f8eb3e.md) | 65 | `declaration-track:44c6a6325325b39309f8eb3e1f38a441d1762237b0c56561772f9f2b3bdf8185` |
| 6 | `theorem` | [inner_coe](../../../../../mathematics/Topology/GeneralTopology/Completion/Varianta677421d353098c27093a09505cb1458b9d9606f3daa9fee486381988aa480a8.lean/declarations/inner-coe--0bbf86d17065f5b92cbdc2ed.md) | 70 | `result-track:0bbf86d17065f5b92cbdc2ed1e573524924c0a59ac629bd5d216b26900fd90aa` |
| 7 | `theorem` | [continuous_inner](../../../../../mathematics/Topology/GeneralTopology/Completion/Varianta677421d353098c27093a09505cb1458b9d9606f3daa9fee486381988aa480a8.lean/declarations/continuous-inner--c07ad3bf5d573c7403075296.md) | 74 | `result-track:c07ad3bf5d573c740307529684bbed92f84543c5a4406e07048f1868a95d062b` |
| 8 | `theorem` | [Continuous.inner](../../../../../mathematics/Topology/GeneralTopology/Completion/Varianta677421d353098c27093a09505cb1458b9d9606f3daa9fee486381988aa480a8.lean/declarations/continuous-inner--9bbca5134ed75e12358fb8b9.md) | 89 | `result-track:9bbca5134ed75e12358fb8b93858d2c193eb30094a4260d8dccf99e37b9a0d18` |
| 9 | `instance` | [innerProductSpace](../../../../../mathematics/Topology/GeneralTopology/Completion/Varianta677421d353098c27093a09505cb1458b9d9606f3daa9fee486381988aa480a8.lean/declarations/innerproductspace--3aa12a86f8bf52f38f7d356c.md) | 93 | `declaration-track:3aa12a86f8bf52f38f7d356c8ed18da360bc1d63076a920c67014314e32ed130` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
