# Verification target: GRWTSK.Topology.GeneralTopology.BumpFunction.Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec7a4bb01fa881cafc11a4f6f7868aa1a5ba3e65",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec7a4bb01fa881cafc11a4f6f7868aa1a5ba3e65`.

Source path: `GRWTSK/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.ContMDiff` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SmoothBumpFunction](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/smoothbumpfunction--714580c5899a343498d4e14a.md) | 61 | `declaration-track:714580c5899a343498d4e14a0902c175482b2ac8e67a50c468f676ce472e74c0` |
| 2 | `def` | [toFun](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/tofun--106c69398ecf2b22dbf30cce.md) | 71 | `declaration-track:106c69398ecf2b22dbf30cce92e5ceea3f0c938e5c9e4f41d235c8a4112d74df` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/instance--bdaffbd28c49076f84b9f683.md) | 75 | `declaration-track:bdaffbd28c49076f84b9f683c8d72442a68d44ed84cca6572e9a98da8a9089aa` |
| 4 | `theorem` | [coe_def](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/coe-def--0f62f100cb11c44e56b7803a.md) | 78 | `result-track:0f62f100cb11c44e56b7803ab5a6c7db54567e9a07a70a60858275ded805cac5` |
| 5 | `theorem` | [rOut_pos](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/rout-pos--bf76a1e9c6a4581dca72a4d7.md) | 82 | `result-track:bf76a1e9c6a4581dca72a4d7ea2b63ea414e63c849b97584da1e07d159c30c43` |
| 6 | `theorem` | [ball_subset](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/ball-subset--d6ca76082c871ba1e01ac23d.md) | 87 | `result-track:d6ca76082c871ba1e01ac23daffa3993c763677a1d7d8f7ebc5a0367ce6e1766` |
| 7 | `theorem` | [ball_inter_range_eq_ball_inter_target](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/ball-inter-range-eq-ball-inter-target--8ebc4257cd7943bf69a6f72b.md) | 91 | `result-track:8ebc4257cd7943bf69a6f72bc448aeb03acbb212505dce9a07d4bc3407bf0e46` |
| 8 | `theorem` | [eqOn_source](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/eqon-source--40606c4139676fee6e9ec31b.md) | 97 | `result-track:40606c4139676fee6e9ec31b31412463f52d253914d5ec11c12fd5aa7680e0f4` |
| 9 | `theorem` | [eventuallyEq_of_mem_source](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/eventuallyeq-of-mem-source--2b58c11f8ef28926486053ca.md) | 101 | `result-track:2b58c11f8ef28926486053ca3a3164d184e6e8a498297f3ed7c27cefe1cc218f` |
| 10 | `theorem` | [one_of_dist_le](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/one-of-dist-le--89e4ae6d19b09549fab45889.md) | 106 | `result-track:89e4ae6d19b09549fab4588919300142d3336da2b2286b17d025df3e1845ac90` |
| 11 | `theorem` | [support_eq_inter_preimage](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/support-eq-inter-preimage--282cfd3ef7fc4dae14609f40.md) | 111 | `result-track:282cfd3ef7fc4dae14609f40d517b78ee46638c79a943f3e9ab049f7323f759c` |
| 12 | `theorem` | [isOpen_support](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/isopen-support--8779162a4bfa772cb1566178.md) | 118 | `result-track:8779162a4bfa772cb1566178e8a041fc47f739b53e8b1663d75c8cbe1d0032ca` |
| 13 | `theorem` | [support_eq_symm_image](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/support-eq-symm-image--9673b5120aed5e33b10dac8d.md) | 123 | `result-track:9673b5120aed5e33b10dac8de5e1663f99eb7e6aeb9594da0ca7e4c56aeafd7c` |
| 14 | `theorem` | [support_subset_source](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/support-subset-source--cfd48ac4b937755efc924106.md) | 130 | `result-track:cfd48ac4b937755efc924106b64ae9987ba22ea6cec63d9b1ee45813169022b4` |
| 15 | `theorem` | [image_eq_inter_preimage_of_subset_support](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/image-eq-inter-preimage-of-subset-support--37bd7a8adf4af681c310ff29.md) | 134 | `result-track:37bd7a8adf4af681c310ff29babdd462ae9a15bdf6a5547f8e3a537a4bb694fd` |
| 16 | `theorem` | [mem_Icc](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/mem-icc--da986316daf551342d13ccf2.md) | 148 | `result-track:da986316daf551342d13ccf23fc38110b02bdf1ee0e12eed78ec6ae105d90b3b` |
| 17 | `theorem` | [nonneg](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/nonneg--b88547b5258acfed5d583017.md) | 154 | `result-track:b88547b5258acfed5d5830173a85c1c8b0d04c4e8a36ccac37995e297341d5b0` |
| 18 | `theorem` | [le_one](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/le-one--5604988f53ad22829e1f828b.md) | 158 | `result-track:5604988f53ad22829e1f828bfb1174ef396e4fe5d3dbba036f0570b6c63e4518` |
| 19 | `theorem` | [eventuallyEq_one_of_dist_lt](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/eventuallyeq-one-of-dist-lt--c2b153748dfe9ae44ef05d4a.md) | 162 | `result-track:c2b153748dfe9ae44ef05d4ad76ff303e973a5870dad8d5ad24acbbdcf6a2833` |
| 20 | `theorem` | [eventuallyEq_one](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/eventuallyeq-one--983af0a9ec8c1dd551eedf0c.md) | 169 | `result-track:983af0a9ec8c1dd551eedf0cb4f41ba07a3ac06aeaea508f43fa5ed08fd69be0` |
| 21 | `theorem` | [eq_one](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/eq-one--208f045ad419ce2da25264ee.md) | 174 | `result-track:208f045ad419ce2da25264ee57b61bfdb017e71b500626e1ce59e9fc73f4c451` |
| 22 | `theorem` | [support_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/support-mem-nhds--3c3cf2be7b012618d73b65a7.md) | 178 | `result-track:3c3cf2be7b012618d73b65a753899041f3914d2bcb2eb531a8760049d7a23af2` |
| 23 | `theorem` | [tsupport_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/tsupport-mem-nhds--cdf9238b7d43fee8c738812e.md) | 182 | `result-track:cdf9238b7d43fee8c738812ecd723ac7c305895d6fa4167d928075e0d49d7520` |
| 24 | `theorem` | [c_mem_support](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/c-mem-support--3830713836ec1a1aab85a2d2.md) | 186 | `result-track:3830713836ec1a1aab85a2d2e24bfdbd4f94a87e582c866fb39a41fc8b65e318` |
| 25 | `theorem` | [nonempty_support](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/nonempty-support--5b01cb42b5c11a21a9c04527.md) | 190 | `result-track:5b01cb42b5c11a21a9c0452724b228d8f6b126849a432289316a6d86fb65ca06` |
| 26 | `theorem` | [isCompact_symm_image_closedBall](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/iscompact-symm-image-closedball--ec764f2a1fd3f9031b05730b.md) | 194 | `result-track:ec764f2a1fd3f9031b05730b21dd06971646a729ce1d713fd9309057501a1be2` |
| 27 | `theorem` | [nhdsWithin_range_basis](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/nhdswithin-range-basis--1d28f09d52547f364169fcab.md) | 203 | `result-track:1d28f09d52547f364169fcabe06a0908668a4360001abab96af12ab0a93d25ea` |
| 28 | `theorem` | [isClosed_image_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/isclosed-image-of-isclosed--3936e801d7f57044676fd172.md) | 214 | `result-track:3936e801d7f57044676fd172232e5634e385e7e4b0b0cf960461f46c790b7a74` |
| 29 | `theorem` | [exists_r_pos_lt_subset_ball](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/exists-r-pos-lt-subset-ball--e631e989654862f00f23838c.md) | 225 | `result-track:e631e989654862f00f23838c4bcea7d70d043bd55bbe11715b2a148291cd0e03` |
| 30 | `def` | [updateRIn](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/updaterin--e9a88dbaab35d0d291f668ee.md) | 237 | `declaration-track:e9a88dbaab35d0d291f668ee8a1de22925d0212f7f1575faec3c55ce23300435` |
| 31 | `theorem` | [support_updateRIn](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/support-updaterin--20b51196f7804d8cc1da8bf2.md) | 245 | `result-track:20b51196f7804d8cc1da8bf2e0628fdffaf53aa1e9076b74250c01b39a42f209` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/instance--ce5f3ec328429fde15601122.md) | 251 | `declaration-track:ce5f3ec328429fde156011221ad2720ce7f45899cc6798eb065e320b8d63903a` |
| 33 | `theorem` | [isClosed_symm_image_closedBall](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/isclosed-symm-image-closedball--b3f6f7159f50a61e81de9e26.md) | 255 | `result-track:b3f6f7159f50a61e81de9e2604311bd41235c5c889531995f4af7c0cf492f668` |
| 34 | `theorem` | [tsupport_subset_symm_image_closedBall](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/tsupport-subset-symm-image-closedball--1fa9215e8569866533c30909.md) | 260 | `result-track:1fa9215e8569866533c3090986975d772563ffc80a31b76f5c91c46629210a04` |
| 35 | `theorem` | [tsupport_subset_extChartAt_source](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/tsupport-subset-extchartat-source--62a9e822b1fecc3db5c86df0.md) | 267 | `result-track:62a9e822b1fecc3db5c86df0531502c12b81e45b30bcca8cbd0050a7feb257ef` |
| 36 | `theorem` | [tsupport_subset_chartAt_source](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/tsupport-subset-chartat-source--5b52636fef6f17492117f5b3.md) | 275 | `result-track:5b52636fef6f17492117f5b340388c73374ccf22aa78dbd0da4001a9f19d941d` |
| 37 | `theorem` | [hasCompactSupport](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/hascompactsupport--de8c905c2b6225053f748940.md) | 279 | `result-track:de8c905c2b6225053f7489409e434a8228f75bb49944b3b60a6c204b9b3d38b6` |
| 38 | `theorem` | [nhds_basis_tsupport](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/nhds-basis-tsupport--94283b74a05fee49dd364f50.md) | 289 | `result-track:94283b74a05fee49dd364f5020a3698e76552a5f5f8dd35387a1c791028d2cf9` |
| 39 | `theorem` | [nhds_basis_support](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/nhds-basis-support--ec168dfcad4877672c360774.md) | 306 | `result-track:ec168dfcad4877672c36077430144316a528179a9df773be8363ff0113f05b10` |
| 40 | `theorem` | [smooth](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/smooth--bb827493da8103bbf08fda21.md) | 315 | `result-track:bb827493da8103bbf08fda21184122437fdfc9c506529b59e9cb107b1a170c29` |
| 41 | `theorem` | [smoothAt](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/smoothat--748dc901e28cc59d2d5d4392.md) | 323 | `result-track:748dc901e28cc59d2d5d43926322af7b2ad3defee9a06dd36637a62ae2a869aa` |
| 42 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/continuous--ae92f48066fa28bf38b386d4.md) | 327 | `result-track:ae92f48066fa28bf38b386d4312eeed31f738916a64354d9ebaad0d42e00eb62` |
| 43 | `theorem` | [smooth_smul](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/declarations/smooth-smul--b2871c5e73e4a10965251477.md) | 333 | `result-track:b2871c5e73e4a109652514771d0a0da05e68dc35d3d23d23989b281c581c1082` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
