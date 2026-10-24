# Verification target: GRWTSK.Topology.GeneralTopology.Floor.Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "076e1b6cafd2f9442545f1805542ab6a5afec0f5",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `076e1b6cafd2f9442545f1805542ab6a5afec0f5`.

Source path: `GRWTSK/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor.Ring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Floor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Group` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_mul_pow_div_factorial_sub_atTop](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-mul-pow-div-factorial-sub-attop--7c8e596bfbb5cd94ec4619fb.md) | 37 | `result-track:7c8e596bfbb5cd94ec4619fbb3a83246c383a52e2098f8139817b64c7abb38e8` |
| 2 | `theorem` | [tendsto_pow_div_factorial_atTop](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-pow-div-factorial-attop--745b3b51f72723cacfb23a8c.md) | 50 | `result-track:745b3b51f72723cacfb23a8c2af1de4d89fcf2eb0256ed12207b1928c2b46521` |
| 3 | `theorem` | [tendsto_floor_atTop](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-floor-attop--1ef222a159f4ca99686422ce.md) | 63 | `result-track:1ef222a159f4ca99686422cedd936b7795f45f13b7c3b896b933f075ba19b498` |
| 4 | `theorem` | [tendsto_floor_atBot](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-floor-atbot--5303ba0a1965ea979c69135f.md) | 67 | `result-track:5303ba0a1965ea979c69135f51a8143bb69d594dcbba8837cce712908a534052` |
| 5 | `theorem` | [tendsto_ceil_atTop](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-ceil-attop--2cdbf9477d06dc2349b35204.md) | 70 | `result-track:2cdbf9477d06dc2349b35204775623a84f5dcde17200a7560330b9ccb051145f` |
| 6 | `theorem` | [tendsto_ceil_atBot](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-ceil-atbot--8d464b3b14b5bc8dd00b3ce4.md) | 73 | `result-track:8d464b3b14b5bc8dd00b3ce425fe43ed71ef6e8e23f821feba7a90d4272638a8` |
| 7 | `theorem` | [continuousOn_floor](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/continuouson-floor--0dd221a511ccb9017a6a9ea9.md) | 81 | `result-track:0dd221a511ccb9017a6a9ea9597eaf13f00b394fcc74b3ffa00e8415c36538c2` |
| 8 | `theorem` | [continuousOn_ceil](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/continuouson-ceil--50f6384f31c2dfdc4947ec1f.md) | 85 | `result-track:50f6384f31c2dfdc4947ec1f4948fbf3b966f2910149ebd8d1fb1c5c39f4bef2` |
| 9 | `theorem` | [tendsto_floor_right_pure_floor](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-floor-right-pure-floor--810a1f1a3c306455b88c21f7.md) | 94 | `result-track:810a1f1a3c306455b88c21f70c32e8e725273c872209b14c656940a22a7a7093` |
| 10 | `theorem` | [tendsto_floor_right_pure](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-floor-right-pure--2852262bbdd5bf90bf22e52e.md) | 98 | `result-track:2852262bbdd5bf90bf22e52ed29c87fa5115d13c3fe7208d207d8d4a13e5cb4c` |
| 11 | `theorem` | [tendsto_ceil_left_pure_ceil](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-ceil-left-pure-ceil--10883700f243b9ee6c6cdd0c.md) | 101 | `result-track:10883700f243b9ee6c6cdd0cbfbecccd39d6c30de48a8872056bf1df988cff6e` |
| 12 | `theorem` | [tendsto_ceil_left_pure](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-ceil-left-pure--64c3bc4d6e24b49e11b92dc5.md) | 106 | `result-track:64c3bc4d6e24b49e11b92dc55a91aaf8ee5f8f0bec6079e22ef4f88ae035f834` |
| 13 | `theorem` | [tendsto_floor_left_pure_ceil_sub_one](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-floor-left-pure-ceil-sub-one--ead0b4332b411b1ab53c9636.md) | 109 | `result-track:ead0b4332b411b1ab53c963615927a972e123173d5d8fcd8a0febf1e279a35ec` |
| 14 | `theorem` | [tendsto_floor_left_pure_sub_one](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-floor-left-pure-sub-one--113e6a840fe442293b525509.md) | 116 | `result-track:113e6a840fe442293b5255096622f8762db8448f7037a9fa17a088611baa8add` |
| 15 | `theorem` | [tendsto_ceil_right_pure_floor_add_one](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-ceil-right-pure-floor-add-one--8c83b99a6087707728a5d60a.md) | 121 | `result-track:8c83b99a6087707728a5d60a55f643aaca19f98c6393fc9577962e376e043112` |
| 16 | `theorem` | [tendsto_ceil_right_pure_add_one](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-ceil-right-pure-add-one--121b485560f19115ddbd0447.md) | 127 | `result-track:121b485560f19115ddbd044738f3a07206a3349614b912d2324196a1de92eee8` |
| 17 | `theorem` | [tendsto_floor_right](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-floor-right--1364e0b656e7485ad3e27ba0.md) | 131 | `result-track:1364e0b656e7485ad3e27ba097f259061c4c69b0233dd49f603ed0a0fbfb6ff9` |
| 18 | `theorem` | [tendsto_floor_right'](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-floor-right--d495b61bb883270458a8b1ca.md) | 135 | `result-track:d495b61bb883270458a8b1ca4724f1b37b404f6129e31ec47dfa286220425a3e` |
| 19 | `theorem` | [tendsto_ceil_left](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-ceil-left--124f193f15ba01fca1b4923d.md) | 138 | `result-track:124f193f15ba01fca1b4923d1f7586c08b30005b4cfb849faf9b6cbb88a96044` |
| 20 | `theorem` | [tendsto_ceil_left'](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-ceil-left--d77954bf9aa115391ec63325.md) | 142 | `result-track:d77954bf9aa115391ec63325e28ef5d3bc07ed5d5683c6f5aca92ec61ef209e0` |
| 21 | `theorem` | [tendsto_floor_left](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-floor-left--de0a011cdef35e84fca4d706.md) | 146 | `result-track:de0a011cdef35e84fca4d706037c5c57687be976dc009213fb3dff4ba72f80fc` |
| 22 | `theorem` | [tendsto_ceil_right](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-ceil-right--ade461245e78bcba88e28ab6.md) | 151 | `result-track:ade461245e78bcba88e28ab6f3183b2a64075593a478e13fc9e47c7136942716` |
| 23 | `theorem` | [tendsto_floor_left'](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-floor-left--088457e0913d0712f6f70a0b.md) | 156 | `result-track:088457e0913d0712f6f70a0be27e1569353972d4a0a8f808a61dc4f6e6dc4316` |
| 24 | `theorem` | [tendsto_ceil_right'](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-ceil-right--0b654565f43ab2951d2bbcc2.md) | 160 | `result-track:0b654565f43ab2951d2bbcc2d08f3892bd9bd3312ff3766d9d1bf505c0c69832` |
| 25 | `theorem` | [continuousOn_fract](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/continuouson-fract--fde979e297ba8225169be2dc.md) | 166 | `result-track:fde979e297ba8225169be2dc70df138f01cd7a0e8056805c36351371ad47dbab` |
| 26 | `theorem` | [continuousAt_fract](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/continuousat-fract--091b1a5151710f9a461be224.md) | 170 | `result-track:091b1a5151710f9a461be22464c3d96e36cf2cc3bd0b5e06443675c89d3244f9` |
| 27 | `theorem` | [tendsto_fract_left'](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-fract-left--3ee185024c5fd5538a51bc76.md) | 177 | `result-track:3ee185024c5fd5538a51bc76f69cb7a404d74839c953bf3ded76464f9f79e40f` |
| 28 | `theorem` | [tendsto_fract_left](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-fract-left--94fcb368fb0d6839a4d2a573.md) | 183 | `result-track:94fcb368fb0d6839a4d2a5737d315f9e8c32b8ab92219ed50e8287bde470180d` |
| 29 | `theorem` | [tendsto_fract_right'](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-fract-right--7dc7684fb0acf49fefd950d7.md) | 188 | `result-track:7dc7684fb0acf49fefd950d7b52d95f8c7a50cd8166d13b6323b26f94f803b6e` |
| 30 | `theorem` | [tendsto_fract_right](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/tendsto-fract-right--dc0c821158201f3fe025ba21.md) | 192 | `result-track:dc0c821158201f3fe025ba210e922906b99b28291d71d0cfac6ca09d58e622d9` |
| 31 | `theorem` | [ContinuousOn.comp_fract'](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/continuouson-comp-fract--83670c364e96f526c9c33e57.md) | 202 | `result-track:83670c364e96f526c9c33e57f622953638cb81b19193ea9ed372ab04f9d6a487` |
| 32 | `theorem` | [ContinuousOn.comp_fract](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/continuouson-comp-fract--734105922f7e95fe4a4cab3a.md) | 222 | `result-track:734105922f7e95fe4a4cab3ac22ad5b0eb7ec54336ba0e6d0bd94aef74232d63` |
| 33 | `theorem` | [ContinuousOn.comp_fract''](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant2cdb8477f77ed6be70cf75eb1f895a5239987a4fa6d9fa29fdbc8a67883f1f51.lean/declarations/continuouson-comp-fract--229c96bbc68b69d7d4065757.md) | 228 | `result-track:229c96bbc68b69d7d40657572993062c26b9bb3bbe9f06481a46180816f61102` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
