# Verification target: GRWTSK.Topology.GeneralTopology.Continuity.Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12b3d01f92ad1e110ce222fe1c8031eb3331ef8f",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12b3d01f92ad1e110ce222fe1c8031eb3331ef8f`.

Source path: `GRWTSK/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean.json)

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
| 1 | `lemma` | [continuous_enorm](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/continuous-enorm--0bf16a119176fcb9618f331c.md) | 40 | `result-track:0bf16a119176fcb9618f331c975f09e8e48bb9f95c619d43d960ae85575bfbb6` |
| 2 | `lemma` | [Continuous.enorm](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/continuous-enorm--3a0470be676d1bdb9ab736f0.md) | 45 | `result-track:3a0470be676d1bdb9ab736f012e1725d9a0e3fd940a86178665a2c5c9da16f7d` |
| 3 | `lemma` | [ContinuousAt.enorm](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/continuousat-enorm--1b33e5cb9bc083e6e89cc8dc.md) | 48 | `result-track:1b33e5cb9bc083e6e89cc8dcf38c653e1276e8beb182baffef6234b1aa0e09c8` |
| 4 | `lemma` | [ContinuousWithinAt.enorm](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/continuouswithinat-enorm--88b45cd0b6b551f2f59832bb.md) | 51 | `result-track:88b45cd0b6b551f2f59832bb064dd1486eadcd7643bd8ff7ad4bdb477b98ff78` |
| 5 | `lemma` | [ContinuousOn.enorm](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/continuouson-enorm--ab71bce802006394a84264b3.md) | 57 | `result-track:ab71bce802006394a84264b311dd345b9810731687024ac4c1c1490e6b6fd862` |
| 6 | `theorem` | [tendsto_iff_norm_inv_mul_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/tendsto-iff-norm-inv-mul-tendsto-zero--5f929e91a1a5a599ec280d7c.md) | 63 | `result-track:5f929e91a1a5a599ec280d7c2e5d610e3e2752e1bab0c09c01c5408a56e902fb` |
| 7 | `theorem` | [tendsto_one_iff_norm_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/tendsto-one-iff-norm-tendsto-zero--526ce9c1be4ff5d2b9805174.md) | 68 | `result-track:526ce9c1be4ff5d2b9805174f9aa4e8dad35cdb9f38399bd1e89c6814fc50154` |
| 8 | `theorem` | [tendsto_iff_enorm_inv_mul_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/tendsto-iff-enorm-inv-mul-tendsto-zero--cc618f5460fd5cea45f07372.md) | 73 | `result-track:cc618f5460fd5cea45f073729763aea13fb3c9aef27c8cf5e1448f060ad7665d` |
| 9 | `theorem` | [tendsto_one_iff_enorm_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/tendsto-one-iff-enorm-tendsto-zero--355cdf1d554adceca6aefcc2.md) | 78 | `result-track:355cdf1d554adceca6aefcc2540a24d30ce0484c630df6057674dbd271c389f8` |
| 10 | `theorem` | [comap_norm_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/comap-norm-nhds-one--620c0e030e7a1ce4ad41fef3.md) | 83 | `result-track:620c0e030e7a1ce4ad41fef3d048e988fa4ac4488e03f3526ae7e690678f03de` |
| 11 | `theorem` | [squeeze_one_norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/squeeze-one-norm--166089edd00ae94d619d0afb.md) | 96 | `result-track:166089edd00ae94d619d0afb9916931aa08564d3fd8b3d798651c5f34d423906` |
| 12 | `theorem` | [squeeze_one_norm](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/squeeze-one-norm--8145e591cc95d8ae7a72225c.md) | 105 | `result-track:8145e591cc95d8ae7a72225cb93cce30653eb76072bf8b5d0c0fddeb9493e159` |
| 13 | `theorem` | [tendsto_norm_inv_mul_self](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/tendsto-norm-inv-mul-self--c2657ca725bd403e1d6b94c7.md) | 110 | `result-track:c2657ca725bd403e1d6b94c7e7e0b7c4d2c6d875fc3d1fa5b08c9303c1485794` |
| 14 | `theorem` | [tendsto_norm_inv_mul_self_nhdsGE](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/tendsto-norm-inv-mul-self-nhdsge--8dc1ff6df565f1ff4ec98039.md) | 115 | `result-track:8dc1ff6df565f1ff4ec980391b2713b932a6c6dc1d5228916465c92030619ed1` |
| 15 | `theorem` | [tendsto_norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/tendsto-norm--bc9ac8393c8791a94c9e4fca.md) | 119 | `result-track:bc9ac8393c8791a94c9e4fca0e91b318b11b296b3880630cd77c4d66f13762f5` |
| 16 | `theorem` | [tendsto_norm_one](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/tendsto-norm-one--aa5ad4eb2ae9fb52a078dfa3.md) | 124 | `result-track:aa5ad4eb2ae9fb52a078dfa32d585af54896a70f77415a60300cd5863da23c90` |
| 17 | `theorem` | [continuous_norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/continuous-norm--5ecc8991cdac927d6de4a327.md) | 128 | `result-track:5ecc8991cdac927d6de4a327b88f50cd1f1d47daa8d3477ebe4a488f4f9be53a` |
| 18 | `theorem` | [continuous_nnnorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/continuous-nnnorm--5034bbe0fa1ccc4ac56c45b4.md) | 132 | `result-track:5034bbe0fa1ccc4ac56c45b4de672fb0f92a9fb7ca12abb75215366fef4b690e` |
| 19 | `instance` | [SeminormedGroup.toContinuousENorm](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/seminormedgroup-tocontinuousenorm--2c7885f745cc14fb28749a95.md) | 140 | `declaration-track:2c7885f745cc14fb28749a955cafca8da91ac77578e9fc3392ad115b1842dd70` |
| 20 | `instance` | [NormedGroup.toENormedMonoid](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/normedgroup-toenormedmonoid--531442c001a4fb087286198c.md) | 144 | `declaration-track:531442c001a4fb087286198c47c8c11a4d594697dd3b61282be83a92f534abb8` |
| 21 | `instance` | [NormedCommGroup.toENormedCommMonoid](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/normedcommgroup-toenormedcommmonoid--2eb3451ea1af964c2a9675cd.md) | 150 | `declaration-track:2eb3451ea1af964c2a9675cd95d56de86b7b5b1c5fa3e736fd89fcb99c2df348` |
| 22 | `theorem` | [Inseparable.norm_eq_norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/inseparable-norm-eq-norm--409c2a55ff24a72420998df6.md) | 162 | `result-track:409c2a55ff24a72420998df6084b83aa169e5a80f8095440e0db9c582c33d5a7` |
| 23 | `theorem` | [Inseparable.nnnorm_eq_nnnorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/inseparable-nnnorm-eq-nnnorm--21bec5f739e9b802738e3b49.md) | 167 | `result-track:21bec5f739e9b802738e3b49542de418b2efaaa2ce1b9e97e7636ad501d67e19` |
| 24 | `theorem` | [Inseparable.enorm_eq_enorm](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/inseparable-enorm-eq-enorm--043e15be1b3051b62d28e2da.md) | 170 | `result-track:043e15be1b3051b62d28e2da0e46eb41128e06a4e634d6241afc2ac43fb7862b` |
| 25 | `theorem` | [mem_closure_one_iff_norm](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/mem-closure-one-iff-norm--d32098fd114c275994f3b14c.md) | 175 | `result-track:d32098fd114c275994f3b14c9eb5df3a794f32b12b18f39f79787e3fea58f41e` |
| 26 | `theorem` | [closure_one_eq](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/closure-one-eq--cab2d55b2655c32dc0187665.md) | 179 | `result-track:cab2d55b2655c32dc0187665c3bd51dda15db354850346033cfb0f329e1e8eea` |
| 27 | `theorem` | [Filter.Tendsto.norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/filter-tendsto-norm--9f74e7ce664aa2fd445ac2cf.md) | 187 | `result-track:9f74e7ce664aa2fd445ac2cfe57df5a7c9b6b6ae09524f2107b43931a2d5b181` |
| 28 | `theorem` | [Filter.Tendsto.nnnorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/filter-tendsto-nnnorm--208db0d91142102a2ea4b61a.md) | 191 | `result-track:208db0d91142102a2ea4b61aa00b5c5a5effcfc54a5da173939cac4a8ce12353` |
| 29 | `theorem` | [Continuous.norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/continuous-norm--da3001ef0ad47cdce86b4e4c.md) | 202 | `result-track:da3001ef0ad47cdce86b4e4c5e14ea8d8e2a3144d58ade48daf491b92910b07f` |
| 30 | `theorem` | [Continuous.nnnorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/continuous-nnnorm--daa030794f72ee67f924b7a9.md) | 206 | `result-track:daa030794f72ee67f924b7a9e493d25e21cd9feb393c77f4376d0f0c1144b918` |
| 31 | `lemma` | [Filter.Tendsto.enorm](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/filter-tendsto-enorm--2044a29f06390584f0f18965.md) | 216 | `result-track:2044a29f06390584f0f189652604727e4adf444ac2f42bcfba843414ee4fce0c` |
| 32 | `theorem` | [ContinuousAt.norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/continuousat-norm--9d6e766c802539d403900025.md) | 230 | `result-track:9d6e766c802539d403900025290f7d1274cb523d8ace0a96c5b5dd5b678d3814` |
| 33 | `theorem` | [ContinuousAt.nnnorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/continuousat-nnnorm--7af58ef491a0a2261b757d29.md) | 234 | `result-track:7af58ef491a0a2261b757d299b88e042f0e12a896b4521dadcb87c39ac5029a3` |
| 34 | `theorem` | [ContinuousWithinAt.norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/continuouswithinat-norm--2873dcb4284e7c70010de1ca.md) | 238 | `result-track:2873dcb4284e7c70010de1ca7b183d1e0101fe15cfe213ca6b31c73d21c31d9b` |
| 35 | `theorem` | [ContinuousWithinAt.nnnorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/continuouswithinat-nnnorm--52d73f11ce0778d439f788c4.md) | 243 | `result-track:52d73f11ce0778d439f788c4863c9e94fe9341318faf2356f2703109df10eb03` |
| 36 | `theorem` | [ContinuousOn.norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/continuouson-norm--6d58d007036e31efbb38f7b4.md) | 248 | `result-track:6d58d007036e31efbb38f7b4cd18dbf636e265a0cb07101c3e4149e1d4d233cb` |
| 37 | `theorem` | [ContinuousOn.nnnorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/continuouson-nnnorm--8c10741603dd177436f63827.md) | 252 | `result-track:8c10741603dd177436f63827f4cc6147a75c60732b5e8342cb23a6c7b6fda6c4` |
| 38 | `theorem` | [eventually_ne_of_tendsto_norm_atTop'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/eventually-ne-of-tendsto-norm-attop--d5066e8e0ea58a8dcc26021a.md) | 260 | `result-track:d5066e8e0ea58a8dcc26021a14bc5a0268fe6f1b7f2751f341b0d0620ccec0c7` |
| 39 | `theorem` | [SeminormedGroup.mem_closure_iff](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/seminormedgroup-mem-closure-iff--8c68d205523376c5ced8d9fd.md) | 265 | `result-track:8c68d205523376c5ced8d9fd5d99b572d2ab82999efae5952cca8cf36d75c59b` |
| 40 | `theorem` | [SeminormedGroup.tendstoUniformlyOn_one](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/seminormedgroup-tendstouniformlyon-one--8f238f9317d1e57317880b63.md) | 270 | `result-track:8f238f9317d1e57317880b6365624e2bf667500195176690b0491d82bd6e583e` |
| 41 | `theorem` | [SeminormedGroup.uniformCauchySeqOnFilter_iff_tendstoUniformlyOnFilter_one](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/seminormedgroup-uniformcauchyseqonfilter-iff-tendstouniformlyonfilter-on--06bbf497afeacd06b00755eb.md) | 275 | `result-track:06bbf497afeacd06b00755eb0c0dafb0daeb314b4c3e55f30699f126386c1d94` |
| 42 | `theorem` | [SeminormedGroup.uniformCauchySeqOn_iff_tendstoUniformlyOn_one](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/seminormedgroup-uniformcauchyseqon-iff-tendstouniformlyon-one--451edf0fc58a2e472c231d15.md) | 292 | `result-track:451edf0fc58a2e472c231d1556875d26ddaea84a3567f193d52b2c79ca5ae314` |
| 43 | `theorem` | [tendsto_iff_norm_div_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/tendsto-iff-norm-div-tendsto-zero--5e08922b8453f388251fa631.md) | 307 | `result-track:5e08922b8453f388251fa6315f00374beb222c7dadb9e2a777a281aec207dfd5` |
| 44 | `theorem` | [tendsto_iff_enorm_div_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/tendsto-iff-enorm-div-tendsto-zero--fdbfd2b5a2e20e60b5fd5245.md) | 312 | `result-track:fdbfd2b5a2e20e60b5fd52459c1f888fa66a30476025bf870526202b34171a78` |
| 45 | `theorem` | [SeminormedCommGroup.mem_closure_iff](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/seminormedcommgroup-mem-closure-iff--5f9de71fa08ccf5e3c1f65a3.md) | 317 | `result-track:5f9de71fa08ccf5e3c1f65a3b7f5bbf6d78427702a4f8dc70d72e3be2acbb7ea` |
| 46 | `theorem` | [tendsto_norm_div_self](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/tendsto-norm-div-self--ba09547fa291257ec11a88ab.md) | 322 | `result-track:ba09547fa291257ec11a88ab99c60f23132aeb2b833aad805cf3fa66b02ec361` |
| 47 | `theorem` | [tendsto_norm_div_self_nhdsGE](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/tendsto-norm-div-self-nhdsge--58983a32f057df43b4955f77.md) | 327 | `result-track:58983a32f057df43b4955f77a6a549ce4ae577b33e59ecb21d04607a012e6f27` |
| 48 | `theorem` | [controlled_prod_of_mem_closure](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/controlled-prod-of-mem-closure--1e2d1425b6f68a09b3ce4e77.md) | 333 | `result-track:1e2d1425b6f68a09b3ce4e77adb6200428f36658f0402f71e761b4f657b64bf2` |
| 49 | `theorem` | [controlled_prod_of_mem_closure_range](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/controlled-prod-of-mem-closure-range--abe5ccdb77616c62da6dc96b.md) | 374 | `result-track:abe5ccdb77616c62da6dc96bc30b9b35f666fcf2b04671deee54de05093eab78` |
| 50 | `lemma` | [tendsto_norm_nhdsNE_one](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/tendsto-norm-nhdsne-one--4a916c6264df9e954c37ca73.md) | 393 | `result-track:4a916c6264df9e954c37ca7335f943a44be9fada177ac819eea6ff9d82867d62` |
| 51 | `theorem` | [tendsto_norm_inv_mul_self_nhdsNE](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/tendsto-norm-inv-mul-self-nhdsne--8e86590bc0001374f35f625f.md) | 397 | `result-track:8e86590bc0001374f35f625f7f72ce30faafd7097ec1bcb9095e3fedd2253402` |
| 52 | `lemma` | [comap_norm_nhdsGT_zero'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/comap-norm-nhdsgt-zero--f57447ebefe7f5d943161d94.md) | 410 | `result-track:f57447ebefe7f5d943161d9474cf654ba73e573de00b39fabbb41a7e25b64321` |
| 53 | `theorem` | [tendsto_norm_div_self_nhdsNE](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/declarations/tendsto-norm-div-self-nhdsne--d713a900a8ece8d8a1d658ee.md) | 414 | `result-track:d713a900a8ece8d8a1d658eed3ea840ccdb9f6e8b1ca04c0b224284b8b2731a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
