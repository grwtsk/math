# Verification target: GRWTSK.Topology.GeneralTopology.Absorbs.Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c95380dcd360cc2b4b2d39b15c287ead9c888db4",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c95380dcd360cc2b4b2d39b15c287ead9c888db4`.

Source path: `GRWTSK/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Pointwise.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Action.Pointwise.Set` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bornology.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Absorbs](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/absorbs--ddb529c81a6a3bae684fa794.md) | 51 | `declaration-track:ddb529c81a6a3bae684fa79413f860c972c64f799416d79b3d17bd2f57bd3db0` |
| 2 | `def` | [Absorbent](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/absorbent--ade8c73b5fb37f92821c762e.md) | 55 | `declaration-track:ade8c73b5fb37f92821c762e801c22573a2a7b4254cda93be395e333dd94355c` |
| 3 | `lemma` | [empty](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/empty--f1508e08928c08520c096b00.md) | 66 | `result-track:f1508e08928c08520c096b005b20d075e1209f23d091d62ff6a89085277570fa` |
| 4 | `lemma` | [eventually](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/eventually--e7f64e4ed5585263dd3f1825.md) | 68 | `result-track:e7f64e4ed5585263dd3f182542c3ae82f7557a42a37eec03c6e93f7819cf7442` |
| 5 | `lemma` | [of_boundedSpace](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/of-boundedspace--d7ed4e2ecc9de7ec87ab5419.md) | 70 | `result-track:d7ed4e2ecc9de7ec87ab541969f19306c9a675f31c3f8c9faf8e4cff55542d9e` |
| 6 | `lemma` | [mono_left](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/mono-left--59ae840809a58f79aff806f9.md) | 72 | `result-track:59ae840809a58f79aff806f9a49e39990edf78476ab0428f62f9b7abd9b501ae` |
| 7 | `lemma` | [mono_right](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/mono-right--5d24a261a09075b98feaa257.md) | 75 | `result-track:5d24a261a09075b98feaa25796d29c1ceae8bde549e71b7ea373ccc1fe0ec61e` |
| 8 | `lemma` | [mono](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/mono--02ef4f8b8745fe079199c022.md) | 78 | `result-track:02ef4f8b8745fe079199c022a67b569dc5dc231bf531e4808acea4701b8af406` |
| 9 | `lemma` | [_root_.absorbs_union](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/root-absorbs-union--de235347f4bffab6c0fadb93.md) | 82 | `result-track:de235347f4bffab6c0fadb936291dad50f9d4370b68533f5db4f4c97358fa035` |
| 10 | `lemma` | [union](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/union--d976f5991b271387eadbcda2.md) | 85 | `result-track:d976f5991b271387eadbcda274b15ed7914160004995ecc72b877e30f844017e` |
| 11 | `lemma` | [_root_.Set.Finite.absorbs_sUnion](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/root-set-finite-absorbs-sunion--033baf3d3371b67e90532e6a.md) | 88 | `result-track:033baf3d3371b67e90532e6a7d6400a6aef8da0794ca5c1f5e3563145a0d7a9f` |
| 12 | `lemma` | [sUnion](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/sunion--b96845ec37ca4e9a293eb8ea.md) | 92 | `result-track:b96845ec37ca4e9a293eb8ead8532f42ccf21bd7f575f135ebc92b5f2ac454f8` |
| 13 | `lemma` | [_root_.absorbs_iUnion](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/root-absorbs-iunion--d583edc61395b2191d5d15a7.md) | 97 | `result-track:d583edc61395b2191d5d15a749a670d5748c251ba9d404bc964308e5ccc7379d` |
| 14 | `lemma` | [_root_.Set.Finite.absorbs_biUnion](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/root-set-finite-absorbs-biunion--69ac2989401642f9eb76f6bd.md) | 103 | `result-track:69ac2989401642f9eb76f6bd6ce8d0c267731dd58df102502353c90702090a7e` |
| 15 | `lemma` | [_root_.absorbs_biUnion_finset](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/root-absorbs-biunion-finset--eb299a88f682ef24867e0636.md) | 110 | `result-track:eb299a88f682ef24867e063680e91cdb67a36129b1a24205bc8856eef25e3ad6` |
| 16 | `lemma` | [add](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/add--19a5c886a2d7bd91aa02143a.md) | 122 | `result-track:19a5c886a2d7bd91aa02143a6997b1ec7186142d9bbe4ca77e31e5df01934e6b` |
| 17 | `lemma` | [zero](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/zero--b0983fcb453089f0ec0a3916.md) | 126 | `result-track:b0983fcb453089f0ec0a39161597704bb749560b124afe4d386c4f00663a9dd5` |
| 18 | `lemma` | [Absorbs.univ](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/absorbs-univ--aba846c80d76ab0d10b33060.md) | 139 | `result-track:aba846c80d76ab0d10b33060704ba8431b5279ddc96eca6aa0130f3345919fe2` |
| 19 | `lemma` | [absorbs_iff_eventually_cobounded_mapsTo](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/absorbs-iff-eventually-cobounded-mapsto--cf83e44d4e5ece4c3659740e.md) | 142 | `result-track:cf83e44d4e5ece4c3659740ec885a4c7ec3178d06b2446a37db5d493200217b3` |
| 20 | `lemma` | [absorbs_inter](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/absorbs-inter--6a6e0ca900edc38b7464c6ae.md) | 150 | `result-track:6a6e0ca900edc38b7464c6aec9ff2b19c43bc39233b8e5f215de0917bbf86d8b` |
| 21 | `lemma` | [Absorbs.inter](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/absorbs-inter--00a3afb5325d582d7b1abfca.md) | 153 | `result-track:00a3afb5325d582d7b1abfcaac83dcbde93f97c296c7d268957611424c6a910e` |
| 22 | `def` | [Filter.absorbing](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/filter-absorbing--cb60d3b12459723f158facbc.md) | 158 | `declaration-track:cb60d3b12459723f158facbca634f290fa1b8882be4d3748cd5c84f72d07454f` |
| 23 | `lemma` | [Filter.mem_absorbing](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/filter-mem-absorbing--d5ae4d7dec0a24ef7d75971e.md) | 165 | `result-track:d5ae4d7dec0a24ef7d75971e50cfca5f5f586209b9740e939187097a011cf8ec` |
| 24 | `lemma` | [Set.Finite.absorbs_sInter](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/set-finite-absorbs-sinter--f69a8cb3f87fe86ec180dbff.md) | 167 | `result-track:f69a8cb3f87fe86ec180dbff1fe31be1aa95557a6ea378b3973b9cbb6155b5e5` |
| 25 | `lemma` | [absorbs_iInter](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/absorbs-iinter--8e85eb9800daa1c669e90a33.md) | 174 | `result-track:8e85eb9800daa1c669e90a33b1ce5611bd5b1d36df8d9d058999f7ee445d908c` |
| 26 | `lemma` | [Set.Finite.absorbs_biInter](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/set-finite-absorbs-biinter--74d804873257ea5c105306e1.md) | 180 | `result-track:74d804873257ea5c105306e18af762309f70f768d57ef2191f5cb5e28ab95662` |
| 27 | `lemma` | [absorbs_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/absorbs-zero-iff--5fcfe48509dc1c082b6c07dc.md) | 187 | `result-track:5fcfe48509dc1c082b6c07dca4a0a12f1e667e18ba9ed8d4aeb7a4a03529b59b` |
| 28 | `lemma` | [absorbs_neg_neg](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/absorbs-neg-neg--7ffdeb0c85e43ba277a7c536.md) | 200 | `result-track:7ffdeb0c85e43ba277a7c53641271a9acb85859c8c40256caad81797ba8048eb` |
| 29 | `lemma` | [Absorbs.sub](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/absorbs-sub--c81020cd17a96b04dbda19b5.md) | 204 | `result-track:c81020cd17a96b04dbda19b563339700b7788b8a660c6b623a64ee637b28d79f` |
| 30 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/mono--2eb790937ce1ebc9226c15db.md) | 216 | `result-track:2eb790937ce1ebc9226c15db0ba59788839b0284da375c4005dc9882ef662b55` |
| 31 | `theorem` | [_root_.absorbent_iff_forall_absorbs_singleton](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/root-absorbent-iff-forall-absorbs-singleton--4058119ad378f52d0492d11d.md) | 219 | `result-track:4058119ad378f52d0492d11d8360e5d9d8873da4d4ef6e91c1bcc89f40763bfe` |
| 32 | `theorem` | [absorbs](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/absorbs--0d6e216ae069ca4ec7e01164.md) | 221 | `result-track:0d6e216ae069ca4ec7e01164176f02d4aa792baec3877e770824bb16a6567d4b` |
| 33 | `theorem` | [absorbs_finite](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/absorbs-finite--089daf1c276f8ec600ee08a5.md) | 223 | `result-track:089daf1c276f8ec600ee08a5f2d683202dc48804f42561fa7e0b7f0f137d6974` |
| 34 | `theorem` | [vadd_absorbs](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/vadd-absorbs--e3b2a701a8a176dcae9a4111.md) | 229 | `result-track:e3b2a701a8a176dcae9a4111a501b5e67c74693ca66aebd375ba565ef1c44db5` |
| 35 | `lemma` | [absorbent_univ](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/absorbent-univ--c560c83940b7b43288e2b2dc.md) | 240 | `result-track:c560c83940b7b43288e2b2dc7867b0043b10978b6d50d88696c884d31661b7af` |
| 36 | `lemma` | [absorbent_iff_inv_smul](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/absorbent-iff-inv-smul--be96db10ed31cd727a5cec52.md) | 242 | `result-track:be96db10ed31cd727a5cec52816b977431f3d35b713416d402964fc799c372b3` |
| 37 | `lemma` | [Absorbent.zero_mem](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/absorbent-zero-mem--cdd3711251733e71d442560d.md) | 246 | `result-track:cdd3711251733e71d442560d10c8b2e167bdd9da052c5836d42085e1a5c14c60` |
| 38 | `theorem` | [Absorbs.restrict_scalars](../../../../../mathematics/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/declarations/absorbs-restrict-scalars--d3fd6f8848eff58016ec286d.md) | 252 | `result-track:d3fd6f8848eff58016ec286d978ef43f66481810e15e0769df5db99748113cf2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
