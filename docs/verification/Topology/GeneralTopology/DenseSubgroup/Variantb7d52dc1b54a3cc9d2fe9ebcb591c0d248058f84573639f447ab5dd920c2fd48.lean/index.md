# Verification target: GRWTSK.Topology.GeneralTopology.DenseSubgroup.Variantb7d52dc1b54a3cc9d2fe9ebcb591c0d248058f84573639f447ab5dd920c2fd48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1563f73540d2169e1f0d4018a4b697b2293d07c0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DenseSubgroup/Variantb7d52dc1b54a3cc9d2fe9ebcb591c0d248058f84573639f447ab5dd920c2fd48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DenseSubgroup/Variantb7d52dc1b54a3cc9d2fe9ebcb591c0d248058f84573639f447ab5dd920c2fd48.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DenseSubgroup/Variantb7d52dc1b54a3cc9d2fe9ebcb591c0d248058f84573639f447ab5dd920c2fd48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1563f73540d2169e1f0d4018a4b697b2293d07c0`.

Source path: `GRWTSK/Topology/GeneralTopology/DenseSubgroup/Variantb7d52dc1b54a3cc9d2fe9ebcb591c0d248058f84573639f447ab5dd920c2fd48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DenseSubgroup/Variantb7d52dc1b54a3cc9d2fe9ebcb591c0d248058f84573639f447ab5dd920c2fd48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Irrational` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.AddCircle` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Archimedean` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dense_addSubgroupClosure_pair_iff](../../../../../mathematics/Topology/GeneralTopology/DenseSubgroup/Variantb7d52dc1b54a3cc9d2fe9ebcb591c0d248058f84573639f447ab5dd920c2fd48.lean/declarations/dense-addsubgroupclosure-pair-iff--c6695f4cec43ec6ea700be3d.md) | 26 | `result-track:c6695f4cec43ec6ea700be3deea3173085044458d51db1cfc1ce2b4657afd176` |
| 2 | `theorem` | [denseRange_zsmul_coe_iff](../../../../../mathematics/Topology/GeneralTopology/DenseSubgroup/Variantb7d52dc1b54a3cc9d2fe9ebcb591c0d248058f84573639f447ab5dd920c2fd48.lean/declarations/denserange-zsmul-coe-iff--dd37672d5e358dac4df7c7fc.md) | 51 | `result-track:dd37672d5e358dac4df7c7fc14e35547426527180c02c58033dd7db4da08a588` |
| 3 | `theorem` | [denseRange_zsmul_iff](../../../../../mathematics/Topology/GeneralTopology/DenseSubgroup/Variantb7d52dc1b54a3cc9d2fe9ebcb591c0d248058f84573639f447ab5dd920c2fd48.lean/declarations/denserange-zsmul-iff--da10f2e6abf2039a77e63534.md) | 61 | `result-track:da10f2e6abf2039a77e635344011ab0d1eb45229a7f1979fb97b1d632ced8eda` |
| 4 | `theorem` | [dense_addSubgroup_iff_ne_zmultiples](../../../../../mathematics/Topology/GeneralTopology/DenseSubgroup/Variantb7d52dc1b54a3cc9d2fe9ebcb591c0d248058f84573639f447ab5dd920c2fd48.lean/declarations/dense-addsubgroup-iff-ne-zmultiples--2c1248cb69556f4f8c0a1fd4.md) | 68 | `result-track:2c1248cb69556f4f8c0a1fd457d03ddf88b2667733342f187492c67c1b579764` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
