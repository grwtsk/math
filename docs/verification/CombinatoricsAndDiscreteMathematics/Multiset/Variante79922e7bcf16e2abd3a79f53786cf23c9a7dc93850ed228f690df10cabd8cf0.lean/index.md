# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f375074c2b10477afc76d456071b50bc47af2a1",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f375074c2b10477afc76d456071b50bc47af2a1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sym.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/tomultiset--8de1d79efc7b875ad8450543.md) | 39 | `declaration-track:8de1d79efc7b875ad8450543a2e375c9b241d3547fd85dc6c7a1613059532312` |
| 2 | `theorem` | [toMultiset_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/tomultiset-zero--64db77f8e7cebcfea6e82864.md) | 47 | `result-track:64db77f8e7cebcfea6e828649d238300382623a613d95fb5bc39dfbf6033d37a` |
| 3 | `theorem` | [toMultiset_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/tomultiset-add--2168b999628280f33d60a3a5.md) | 50 | `result-track:2168b999628280f33d60a3a5620072e12ba6819cc67a2df9d067b9176fb183c4` |
| 4 | `theorem` | [toMultiset_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/tomultiset-apply--6790d371d9257c9a9ad3a156.md) | 53 | `result-track:6790d371d9257c9a9ad3a1568d803e6a379a77a05737f2369da5577cfae85c6c` |
| 5 | `theorem` | [toMultiset_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/tomultiset-single--5728abf8309105e951cd919d.md) | 57 | `result-track:5728abf8309105e951cd919d61c1657662428233656764f0f4a3f6092e2b5931` |
| 6 | `theorem` | [toMultiset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/tomultiset-sum--82aa0fd522b485311082a3d7.md) | 60 | `result-track:82aa0fd522b485311082a3d72c526bde4279d237da07c1413b47d7bfede45c6c` |
| 7 | `theorem` | [toMultiset_sum_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/tomultiset-sum-single--719fba91b8434495e1e5d540.md) | 64 | `result-track:719fba91b8434495e1e5d5408f4930344c58a323ce570fdad3f02b16910c8bc3` |
| 8 | `theorem` | [card_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/card-tomultiset--75f67b94a04ba7d01f87699d.md) | 69 | `result-track:75f67b94a04ba7d01f87699df476f50cdaf7f5691b316be4c98534149888ecf9` |
| 9 | `theorem` | [toMultiset_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/tomultiset-map--f65841287375d4bd0d409ed3.md) | 72 | `result-track:f65841287375d4bd0d409ed3245456744b36df06b2271a26789406c6271a6b26` |
| 10 | `theorem` | [prod_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/prod-tomultiset--56824e0a3272dbe300e01e30.md) | 83 | `result-track:56824e0a3272dbe300e01e306f78fc1faa26b143df1addb930a35364faf4aedb` |
| 11 | `theorem` | [toFinset_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/tofinset-tomultiset--bbcf02ba9ef94566ae558124.md) | 93 | `result-track:bbcf02ba9ef94566ae558124afbbd347b8262eeee0c54791495c88dee7884a05` |
| 12 | `theorem` | [count_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/count-tomultiset--2ecba053660da24a8064d11b.md) | 103 | `result-track:2ecba053660da24a8064d11b03b6b737b8d833e482b02cf94e788dbb4c69c1e0` |
| 13 | `theorem` | [toMultiset_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/tomultiset-sup--95ae3fe98d553b40ca2fc5ee.md) | 114 | `result-track:95ae3fe98d553b40ca2fc5eefc047cbecdc94a0dfba7e8fbdefe35e57f86ee8a` |
| 14 | `theorem` | [toMultiset_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/tomultiset-inf--d4edcd9e8ca8bd64abe09ff5.md) | 119 | `result-track:d4edcd9e8ca8bd64abe09ff5d6f5cb7d19e0bcff7fc93f8fc2ac538a00d0615c` |
| 15 | `theorem` | [mem_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/mem-tomultiset--ceaeaca3cab618e0b239816c.md) | 125 | `result-track:ceaeaca3cab618e0b239816c822a9940c38d487f16dbbd72953e52630059b567` |
| 16 | `def` | [toFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/tofinsupp--f804c520ba42d349b46b5482.md) | 138 | `declaration-track:f804c520ba42d349b46b5482095014e384e7b7e78c9af9b4accbf1d9103fc554` |
| 17 | `theorem` | [toFinsupp_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/tofinsupp-support--051c50d267e25ebc2bcf681a.md) | 152 | `result-track:051c50d267e25ebc2bcf681ac6ecc50374e1ec9723d5cfcad07983efc4ae1786` |
| 18 | `theorem` | [toFinsupp_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/tofinsupp-apply--e61acad1b86f9e12411e6a8a.md) | 155 | `result-track:e61acad1b86f9e12411e6a8a7132318fc132a5f421f77498bcd65677b19ef62c` |
| 19 | `theorem` | [toFinsupp_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/tofinsupp-zero--828b21acb456792d6e1a1cc1.md) | 157 | `result-track:828b21acb456792d6e1a1cc1e1a4c9c925772b584a68af2b84b9131d36b3d9ee` |
| 20 | `theorem` | [toFinsupp_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/tofinsupp-add--ca96e1901b117fb08951c8bd.md) | 159 | `result-track:ca96e1901b117fb08951c8bd9a1e53954cd0781fcfc38690468fd06c7ec75726` |
| 21 | `theorem` | [toFinsupp_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/tofinsupp-singleton--29429be185f8a7696cfd750b.md) | 163 | `result-track:29429be185f8a7696cfd750b1b427f1b597994e44e0944b4ebcb43e4169ca227` |
| 22 | `theorem` | [toFinsupp_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/tofinsupp-tomultiset--2239676ca048ad5d9ed61d09.md) | 167 | `result-track:2239676ca048ad5d9ed61d09f7e198f083d28ca17d97e5ff9bc4d11c79154297` |
| 23 | `theorem` | [toFinsupp_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/tofinsupp-eq-iff--680aa333661a29dfce9a57b4.md) | 170 | `result-track:680aa333661a29dfce9a57b43feb8972a8405aaaa084aded2e07cac2ce0091ab` |
| 24 | `theorem` | [toFinsupp_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/tofinsupp-union--977c2f09b4eff60104048467.md) | 174 | `result-track:977c2f09b4eff601040484679d511e9b9f423cd7eeba808aa9e8c2aa514812da` |
| 25 | `theorem` | [toFinsupp_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/tofinsupp-inter--7151bd9d1ef00bd2120acc85.md) | 178 | `result-track:7151bd9d1ef00bd2120acc85272bf1b601425d59a7da247260f29855b8a4f9ec` |
| 26 | `theorem` | [toFinsupp_sum_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/tofinsupp-sum-eq--21dd79fc9eb604811635aa1e.md) | 183 | `result-track:21dd79fc9eb604811635aa1ef29ba9db6c190fabf7883151d33e05590442cbcf` |
| 27 | `theorem` | [Finsupp.toMultiset_toFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/finsupp-tomultiset-tofinsupp--4e27cc89f42e5144fbfcaa04.md) | 189 | `result-track:4e27cc89f42e5144fbfcaa0421d6339f7fc8265077bb37c31e7f1af995be92f8` |
| 28 | `theorem` | [Finsupp.toMultiset_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/finsupp-tomultiset-eq-iff--5fb0e5e59775ffcb1a41c106.md) | 193 | `result-track:5fb0e5e59775ffcb1a41c106b1b1f0a699fd66064b0fc8d3794821b77cb47b5b` |
| 29 | `def` | [orderIsoMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/orderisomultiset--be698e8bf713d1ee16267c25.md) | 201 | `declaration-track:be698e8bf713d1ee16267c251e5fc7bdf762503bd10fad58ea18038d33a3c490` |
| 30 | `theorem` | [coe_orderIsoMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/coe-orderisomultiset--30a78d91911886784cfa1878.md) | 206 | `result-track:30a78d91911886784cfa1878a3f0d50905450165204c3444faecb5fa53727189` |
| 31 | `theorem` | [coe_orderIsoMultiset_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/coe-orderisomultiset-symm--752504effd9e756b8715f14e.md) | 210 | `result-track:752504effd9e756b8715f14e8ea054d14cd752b6b871686caab16bffe6ec5d00` |
| 32 | `theorem` | [toMultiset_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/tomultiset-strictmono--c3fd6cf22a2e2489439014cf.md) | 214 | `result-track:c3fd6cf22a2e2489439014cfba7489567dea3404a81c0d98a3d1d1f036426eae` |
| 33 | `theorem` | [sum_id_lt_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/sum-id-lt-of-lt--d7cfa62071fc8e55dc74f42e.md) | 217 | `result-track:d7cfa62071fc8e55dc74f42e17d3e94da6fb3224f4e724a9b82f91f77befdead` |
| 34 | `theorem` | [lt_wf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/lt-wf--847f0075db2d138471f37ede.md) | 225 | `result-track:847f0075db2d138471f37ede202993e7650a5fed1c28c7e8700d7d90c02084b5` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/instance--4acfef91a3c234fe83151aa6.md) | 229 | `declaration-track:4acfef91a3c234fe83151aa6b7ffbe163fc06da703cbe79c654f05f9bb8d603b` |
| 36 | `theorem` | [Multiset.toFinsupp_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/multiset-tofinsupp-strictmono--339772c8d60a46b345fdd68f.md) | 235 | `result-track:339772c8d60a46b345fdd68f66b33f534810b6981c60becc33aad2be485d9eac` |
| 37 | `def` | [equivNatSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/equivnatsum--e4454cce4faf0e1b6ced07ae.md) | 247 | `declaration-track:e4454cce4faf0e1b6ced07ae791a61d1f74f553f1231be221cde9dce93247d9a` |
| 38 | `lemma` | [coe_equivNatSum_apply_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/coe-equivnatsum-apply-apply--0d32f1ed65701e8cd787761c.md) | 251 | `result-track:0d32f1ed65701e8cd787761cf6d93225634d12324e02cb5230cc3708793a5277` |
| 39 | `lemma` | [coe_equivNatSum_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/coe-equivnatsum-symm-apply--cfa8def38e321b10c027791f.md) | 255 | `result-track:cfa8def38e321b10c027791fce6f3142ffdad8b62ac744458862be551edc9337` |
| 40 | `def` | [equivNatSumOfFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/equivnatsumoffintype--f315dabd70ac15c6bb885fe8.md) | 263 | `declaration-track:f315dabd70ac15c6bb885fe82ff31a9d6ec0c57f5acc6c3290ef132cd3150b4e` |
| 41 | `lemma` | [coe_equivNatSumOfFintype_apply_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/coe-equivnatsumoffintype-apply-apply--d6e4ec1b4abe0ac15bf7c603.md) | 267 | `result-track:d6e4ec1b4abe0ac15bf7c603b2a2141345edec0c2e41d1d1a60f98ec54b6b573` |
| 42 | `lemma` | [coe_equivNatSumOfFintype_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/declarations/coe-equivnatsumoffintype-symm-apply--342702e06d98b4ac42432ecd.md) | 271 | `result-track:342702e06d98b4ac42432ecd9bff75cfde0512ee336808a8ad80ce61442387b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
