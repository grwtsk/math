# Verification target: GRWTSK.Topology.GeneralTopology.MulAction.Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "901971ba4a1a76c9562b661576bc87a01124e68b",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `901971ba4a1a76c9562b661576bc87a01124e68b`.

Source path: `GRWTSK/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.AddTorsor.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.SubMulAction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Constructions` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ConstMulAction` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/continuoussmul--af81d320cba541a746f75d8c.md) | 40 | `declaration-track:af81d320cba541a746f75d8c3d640d628773513dc48aae8d9174052006a57c39` |
| 2 | `class` | [ContinuousVAdd](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/continuousvadd--9648e00c2ec9b703f1994373.md) | 50 | `declaration-track:9648e00c2ec9b703f199437360c37ad7756889c241a5037e25703972c473181c` |
| 3 | `lemma` | [IsScalarTower.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/isscalartower-continuoussmul--24f5984e0e00a52c57bfccea.md) | 69 | `result-track:24f5984e0e00a52c57bfcceaf00902ce6c6438d2fe3978c7377d4a3f4d39f8cc` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/instance--38c6aef1de6f72dd94d9dc65.md) | 77 | `declaration-track:38c6aef1de6f72dd94d9dc65cc7651a713b9e5cf513f632a39e6e69c983751b9` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/instance--f7823ac52d71c466f43a3f7d.md) | 81 | `declaration-track:f7823ac52d71c466f43a3f7d08ad713228977d8fb0e8efb7ff89319d38e045ed` |
| 6 | `theorem` | [ContinuousSMul.induced](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/continuoussmul-induced--22dc7f2785ec87f57c5f9a23.md) | 84 | `result-track:22dc7f2785ec87f57c5f9a2315944136ffc07ff2520d8d290b1df9ad3fc61186` |
| 7 | `theorem` | [Filter.Tendsto.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/filter-tendsto-smul--d042a63033a15999d941da47.md) | 94 | `result-track:d042a63033a15999d941da4727f01a769238892735cf0f1d827a3ed274681335` |
| 8 | `theorem` | [Filter.Tendsto.smul_const](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/filter-tendsto-smul-const--cc6b7331b66d17d519e7aafc.md) | 100 | `result-track:cc6b7331b66d17d519e7aafce397ab15b78d4c9a1901e3cd2f2c70a7159c1e47` |
| 9 | `theorem` | [ContinuousWithinAt.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/continuouswithinat-smul--1d7ad62f0e5943ce6ff01f14.md) | 107 | `result-track:1d7ad62f0e5943ce6ff01f149c265d979889b3fd677f5f05844211bf5de93c95` |
| 10 | `theorem` | [ContinuousAt.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/continuousat-smul--7e70babae2341ff0fd390966.md) | 112 | `result-track:7e70babae2341ff0fd3909660a60e1f035f24aa815f5fbdb963af5e95374cbb1` |
| 11 | `theorem` | [ContinuousOn.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/continuouson-smul--af4b5c96d1362b8b6f4d0218.md) | 117 | `result-track:af4b5c96d1362b8b6f4d021851ab9be8be730dcd4897c0682ea1a6c420743ca4` |
| 12 | `theorem` | [Continuous.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/continuous-smul--508deb31f89d903ca30277a2.md) | 121 | `result-track:508deb31f89d903ca30277a2b80c43bd9449dacbb484ef5fc07212bf1f1bcbe2` |
| 13 | `instance` | [ContinuousSMul.op](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/continuoussmul-op--2be69e16185fcb3d9806f777.md) | 127 | `declaration-track:2be69e16185fcb3d9806f777d996fd1de0416d43fe6fb5c08183d1309a77fb25` |
| 14 | `instance` | [MulOpposite.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/mulopposite-continuoussmul--b8ee4a02b655fc70edd29886.md) | 134 | `declaration-track:b8ee4a02b655fc70edd29886fdab3e2fa75aa6089042f3df8749a045cf887b28` |
| 15 | `theorem` | [Specializes.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/specializes-smul--b15b96cda864af532c5194bd.md) | 139 | `result-track:b15b96cda864af532c5194bd6e566a44b1fd8c4d9c6852a6315588134d5e05f0` |
| 16 | `theorem` | [Inseparable.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/inseparable-smul--e48bc0b7abb3feaa8544122a.md) | 144 | `result-track:e48bc0b7abb3feaa8544122acb4025e743953af519393628cc56600dfbc1e46b` |
| 17 | `lemma` | [IsCompact.smul_set](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/iscompact-smul-set--75615f2bc9a7bd01a155eb92.md) | 149 | `result-track:75615f2bc9a7bd01a155eb92126d193199fec9354e2c5b868d9ff6367c6e725f` |
| 18 | `lemma` | [smul_set_closure_subset](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/smul-set-closure-subset--9b9655c333ccd9ab04c97f10.md) | 155 | `result-track:9b9655c333ccd9ab04c97f10f29893c04c5ccff8ab24c6e621224423b2bd217d` |
| 19 | `lemma` | [Topology.IsInducing.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/topology-isinducing-continuoussmul--80cb05dca0d36719d79b8a48.md) | 175 | `result-track:80cb05dca0d36719d79b8a4877a2b16997f8a8ec57ef671045fcb78adf1fda9f` |
| 20 | `instance` | [SMulMemClass.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/smulmemclass-continuoussmul--8129a56f072bf361d4be966a.md) | 185 | `declaration-track:8129a56f072bf361d4be966a3cb77ec52f972ba8b8f2bb3da680a8ad8e045bb8` |
| 21 | `instance` | [Units.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/units-continuoussmul--d4d0c364acd38755c2c975ec.md) | 196 | `declaration-track:d4d0c364acd38755c2c975ec04f81de0821bc75caa7bc28c02e4941a28c1b0fe` |
| 22 | `theorem` | [MulAction.continuousSMul_compHom](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/mulaction-continuoussmul-comphom--f5413f2b0c430d96a8db28d7.md) | 202 | `result-track:f5413f2b0c430d96a8db28d790a3cab7a31fbc0121b97d7a76f65393da8a4cc5` |
| 23 | `instance` | [Submonoid.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/submonoid-continuoussmul--be190ae90a6ce4262871369b.md) | 210 | `declaration-track:be190ae90a6ce4262871369bfde5ba31d6274ca1476dd49f6cafc7e72aac3874` |
| 24 | `instance` | [Subgroup.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/subgroup-continuoussmul--3655b345c675e88b2825b56d.md) | 220 | `declaration-track:3655b345c675e88b2825b56db6ff0c1a9b3567b8e472e3a21181e9d57f948e18` |
| 25 | `lemma` | [stabilizer_isOpen](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/stabilizer-isopen--d179f942a3de7f6774b0fad5.md) | 226 | `result-track:d179f942a3de7f6774b0fad5f95764766293c3c76386a6d9cc4210dcc829e322` |
| 26 | `instance` | [Prod.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/prod-continuoussmul--0d11f35dca0f6315d40d93e3.md) | 232 | `declaration-track:0d11f35dca0f6315d40d93e3e1be1318d5abbba0af08ee301a90bbd3e6d9112b` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/instance--b2e1ab9e4da98f5b62283ff4.md) | 238 | `declaration-track:b2e1ab9e4da98f5b62283ff4c376701e24d9f7940b61dc8499c6d258ea5443e7` |
| 28 | `theorem` | [continuousSMul_sInf](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/continuoussmul-sinf--936e77e02712d35a45396fc7.md) | 251 | `result-track:936e77e02712d35a45396fc7fabcb83097783462cb2309fd9125ebc7ffbd61b5` |
| 29 | `theorem` | [continuousSMul_iInf](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/continuoussmul-iinf--78e1c9ba634372bd472be4eb.md) | 264 | `result-track:78e1c9ba634372bd472be4ebd6a86f1072ca063cd61e1bee33fef565166268db` |
| 30 | `theorem` | [continuousSMul_inf](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/continuoussmul-inf--4ad9d84a9946d97298495ec0.md) | 269 | `result-track:4ad9d84a9946d97298495ec001c9d5c0a9a5ac055583617f907445fc2a8b6afe` |
| 31 | `theorem` | [AddTorsor.connectedSpace](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/declarations/addtorsor-connectedspace--e4842a048e8eea5157ddb270.md) | 285 | `result-track:e4842a048e8eea5157ddb270deb8319a8138bc8d9d741537111d9f77a0596ac6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
