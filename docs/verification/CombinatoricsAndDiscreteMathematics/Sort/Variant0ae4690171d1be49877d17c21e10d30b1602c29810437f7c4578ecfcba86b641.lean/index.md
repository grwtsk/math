# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sort.Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69da4dbf3097823736b939bf05dd300b8430890c",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69da4dbf3097823736b939bf05dd300b8430890c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/sort--34ce38af9b109ec069fb222a.md) | 41 | `declaration-track:34ce38af9b109ec069fb222a9cff58a706b76f455e2ec59fd1e386969b070eb3` |
| 2 | `theorem` | [sort_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/sort-val--c6d80701e0961cb4221bc4ab.md) | 52 | `result-track:c6d80701e0961cb4221bc4aba2c8f21f9012f7e2ef4d7544926b6609e131d3ef` |
| 3 | `theorem` | [pairwise_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/pairwise-sort--77cee62a3b56ed9325d70e56.md) | 56 | `result-track:77cee62a3b56ed9325d70e56ef202da887ddd3abacf180d0c1e921b13b3a0ae4` |
| 4 | `theorem` | [sort_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/sort-eq--cab1b820658a1e2a791d3b28.md) | 60 | `result-track:cab1b820658a1e2a791d3b2809e4ece375407d6261b1012f9901dd82dc02f927` |
| 5 | `theorem` | [sort_nodup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/sort-nodup--4331ecee0d4d578b59bb01b7.md) | 64 | `result-track:4331ecee0d4d578b59bb01b75dd4060f10fbfc5aebf460e060c47906de4b2a9b` |
| 6 | `theorem` | [sort_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/sort-tofinset--f90289c8afe0c8a4baa5fd23.md) | 68 | `result-track:f90289c8afe0c8a4baa5fd238c6f03bd2089f5062803bff38e7f69361e34e233` |
| 7 | `theorem` | [sort_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/sort-empty--e2c3221871ce101a60533e85.md) | 72 | `result-track:e2c3221871ce101a60533e850dd0ba1f20a99cfd8bda0cc64b90eb3dd35ad6c9` |
| 8 | `theorem` | [sort_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/sort-singleton--9aa4e47dab2ffafb8e32ea5f.md) | 76 | `result-track:9aa4e47dab2ffafb8e32ea5f0025200235b41390e898e9fc26ae6e528f6f10c2` |
| 9 | `theorem` | [map_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/map-sort--80879ac92fa3a7856c7e64eb.md) | 79 | `result-track:80879ac92fa3a7856c7e64eb7722c39de09f7e8a6fcb908e98211d5dabfe5ec9` |
| 10 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Sort.Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.StrictMonoOn.map_finsetSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-sort-variant2fd791b34065--495b85d6fcdc95ee4037594a.md) | 84 | `result-track:495b85d6fcdc95ee4037594a5f93b7ac9b6d28cc1d9f93e84d48ff5889e3d0e9` |
| 11 | `theorem` | [sort_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/sort-range--d082bf936e6b057bd756aa13.md) | 90 | `result-track:d082bf936e6b057bd756aa1331ddfccb90fad18251b3aacfe963e3a4ccb34b47` |
| 12 | `theorem` | [sort_perm_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/sort-perm-tolist--3406d08bca9db5892a6281fc.md) | 94 | `result-track:3406d08bca9db5892a6281fcd713186be6e45e54ef1e6971315894d9367cace4` |
| 13 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Sort.Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.List.toFinset_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-sort-variant2fd791b34065--88efc5a369bf74d96ac76283.md) | 98 | `result-track:88efc5a369bf74d96ac76283d78e90bd97aae12cbaf10d6cd41c28e59ce6886a` |
| 14 | `theorem` | [sort_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/sort-mk--8925ea7f7d32471d6189ea0b.md) | 114 | `result-track:8925ea7f7d32471d6189ea0be92600437c91c4a7ce8a684b05aafef2034673d8` |
| 15 | `theorem` | [mem_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/mem-sort--f47ddd7386c33f9db406e312.md) | 117 | `result-track:f47ddd7386c33f9db406e312c6f95b47038a3b556e07a4dcc16017eee70ac326` |
| 16 | `theorem` | [length_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/length-sort--1e4ef0ec3f5316ec5f747502.md) | 121 | `result-track:1e4ef0ec3f5316ec5f7475025490698b7c090c989ab7f4cb965743f26db2872d` |
| 17 | `theorem` | [sort_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/sort-cons--85957719844ace3876fe4df8.md) | 124 | `result-track:85957719844ace3876fe4df86dad604da2d9d713a9097e4700d90326eca4916b` |
| 18 | `theorem` | [sort_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/sort-insert--b8ab912c3d3c6655ea398f2d.md) | 128 | `result-track:b8ab912c3d3c6655ea398f2dde4eee604775856e918ccd89a6d77bff3f16d58f` |
| 19 | `theorem` | [sortedLT_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/sortedlt-sort--7fde9033e54cde46fb9fe5c5.md) | 140 | `result-track:7fde9033e54cde46fb9fe5c59589d90a2c3d45b446e42408408ba724a15aac85` |
| 20 | `theorem` | [sortedGT_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/sortedgt-sort--e0b5252bf0289b869ec88c7a.md) | 143 | `result-track:e0b5252bf0289b869ec88c7a0e873c75a25d6abcb4d8efa0ece13a672282696b` |
| 21 | `theorem` | [sorted_zero_eq_min'_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/sorted-zero-eq-min-aux--1bfc388b7e10b46114f96a7a.md) | 146 | `result-track:1bfc388b7e10b46114f96a7a3a3dd9fad3f28d42c0339665aead2b05d5ddc405` |
| 22 | `theorem` | [sorted_zero_eq_min'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/sorted-zero-eq-min--c21b24309524812feeba8ca2.md) | 157 | `result-track:c21b24309524812feeba8ca2f6485e5a3b92c0e723a481b20ebf26f53fed5b9c` |
| 23 | `theorem` | [min'_eq_sorted_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/min-eq-sorted-zero--2424be6efd9e912b56b6df77.md) | 161 | `result-track:2424be6efd9e912b56b6df77b2371937f5d79bd8e0e046a363fdecb632d041b0` |
| 24 | `theorem` | [sorted_last_eq_max'_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/sorted-last-eq-max-aux--d68b7712430a02307b7b8c19.md) | 165 | `result-track:d68b7712430a02307b7b8c194b5fba89c66b56f902214a10e3a030d39b4e5261` |
| 25 | `theorem` | [sorted_last_eq_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/sorted-last-eq-max--1968f0c354449c64f1707ea9.md) | 178 | `result-track:1968f0c354449c64f1707ea9a2ef92ab8d374c9e778bf5c220bd1fcb21cafab7` |
| 26 | `theorem` | [max'_eq_sorted_last](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/max-eq-sorted-last--d7294e5167993047dd624cff.md) | 184 | `result-track:d7294e5167993047dd624cff992b3f2629c0873d2be46896bcf2f250a8859092` |
| 27 | `def` | [orderIsoOfFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/orderisooffin--3d055192bed7dfc6fd147692.md) | 194 | `declaration-track:3d055192bed7dfc6fd1476922fe6d1b9689bafca7f16d736ae4c096474e63fc0` |
| 28 | `def` | [orderEmbOfFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/orderemboffin--9aead2e347c64b3081f2f7c3.md) | 202 | `declaration-track:9aead2e347c64b3081f2f7c36a1a6432d27d816cfa54c2be8ccafa9d9e7d8f02` |
| 29 | `theorem` | [coe_orderIsoOfFin_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/coe-orderisooffin-apply--57708e039034ce7ee5584402.md) | 206 | `result-track:57708e039034ce7ee558440273ad0db00c16316bd5aaebf0cef87ff234a357f5` |
| 30 | `theorem` | [orderIsoOfFin_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/orderisooffin-symm-apply--84b1389706fd1085e386fd03.md) | 210 | `result-track:84b1389706fd1085e386fd03e7150b8873591d23728737b92dfdd7c32c7ababc` |
| 31 | `theorem` | [orderEmbOfFin_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/orderemboffin-apply--fc230f8021ecf0ecb1a7d8af.md) | 214 | `result-track:fc230f8021ecf0ecb1a7d8afa158ca3e7595c6ed9403424b8d6882adb6b6dd05` |
| 32 | `theorem` | [orderEmbOfFin_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/orderemboffin-mem--7e079ede507861ed455acd94.md) | 219 | `result-track:7e079ede507861ed455acd94fd5891b7542e77e37afee89dcd99121e441d3fd6` |
| 33 | `theorem` | [range_orderEmbOfFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/range-orderemboffin--32fb1382a0be128346bf8964.md) | 224 | `result-track:32fb1382a0be128346bf8964732c02e45eb4c23e18cc3aae48a796950074fe9c` |
| 34 | `theorem` | [image_orderEmbOfFin_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/image-orderemboffin-univ--619010989841b1abba904934.md) | 232 | `result-track:619010989841b1abba904934f71e1d62cdfc08b58373de0b4e919b8e30cf9e42` |
| 35 | `theorem` | [map_orderEmbOfFin_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/map-orderemboffin-univ--67ae6c7720edd1c45a862873.md) | 238 | `result-track:67ae6c7720edd1c45a86287378c373e6b0061511190e2a0cf31320408ef9ae23` |
| 36 | `theorem` | [listMap_orderEmbOfFin_finRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/listmap-orderemboffin-finrange--354042034f865cdf4a1e82ac.md) | 243 | `result-track:354042034f865cdf4a1e82ac39c1d2b030b3456fceca9f5d2753b588c44cd0f0` |
| 37 | `theorem` | [orderEmbOfFin_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/orderemboffin-zero--1fe55ba9272f08261fe40bf6.md) | 249 | `result-track:1fe55ba9272f08261fe40bf6b82afb1bfeef72d4af51aeeb0f6ebb92986988ca` |
| 38 | `theorem` | [orderEmbOfFin_last](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/orderemboffin-last--67d36226d295138920a2458d.md) | 254 | `result-track:67d36226d295138920a2458d6b95fdff59dc40101523505a9b4b104c3ba0ba8a` |
| 39 | `theorem` | [orderEmbOfFin_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/orderemboffin-singleton--0a8f6776d5b74649728188f5.md) | 261 | `result-track:0a8f6776d5b74649728188f51099489efcb09f5f28ebc6ea7cc152ae0a606a21` |
| 40 | `theorem` | [orderEmbOfFin_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/orderemboffin-unique--7b741bf69a35ae07dcc5c526.md) | 268 | `result-track:7b741bf69a35ae07dcc5c526e5775364e811fafebd26248536d4400927c45f59` |
| 41 | `theorem` | [orderEmbOfFin_unique'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/orderemboffin-unique--834a66db86ced971ec3df495.md) | 279 | `result-track:834a66db86ced971ec3df495c54cceddeb83cad7006060350db2c6cd6b64c2b0` |
| 42 | `theorem` | [orderEmbOfFin_eq_orderEmbOfFin_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/orderemboffin-eq-orderemboffin-iff--287ce391a276ac0859d73aa5.md) | 287 | `result-track:287ce391a276ac0859d73aa50a47a1f98febdd72c683d5cf3c2c30d36454c1ca` |
| 43 | `def` | [orderEmbOfCardLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/orderembofcardle--1922140b0a1f41e040b671e2.md) | 296 | `declaration-track:1922140b0a1f41e040b671e20d3d6e2d8c480c496aeb91998c9e1a46649766dd` |
| 44 | `theorem` | [orderEmbOfCardLe_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/orderembofcardle-mem--49dbd0d365ca5f8c6553e448.md) | 299 | `result-track:49dbd0d365ca5f8c6553e448bfefb263fd461437bfde5db0be6cebff4c60e448` |
| 45 | `lemma` | [orderEmbOfFin_compl_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/orderemboffin-compl-singleton--8fdbbb105c6448c79b3420ea.md) | 304 | `result-track:8fdbbb105c6448c79b3420eae84e0559b45702d098e1868dd16112ed747fba3e` |
| 46 | `lemma` | [orderEmbOfFin_compl_singleton_eq_succAboveOrderEmb](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/orderemboffin-compl-singleton-eq-succaboveorderemb--29ccc55f485e40b2dd902432.md) | 317 | `result-track:29ccc55f485e40b2dd90243295bc0e3a020d9111e9314fdd98c3e2ca3905100f` |
| 47 | `lemma` | [orderEmbOfFin_compl_singleton_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/orderemboffin-compl-singleton-apply--7738a5d3b938e293d2a6f6bb.md) | 321 | `result-track:7738a5d3b938e293d2a6f6bb95491468acb83f7b484bf5241cc73c5318c9d5a3` |
| 48 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/instance--744ddeba97d78f09b277d31f.md) | 329 | `declaration-track:744ddeba97d78f09b277d31fd3ebb505c4cca8799580a65c97c4223cf73bbd44` |
| 49 | `theorem` | [sort_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/sort-univ--00cbfac353768d9c86de0b82.md) | 338 | `result-track:00cbfac353768d9c86de0b8298d4f470e019a22948a93374885204af540f88d4` |
| 50 | `def` | [Fintype.orderIsoFinOfCardEq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/fintype-orderisofinofcardeq--0728221c57b2ebd02d4d1740.md) | 347 | `declaration-track:0728221c57b2ebd02d4d17406c0e24b50649e0c242dc7411a32b5c6e643fb298` |
| 51 | `lemma` | [nonempty_orderEmbedding_of_finite_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/declarations/nonempty-orderembedding-of-finite-infinite--b252b4622603f725c1a6348b.md) | 354 | `result-track:b252b4622603f725c1a6348b57c4a4e299cbea6f20e79353f0355c7d71b9919c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
