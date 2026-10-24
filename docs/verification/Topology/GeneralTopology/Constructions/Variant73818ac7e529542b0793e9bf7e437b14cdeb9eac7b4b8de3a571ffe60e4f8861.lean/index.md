# Verification target: GRWTSK.Topology.GeneralTopology.Constructions.Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b086d9149c62fd6fcbd9ad76e0dd10c5f22d943",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b086d9149c62fd6fcbd9ad76e0dd10c5f22d943`.

Source path: `GRWTSK/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instTopologicalSpaceMulOpposite](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean/declarations/insttopologicalspacemulopposite--250796a3951014f802838040.md) | 32 | `declaration-track:250796a3951014f802838040f54294c8dec284ee1f7113e3bd7e15aee6768e98` |
| 2 | `theorem` | [continuous_unop](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean/declarations/continuous-unop--fb2028128ccbe663ac0c9711.md) | 38 | `result-track:fb2028128ccbe663ac0c9711dee8aee7516051934426daaa53fa1df34f79dad2` |
| 3 | `theorem` | [continuous_op](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean/declarations/continuous-op--89f4fc99185825cea3e21fed.md) | 44 | `result-track:89f4fc99185825cea3e21fedfcc67434e30b536a2e6c0320741464223099e692` |
| 4 | `def` | [opHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean/declarations/ophomeomorph--8b4a50e00968ccf61c279464.md) | 51 | `declaration-track:8b4a50e00968ccf61c27946400e3a904a833def711c6a46f4384e02510d3c4a0` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean/declarations/instance--b4a7e590c5f0244063e6cbbf.md) | 59 | `declaration-track:b4a7e590c5f0244063e6cbbf74ef1b30800749c760532f831681bfb0f5c6d6c2` |
| 6 | `theorem` | [map_op_nhds](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean/declarations/map-op-nhds--aa56894f427f7086c013abf0.md) | 63 | `result-track:aa56894f427f7086c013abf03e3683682882be6c20512e2cb62f0a734b243ea0` |
| 7 | `theorem` | [map_unop_nhds](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean/declarations/map-unop-nhds--5aa7c95cc780c05a7ea8d5ac.md) | 69 | `result-track:5aa7c95cc780c05a7ea8d5ac587566e06b3805cc0ad1aad72db494b400efec42` |
| 8 | `theorem` | [comap_op_nhds](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean/declarations/comap-op-nhds--743f2ff15ad345c2f14f75ae.md) | 75 | `result-track:743f2ff15ad345c2f14f75ae3933df143f6089b89b5bd19cb899cf8a137f2c77` |
| 9 | `theorem` | [comap_unop_nhds](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean/declarations/comap-unop-nhds--38f704cbc29bc0ea2c7c1a48.md) | 81 | `result-track:38f704cbc29bc0ea2c7c1a48deb83048b749f8adf868b3cc0a6877bb1cb7d28a` |
| 10 | `instance` | [instTopologicalSpaceUnits](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean/declarations/insttopologicalspaceunits--54711b4bb0c9db124f004fb3.md) | 97 | `declaration-track:54711b4bb0c9db124f004fb3909e7cd85bc97d37ba65eaa7a13bc2a52410a7e2` |
| 11 | `theorem` | [inducing_embedProduct](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean/declarations/inducing-embedproduct--191ef1e48c6fd016bb670920.md) | 101 | `result-track:191ef1e48c6fd016bb670920168e848e1ddca47553c3193db0bc7aebe4161fa5` |
| 12 | `theorem` | [embedding_embedProduct](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean/declarations/embedding-embedproduct--320939263556e663902c0588.md) | 107 | `result-track:320939263556e663902c0588e531ebb88aacd4ea6ea758680eef7bf8e633ad2d` |
| 13 | `lemma` | [topology_eq_inf](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean/declarations/topology-eq-inf--39108f53225768285105886f.md) | 112 | `result-track:39108f53225768285105886fb5ae086551c5adb834f4658f42269f9c71891f8a` |
| 14 | `lemma` | [embedding_val_mk'](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean/declarations/embedding-val-mk--45d6332dea90e78c3137c1c7.md) | 124 | `result-track:45d6332dea90e78c3137c1c745203178b8602826199b1efa4558a518cb6d9efe` |
| 15 | `lemma` | [embedding_val_mk](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean/declarations/embedding-val-mk--7b5a2681c662130fd91beaab.md) | 138 | `result-track:7b5a2681c662130fd91beaabded757aa3d9b8712a5951c26667586f9a22b0022` |
| 16 | `theorem` | [continuous_embedProduct](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean/declarations/continuous-embedproduct--b35c54c2600034f11ca1120a.md) | 145 | `result-track:b35c54c2600034f11ca1120a990190dbdb36c111ba7a89a369dd47c5743d5760` |
| 17 | `theorem` | [continuous_val](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean/declarations/continuous-val--0ba02b57cc91ed7c628c86d2.md) | 151 | `result-track:0ba02b57cc91ed7c628c86d2117884446e0ff16b87749c8ae61ff53c453b13e7` |
| 18 | `theorem` | [continuous_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean/declarations/continuous-iff--ced04bbf700d1eca24500c55.md) | 157 | `result-track:ced04bbf700d1eca24500c551d5d4595a9d853528cc46ec1b6a3d5a3fe771a07` |
| 19 | `theorem` | [continuous_coe_inv](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean/declarations/continuous-coe-inv--24eb794dbdba5f202878cf72.md) | 166 | `result-track:24eb794dbdba5f202878cf7237c3fb85072082929e04514cf63433b907e3aa89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
