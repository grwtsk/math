# Verification target: GRWTSK.Topology.GeneralTopology.IndicatorConstPointwise.Varianta06a33d3ff75a7f9ed7ba8f4e56a83687e40dea47c43a08c6de36a26db2fd650

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66c3e6db9132c85e549c700ab57cda08ee0f07d7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IndicatorConstPointwise/Varianta06a33d3ff75a7f9ed7ba8f4e56a83687e40dea47c43a08c6de36a26db2fd650.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Varianta06a33d3ff75a7f9ed7ba8f4e56a83687e40dea47c43a08c6de36a26db2fd650.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Varianta06a33d3ff75a7f9ed7ba8f4e56a83687e40dea47c43a08c6de36a26db2fd650.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66c3e6db9132c85e549c700ab57cda08ee0f07d7`.

Source path: `GRWTSK/Topology/GeneralTopology/IndicatorConstPointwise/Varianta06a33d3ff75a7f9ed7ba8f4e56a83687e40dea47c43a08c6de36a26db2fd650.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IndicatorConstPointwise/Varianta06a33d3ff75a7f9ed7ba8f4e56a83687e40dea47c43a08c6de36a26db2fd650.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Indicator` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tendsto_ite](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Varianta06a33d3ff75a7f9ed7ba8f4e56a83687e40dea47c43a08c6de36a26db2fd650.lean/declarations/tendsto-ite--6635c99420b90d76864aaec4.md) | 47 | `result-track:6635c99420b90d76864aaec4185ada95acaaf516463a9937490a53180778b69a` |
| 2 | `lemma` | [tendsto_indicator_const_apply_iff_eventually'](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Varianta06a33d3ff75a7f9ed7ba8f4e56a83687e40dea47c43a08c6de36a26db2fd650.lean/declarations/tendsto-indicator-const-apply-iff-eventually--5810930f3f7adfc73ce34ac5.md) | 77 | `result-track:5810930f3f7adfc73ce34ac5d7968b4cdd02ab838a199d912f2838f15096b825` |
| 3 | `lemma` | [tendsto_indicator_const_iff_forall_eventually'](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Varianta06a33d3ff75a7f9ed7ba8f4e56a83687e40dea47c43a08c6de36a26db2fd650.lean/declarations/tendsto-indicator-const-iff-forall-eventually--353fa1e2526228db42e7911d.md) | 91 | `result-track:353fa1e2526228db42e7911df65dbdebf0dc6952ed4b0dace70af3b995695490` |
| 4 | `lemma` | [tendsto_indicator_const_apply_iff_eventually](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Varianta06a33d3ff75a7f9ed7ba8f4e56a83687e40dea47c43a08c6de36a26db2fd650.lean/declarations/tendsto-indicator-const-apply-iff-eventually--536e355959d905a2053bae72.md) | 101 | `result-track:536e355959d905a2053bae721dedd724feae769175a3fae5b3cb17e238b0dd57` |
| 5 | `lemma` | [tendsto_indicator_const_iff_forall_eventually](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Varianta06a33d3ff75a7f9ed7ba8f4e56a83687e40dea47c43a08c6de36a26db2fd650.lean/declarations/tendsto-indicator-const-iff-forall-eventually--3934b99a99f1286d1dc80034.md) | 111 | `result-track:3934b99a99f1286d1dc800348e60af8aa25aa97345ea1cec452517257c931a0e` |
| 6 | `lemma` | [tendsto_indicator_const_iff_tendsto_pi_pure'](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Varianta06a33d3ff75a7f9ed7ba8f4e56a83687e40dea47c43a08c6de36a26db2fd650.lean/declarations/tendsto-indicator-const-iff-tendsto-pi-pure--a049d69a9e271f45dfdc62a0.md) | 118 | `result-track:a049d69a9e271f45dfdc62a00824fdff816d7434e44cc5b5620f4db8efd11733` |
| 7 | `lemma` | [tendsto_indicator_const_iff_tendsto_pi_pure](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Varianta06a33d3ff75a7f9ed7ba8f4e56a83687e40dea47c43a08c6de36a26db2fd650.lean/declarations/tendsto-indicator-const-iff-tendsto-pi-pure--773c59388feb9267fa05da1c.md) | 126 | `result-track:773c59388feb9267fa05da1c722c63dc9fec78692971fa216f5b05a837053751` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
