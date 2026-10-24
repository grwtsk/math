# Verification target: GRWTSK.Algebra.GroupTheory.SubmonoidClosure.Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03753395540e26a78dc2ac7abfb27f8feb23e433",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03753395540e26a78dc2ac7abfb27f8feb23e433`.

Source path: `GRWTSK/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.AtTopBot.Group` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mapClusterPt_atTop_zpow_iff_pow](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean/declarations/mapclusterpt-attop-zpow-iff-pow--924c9db4e6d4dcf93ba9fb21.md) | 35 | `result-track:924c9db4e6d4dcf93ba9fb21359769fd2f010182cecb562cfd55007da7cfd75f` |
| 2 | `theorem` | [mapClusterPt_self_zpow_atTop_pow](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean/declarations/mapclusterpt-self-zpow-attop-pow--22f3736c6722f5413faee34d.md) | 42 | `result-track:22f3736c6722f5413faee34dfa25ca38a16479013007a9ad3ede323ca391edb0` |
| 3 | `theorem` | [mapClusterPt_one_atTop_pow](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean/declarations/mapclusterpt-one-attop-pow--b08a42d73c841821fbaebcf7.md) | 57 | `result-track:b08a42d73c841821fbaebcf78910e4359ae55b43f3bbca0ba3b0f43e53ce6c79` |
| 4 | `theorem` | [mapClusterPt_self_atTop_pow](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean/declarations/mapclusterpt-self-attop-pow--4ba9f1745938a0f293494216.md) | 61 | `result-track:4ba9f1745938a0f2934942168308a7b4901babc058c7ea92025a674908d52db1` |
| 5 | `theorem` | [mapClusterPt_atTop_pow_tfae](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean/declarations/mapclusterpt-attop-pow-tfae--1c8290793defd8234511fef5.md) | 65 | `result-track:1c8290793defd8234511fef57287475acae88a887155eb912689cb661c0bb896` |
| 6 | `theorem` | [mapClusterPt_atTop_pow_iff_mem_topologicalClosure_zpowers](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean/declarations/mapclusterpt-attop-pow-iff-mem-topologicalclosure-zpowers--a784c34d6a6e70f7677f04e8.md) | 85 | `result-track:a784c34d6a6e70f7677f04e84f778abfdccfcf251a1635583f4e73191fd6c279` |
| 7 | `theorem` | [mapClusterPt_inv_atTop_pow](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean/declarations/mapclusterpt-inv-attop-pow--db42a1b29b7ba1df1a395906.md) | 90 | `result-track:db42a1b29b7ba1df1a3959060bea141d391163ba3da7f67b813b254fe0d904c6` |
| 8 | `theorem` | [closure_range_zpow_eq_pow](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean/declarations/closure-range-zpow-eq-pow--39842ea72bc71ef0f030b449.md) | 95 | `result-track:39842ea72bc71ef0f030b449fb2cb55e2ea2b253d4e9400800285a704ba084ed` |
| 9 | `theorem` | [denseRange_zpow_iff_pow](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean/declarations/denserange-zpow-iff-pow--458693b0df08209f08bca783.md) | 101 | `result-track:458693b0df08209f08bca78378a8cf97caadcaa9bf7426f1d701fa5960df3ac2` |
| 10 | `theorem` | [topologicalClosure_subgroupClosure_toSubmonoid](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean/declarations/topologicalclosure-subgroupclosure-tosubmonoid--56eb771a4f9fe245b0b004a5.md) | 106 | `result-track:56eb771a4f9fe245b0b004a5fb6409cb1530955ce756ae9a6674fead5102ca41` |
| 11 | `theorem` | [closure_submonoidClosure_eq_closure_subgroupClosure](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean/declarations/closure-submonoidclosure-eq-closure-subgroupclosure--6485e53e86057698b0e13989.md) | 119 | `result-track:6485e53e86057698b0e139896171ddfa24d6f5db9d750b7e2e07f096ba47b1f4` |
| 12 | `theorem` | [dense_submonoidClosure_iff_subgroupClosure](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean/declarations/dense-submonoidclosure-iff-subgroupclosure--eda8dd8bff98b71b9d296ef1.md) | 124 | `result-track:eda8dd8bff98b71b9d296ef11f7e8e2e5368320f7cb14655a2fd600aa4373ee6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
