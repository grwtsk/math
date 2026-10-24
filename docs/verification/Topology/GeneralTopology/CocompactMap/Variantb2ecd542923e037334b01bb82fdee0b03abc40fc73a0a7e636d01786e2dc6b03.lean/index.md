# Verification target: GRWTSK.Topology.GeneralTopology.CocompactMap.Variantb2ecd542923e037334b01bb82fdee0b03abc40fc73a0a7e636d01786e2dc6b03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b51e618d64b9a561fec0715a363a699755605c9d",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CocompactMap/Variantb2ecd542923e037334b01bb82fdee0b03abc40fc73a0a7e636d01786e2dc6b03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantb2ecd542923e037334b01bb82fdee0b03abc40fc73a0a7e636d01786e2dc6b03.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantb2ecd542923e037334b01bb82fdee0b03abc40fc73a0a7e636d01786e2dc6b03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b51e618d64b9a561fec0715a363a699755605c9d`.

Source path: `GRWTSK/Topology/GeneralTopology/CocompactMap/Variantb2ecd542923e037334b01bb82fdee0b03abc40fc73a0a7e636d01786e2dc6b03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CocompactMap/Variantb2ecd542923e037334b01bb82fdee0b03abc40fc73a0a7e636d01786e2dc6b03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.CocompactMap` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Bounded` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [CocompactMapClass.norm_le](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantb2ecd542923e037334b01bb82fdee0b03abc40fc73a0a7e636d01786e2dc6b03.lean/declarations/cocompactmapclass-norm-le--a2e5644fc633a4711d907ea1.md) | 30 | `result-track:a2e5644fc633a4711d907ea1d5f9bc0e6cdc52de6eca17e4b498e316d28a8f6f` |
| 2 | `theorem` | [Filter.tendsto_cocompact_cocompact_of_norm](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantb2ecd542923e037334b01bb82fdee0b03abc40fc73a0a7e636d01786e2dc6b03.lean/declarations/filter-tendsto-cocompact-cocompact-of-norm--3178296d6b1ab8b261809513.md) | 42 | `result-track:3178296d6b1ab8b261809513ff096235a32b967a1669d412e085e0249042fcc2` |
| 3 | `theorem` | [ContinuousMapClass.toCocompactMapClass_of_norm](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantb2ecd542923e037334b01bb82fdee0b03abc40fc73a0a7e636d01786e2dc6b03.lean/declarations/continuousmapclass-tococompactmapclass-of-norm--a2dcd5cdb678090c326a275b.md) | 56 | `result-track:a2dcd5cdb678090c326a275b38dabe5e2949c2fe7ace4b651b10eacb1e965015` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
