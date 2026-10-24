# Verification target: GRWTSK.Topology.GeneralTopology.ExtendFrom.Variant818d1cd2070d6fa49b7940cf29c6aeccaf21b381435a1f0033d833625e019c20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58b59a7bbc8645082c50f53e5c41b66b353ebfeb",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ExtendFrom/Variant818d1cd2070d6fa49b7940cf29c6aeccaf21b381435a1f0033d833625e019c20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variant818d1cd2070d6fa49b7940cf29c6aeccaf21b381435a1f0033d833625e019c20.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variant818d1cd2070d6fa49b7940cf29c6aeccaf21b381435a1f0033d833625e019c20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58b59a7bbc8645082c50f53e5c41b66b353ebfeb`.

Source path: `GRWTSK/Topology/GeneralTopology/ExtendFrom/Variant818d1cd2070d6fa49b7940cf29c6aeccaf21b381435a1f0033d833625e019c20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ExtendFrom/Variant818d1cd2070d6fa49b7940cf29c6aeccaf21b381435a1f0033d833625e019c20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ExtendFrom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.DenselyOrdered` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuousOn_Icc_extendFrom_Ioo](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variant818d1cd2070d6fa49b7940cf29c6aeccaf21b381435a1f0033d833625e019c20.lean/declarations/continuouson-icc-extendfrom-ioo--e4f731db09a54c9adb138e14.md) | 17 | `result-track:e4f731db09a54c9adb138e147707dea692a3c1b8e05496ad4d257860546d9717` |
| 2 | `theorem` | [eq_lim_at_left_extendFrom_Ioo](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variant818d1cd2070d6fa49b7940cf29c6aeccaf21b381435a1f0033d833625e019c20.lean/declarations/eq-lim-at-left-extendfrom-ioo--e30d22e345b4d6f6d0236321.md) | 29 | `result-track:e30d22e345b4d6f6d0236321d3cacebe12a6dace7f370425a0dd150a2d1aecac` |
| 3 | `theorem` | [eq_lim_at_right_extendFrom_Ioo](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variant818d1cd2070d6fa49b7940cf29c6aeccaf21b381435a1f0033d833625e019c20.lean/declarations/eq-lim-at-right-extendfrom-ioo--b195a0e1095def899f2c0a1b.md) | 37 | `result-track:b195a0e1095def899f2c0a1b22a9660b6fbd7a9991d88236a3265a45e8959d01` |
| 4 | `theorem` | [continuousOn_Ico_extendFrom_Ioo](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variant818d1cd2070d6fa49b7940cf29c6aeccaf21b381435a1f0033d833625e019c20.lean/declarations/continuouson-ico-extendfrom-ioo--1a545538eca1b35dafbe951e.md) | 45 | `result-track:1a545538eca1b35dafbe951eb5e1d86e7a7d526148a85f370af0598286df587f` |
| 5 | `theorem` | [continuousOn_Ioc_extendFrom_Ioo](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variant818d1cd2070d6fa49b7940cf29c6aeccaf21b381435a1f0033d833625e019c20.lean/declarations/continuouson-ioc-extendfrom-ioo--a93bd2a7f0aeeb9468416025.md) | 58 | `result-track:a93bd2a7f0aeeb9468416025c3539b10ead26b23a2d1de68244408271a6b3eac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
