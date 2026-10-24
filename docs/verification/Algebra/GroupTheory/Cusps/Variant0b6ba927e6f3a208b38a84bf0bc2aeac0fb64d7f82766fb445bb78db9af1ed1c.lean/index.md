# Verification target: GRWTSK.Algebra.GroupTheory.Cusps.Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a084daf112d28557c50bc7c687fda6351835c458",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a084daf112d28557c50bc7c687fda6351835c458`.

Source path: `GRWTSK/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean.json)

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
| 1 | `lemma` | [exists_mem_SL2](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/exists-mem-sl2--afe126ae0d906f9607f7860e.md) | 33 | `result-track:afe126ae0d906f9607f7860ea8dc96de6aaef398ba9b1872cb37e6a95671b135` |
| 2 | `lemma` | [isParabolic_iff_of_upperTriangular](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/isparabolic-iff-of-uppertriangular--f43bb3853bce5e9d31ea2e36.md) | 49 | `result-track:f43bb3853bce5e9d31ea2e3647cada8b05288e323abe9f65c557a7b59f5481d1` |
| 3 | `def` | [IsCusp](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/iscusp--59782f072627262f588de81d.md) | 58 | `declaration-track:59782f072627262f588de81d7ea4adbac84804be7c826a86d477f94aaac05c3f` |
| 4 | `lemma` | [IsCusp.smul](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/iscusp-smul--0a04c5b9913e509f3528d5d3.md) | 62 | `result-track:0a04c5b9913e509f3528d5d3ff8bfa3b5b4ba00f5b132a909950f5b4ad5eb421` |
| 5 | `lemma` | [IsCusp.smul_of_mem](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/iscusp-smul-of-mem--a7f000f2108959ef11aa6fe7.md) | 69 | `result-track:a7f000f2108959ef11aa6fe7c12b18fd71c68ed7d231de5825319613e5a77fb5` |
| 6 | `lemma` | [isCusp_iff_of_relIndex_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/iscusp-iff-of-relindex-ne-zero--d095ec5ef7d8299547206a5c.md) | 77 | `result-track:d095ec5ef7d8299547206a5ccf72cdee8b406db57b19d53ced29a4391e32abb7` |
| 7 | `lemma` | [Subgroup.Commensurable.isCusp_iff](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/subgroup-commensurable-iscusp-iff--69719e15a66e534072a5c27d.md) | 86 | `result-track:69719e15a66e534072a5c27d63db942f1d4ec7505e6de40f67d2da9988630dd0` |
| 8 | `lemma` | [IsCusp.mono](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/iscusp-mono--1edf901bf59a751488751cf1.md) | 93 | `result-track:1edf901bf59a751488751cf14a40d99533548577b923f47a3a9a33d6603a3101` |
| 9 | `lemma` | [IsCusp.of_isFiniteRelIndex](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/iscusp-of-isfiniterelindex--2bcd9b87f20843419c8c899a.md) | 97 | `result-track:2bcd9b87f20843419c8c899ac5d1bce217557f8f69c9f1e3c6a39b1dafda798c` |
| 10 | `lemma` | [IsCusp.of_isFiniteRelIndex_conj](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/iscusp-of-isfiniterelindex-conj--3d6c894111ce47bd65ead4e4.md) | 106 | `result-track:3d6c894111ce47bd65ead4e4194e3ffc87a716b16817e5bcf68dd9ceae116b29` |
| 11 | `lemma` | [isCusp_SL2Z_iff](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/iscusp-sl2z-iff--43e5ec4404f661f7dbd3af19.md) | 116 | `result-track:43e5ec4404f661f7dbd3af19ce14517c5f28619cc236797a80f2ff8ea65745a3` |
| 12 | `lemma` | [isCusp_SL2Z_iff'](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/iscusp-sl2z-iff--6772a134a4c4a1688b67f940.md) | 132 | `result-track:6772a134a4c4a1688b67f9401dd0a0276e69688316d7cb06bf78507923f98323` |
| 13 | `lemma` | [Subgroup.IsArithmetic.isCusp_iff_isCusp_SL2Z](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/subgroup-isarithmetic-iscusp-iff-iscusp-sl2z--1fd6f1c35215f59187f2cef4.md) | 146 | `result-track:1fd6f1c35215f59187f2cef4546a0d131f3e03031fea39f9e9be13ee4e18171e` |
| 14 | `def` | [cuspsSubMulAction](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/cuspssubmulaction--1bddd92f2050174cfbe42050.md) | 161 | `declaration-track:1bddd92f2050174cfbe4205036131508db5e689bc3d1ce5934435d993bc5f514` |
| 15 | `abbrev` | [CuspOrbits](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/cusporbits--46ef57b4e0d75c8c9a3d2721.md) | 167 | `declaration-track:46ef57b4e0d75c8c9a3d27212112df5bc48a2861a14170f92de745570ad89ca9` |
| 16 | `def` | [cosetToCuspOrbit](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/cosettocusporbit--e534d3c36d7ec88161e10d87.md) | 172 | `declaration-track:e534d3c36d7ec88161e10d877947ff106c653b073a6d5e25a352ba59cebcd0e9` |
| 17 | `lemma` | [cosetToCuspOrbit_apply_mk](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/cosettocusporbit-apply-mk--099ffd075a0a37a3381b2ad1.md) | 185 | `result-track:099ffd075a0a37a3381b2ad1d40c10e9c000b39a52077d0d6bf2360928210a89` |
| 18 | `lemma` | [surjective_cosetToCuspOrbit](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/surjective-cosettocusporbit--5a5031942e9dec3abac58ab5.md) | 192 | `result-track:5a5031942e9dec3abac58ab5a4c73614d5833b0a5d7649060a59a5f61d85db69` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/instance--cdc0dd6e96d93e149cd88df9.md) | 201 | `declaration-track:cdc0dd6e96d93e149cd88df93bb106a6c12c7f5a04ccae273bcaa98d9e51f17e` |
| 20 | `def` | [strictPeriods](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/strictperiods--d22e010fbf6dccbe2a8e6758.md) | 224 | `declaration-track:d22e010fbf6dccbe2a8e6758cde69ef61abe27848a9e1d859536536ce3c13427` |
| 21 | `lemma` | [mem_strictPeriods_iff](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/mem-strictperiods-iff--2159050989983bdd49ee5c07.md) | 228 | `result-track:2159050989983bdd49ee5c0749263f44744fed2eaf2345a6e51386e1b3716f1e` |
| 22 | `def` | [periods](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/periods--b109e8cd123239b7e91fc5be.md) | 234 | `declaration-track:b109e8cd123239b7e91fc5be94c88c387fc1c9e9d2ea919fce769a3ae63f4e39` |
| 23 | `lemma` | [strictPeriods_le_periods](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/strictperiods-le-periods--5092616c95b6fe033f2a7f07.md) | 237 | `result-track:5092616c95b6fe033f2a7f072d9f573628c0260f621faee9b725ea4a64a5bd35` |
| 24 | `def` | [IsRegularAtInfty](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/isregularatinfty--6c0c2b662e639a68b5b257e8.md) | 243 | `declaration-track:6c0c2b662e639a68b5b257e82a37ef1a634e2601092d2254575e11157ca544a8` |
| 25 | `lemma` | [IsRegularAtInfty.eq](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/isregularatinfty-eq--bdb0104843c39d9e7a5594a6.md) | 246 | `result-track:bdb0104843c39d9e7a5594a6ea43270d73665fc0f5775d7c1c577f63d4989bc1` |
| 26 | `lemma` | [relIndex_strictPeriods](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/relindex-strictperiods--d8c0f3d7ab53621b251c709c.md) | 248 | `result-track:d8c0f3d7ab53621b251c709cb50fc2b1bc5062361bf9bb1a2e384993ef8e36ea` |
| 27 | `lemma` | [commensurable_strictPeriods_periods](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/commensurable-strictperiods-periods--8b337a79b54e457f0049745b.md) | 262 | `result-track:8b337a79b54e457f0049745b42f9f9264c111f46ddc16016bdd945f66b4359c8` |
| 28 | `lemma` | [strictPeriods_eq_periods_of_neg_one_mem](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/strictperiods-eq-periods-of-neg-one-mem--67ed23e0029870518bde7db8.md) | 271 | `result-track:67ed23e0029870518bde7db82b68d18979f71e2ac9781e10b97632a20c6a6a7d` |
| 29 | `lemma` | [isRegularAtInfty_of_neg_one_mem](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/isregularatinfty-of-neg-one-mem--01cb4f15d06253133b2fb5df.md) | 275 | `result-track:01cb4f15d06253133b2fb5df9c4610cab1f7c6ec9fa21e4a7bd4fe31b5f16ce9` |
| 30 | `instance` | [instDiscreteTopStrictPeriods](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/instdiscretetopstrictperiods--e08c8a1b7abafa044b022944.md) | 281 | `declaration-track:e08c8a1b7abafa044b0229442560f70fec749a00fed164643d4df8a0b6cccfc2` |
| 31 | `instance` | [instDiscreteTopPeriods](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/instdiscretetopperiods--ac6fbf5efca2ab79e62f75be.md) | 291 | `declaration-track:ac6fbf5efca2ab79e62f75be1ffd878e7433bb4b70144c75fb338dab15dedb88` |
| 32 | `lemma` | [strictPeriods_eq_zmultiples_one_of_T_mem](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/strictperiods-eq-zmultiples-one-of-t-mem--eaec695db0391fa4567cf471.md) | 297 | `result-track:eaec695db0391fa4567cf471a009aada331dc3b47b628665e9a85a9ce2785b04` |
| 33 | `lemma` | [strictPeriods_SL2Z](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/strictperiods-sl2z--5644cc3c0157af4038733fe8.md) | 308 | `result-track:5644cc3c0157af4038733fe89ee2d5c54dbe08b0f7f95334e181de98771145c9` |
| 34 | `def` | [strictWidthInfty](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/strictwidthinfty--29a55330a61bb0b57dffc573.md) | 318 | `declaration-track:29a55330a61bb0b57dffc57378bd9b2ee661d4bbebfda9a36b1a20d02a8672ee` |
| 35 | `lemma` | [strictWidthInfty_nonneg](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/strictwidthinfty-nonneg--1fc22b790be08d9809b7f5ba.md) | 324 | `result-track:1fc22b790be08d9809b7f5ba1756042d2fbc2a49396f0b42127bfa3ef8cc133d` |
| 36 | `def` | [widthInfty](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/widthinfty--e9fd00bf0f8e74b3a41aa4a9.md) | 329 | `declaration-track:e9fd00bf0f8e74b3a41aa4a97f18d02b6d6b95c85115a3fdc0537d3ff9e9f881` |
| 37 | `lemma` | [widthInfty_nonneg](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/widthinfty-nonneg--1b9ecf69986ba2e85d75a7c6.md) | 331 | `result-track:1b9ecf69986ba2e85d75a7c611e5e46ad48a6ce5439d04a3ff9e91cd2bfb5c48` |
| 38 | `lemma` | [strictPeriods_eq_zmultiples_strictWidthInfty](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/strictperiods-eq-zmultiples-strictwidthinfty--18fbebd467a5c1f9c2746eae.md) | 334 | `result-track:18fbebd467a5c1f9c2746eae0a8578d1386514e6e5389aef790f3b4068592dae` |
| 39 | `lemma` | [strictWidthInfty_eq_one_of_T_mem](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/strictwidthinfty-eq-one-of-t-mem--012d13d5928e543584fcabf3.md) | 340 | `result-track:012d13d5928e543584fcabf38413ac56e346a3be0391c8900030b27bef3e2b45` |
| 40 | `lemma` | [strictWidthInfty_SL2Z](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/strictwidthinfty-sl2z--ff1c4e97b424337657dbdabf.md) | 352 | `result-track:ff1c4e97b424337657dbdabf535308617238954f92cb67556bb185deb398f06a` |
| 41 | `lemma` | [strictWidthInfty_mem_strictPeriods](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/strictwidthinfty-mem-strictperiods--2aa42aeda87106cb691d4584.md) | 355 | `result-track:2aa42aeda87106cb691d4584597dfdb72f9f2325689c37f48acaf20d52a96fb3` |
| 42 | `lemma` | [periods_eq_zmultiples_widthInfty](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/periods-eq-zmultiples-widthinfty--2e20e3eacc290d866f5eb61f.md) | 361 | `result-track:2e20e3eacc290d866f5eb61f89971907d42bb2985c10ddc8923be2932841175b` |
| 43 | `lemma` | [widthInfty_mem_periods](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/widthinfty-mem-periods--c5190dd87da1c4e8332e447b.md) | 366 | `result-track:c5190dd87da1c4e8332e447b7ab9162c40d326e6a9d75b0dca6344e0b4ce073e` |
| 44 | `lemma` | [two_mul_widthInfty_mem_strictPeriods](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/two-mul-widthinfty-mem-strictperiods--91f5a3c0160553f1f86450eb.md) | 369 | `result-track:91f5a3c0160553f1f86450eb454563097a4fc6eb94592fc2fa742730796d0d3c` |
| 45 | `lemma` | [strictWidthInfty_pos_iff](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/strictwidthinfty-pos-iff--678de32945e9f9eaeafac983.md) | 376 | `result-track:678de32945e9f9eaeafac983910bd5b8666120337f4a2fca8976e650a390e78c` |
| 46 | `lemma` | [strictWidthInfty_pos](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/strictwidthinfty-pos--15d643c1c785f5858f88cc46.md) | 399 | `result-track:15d643c1c785f5858f88cc4600059b03b1d939756c1ff5873ee37cf254ff5753` |
| 47 | `lemma` | [isCusp_of_mem_strictPeriods](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/iscusp-of-mem-strictperiods--ec5dd4bad1e2ccbc569213b6.md) | 405 | `result-track:ec5dd4bad1e2ccbc569213b6844a1202630a6aa1eb1b5a869a60eaf3aa149120` |
| 48 | `lemma` | [widthInfty_pos_iff](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/widthinfty-pos-iff--f265b427efc7717a0f94763a.md) | 411 | `result-track:f265b427efc7717a0f94763a3d154fe7ff3c07d9ab105729ab0d8cf696ce143e` |
| 49 | `lemma` | [isRegularAtInfty_iff](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/isregularatinfty-iff--a41e09020b5c60d477eb1dd8.md) | 417 | `result-track:a41e09020b5c60d477eb1dd8db44cd01c361941e4f29773798e6ab49ea3bb46a` |
| 50 | `lemma` | [widthInfty_pos](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/widthinfty-pos--1e2a9864edd88cb6e60a73d5.md) | 423 | `result-track:1e2a9864edd88cb6e60a73d56efbc59d204bf23da80b5ad4fd6695147c20a641` |
| 51 | `lemma` | [strictPeriods_Gamma0](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/strictperiods-gamma0--b86978deca876b5e70b95e30.md) | 435 | `result-track:b86978deca876b5e70b95e30aac7b9d7638d10a34f5f1b6ef6753e8ba647f23e` |
| 52 | `lemma` | [strictPeriods_Gamma1](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/strictperiods-gamma1--5853584f958bd22dfc21f06f.md) | 440 | `result-track:5853584f958bd22dfc21f06f7818288e2a8e12e295227c8bbc86b27b7e454bff` |
| 53 | `lemma` | [strictWidthInfty_Gamma0](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/strictwidthinfty-gamma0--4482b2105d49251593da2475.md) | 445 | `result-track:4482b2105d49251593da2475e2d710810b957731f62369761d83e5e371c3a671` |
| 54 | `lemma` | [strictWidthInfty_Gamma1](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/strictwidthinfty-gamma1--8dc6f534f36bb66fdda56eb8.md) | 450 | `result-track:8dc6f534f36bb66fdda56eb8b9b53ac875f8199866dc1820f54052388a38e2ca` |
| 55 | `lemma` | [strictPeriods_Gamma](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/strictperiods-gamma--2d9637afcf6785886dffc08b.md) | 454 | `result-track:2d9637afcf6785886dffc08ba73860bc619d23c053b721be354ceb055c4e29de` |
| 56 | `lemma` | [strictWidthInfty_Gamma](../../../../../mathematics/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/declarations/strictwidthinfty-gamma--4af1ec4f56b737527f5ac80e.md) | 470 | `result-track:4af1ec4f56b737527f5ac80e6395b5fdccbad96fff6c283b650dc7d794c571fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
