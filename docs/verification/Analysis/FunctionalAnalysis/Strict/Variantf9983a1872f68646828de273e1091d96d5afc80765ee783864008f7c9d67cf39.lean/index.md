# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Strict.Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3cee8aebd9c12af0f5a3d855f187ed9304adc25",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3cee8aebd9c12af0f5a3d855f187ed9304adc25`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Group` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [StrictConvex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex--218ddf0b3c3c0440bba8347d.md) | 45 | `declaration-track:218ddf0b3c3c0440bba8347d3ad4f97eb1b0b20c31fe520b0feb45bb63b632e8` |
| 2 | `theorem` | [strictConvex_iff_openSegment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-iff-opensegment-subset--6ec8fc5c8b4d1e8c9b319d81.md) | 52 | `result-track:6ec8fc5c8b4d1e8c9b319d819cc07ff34db342823639033150d87da446373825` |
| 3 | `theorem` | [StrictConvex.openSegment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-opensegment-subset--9719a975f725fdb8786aaa7a.md) | 57 | `result-track:9719a975f725fdb8786aaa7a5bf208c7ab67faadd18e56ff6fee2475b4cc486e` |
| 4 | `theorem` | [strictConvex_empty](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-empty--ed231ede0502b8be76bb4632.md) | 62 | `result-track:ed231ede0502b8be76bb46328681886d9082f4b90ed7987dd9c01bc2a8f6a209` |
| 5 | `theorem` | [strictConvex_univ](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-univ--3ad35d20f6605ab1effef341.md) | 66 | `result-track:3ad35d20f6605ab1effef341fa21fc164450c52063459f75790d39d820186eee` |
| 6 | `theorem` | [StrictConvex.eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-eq--6d8e362225a311b05d2dab0f.md) | 72 | `result-track:6d8e362225a311b05d2dab0f7637763a9146b40dd78deb359aba73b3476b0acb` |
| 7 | `theorem` | [StrictConvex.inter](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-inter--61b705c4c5046fb3b7909681.md) | 77 | `result-track:61b705c4c5046fb3b79096814004d83134c5b7f7b8505753257276cdaef937bd` |
| 8 | `theorem` | [Directed.strictConvex_iUnion](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/directed-strictconvex-iunion--8202fe1e380a7ca52142326d.md) | 84 | `result-track:8202fe1e380a7ca52142326d5b405f284962e82f0e1b670bbe30856bcc7a96e8` |
| 9 | `theorem` | [DirectedOn.strictConvex_sUnion](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/directedon-strictconvex-sunion--08461f666bddde3a2dca9184.md) | 94 | `result-track:08461f666bddde3a2dca918438ba2e7f26f378e8e926b8cecc252f9bd943203d` |
| 10 | `theorem` | [StrictConvex.convex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-convex--7e1ca0b474f87059dac37d95.md) | 106 | `result-track:7e1ca0b474f87059dac37d955ab108f7e40b68cd600c739affc9a62c8a763272` |
| 11 | `theorem` | [Convex.strictConvex_of_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/convex-strictconvex-of-open--a3cf9d3918a39dfb42ff7aac.md) | 112 | `result-track:a3cf9d3918a39dfb42ff7aac260c3e48c645eb987980c619c10301bca298f91f` |
| 12 | `theorem` | [IsOpen.strictConvex_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/isopen-strictconvex-iff--46aa4949b09d8e1df8dcccbb.md) | 116 | `result-track:46aa4949b09d8e1df8dcccbb0e102837091ebdae3a3eaa17f7bb583b2e766d43` |
| 13 | `theorem` | [strictConvex_singleton](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-singleton--a0c04c882eb7838ce3adbebd.md) | 120 | `result-track:a0c04c882eb7838ce3adbebd12dfe4b3a5a6725537b6c7874f6399b7235c0efe` |
| 14 | `theorem` | [Set.Subsingleton.strictConvex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/set-subsingleton-strictconvex--6d8c2264d42fbb9ddfd31ed5.md) | 124 | `result-track:6d8c2264d42fbb9ddfd31ed58d430efed2da1f5fd5bb09190c0283b0cf112a0c` |
| 15 | `theorem` | [StrictConvex.linear_image](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-linear-image--8423fbec3defc0e74131aca7.md) | 128 | `result-track:8423fbec3defc0e74131aca7704f976261b359939690824a1e3c50d89ef242d5` |
| 16 | `theorem` | [StrictConvex.is_linear_image](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-is-linear-image--b0c129d83c4982238225e929.md) | 136 | `result-track:b0c129d83c4982238225e929cff406e61e54a7b2b41f0fab03b0879f876d3af3` |
| 17 | `theorem` | [StrictConvex.linear_preimage](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-linear-preimage--07d605df26299386e7a6cdb7.md) | 141 | `result-track:07d605df26299386e7a6cdb7bd6a2360b8abb32f80fcc36ba92c0e3f76504135` |
| 18 | `theorem` | [StrictConvex.is_linear_preimage](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-is-linear-preimage--3a42557dbf8bc40fd3703c0d.md) | 149 | `result-track:3a42557dbf8bc40fd3703c0d2dc875daf371d401872b691347214b7ddc4ebec6` |
| 19 | `theorem` | [Set.OrdConnected.strictConvex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/set-ordconnected-strictconvex--bac4c395bbd6fa52dd904ba0.md) | 160 | `result-track:bac4c395bbd6fa52dd904ba051c0821ca8355f6a6f584296701e3336308b579a` |
| 20 | `theorem` | [strictConvex_Iic](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-iic--888e49214ae4e422ce150981.md) | 169 | `result-track:888e49214ae4e422ce150981419027b44189b37872ae9fa4f8a2e1a545aa41f1` |
| 21 | `theorem` | [strictConvex_Ici](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-ici--676e065e74a4b498ca76737f.md) | 173 | `result-track:676e065e74a4b498ca76737facab6efc211cf032408d70e9038692cd1bd90390` |
| 22 | `theorem` | [strictConvex_Iio](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-iio--eff81a468e7f4ffbeeef8a7d.md) | 177 | `result-track:eff81a468e7f4ffbeeef8a7d914bd893a0afe02e242d5c72876b65299bfdcd6e` |
| 23 | `theorem` | [strictConvex_Ioi](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-ioi--73f82a586ebec9e354dd558c.md) | 181 | `result-track:73f82a586ebec9e354dd558c7f2a6ee1aa6746afa65a1d7995adde2a7f8da0eb` |
| 24 | `theorem` | [strictConvex_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-icc--0d57c947c324c807db749c76.md) | 185 | `result-track:0d57c947c324c807db749c76ea01d51f9ae953facc9a7efd8e82a59ab95d1f6a` |
| 25 | `theorem` | [strictConvex_Ioo](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-ioo--1b0bce5fb33896d37482bf04.md) | 189 | `result-track:1b0bce5fb33896d37482bf04c55822d55d79d4420c6d21191609cba26ae2529c` |
| 26 | `theorem` | [strictConvex_Ico](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-ico--82cef00a2c272b4a393d12e8.md) | 193 | `result-track:82cef00a2c272b4a393d12e8eb1dd5650fc95419f5994801b6595ba02abe82a3` |
| 27 | `theorem` | [strictConvex_Ioc](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-ioc--c10b052a8adb77e26aad78eb.md) | 197 | `result-track:c10b052a8adb77e26aad78eb9e10c09d0b8da194632abad60ba315826de28cf1` |
| 28 | `theorem` | [strictConvex_uIcc](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-uicc--468529f127080a3691e69e4a.md) | 201 | `result-track:468529f127080a3691e69e4afbe9a3b2239300d207da76565834bb88f94d0afe` |
| 29 | `theorem` | [strictConvex_uIoc](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-uioc--f71192a36825d5e94b23fefb.md) | 205 | `result-track:f71192a36825d5e94b23fefb38838d36e918ec2f36094edd154b5c4dffff07ac` |
| 30 | `theorem` | [StrictConvex.preimage_add_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-preimage-add-right--018a285e80130e6ee293f82f.md) | 220 | `result-track:018a285e80130e6ee293f82f5e1df8de6ee09780656223883c1b58282ad87db5` |
| 31 | `theorem` | [StrictConvex.preimage_add_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-preimage-add-left--2527ecd53b1e3788e406b51d.md) | 229 | `result-track:2527ecd53b1e3788e406b51dced5e9cfeed18437b1befa67b310ef1854e0011f` |
| 32 | `theorem` | [StrictConvex.add](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-add--5de66754b3d27bc839f1fcc2.md) | 244 | `result-track:5de66754b3d27bc839f1fcc2088dee2869524be96f0d191afed8a7ec907b817b` |
| 33 | `theorem` | [StrictConvex.add_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-add-left--a8b8ba6bc122882642c54ed0.md) | 259 | `result-track:a8b8ba6bc122882642c54ed04d9d6ff8340571dee6987b5c3ada86d3f05b43e6` |
| 34 | `theorem` | [StrictConvex.add_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-add-right--940ee2232ee2c45a10aed452.md) | 264 | `result-track:940ee2232ee2c45a10aed45200e43dba352c886932d3059d9009807c9d3095ba` |
| 35 | `theorem` | [StrictConvex.vadd](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-vadd--89dc474e9dd81680b91d5cc8.md) | 269 | `result-track:89dc474e9dd81680b91d5cc8091c0b7840d66a6ca1994636bf5d788f3e39f775` |
| 36 | `theorem` | [StrictConvex.smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-smul--87f97796220ac59766e13277.md) | 280 | `result-track:87f97796220ac59766e132774b6c4a30ef9a3eb9fb05e8b69151cd42eda1ddbb` |
| 37 | `theorem` | [StrictConvex.affinity](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-affinity--dddfc0a73ff4998d48d0fe99.md) | 286 | `result-track:dddfc0a73ff4998d48d0fe9987a3281409d4d6af952c5764af544429b1127508` |
| 38 | `theorem` | [StrictConvex.preimage_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-preimage-smul--52dc52d192bea7dae6c7c0ed.md) | 306 | `result-track:52dc52d192bea7dae6c7c0ed7dd8ac1e2343de5ba64b8a5532de36065980f3fd` |
| 39 | `theorem` | [StrictConvex.eq_of_openSegment_subset_frontier](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-eq-of-opensegment-subset-frontier--95c8b00a3921d09812f8e0ec.md) | 331 | `result-track:95c8b00a3921d09812f8e0ec8f604796bc0db8eefeca8dc1cf2fe3e0f025fdc4` |
| 40 | `theorem` | [StrictConvex.add_smul_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-add-smul-mem--40e18310ba778c72a6d396fe.md) | 342 | `result-track:40e18310ba778c72a6d396fec86a1361ba5758388d4ab9603cbe263e77d63147` |
| 41 | `theorem` | [StrictConvex.smul_mem_of_zero_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-smul-mem-of-zero-mem--4b2e19c87257c5a14bc99e2a.md) | 351 | `result-track:4b2e19c87257c5a14bc99e2a28d27309db130568acd8b2e7522c3fba7e1127ba` |
| 42 | `theorem` | [StrictConvex.add_smul_sub_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-add-smul-sub-mem--d3b50b55121dbdcb77316084.md) | 356 | `result-track:d3b50b55121dbdcb77316084d91a7381d396a6fd2b5ef9c5e3598e2c4017ae6e` |
| 43 | `theorem` | [StrictConvex.affine_preimage](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-affine-preimage--1ae67aa38417e84dc5640eaf.md) | 364 | `result-track:1ae67aa38417e84dc5640eaf84001ac1a40fa6f564c10b6d9b333c2cf84c7cc3` |
| 44 | `theorem` | [StrictConvex.affine_image](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-affine-image--50925a69709de8d6821b6dcb.md) | 373 | `result-track:50925a69709de8d6821b6dcbad32a031a571304b784f72fe0ae130f1ce764f88` |
| 45 | `theorem` | [StrictConvex.neg](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-neg--632166be33b801c9fded7dc8.md) | 383 | `result-track:632166be33b801c9fded7dc8c2ae3bc32a97001c26045f0c8e3c25f4cb964d58` |
| 46 | `theorem` | [StrictConvex.sub](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-sub--03e417831fc9d46d07a642c0.md) | 387 | `result-track:03e417831fc9d46d07a642c09e214d9fd6253911288fc50ebc3008d663ded5fc` |
| 47 | `theorem` | [strictConvex_iff_div](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-iff-div--853a203ef01f402c7fc522db.md) | 404 | `result-track:853a203ef01f402c7fc522dbcf2bf7c8a5ff4fbbf3596f74d7a131d53aa2a435` |
| 48 | `theorem` | [StrictConvex.mem_smul_of_zero_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-mem-smul-of-zero-mem--559231ff3974ab23dc9b4f10.md) | 415 | `result-track:559231ff3974ab23dc9b4f10a71341c8c6bcc29d27367448aa72404f7c02be18` |
| 49 | `theorem` | [strictConvex_iff_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-iff-convex--8680db8cfd79e2a26d4a82e1.md) | 438 | `result-track:8680db8cfd79e2a26d4a82e1053927ffda87d8cc47f3721e35be03dcc8fb060c` |
| 50 | `theorem` | [strictConvex_iff_ordConnected](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf9983a1872f68646828de273e1091d96d5afc80765ee783864008f7c9d67cf39.lean/declarations/strictconvex-iff-ordconnected--6ec8db72f91baa778230f212.md) | 442 | `result-track:6ec8db72f91baa778230f2124ffffd7fbb3d573b2d099f55f89803068774522d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
