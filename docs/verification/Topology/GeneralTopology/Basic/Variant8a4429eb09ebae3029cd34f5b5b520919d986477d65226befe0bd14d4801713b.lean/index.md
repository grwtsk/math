# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6387727b0414e84003f54952a5fd065b30e25986",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6387727b0414e84003f54952a5fd065b30e25986`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean.json)

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
| 1 | `theorem` | [tangentConeAt_mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/tangentconeat-mono--d59ef0de4235d36bcfa700c9.md) | 39 | `result-track:d59ef0de4235d36bcfa700c91152f529802418eaaeffe6d5ddcc5ac96c32fa65` |
| 2 | `theorem` | [tangentConeAt_mono_field](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/tangentconeat-mono-field--e82f5b505ff9b4817d25ed70.md) | 48 | `result-track:e82f5b505ff9b4817d25ed703812fa24070338d48937990d013bad1e1acc549f` |
| 3 | `theorem` | [Filter.HasBasis.tangentConeAt_eq_biInter_closure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/filter-hasbasis-tangentconeat-eq-biinter-closure--29e25a9a39522b01cb96819f.md) | 56 | `result-track:29e25a9a39522b01cb96819f6b9150e6a4da9eef275f4c4810011a4d49f6bdf3` |
| 4 | `theorem` | [tangentConeAt_eq_biInter_closure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/tangentconeat-eq-biinter-closure--87bfec40a9c98cb1e1d0aee6.md) | 64 | `result-track:87bfec40a9c98cb1e1d0aee69cb46ad8dc65b7c72c3c1ddcb3022048ca55eb6b` |
| 5 | `theorem` | [tangentConeAt_mono_nhds](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/tangentconeat-mono-nhds--01bf004762500d97233f7252.md) | 70 | `result-track:01bf004762500d97233f725262ae651b840529681045dabf3c2cbda1169c1b06` |
| 6 | `theorem` | [tangentConeAt_congr](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/tangentconeat-congr--605eede108c557f64944f411.md) | 82 | `result-track:605eede108c557f64944f41138b1219bf532797d24f709a5ab32c702b33d008c` |
| 7 | `theorem` | [tangentConeAt_inter_nhds](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/tangentconeat-inter-nhds--0fcfc4a95a55e1dea1b1d717.md) | 86 | `result-track:0fcfc4a95a55e1dea1b1d7179c2d271d7985eed80a4615b7b5365cd1a7dddd70` |
| 8 | `theorem` | [mem_closure_of_nonempty_tangentConeAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/mem-closure-of-nonempty-tangentconeat--2c6b7188f8ec37d6f27501d0.md) | 89 | `result-track:2c6b7188f8ec37d6f27501d0631b8493aea938155301a453467d36748c021897` |
| 9 | `theorem` | [tangentConeAt_closure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/tangentconeat-closure--df5f5ddb8260f0db66d1dc86.md) | 99 | `result-track:df5f5ddb8260f0db66d1dc86f8121a9661f4c87784397d597fa4bb2842d45e80` |
| 10 | `theorem` | [UniqueDiffWithinAt.mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/uniquediffwithinat-mono--2cd038e26f7cd6829547293d.md) | 114 | `result-track:2cd038e26f7cd6829547293defdd6d606b24b78d401a50f922034e568277504f` |
| 11 | `theorem` | [UniqueDiffWithinAt.closure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/uniquediffwithinat-closure--ab19445b9d049341cbb182eb.md) | 121 | `result-track:ab19445b9d049341cbb182eb54f0a090fafbea566d2cfa723fcf522482a41b81` |
| 12 | `theorem` | [UniqueDiffWithinAt.mono_nhds](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/uniquediffwithinat-mono-nhds--fdc34d261d8b2e30371fd5af.md) | 125 | `result-track:fdc34d261d8b2e30371fd5afcaaeceae53ee7c021d57e9af7fff10a038f1de91` |
| 13 | `theorem` | [uniqueDiffWithinAt_congr](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/uniquediffwithinat-congr--0453744cfa7bb031436a7407.md) | 131 | `result-track:0453744cfa7bb031436a74079c4dcb5bc1c68333313c9dc6a4771784a7aee79b` |
| 14 | `theorem` | [uniqueDiffWithinAt_inter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/uniquediffwithinat-inter--aa7f019372e8c444dbd7114c.md) | 135 | `result-track:aa7f019372e8c444dbd7114c59b1fcbe739510a7d7cfed7eec2c285240ce01fc` |
| 15 | `theorem` | [UniqueDiffWithinAt.inter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/uniquediffwithinat-inter--52eadf7f0ea42a8a51eb1e78.md) | 139 | `result-track:52eadf7f0ea42a8a51eb1e78b0432f24efc4e47386f9c9c63c13b72bd3ada4ad` |
| 16 | `theorem` | [UniqueDiffOn.inter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/uniquediffon-inter--79638394e583f31e01acb431.md) | 143 | `result-track:79638394e583f31e01acb43127255f12adf07beee7c317ff2ce350a7c3a3521f` |
| 17 | `theorem` | [uniqueDiffWithinAt_inter'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/uniquediffwithinat-inter--b0c8649acb1cf060ca2f2612.md) | 146 | `result-track:b0c8649acb1cf060ca2f2612a7a44cec355132a20e91673ade8d6f3717741a6b` |
| 18 | `theorem` | [UniqueDiffWithinAt.inter'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/uniquediffwithinat-inter--b8760bb6b5b176542a698042.md) | 150 | `result-track:b8760bb6b5b176542a6980426539582ee2e8031d56d23c1b74b33906a3e95fd0` |
| 19 | `theorem` | [zero_mem_tangentConeAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/zero-mem-tangentconeat--644b9866d0798d3d458431c9.md) | 155 | `result-track:644b9866d0798d3d458431c9a3595361e6f0d31b4a787de80e343b02fcec91fa` |
| 20 | `theorem` | [zero_mem_tangentConeAt_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/zero-mem-tangentconeat-iff--d6451bbad95f56dc12c0ed39.md) | 165 | `result-track:d6451bbad95f56dc12c0ed390b08a8e4c7fce7e785ef8904db8c78113cb8c2ad` |
| 21 | `theorem` | [tangentConeAt_subset_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/tangentconeat-subset-zero--fab26da8798dbbd9c2b68c38.md) | 170 | `result-track:fab26da8798dbbd9c2b68c381f2df6c2ca2ba15c079ef2a5e2635bcc62c9adcf` |
| 22 | `theorem` | [AccPt.of_mem_tangentConeAt_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/accpt-of-mem-tangentconeat-ne-zero--b002beec91ca3ff35998ff3c.md) | 181 | `result-track:b002beec91ca3ff35998ff3cfb6452589ebf3d1c4822e17a88d019e14f8281a7` |
| 23 | `theorem` | [UniqueDiffWithinAt.accPt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/uniquediffwithinat-accpt--16c8017ecf79cdedb992baf5.md) | 186 | `result-track:16c8017ecf79cdedb992baf5571b2cedd1dea4332fead3205f586c9f4a5c8b76` |
| 24 | `theorem` | [mem_tangentConeAt_of_add_smul_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/mem-tangentconeat-of-add-smul-mem--fd0300eb18df9bb908926787.md) | 200 | `result-track:fd0300eb18df9bb9089267876502b0e14dab73ac98870269d2e5b41fc9e1b6f4` |
| 25 | `theorem` | [tangentConeAt_univ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/tangentconeat-univ--7f163862f737b910f260f221.md) | 212 | `result-track:7f163862f737b910f260f2218e797d8d9cca467e894bbb7478864f60d5727be6` |
| 26 | `theorem` | [tangentConeAt_of_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/tangentconeat-of-mem-nhds--44514e95d540aaec84ba36e8.md) | 215 | `result-track:44514e95d540aaec84ba36e8cff380025784c9aefe0029e5e826b88f71a491e1` |
| 27 | `theorem` | [uniqueDiffOn_empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/uniquediffon-empty--e5659845a4ed6babed295e02.md) | 231 | `result-track:e5659845a4ed6babed295e02e90deeaa06d25ff95622cc7fa4420db3dbe0cdd6` |
| 28 | `theorem` | [UniqueDiffWithinAt.congr_pt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/uniquediffwithinat-congr-pt--ea5363d13e7603e9249bc807.md) | 234 | `result-track:ea5363d13e7603e9249bc80761d32e4d5494144eff56d904ea5db4c90cc5633b` |
| 29 | `theorem` | [UniqueDiffWithinAt.mono_field](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/uniquediffwithinat-mono-field--37dd43c486ade575e63ec0a8.md) | 245 | `result-track:37dd43c486ade575e63ec0a84a681cddfc335bccaf7768cb3a6a3602f170a2df` |
| 30 | `theorem` | [UniqueDiffOn.mono_field](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/uniquediffon-mono-field--ab2c298be0df25cef0e3ed91.md) | 258 | `result-track:ab2c298be0df25cef0e3ed912a7c17cc8beb29725f0e374150c61e723f240647` |
| 31 | `theorem` | [uniqueDiffWithinAt_closure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/uniquediffwithinat-closure--9764a82a002d9c9d4327a3ef.md) | 264 | `result-track:9764a82a002d9c9d4327a3ef94325f4ea2570512c19b636c4f6079de8a556d24` |
| 32 | `theorem` | [UniqueDiffWithinAt.mono_closure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/uniquediffwithinat-mono-closure--e3f1d406f535526fcc02a8b9.md) | 270 | `result-track:e3f1d406f535526fcc02a8b9a2f9f25fd9da204d685bbbb771f55b45c0c74080` |
| 33 | `theorem` | [uniqueDiffWithinAt_univ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/uniquediffwithinat-univ--9519cca9f61909e24eb6f1f9.md) | 283 | `result-track:9519cca9f61909e24eb6f1f9d39f8e0891edc3224832f0d579cf04e7925ff4b8` |
| 34 | `theorem` | [uniqueDiffOn_univ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/uniquediffon-univ--a58f11e32951ec165f33ca44.md) | 288 | `result-track:a58f11e32951ec165f33ca4443c62a040d036f8af0dc141890ed35c0894c78cb` |
| 35 | `theorem` | [uniqueDiffWithinAt_of_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/uniquediffwithinat-of-mem-nhds--d495b96ebab2f45fdd3b2460.md) | 293 | `result-track:d495b96ebab2f45fdd3b2460f14d3496fd0b4692191fbe7ff54cedb60d241cbc` |
| 36 | `theorem` | [IsOpen.uniqueDiffWithinAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/isopen-uniquediffwithinat--f3a28330cfec4dfd325ce96b.md) | 296 | `result-track:f3a28330cfec4dfd325ce96bdb16efe47ffedf7eb1a0638a7f729c202b7dd1dd` |
| 37 | `theorem` | [IsOpen.uniqueDiffOn](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/declarations/isopen-uniquediffon--f3d50b2d688ccaa36fbeaf05.md) | 299 | `result-track:f3d50b2d688ccaa36fbeaf0578f3ed68cd78f9cd20b5e38d5bd400e55cf780c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
