# Verification target: GRWTSK.Topology.GeneralTopology.Field.Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f98c66552079474e8610fcdac05d432bfccc7365",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f98c66552079474e8610fcdac05d432bfccc7365`.

Source path: `GRWTSK/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Ring.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.GroupWithZero` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocalExtr` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Subfield` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Filter.tendsto_cocompact_mul_left₀](../../../../../mathematics/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean/declarations/filter-tendsto-cocompact-mul-left--92cbb994b960e1a3b475c0ab.md) | 25 | `result-track:92cbb994b960e1a3b475c0ab4ff541881d6f02acc749833c0c33a8ce3ba3ca90` |
| 2 | `theorem` | [Filter.tendsto_cocompact_mul_right₀](../../../../../mathematics/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean/declarations/filter-tendsto-cocompact-mul-right--56c183e8e261237ff6c95c55.md) | 32 | `result-track:56c183e8e261237ff6c95c55622224c15897aef59ea65a579710e65cc340e80c` |
| 3 | `class` | [TopologicalDivisionRing](../../../../../mathematics/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean/declarations/topologicaldivisionring--adfc7e2bb52455bc820c08f6.md) | 41 | `declaration-track:adfc7e2bb52455bc820c08f687f1fd80457c7b0bc4da33b5cc847dcf333c8dcb` |
| 4 | `def` | [Subfield.topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean/declarations/subfield-topologicalclosure--8868ce5faa5471f2f4378938.md) | 50 | `declaration-track:8868ce5faa5471f2f4378938359b44aa5a6a860686d4586b35b0df9ad394f310` |
| 5 | `theorem` | [Subfield.le_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean/declarations/subfield-le-topologicalclosure--c76c8553749d2a1a782a0e7e.md) | 62 | `result-track:c76c8553749d2a1a782a0e7ec797353b792bf820df3de6107d359e7565050f5d` |
| 6 | `theorem` | [Subfield.isClosed_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean/declarations/subfield-isclosed-topologicalclosure--8ae4b835cb88ed8b9021f2f9.md) | 66 | `result-track:8ae4b835cb88ed8b9021f2f90107410de5167a8b10b4cf9b36395f181ff75f6b` |
| 7 | `theorem` | [Subfield.topologicalClosure_minimal](../../../../../mathematics/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean/declarations/subfield-topologicalclosure-minimal--44ed5faf02b17096116c6115.md) | 71 | `result-track:44ed5faf02b17096116c611536f3c3af35b283a8deed6a92003dd361caf3bcb4` |
| 8 | `def` | [affineHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean/declarations/affinehomeomorph--bed69a63274da9dda6656907.md) | 94 | `declaration-track:bed69a63274da9dda6656907f62240789d0045ecd1703fea0f3cc0a7f015af88` |
| 9 | `theorem` | [IsLocalMin.inv](../../../../../mathematics/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean/declarations/islocalmin-inv--45b65e668848fe0810c17932.md) | 111 | `result-track:45b65e668848fe0810c1793283e83d6ceb7f1ca4f6241a43ae14c7fb0bb793db` |
| 10 | `theorem` | [IsPreconnected.eq_one_or_eq_neg_one_of_sq_eq](../../../../../mathematics/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean/declarations/ispreconnected-eq-one-or-eq-neg-one-of-sq-eq--a265e60cafaec16210c444f9.md) | 129 | `result-track:a265e60cafaec16210c444f95998cd9b4f26d1d0fa6f58bf87b1be02c70b2575` |
| 11 | `theorem` | [IsPreconnected.eq_or_eq_neg_of_sq_eq](../../../../../mathematics/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean/declarations/ispreconnected-eq-or-eq-neg-of-sq-eq--111d6af350f9dbbb70dda70a.md) | 141 | `result-track:111d6af350f9dbbb70dda70a6f77065161b41db9d602e501a135f15fe27d9ffc` |
| 12 | `theorem` | [IsPreconnected.eq_of_sq_eq](../../../../../mathematics/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean/declarations/ispreconnected-eq-of-sq-eq--6c18562c7bd11a857b8a46c1.md) | 154 | `result-track:6c18562c7bd11a857b8a46c173e59b90892f68d0152e2902e12db5292bb1c113` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
