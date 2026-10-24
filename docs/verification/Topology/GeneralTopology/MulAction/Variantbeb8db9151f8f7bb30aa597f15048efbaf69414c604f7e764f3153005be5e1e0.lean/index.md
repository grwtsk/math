# Verification target: GRWTSK.Topology.GeneralTopology.MulAction.Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cf1ed6b72db6be8f05f62c54f90c09341ac583e",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cf1ed6b72db6be8f05f62c54f90c09341ac583e`.

Source path: `GRWTSK/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/continuoussmul--ad60fbc054362207f173332c.md) | 54 | `declaration-track:ad60fbc054362207f173332cbade6a0f3acdae54d4dbd19fdfbc1ad477f9e645` |
| 2 | `class` | [ContinuousVAdd](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/continuousvadd--a768b1ffd4675ffab04d5be6.md) | 64 | `declaration-track:a768b1ffd4675ffab04d5be6630328b6032331b1006c9748b7c388d5ea8d15c9` |
| 3 | `lemma` | [IsScalarTower.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/isscalartower-continuoussmul--cecb8d5e4a0d127cc8017b8b.md) | 83 | `result-track:cecb8d5e4a0d127cc8017b8b99f1262f189cc50ae7b8914e225704b6b307b817` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/instance--dec8bfe1b656df3aab316dcd.md) | 91 | `declaration-track:dec8bfe1b656df3aab316dcd376281d8e5c3287d17dbdef190e41d4906edf20a` |
| 5 | `instance` | [OrderDual.instContinuousSMul_right](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/orderdual-instcontinuoussmul-right--554ce7914e4a6c2ef9246333.md) | 95 | `declaration-track:554ce7914e4a6c2ef9246333cb504a7875fb47fd9ce20857d2606ecbaa25b950` |
| 6 | `instance` | [OrderDual.instContinuousSMul_left](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/orderdual-instcontinuoussmul-left--3c7b6a9fda3abb34b0eaedfc.md) | 99 | `declaration-track:3c7b6a9fda3abb34b0eaedfc9e659fe21aa31cc08ada83a22a8d82b2772eb47e` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/instance--72d74cfde0f9fbbc1311dfcf.md) | 103 | `declaration-track:72d74cfde0f9fbbc1311dfcfd8f30e598be47a6841c843ce2a4c3a1521f30a61` |
| 8 | `theorem` | [ContinuousSMul.induced](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/continuoussmul-induced--311eda602111f3354a048005.md) | 106 | `result-track:311eda602111f3354a0480058c7cfb5db792135756a338ed23adc1b32793c3f8` |
| 9 | `theorem` | [Filter.Tendsto.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/filter-tendsto-smul--c4a4dc09d7851b8f2ce184f1.md) | 116 | `result-track:c4a4dc09d7851b8f2ce184f19bbd9abc939dd542b1c263050fc8dc311805ec4d` |
| 10 | `theorem` | [Filter.Tendsto.smul_const](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/filter-tendsto-smul-const--f7921bd097b3bf64a8e0e711.md) | 122 | `result-track:f7921bd097b3bf64a8e0e7117df04ee862976a739f4ddf57908ae3d97a128315` |
| 11 | `theorem` | [ContinuousWithinAt.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/continuouswithinat-smul--8632b06db19a810b07224466.md) | 129 | `result-track:8632b06db19a810b072244662885d9e4cb81b52f2741871df7f58dcb5fd1dbbb` |
| 12 | `theorem` | [ContinuousAt.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/continuousat-smul--c465ac26a1b10b8a82eb5a89.md) | 134 | `result-track:c465ac26a1b10b8a82eb5a8907fadc5a8caafccd45f10bcb6dfb57f9eb138338` |
| 13 | `theorem` | [ContinuousOn.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/continuouson-smul--1d0c09f2ad795fb71771571b.md) | 139 | `result-track:1d0c09f2ad795fb71771571b2de59f640540720ba8e832da2c9d2c87fb83b638` |
| 14 | `theorem` | [Continuous.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/continuous-smul--6bed1375514f05a7de87ef98.md) | 143 | `result-track:6bed1375514f05a7de87ef983afbec86f8203a9394660c10f4bda06731bce812` |
| 15 | `instance` | [ContinuousSMul.op](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/continuoussmul-op--06f4bb0ad5a88bcc001bbed4.md) | 149 | `declaration-track:06f4bb0ad5a88bcc001bbed4160d7c7405dd192e42dca5b14774eeb21227078d` |
| 16 | `instance` | [MulOpposite.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/mulopposite-continuoussmul--93b14b0068ddfa0185fd7bf7.md) | 156 | `declaration-track:93b14b0068ddfa0185fd7bf7369c7e91225ce20fc4b80d6d79cb016b8e8ee16d` |
| 17 | `theorem` | [Specializes.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/specializes-smul--72714ee705b930e13b95080c.md) | 161 | `result-track:72714ee705b930e13b95080c69cf4042f2b38ff62b9398903dd271b83c127d3b` |
| 18 | `theorem` | [Inseparable.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/inseparable-smul--376407443f38a348c98c89e4.md) | 166 | `result-track:376407443f38a348c98c89e40cbb2f7512293ca9069a818e8dba091f59c48666` |
| 19 | `lemma` | [IsCompact.smul_set](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/iscompact-smul-set--89bda96dd6a2141cbe7078a1.md) | 171 | `result-track:89bda96dd6a2141cbe7078a16296ef20df252315e31944f3bafff5cd254c1190` |
| 20 | `lemma` | [smul_set_closure_subset](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/smul-set-closure-subset--6266297b1605968aa7c905f7.md) | 177 | `result-track:6266297b1605968aa7c905f735406f839c4856116c478d0ba5a6bc44ef951889` |
| 21 | `lemma` | [Topology.IsInducing.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/topology-isinducing-continuoussmul--eacf2160a3302f2138732dfa.md) | 197 | `result-track:eacf2160a3302f2138732dfa86f994a50e5034f1d30aaaa1c75dad8ca04b1e43` |
| 22 | `instance` | [SMulMemClass.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/smulmemclass-continuoussmul--aa619f855c48965ecbea6808.md) | 205 | `declaration-track:aa619f855c48965ecbea6808ad291a9c1c3c9d86958e42f00ba045eaeb6e3640` |
| 23 | `theorem` | [Filter.Tendsto.smul_zero](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/filter-tendsto-smul-zero--2fe40b2a226e1cf385f6d335.md) | 215 | `result-track:2fe40b2a226e1cf385f6d335b772a1fc8d24749d6b090176c3e0c79a4c6fa63e` |
| 24 | `theorem` | [Filter.Tendsto.zero_smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/filter-tendsto-zero-smul--8f60d350bda11cd6be682637.md) | 226 | `result-track:8f60d350bda11cd6be6826374a815d21488f9da8efd9e33f2eaa64a717f762d8` |
| 25 | `theorem` | [Filter.Tendsto.zero_smul_const](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/filter-tendsto-zero-smul-const--4eb9bc9c810ee0f36c1571d3.md) | 231 | `result-track:4eb9bc9c810ee0f36c1571d30e9ae2b23086e6b7f29aac747a847ead0726e53e` |
| 26 | `theorem` | [Filter.Tendsto.one_smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/filter-tendsto-one-smul--224420c6e59372ae9f6f2398.md) | 243 | `result-track:224420c6e59372ae9f6f2398ab8b3cf9638d45ee4ad08888f38da724fd7b309f` |
| 27 | `theorem` | [Filter.Tendsto.one_smul_const](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/filter-tendsto-one-smul-const--57ae0dbaf155b152438f26b8.md) | 249 | `result-track:57ae0dbaf155b152438f26b88080a79cf7f9a2db1669194e86f6063177ed0f0b` |
| 28 | `instance` | [Units.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/units-continuoussmul--355734ae6352c557f0c3fb83.md) | 254 | `declaration-track:355734ae6352c557f0c3fb83f50103fd89bc7d10bc9e06ce9fe5a1af1fb963e6` |
| 29 | `theorem` | [MulAction.continuousSMul_compHom](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/mulaction-continuoussmul-comphom--9adc616931c3887980ce169b.md) | 261 | `result-track:9adc616931c3887980ce169b732027ff35a17c18ea4f61ac921d08e4299736b1` |
| 30 | `instance` | [Submonoid.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/submonoid-continuoussmul--7698527663c679a7caff08cd.md) | 269 | `declaration-track:7698527663c679a7caff08cd73784e5cb9ad1fe21fde8950883024344ffd7a19` |
| 31 | `instance` | [Subgroup.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/subgroup-continuoussmul--157c41c7572546bdc332aebe.md) | 279 | `declaration-track:157c41c7572546bdc332aebe529dbf00aca7b53b0ec73bc842beac70267a2a86` |
| 32 | `lemma` | [stabilizer_isOpen](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/stabilizer-isopen--3fcab8fd4c3ec0dc4cc614f1.md) | 285 | `result-track:3fcab8fd4c3ec0dc4cc614f14912022e1eefdde2257027e352ef946052615f2b` |
| 33 | `theorem` | [continuousSMul_iff_stabilizer_isOpen](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/continuoussmul-iff-stabilizer-isopen--11669cdeca15a656a2ed946c.md) | 296 | `result-track:11669cdeca15a656a2ed946c578b171d00296584147e946bfc24bff6954cfc48` |
| 34 | `theorem` | [Set.univ_smul_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/set-univ-smul-nhds-zero--b07dfc2b443dfce29d9ffe93.md) | 319 | `result-track:b07dfc2b443dfce29d9ffe939f3c1888540aed7c304d7f0341ea0611eb0129fd` |
| 35 | `theorem` | [Filter.top_smul_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/filter-top-smul-nhds-zero--58a48f1d4381af418244ae54.md) | 330 | `result-track:58a48f1d4381af418244ae5458a8a153c492464618f1f76244c4af25bf6fa116` |
| 36 | `instance` | [Prod.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/prod-continuoussmul--dda89913a91663eb7e6ae4d1.md) | 338 | `declaration-track:dda89913a91663eb7e6ae4d17d9f8bee94d917e7a1c9a0101d208368bb377012` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/instance--3ab5a83715e4f47b79ccfba1.md) | 344 | `declaration-track:3ab5a83715e4f47b79ccfba10c3e4609f2dd1dfbe08505f2323c12ef8e3f0264` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/instance--8744ef9d02a47c41cd4d2b5b.md) | 351 | `declaration-track:8744ef9d02a47c41cd4d2b5b7accc9bc0ec6186df4ee294d4ef9c6d02a810700` |
| 39 | `theorem` | [continuousSMul_sInf](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/continuoussmul-sinf--882e2a3c31cf42dde81af762.md) | 364 | `result-track:882e2a3c31cf42dde81af762ccfa54fa65a0bb53143e9112e8ea3ed21dcc9f45` |
| 40 | `theorem` | [continuousSMul_iInf](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/continuoussmul-iinf--819aa4ca464af7c8d51e603e.md) | 376 | `result-track:819aa4ca464af7c8d51e603e56c648e072656ccb6e9ae48659249f2b2f9eb745` |
| 41 | `theorem` | [continuousSMul_inf](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/continuoussmul-inf--e9998968e66e9ce9b354e464.md) | 382 | `result-track:e9998968e66e9ce9b354e46447afebf65550955159c4f6312c310034cb9334f9` |
| 42 | `theorem` | [AddTorsor.connectedSpace](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/declarations/addtorsor-connectedspace--0787dcc3cb29ff14089b5d46.md) | 398 | `result-track:0787dcc3cb29ff14089b5d4620ad3a5189fdb62ae6259a9bafee157d02bc7652` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
