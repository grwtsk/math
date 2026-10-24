# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sort.Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6923de5d0e4768ef4ebb3b1d49523490095f400",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6923de5d0e4768ef4ebb3b1d49523490095f400`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Max` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Sort` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelIso.Set` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/sort--d8bc127bb7330a88fc4fc492.md) | 39 | `declaration-track:d8bc127bb7330a88fc4fc4921af6383dcf6bbb18f50f4e0ccbf42c6d5724750a` |
| 2 | `theorem` | [sort_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/sort-val--16195b12f191ebae95860948.md) | 43 | `result-track:16195b12f191ebae958609481c275f9b51746a179a47269e602dfd351fe5375d` |
| 3 | `theorem` | [sort_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/sort-mk--f37f3f1a65a21f1ba948bde9.md) | 47 | `result-track:f37f3f1a65a21f1ba948bde9c82b0e0fb6a676271cd77a05403b8eb91e027c17` |
| 4 | `theorem` | [sort_sorted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/sort-sorted--660f14c776d0fbc7bb21142b.md) | 50 | `result-track:660f14c776d0fbc7bb21142b5c7869f581c7291bfb012acced9353077a4f22a0` |
| 5 | `theorem` | [sort_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/sort-eq--4208ee20432080cd1803d04d.md) | 54 | `result-track:4208ee20432080cd1803d04dd63ade7bcb299dc215652e1660cb531ce49b54bb` |
| 6 | `theorem` | [sort_nodup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/sort-nodup--dcbbef4610d2550e757800f1.md) | 58 | `result-track:dcbbef4610d2550e757800f14bc3ffdad4c0537ff4b48dd9a492049f0327d780` |
| 7 | `theorem` | [sort_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/sort-tofinset--052ebd30ebc4a541687b4534.md) | 62 | `result-track:052ebd30ebc4a541687b45348508513dadad4b43291f77cc7c28e766f6c46270` |
| 8 | `theorem` | [mem_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/mem-sort--aac23e3df510774f76868714.md) | 66 | `result-track:aac23e3df510774f768687144814d0834bbeebc6fb2b3d928fac2efefe292f7f` |
| 9 | `theorem` | [length_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/length-sort--e7bb460f7afb2da58dba963c.md) | 70 | `result-track:e7bb460f7afb2da58dba963c5c7be1c6525cb0ac8a7d5fb8cf08259aa2577db6` |
| 10 | `theorem` | [sort_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/sort-empty--b7bf5710e8e10e942c7e38bd.md) | 74 | `result-track:b7bf5710e8e10e942c7e38bdf89c6aec63519993a4a30f86ce7886e3460b5b51` |
| 11 | `theorem` | [sort_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/sort-singleton--9738841ce70fd48ec4eda724.md) | 78 | `result-track:9738841ce70fd48ec4eda724f58767adafa4a8db9d5d73b0261c5b6ed45f1afa` |
| 12 | `theorem` | [map_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/map-sort--c58f25c2f5a2dcc4a1252f3b.md) | 81 | `result-track:c58f25c2f5a2dcc4a1252f3b50b6fb94645ae7552123eca8e762bb65a0ab04c5` |
| 13 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Sort.Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.StrictMonoOn.map_finsetSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-sort-variant01d0e5eb0c28--400220c756954f94e5713706.md) | 86 | `result-track:400220c756954f94e5713706b250ddc04cc4e76af6be4febdd13837e6bb928f3` |
| 14 | `theorem` | [sort_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/sort-cons--63b46288bc7243809a334207.md) | 91 | `result-track:63b46288bc7243809a33420724d49f2590f1f0b89103e45a1bbb67d831f6aa12` |
| 15 | `theorem` | [sort_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/sort-insert--aff87355e0e302b1e9b43c0e.md) | 95 | `result-track:aff87355e0e302b1e9b43c0e77da6a360cbdc3d4dc113204698f4f992ff16d34` |
| 16 | `theorem` | [sort_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/sort-range--6b2b7a41b3bcdf09e1a9dd72.md) | 100 | `result-track:6b2b7a41b3bcdf09e1a9dd7264ba0f11c7f26ffe3578cb3ea55a9cc78c25f09f` |
| 17 | `theorem` | [sort_perm_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/sort-perm-tolist--3a9e01fe93eb5b79e43aa0a9.md) | 104 | `result-track:3a9e01fe93eb5b79e43aa0a9c5f79e90eb06bf5510c2f3e12ce9fbf0bf881bb3` |
| 18 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Sort.Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.List.toFinset_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-sort-variant01d0e5eb0c28--ceccea3be9139ab6f906e254.md) | 108 | `result-track:ceccea3be9139ab6f906e254940fa37bb3ee7020c149e22e5b5759f8beed6e90` |
| 19 | `theorem` | [sort_sorted_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/sort-sorted-lt--c6451dbc8cbb034396a9a7af.md) | 122 | `result-track:c6451dbc8cbb034396a9a7afb195e54900d1a1a00dd9b70fef4fb30b8d4063e2` |
| 20 | `theorem` | [sort_sorted_gt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/sort-sorted-gt--06e320fa6503198cf1298cb5.md) | 125 | `result-track:06e320fa6503198cf1298cb5203353698713d57d47f0594ef826e4a44e7425f9` |
| 21 | `theorem` | [sorted_zero_eq_min'_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/sorted-zero-eq-min-aux--847706aecba1ae1c62075204.md) | 128 | `result-track:847706aecba1ae1c62075204dbeb04287c33e568863e724d1d32b46ab964cde2` |
| 22 | `theorem` | [sorted_zero_eq_min'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/sorted-zero-eq-min--5bda3d56ae1614fa5c304d22.md) | 139 | `result-track:5bda3d56ae1614fa5c304d22c9bdc7b21fe4960fc6857a326dcfd7e74241222b` |
| 23 | `theorem` | [min'_eq_sorted_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/min-eq-sorted-zero--311406a74ec2519213111e4e.md) | 143 | `result-track:311406a74ec2519213111e4ebfcf4117b66fee65551375ddd975d21e99c08749` |
| 24 | `theorem` | [sorted_last_eq_max'_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/sorted-last-eq-max-aux--804dfa61bda5e90f6fae89fc.md) | 147 | `result-track:804dfa61bda5e90f6fae89fce8d395667f7551270fe4a817a40de91f8de2ac45` |
| 25 | `theorem` | [sorted_last_eq_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/sorted-last-eq-max--7f2fc34654c52d003b20e715.md) | 160 | `result-track:7f2fc34654c52d003b20e715f3364a9b7b04692efbc8e42ac9a8187ca2120a7d` |
| 26 | `theorem` | [max'_eq_sorted_last](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/max-eq-sorted-last--224ac91484182ee65f129592.md) | 166 | `result-track:224ac91484182ee65f129592f0a9328c53d6390937ac5f0afd31a3d3930712e8` |
| 27 | `def` | [orderIsoOfFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/orderisooffin--970348329d3a4b764484326d.md) | 176 | `declaration-track:970348329d3a4b764484326da2d5ed5fd91b4c5855bd8fb650430ccf04bb7efc` |
| 28 | `def` | [orderEmbOfFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/orderemboffin--c4268c9aac59b150dd738392.md) | 184 | `declaration-track:c4268c9aac59b150dd738392b08058f3de4ba23b619ca89796ef9e680ef34edd` |
| 29 | `theorem` | [coe_orderIsoOfFin_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/coe-orderisooffin-apply--169c71c6f79ef4128a523b80.md) | 188 | `result-track:169c71c6f79ef4128a523b802454ef79a4a9fb46bd310ed7393e255e03750b54` |
| 30 | `theorem` | [orderIsoOfFin_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/orderisooffin-symm-apply--d8fab4f9c0a8cc0f03aaeeb7.md) | 192 | `result-track:d8fab4f9c0a8cc0f03aaeeb7658fa5e38746bea5f8b6b8c9e6b920d635368e4a` |
| 31 | `theorem` | [orderEmbOfFin_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/orderemboffin-apply--b4e2cce7b552005732cd0107.md) | 196 | `result-track:b4e2cce7b552005732cd0107cd126f98c8498886e80306a1aa680ab8da0b6265` |
| 32 | `theorem` | [orderEmbOfFin_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/orderemboffin-mem--4ebd01c8d8ce5a9699662196.md) | 201 | `result-track:4ebd01c8d8ce5a96996621962c0f3fba680e623614f1d13b0050e291d6deebd4` |
| 33 | `theorem` | [range_orderEmbOfFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/range-orderemboffin--5a084b762cf00aa6a98b217c.md) | 206 | `result-track:5a084b762cf00aa6a98b217cfd2a985300d0fb772c90a8944aee829ed9fd8daf` |
| 34 | `theorem` | [image_orderEmbOfFin_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/image-orderemboffin-univ--4e6a8c10dad92ce308a37927.md) | 214 | `result-track:4e6a8c10dad92ce308a3792751abc42b28dd2da48bd01ed0de9256b48d3aa877` |
| 35 | `theorem` | [map_orderEmbOfFin_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/map-orderemboffin-univ--43cb0396f22dcc2974c77fd5.md) | 220 | `result-track:43cb0396f22dcc2974c77fd5818b2b3af8ceff9fc2e8526e924e9632d4fb8ff5` |
| 36 | `theorem` | [listMap_orderEmbOfFin_finRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/listmap-orderemboffin-finrange--4f81029d4daf1746ddaf2cd7.md) | 225 | `result-track:4f81029d4daf1746ddaf2cd7ea104e09bf4eed68935a3a480d63da0e7c84c1eb` |
| 37 | `theorem` | [orderEmbOfFin_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/orderemboffin-zero--c423d442b8a1f4eef37e36f3.md) | 231 | `result-track:c423d442b8a1f4eef37e36f37bf593afc16db112e2f6eaaa6b51dd5d9ea33bc8` |
| 38 | `theorem` | [orderEmbOfFin_last](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/orderemboffin-last--17c1d0d35b542d4e551a5fa7.md) | 236 | `result-track:17c1d0d35b542d4e551a5fa711f4f5acd3dedcd6d396f933556152eb06b35727` |
| 39 | `theorem` | [orderEmbOfFin_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/orderemboffin-singleton--838c2dc17634e442fad3f434.md) | 243 | `result-track:838c2dc17634e442fad3f4349330ebd9c320dddb4e48be5ab7205c506d1d81f5` |
| 40 | `theorem` | [orderEmbOfFin_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/orderemboffin-unique--de341974adaee991b6770c29.md) | 250 | `result-track:de341974adaee991b6770c29bd604ebff044f059d49675cff2f03a79e4975f4f` |
| 41 | `theorem` | [orderEmbOfFin_unique'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/orderemboffin-unique--c5777af69763fb8bf82dceaa.md) | 261 | `result-track:c5777af69763fb8bf82dceaa0ac53fd18a10007d92e55292f5137ab41c9a3224` |
| 42 | `theorem` | [orderEmbOfFin_eq_orderEmbOfFin_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/orderemboffin-eq-orderemboffin-iff--1c3cb8d27757b9c4678117d1.md) | 269 | `result-track:1c3cb8d27757b9c4678117d12553bc7cbc0e3d68bd10034f66c498c0daa0f40a` |
| 43 | `def` | [orderEmbOfCardLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/orderembofcardle--d56ef805e3e0df03707ec866.md) | 278 | `declaration-track:d56ef805e3e0df03707ec866789ce5ca1b9fefec2cd79af9a6597deb7c230eac` |
| 44 | `theorem` | [orderEmbOfCardLe_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/orderembofcardle-mem--77fe953a4c6a41ca2f87e844.md) | 281 | `result-track:77fe953a4c6a41ca2f87e844c9e643c62ad2c9335d79aaadabce7b2acb1f9661` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/instance--6f44494d7a63b5ae0fafd257.md) | 288 | `declaration-track:6f44494d7a63b5ae0fafd2578418c3529b711e82b6f3a57c3ada069bd7c91040` |
| 46 | `theorem` | [sort_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/sort-univ--f87d7f0d3791fb8b866e31c0.md) | 297 | `result-track:f87d7f0d3791fb8b866e31c019d26c5056fc76672be2eecf98e468e8b8386c47` |
| 47 | `def` | [Fintype.orderIsoFinOfCardEq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/fintype-orderisofinofcardeq--3b8a12ad2644babe7ec8e5ea.md) | 310 | `declaration-track:3b8a12ad2644babe7ec8e5ea4ecd1a1562891fc9c5f1197b6b74ec35c0a5fe0b` |
| 48 | `lemma` | [nonempty_orderEmbedding_of_finite_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/declarations/nonempty-orderembedding-of-finite-infinite--6a66f3211876873bddc2cc93.md) | 317 | `result-track:6a66f3211876873bddc2cc933751c898f3fc7fcbaf722def2503928313658b08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
