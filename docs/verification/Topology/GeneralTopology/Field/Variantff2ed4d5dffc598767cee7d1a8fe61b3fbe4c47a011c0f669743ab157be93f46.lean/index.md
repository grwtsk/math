# Verification target: GRWTSK.Topology.GeneralTopology.Field.Variantff2ed4d5dffc598767cee7d1a8fe61b3fbe4c47a011c0f669743ab157be93f46

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5481ee5b7b30d5e22d61d8e6f0c7796ecd7cb06",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Field/Variantff2ed4d5dffc598767cee7d1a8fe61b3fbe4c47a011c0f669743ab157be93f46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Field/Variantff2ed4d5dffc598767cee7d1a8fe61b3fbe4c47a011c0f669743ab157be93f46.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Field/Variantff2ed4d5dffc598767cee7d1a8fe61b3fbe4c47a011c0f669743ab157be93f46.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5481ee5b7b30d5e22d61d8e6f0c7796ecd7cb06`.

Source path: `GRWTSK/Topology/GeneralTopology/Field/Variantff2ed4d5dffc598767cee7d1a8fe61b3fbe4c47a011c0f669743ab157be93f46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Field/Variantff2ed4d5dffc598767cee7d1a8fe61b3fbe4c47a011c0f669743ab157be93f46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Ring.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.GroupWithZero` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocalExtr` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Subfield` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Filter.tendsto_cocompact_mul_left₀](../../../../../mathematics/Topology/GeneralTopology/Field/Variantff2ed4d5dffc598767cee7d1a8fe61b3fbe4c47a011c0f669743ab157be93f46.lean/declarations/filter-tendsto-cocompact-mul-left--54b73614899125c8a729b7b7.md) | 33 | `result-track:54b73614899125c8a729b7b73875c606a4faa69b026204c35821b2a12ea701d9` |
| 2 | `theorem` | [Filter.tendsto_cocompact_mul_right₀](../../../../../mathematics/Topology/GeneralTopology/Field/Variantff2ed4d5dffc598767cee7d1a8fe61b3fbe4c47a011c0f669743ab157be93f46.lean/declarations/filter-tendsto-cocompact-mul-right--22179f212c211eeeca5fa71d.md) | 40 | `result-track:22179f212c211eeeca5fa71dc7e8a167881e429a7aaf501ab706454d91db2c56` |
| 3 | `class` | [TopologicalDivisionRing](../../../../../mathematics/Topology/GeneralTopology/Field/Variantff2ed4d5dffc598767cee7d1a8fe61b3fbe4c47a011c0f669743ab157be93f46.lean/declarations/topologicaldivisionring--a7ab6065df212aecd584f5cc.md) | 49 | `declaration-track:a7ab6065df212aecd584f5cc5adc17ddc55b39b4e285a223969ebd72b342cc44` |
| 4 | `def` | [Subfield.topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Field/Variantff2ed4d5dffc598767cee7d1a8fe61b3fbe4c47a011c0f669743ab157be93f46.lean/declarations/subfield-topologicalclosure--ead2bc21dbc1aea7344535dd.md) | 58 | `declaration-track:ead2bc21dbc1aea7344535dd57251f80f8c623bbba59ee6ef391c6bde182db23` |
| 5 | `theorem` | [Subfield.le_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Field/Variantff2ed4d5dffc598767cee7d1a8fe61b3fbe4c47a011c0f669743ab157be93f46.lean/declarations/subfield-le-topologicalclosure--152b88e951adbb10827a0e17.md) | 70 | `result-track:152b88e951adbb10827a0e17c95275fcc69f45b67db69ef8264ce2e5893e896b` |
| 6 | `theorem` | [Subfield.isClosed_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Field/Variantff2ed4d5dffc598767cee7d1a8fe61b3fbe4c47a011c0f669743ab157be93f46.lean/declarations/subfield-isclosed-topologicalclosure--f68eef6cfea01102a532ace8.md) | 74 | `result-track:f68eef6cfea01102a532ace80eb605d1d5bebf2402d0f45fcc53b9883a8b36fa` |
| 7 | `theorem` | [Subfield.topologicalClosure_minimal](../../../../../mathematics/Topology/GeneralTopology/Field/Variantff2ed4d5dffc598767cee7d1a8fe61b3fbe4c47a011c0f669743ab157be93f46.lean/declarations/subfield-topologicalclosure-minimal--7bd9968c44f9a36654c3bb4f.md) | 79 | `result-track:7bd9968c44f9a36654c3bb4f846dc81835c809f17b08f706af304c2ccea77df0` |
| 8 | `def` | [affineHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Field/Variantff2ed4d5dffc598767cee7d1a8fe61b3fbe4c47a011c0f669743ab157be93f46.lean/declarations/affinehomeomorph--0a701204db2c4ccc00d60e74.md) | 102 | `declaration-track:0a701204db2c4ccc00d60e740e61068b49de6f0d4484528e15c73aa64064a410` |
| 9 | `theorem` | [IsLocalMin.inv](../../../../../mathematics/Topology/GeneralTopology/Field/Variantff2ed4d5dffc598767cee7d1a8fe61b3fbe4c47a011c0f669743ab157be93f46.lean/declarations/islocalmin-inv--060219f5160bb1a92a9f1f73.md) | 119 | `result-track:060219f5160bb1a92a9f1f73ef4939da51e0c4dc14571151bece091517857fbc` |
| 10 | `theorem` | [IsPreconnected.eq_one_or_eq_neg_one_of_sq_eq](../../../../../mathematics/Topology/GeneralTopology/Field/Variantff2ed4d5dffc598767cee7d1a8fe61b3fbe4c47a011c0f669743ab157be93f46.lean/declarations/ispreconnected-eq-one-or-eq-neg-one-of-sq-eq--12bad4daad06464c01351134.md) | 137 | `result-track:12bad4daad06464c013511344049b52a3df75e4dd85fae4b566a7b1156bcd263` |
| 11 | `theorem` | [IsPreconnected.eq_or_eq_neg_of_sq_eq](../../../../../mathematics/Topology/GeneralTopology/Field/Variantff2ed4d5dffc598767cee7d1a8fe61b3fbe4c47a011c0f669743ab157be93f46.lean/declarations/ispreconnected-eq-or-eq-neg-of-sq-eq--603c7fdf389c8ac03928c486.md) | 149 | `result-track:603c7fdf389c8ac03928c486d448096e2fda3aabaf475892a8212b4449d8adff` |
| 12 | `theorem` | [IsPreconnected.eq_of_sq_eq](../../../../../mathematics/Topology/GeneralTopology/Field/Variantff2ed4d5dffc598767cee7d1a8fe61b3fbe4c47a011c0f669743ab157be93f46.lean/declarations/ispreconnected-eq-of-sq-eq--62d239f4a2c6371c3c703615.md) | 162 | `result-track:62d239f4a2c6371c3c70361516fff4306f12ab23e824c6b050bd4f4afc261e13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
