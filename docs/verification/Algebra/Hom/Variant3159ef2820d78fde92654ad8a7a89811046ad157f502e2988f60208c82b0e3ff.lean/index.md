# Verification target: GRWTSK.Algebra.Hom.Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27a5430bb9511f78502880eb454d4e16e981e6ad",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/index.md) · [Full source](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27a5430bb9511f78502880eb454d4e16e981e6ad`.

Source path: `GRWTSK/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Coalgebra.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Bialgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BialgHom](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/bialghom--b7a63dd8d418678fd5803b6a.md) | 42 | `declaration-track:b7a63dd8d418678fd5803b6af21571312a78f2f8e988084e7a7c2127207eaae8` |
| 2 | `class` | [BialgHomClass](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/bialghomclass--8d3f2a79e010bb8fd8d52822.md) | 57 | `declaration-track:8d3f2a79e010bb8fd8d52822697060b221968014af327e4c0ed2a76febcedcfe` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/instance--3091638ff0151496abf0f53b.md) | 72 | `declaration-track:3091638ff0151496abf0f53b31d3c5f54392a264f581a07474c0c19e76be26ed` |
| 4 | `def` | [toBialgHom](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/tobialghom--0d291fba5ee0fdcdaaccc1c0.md) | 83 | `declaration-track:0d291fba5ee0fdcdaaccc1c03b651e58013866e8dc03d4f2989c1e0dde279d95` |
| 5 | `instance` | [instCoeToBialgHom](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/instcoetobialghom--a1aee5ecbf203c3bde8c866a.md) | 87 | `declaration-track:a1aee5ecbf203c3bde8c866aa74133e6066b267c09d00b471bcb8ceea8ccfa7e` |
| 6 | `theorem` | [counitAlgHom_comp](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/counitalghom-comp--0bf798966d1aea41f9c7aa95.md) | 97 | `result-track:0bf798966d1aea41f9c7aa954dc0c93db2992e78d1a52e558eb29997e985beee` |
| 7 | `theorem` | [map_comp_comulAlgHom](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/map-comp-comulalghom--bef9019a1b65d2e58049320d.md) | 102 | `result-track:bef9019a1b65d2e58049320d1e1abd9a7ee39c16e660c3a0e6231da45a1ba32b` |
| 8 | `instance` | [funLike](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/funlike--fe47de170b9b69a24bc5fba0.md) | 115 | `declaration-track:fe47de170b9b69a24bc5fba0257e6ec69fe3a73f54336b6a027b66881fc5bff0` |
| 9 | `instance` | [bialgHomClass](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/bialghomclass--e686679ae6e07714b24ba7c3.md) | 122 | `declaration-track:e686679ae6e07714b24ba7c3956dfa8454c0c2b4e5c9f9d44225291cb498dca3` |
| 10 | `def` | [Simps.apply](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/simps-apply--8cb5f738d92d5d865ce60e91.md) | 131 | `declaration-track:8cb5f738d92d5d865ce60e914e8b55fce8d73a796cf2969cb0d4b04322820fdd` |
| 11 | `def` | [ofAlgHom](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/ofalghom--9273ae99b17fe23b4ca2ce89.md) | 139 | `declaration-track:9273ae99b17fe23b4ca2ce8902d425d0f5a590632398bd95ed01fed6ec0ed270` |
| 12 | `theorem` | [coe_coe](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/coe-coe--8ef29b283347abe494737cb6.md) | 148 | `result-track:8ef29b283347abe494737cb66d336c6c6c1aaa429d170d80d812c47f5a70e466` |
| 13 | `theorem` | [coe_mk](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/coe-mk--08d2b0604da34d4dbaf8f3bd.md) | 153 | `result-track:08d2b0604da34d4dbaf8f3bd00c95fa33aba32adc73763a4f9f6a850a141c216` |
| 14 | `theorem` | [coe_mks](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/coe-mks--35856b6dc4e7be29ce361bdd.md) | 157 | `result-track:35856b6dc4e7be29ce361bdde44b640d962ee31e8c8db7154d6d775caba2048b` |
| 15 | `theorem` | [coe_coalgHom_mk](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/coe-coalghom-mk--ea6383722ca060850ec4f9af.md) | 162 | `result-track:ea6383722ca060850ec4f9afdd6ffd3d6c1a6ce99f58624eaec4d01f958e4adb` |
| 16 | `theorem` | [coe_toCoalgHom](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/coe-tocoalghom--35a2e56aa205ba9c76144cfe.md) | 167 | `result-track:35a2e56aa205ba9c76144cfed7215de7d806ab1784220751bbb3cef06bd91adf` |
| 17 | `lemma` | [toCoalgHom_apply](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/tocoalghom-apply--a6ae60c414e3c83485260e8e.md) | 170 | `result-track:a6ae60c414e3c83485260e8e31712b9b598f9af95cd6a23d244c1f66803c0f1b` |
| 18 | `theorem` | [coe_toLinearMap](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/coe-tolinearmap--bb751ad2facf0d4fd2e6cdf6.md) | 173 | `result-track:bb751ad2facf0d4fd2e6cdf678c707cb2dd3831ce30467e2dc880dfc943ef48a` |
| 19 | `theorem` | [coe_toAlgHom](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/coe-toalghom--7eaec0b6763047b61dae22e1.md) | 177 | `result-track:7eaec0b6763047b61dae22e1632677e92cd9e1bb3092776bf741e1d821b0e8af` |
| 20 | `theorem` | [toAlgHom_toLinearMap](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/toalghom-tolinearmap--b5545e62aa8464a42b1d059d.md) | 180 | `result-track:b5545e62aa8464a42b1d059d569b5231694d4dc22f8c7b57447d81b6d434ed3d` |
| 21 | `theorem` | [coe_fn_injective](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/coe-fn-injective--33de0d2036fa2c332a4374ca.md) | 186 | `result-track:33de0d2036fa2c332a4374ca53fd8c385150daa21203054db39747ee3ce70d50` |
| 22 | `theorem` | [coe_fn_inj](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/coe-fn-inj--43ec38eb51a76bfc9d9a69da.md) | 189 | `result-track:43ec38eb51a76bfc9d9a69daa0b162fbeb5ee2657556d3f5d91ee9af111149cd` |
| 23 | `theorem` | [coe_coalgHom_injective](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/coe-coalghom-injective--9d5e0e6ab99be3340add2d5b.md) | 192 | `result-track:9d5e0e6ab99be3340add2d5b64f7133864918c112618d57df3cbce478b826106` |
| 24 | `theorem` | [coe_algHom_injective](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/coe-alghom-injective--d06101036e4c0cc8be2cb044.md) | 196 | `result-track:d06101036e4c0cc8be2cb044c6c538148c5be394c1b094bdedb144385758e12d` |
| 25 | `theorem` | [coe_linearMap_injective](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/coe-linearmap-injective--5298a1191bc0f28ac0f57617.md) | 200 | `result-track:5298a1191bc0f28ac0f57617bcba0cef22e69bd9c120fef64853f220a395f2cb` |
| 26 | `theorem` | [congr_fun](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/congr-fun--a44ed8a9b136c715809b8bf8.md) | 203 | `result-track:a44ed8a9b136c715809b8bf874518fc89577176fc3522e6cedb88d1d18ebacd7` |
| 27 | `theorem` | [congr_arg](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/congr-arg--9ce978e732e9c5c20b1c35c5.md) | 206 | `result-track:9ce978e732e9c5c20b1c35c58cb8a5818710dbcd4d6e021e0d12359f7bd8702c` |
| 28 | `theorem` | [ext](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/ext--be8717b4c2123740f8c83962.md) | 210 | `result-track:be8717b4c2123740f8c8396270ee6187aedcca6458c59789560f6594c48f3dce` |
| 29 | `theorem` | [ext_of_ring](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/ext-of-ring--5d70fcc2e8d533e5e68ff0cb.md) | 214 | `result-track:5d70fcc2e8d533e5e68ff0cb1148edba32ccfe0491349c4b0c45f2e152548aad` |
| 30 | `theorem` | [mk_coe](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/mk-coe--57eb887b1d49ecab1b1d4272.md) | 218 | `result-track:57eb887b1d49ecab1b1d4272d928cdc995f9c54751420c48f58ddffa588ace72` |
| 31 | `def` | [copy](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/copy--701056d1ac82c0308c4d89af.md) | 224 | `declaration-track:701056d1ac82c0308c4d89affc81b9e5e53e7021ce0247f46e2af20cbd5f72c6` |
| 32 | `theorem` | [coe_copy](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/coe-copy--fd41214beb90e36415946a89.md) | 230 | `result-track:fd41214beb90e36415946a89394c31b151815dbfd70025c23c6cda9c7fe3ec83` |
| 33 | `theorem` | [copy_eq](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/copy-eq--920f79229a20b44466bc4309.md) | 233 | `result-track:920f79229a20b44466bc43099dd4d1ff8dae3aacb4e153ee228b682f725fd342` |
| 34 | `def` | [id](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/id--db16dda8e23c6f5f6971abb8.md) | 241 | `declaration-track:db16dda8e23c6f5f6971abb85d0fde175e346789e8c5d07785e75da020a3e99a` |
| 35 | `theorem` | [coe_id](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/coe-id--1ced46f679ea5f5d5a9b5ddf.md) | 247 | `result-track:1ced46f679ea5f5d5a9b5ddf78ff45aef58325eb0381cd4e37106c2f7a38336b` |
| 36 | `theorem` | [id_toCoalgHom](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/id-tocoalghom--990f6c1ab6a5c443b4a8f833.md) | 251 | `result-track:990f6c1ab6a5c443b4a8f8335ca451d1cac881bbda76e0435eb8f778a670887a` |
| 37 | `theorem` | [id_toAlgHom](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/id-toalghom--ac008b9d4fdae601e66f9d27.md) | 255 | `result-track:ac008b9d4fdae601e66f9d273d28da34ae4bd46bb9d7e903c9b0239a33bc9835` |
| 38 | `def` | [comp](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/comp--ddc226d5648c5912b9252a71.md) | 261 | `declaration-track:ddc226d5648c5912b9252a71b4c042155c82b29de3ff031ffa3bc542870e8480` |
| 39 | `theorem` | [coe_comp](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/coe-comp--1738c403b2aff320caa2a89b.md) | 265 | `result-track:1738c403b2aff320caa2a89b2608087ce5410c7ed441c0d720c58d29cc30ce8b` |
| 40 | `theorem` | [comp_toCoalgHom](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/comp-tocoalghom--cdba4a768c1aade7745f1c76.md) | 269 | `result-track:cdba4a768c1aade7745f1c7669d2d49e1c957506c7d78b42987875354670953d` |
| 41 | `theorem` | [comp_toAlgHom](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/comp-toalghom--688d43d9614752aaa378bffc.md) | 274 | `result-track:688d43d9614752aaa378bffc79e57470444f1206b2cf0da9ee7e1b96240c2bd3` |
| 42 | `theorem` | [comp_id](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/comp-id--f4705c95b58001ca2570bd62.md) | 279 | `result-track:f4705c95b58001ca2570bd628eba6d925cde735924dcae3035ee563b08915eee` |
| 43 | `theorem` | [id_comp](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/id-comp--c3e759fd35ff6787eee9ba29.md) | 283 | `result-track:c3e759fd35ff6787eee9ba29c6fc449abb9f9d37d132c383b5b1fae6ec936c20` |
| 44 | `theorem` | [comp_assoc](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/comp-assoc--300a1a96f6e9eaff62710b4c.md) | 286 | `result-track:300a1a96f6e9eaff62710b4cc5038f16a89170fa024ddd60214317dbd7b075da` |
| 45 | `theorem` | [map_smul_of_tower](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/map-smul-of-tower--cde7fed00ee2ac34fd526104.md) | 290 | `result-track:cde7fed00ee2ac34fd5261040f6da4d9cf056ab43e4a7e4aa71bb545db02bb2f` |
| 46 | `instance` | [End](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/end--ae9c9b06a538672a753d5dc6.md) | 295 | `declaration-track:ae9c9b06a538672a753d5dc60de65d1ad57199d88fdbf584a9c812d09c154f44` |
| 47 | `theorem` | [one_apply](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/one-apply--3181d025b55e921e62743ebe.md) | 303 | `result-track:3181d025b55e921e62743ebeb2d432bbec9233e1eee7b6d86adb1d31e81c164e` |
| 48 | `theorem` | [mul_apply](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/mul-apply--c9ce70168b6c5be1b12ee16f.md) | 307 | `result-track:c9ce70168b6c5be1b12ee16f866d4bd0b34e1f5e4f555be18c293f35989ab14c` |
| 49 | `def` | [unitBialgHom](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/unitbialghom--93fea33d286f16f058a53061.md) | 317 | `declaration-track:93fea33d286f16f058a530617d9e543462622e8287dc9d46ac0e88db3735e8e3` |
| 50 | `def` | [counitBialgHom](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/counitbialghom--1c8baf6b1ad6c8462ae922df.md) | 322 | `declaration-track:1c8baf6b1ad6c8462ae922df7e8d67e35d315156f1a6043287beb90c24e47e80` |
| 51 | `theorem` | [counitBialgHom_apply](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/counitbialghom-apply--c51b77cd524daca4de294b55.md) | 326 | `result-track:c51b77cd524daca4de294b55cdab5444dae4a4aa7fce948ad4f5b205f179d94f` |
| 52 | `theorem` | [counitBialgHom_toCoalgHom](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/counitbialghom-tocoalghom--70c3373fafbe561f2bcfc02a.md) | 330 | `result-track:70c3373fafbe561f2bcfc02a360df1dc88ab3378bab6262856e0ec0b79b5b2b6` |
| 53 | `instance` | [subsingleton_to_ring](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/subsingleton-to-ring--5a637c7c7e2db1e4db358b7f.md) | 333 | `declaration-track:5a637c7c7e2db1e4db358b7f617bddadf5195a867e395409ae18fd08ee7fdbf7` |
| 54 | `theorem` | [ext_to_ring](../../../../mathematics/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/declarations/ext-to-ring--d4916041a95d67838de44eca.md) | 337 | `result-track:d4916041a95d67838de44eca61e5f37974c97d387a5b400964c2e1c54972fc21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
