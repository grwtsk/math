# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17c7340648701aac10524e0839c2bacc4770b264",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17c7340648701aac10524e0839c2bacc4770b264`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Cofinite` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Bornology](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/bornology--76d8f66323ad1455057c642a.md) | 47 | `declaration-track:76d8f66323ad1455057c642a2aefc9e8797304cf370e177b4b58455a4fdd57e2` |
| 2 | `def` | [Bornology.cobounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/bornology-cobounded--80950bf24da89d22c3afb02c.md) | 61 | `declaration-track:80950bf24da89d22c3afb02cfca220d836f1a70e397626f283fb402eb11d876d` |
| 3 | `lemma` | [Bornology.le_cofinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/bornology-le-cofinite--c135d665162c2bfb6159da7d.md) | 65 | `result-track:c135d665162c2bfb6159da7d4ee2cf8d3b79cc0f6a557790bd12a42ac6515651` |
| 4 | `lemma` | [Bornology.ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/bornology-ext--7ae0fab4c05c385d26a45f6c.md) | 71 | `result-track:7ae0fab4c05c385d26a45f6c4646d002dc1ee9d9abf8ff6c9735c8cb1a5e6598` |
| 5 | `def` | [Bornology.ofBounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/bornology-ofbounded--98bb128d7dc787838b12d43c.md) | 81 | `declaration-track:98bb128d7dc787838b12d43c7723aa7e3ebefb4dad112cdf7a6e4948d170e0fb` |
| 6 | `def` | [Bornology.ofBounded'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/bornology-ofbounded--ad4d1197f14d3f25f2370884.md) | 92 | `declaration-track:ad4d1197f14d3f25f23708842ee9ede3365bd777853871722e5e3765a3b8c00f` |
| 7 | `def` | [IsCobounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/iscobounded--472e5b0f5574d257a519bd55.md) | 108 | `declaration-track:472e5b0f5574d257a519bd554a5b933dbbbffa4bcf7c3318759c3c06f757b9c3` |
| 8 | `def` | [IsBounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/isbounded--5b420b09be0ae439e3ab1bd4.md) | 112 | `declaration-track:5b420b09be0ae439e3ab1bd4a30f2b8b05844391ea8bdf58c02818bbefabbe38` |
| 9 | `theorem` | [isCobounded_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/iscobounded-def--6866c3e190c39879d9696d17.md) | 117 | `result-track:6866c3e190c39879d9696d177868d79888ea1ff8b036c4a0d73786a2050c4cf8` |
| 10 | `theorem` | [isBounded_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/isbounded-def--fd286b11a986ee0bdccd6599.md) | 120 | `result-track:fd286b11a986ee0bdccd65995fd44daf56beebc4169618b559b54cc2b32a644b` |
| 11 | `theorem` | [isBounded_compl_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/isbounded-compl-iff--0abd23f52c01f815ff0555e1.md) | 124 | `result-track:0abd23f52c01f815ff0555e14741cd0ad56a8efef648170e8aadb72932a651cb` |
| 12 | `theorem` | [isCobounded_compl_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/iscobounded-compl-iff--26a82844a9c466cf7e5cf2bd.md) | 128 | `result-track:26a82844a9c466cf7e5cf2bda06cc2c9609d566fafd379e1105b3dbc7596b5d9` |
| 13 | `theorem` | [isBounded_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/isbounded-empty--aff9e7e2ed5cb1302ed1a812.md) | 136 | `result-track:aff9e7e2ed5cb1302ed1a8124936c126be35434ce12861f5fddc04a7c7b7ae36` |
| 14 | `theorem` | [nonempty_of_not_isBounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/nonempty-of-not-isbounded--0398498fd5b4f2b49ae6d344.md) | 140 | `result-track:0398498fd5b4f2b49ae6d344891b39bc9b52b913b98f49e1295ceb2f2276840a` |
| 15 | `theorem` | [isBounded_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/isbounded-singleton--5f2cb6cbeca0f7257af1eea7.md) | 146 | `result-track:5f2cb6cbeca0f7257af1eea7159c176ce4bdfa6d156e32b7f384daa1a22fe703` |
| 16 | `theorem` | [isBounded_iff_forall_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/isbounded-iff-forall-mem--314afb7b7720661407e59a46.md) | 150 | `result-track:314afb7b7720661407e59a46bb006bc60fa976c5b430921903951998d7783d4b` |
| 17 | `theorem` | [isCobounded_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/iscobounded-univ--6239f5f8e735c1907b3c86e6.md) | 156 | `result-track:6239f5f8e735c1907b3c86e67d259776b06a4b7e1c9399e9fc042f94ecb9e26b` |
| 18 | `theorem` | [isCobounded_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/iscobounded-inter--9404f1997a2126f1003d9a2d.md) | 160 | `result-track:9404f1997a2126f1003d9a2d5d0f272c55b871176cfb5a335aa717eb4cba1fee` |
| 19 | `theorem` | [IsCobounded.inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/iscobounded-inter--5501fc706d671b82b1909db7.md) | 163 | `result-track:5501fc706d671b82b1909db70ed8eecdf09c393fa48cdfbe523172fdf3caeda5` |
| 20 | `theorem` | [isBounded_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/isbounded-union--565d377be1a7feba4c9345d2.md) | 167 | `result-track:565d377be1a7feba4c9345d2f0d67d142ff8663ab13f542ac3cdf1bdcbd719cc` |
| 21 | `theorem` | [IsBounded.union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/isbounded-union--a2f4272888d1099b27cbe16e.md) | 170 | `result-track:a2f4272888d1099b27cbe16effc3d26a50999b4e8f045a582a5a83ef9f877f20` |
| 22 | `theorem` | [IsCobounded.superset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/iscobounded-superset--3cf60759d63cd200772ed5f8.md) | 173 | `result-track:3cf60759d63cd200772ed5f84175269611b681fc6a802a6906bfeae65c759d61` |
| 23 | `theorem` | [IsBounded.subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/isbounded-subset--58dec630d797d2e781ba2940.md) | 176 | `result-track:58dec630d797d2e781ba294032de64b202cd21c44e130ad3b2b92f470e43c0bd` |
| 24 | `theorem` | [sUnion_bounded_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/sunion-bounded-univ--7f525975cbb7effb33098218.md) | 180 | `result-track:7f525975cbb7effb33098218bcc37104fa69201ae56f860d8997facce42e1f48` |
| 25 | `theorem` | [IsBounded.insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/isbounded-insert--471c3269dc0338c06caefa20.md) | 183 | `result-track:471c3269dc0338c06caefa20c85e68e05734bb1bed59ac94d565059aabe45d3a` |
| 26 | `theorem` | [isBounded_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/isbounded-insert--0d5cb65ca10ece4d0817019f.md) | 187 | `result-track:0d5cb65ca10ece4d0817019f7be68161274f2475c81c2e56cf7f4c19fc9d5392` |
| 27 | `theorem` | [comap_cobounded_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/comap-cobounded-le-iff--4a3335a43b256c43225f6f4d.md) | 190 | `result-track:4a3335a43b256c43225f6f4d5172623e9d9ebc0bfd52428dd70fb71c3bd365d0` |
| 28 | `theorem` | [ext_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/ext-iff--1978ba9b7a5f923eb376c74d.md) | 201 | `result-track:1978ba9b7a5f923eb376c74d26a8c48eca87975366797e1d232bc0c085ebb7f0` |
| 29 | `theorem` | [ext_iff_isBounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/ext-iff-isbounded--c997cf7625d5f9a5c140c5ce.md) | 205 | `result-track:c997cf7625d5f9a5c140c5cefd5d0075f936593c6e1bca43a09f37256abf6f3f` |
| 30 | `theorem` | [isCobounded_ofBounded_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/iscobounded-ofbounded-iff--bc233a563ed355fe099b2f64.md) | 211 | `result-track:bc233a563ed355fe099b2f64a6bbfb7dddf59bc44058199c60738b34699a4a57` |
| 31 | `theorem` | [isBounded_ofBounded_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/isbounded-ofbounded-iff--20bf07ea0e8fb0c6fa7fbd1a.md) | 215 | `result-track:20bf07ea0e8fb0c6fa7fbd1a0837cfa2ef045567593820442cf92bec9a730885` |
| 32 | `theorem` | [isCobounded_biInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/iscobounded-biinter--6c53690ed191995acada77a2.md) | 221 | `result-track:6c53690ed191995acada77a26ffd528e9f0b76b6e5a6e569f65802493da56ad5` |
| 33 | `theorem` | [isCobounded_biInter_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/iscobounded-biinter-finset--5ad90de88ad4a51efe06bf2b.md) | 226 | `result-track:5ad90de88ad4a51efe06bf2bb5c328367bee3efc73b83fd3b6315c6c176794b3` |
| 34 | `theorem` | [isCobounded_iInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/iscobounded-iinter--14519d0f1ecf8392846d85fb.md) | 231 | `result-track:14519d0f1ecf8392846d85fb8506af6b4d7a19f3d28346c97285b926542ec6d8` |
| 35 | `theorem` | [isCobounded_sInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/iscobounded-sinter--6bdb7677f0d8e57eddf7ae9b.md) | 235 | `result-track:6bdb7677f0d8e57eddf7ae9b4f521b217d1b17bbb515334a9221d0725df2de9e` |
| 36 | `theorem` | [isBounded_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/isbounded-biunion--c75fe575dc27035ee8fc526c.md) | 239 | `result-track:c75fe575dc27035ee8fc526c22f721dd8a9d3eb3ce5e02894d1d6a2f3b44c227` |
| 37 | `theorem` | [isBounded_biUnion_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/isbounded-biunion-finset--03c2574c5a15f8ad996893d9.md) | 243 | `result-track:03c2574c5a15f8ad996893d9dbcbeea39813696670bcd3f456fc0d7376ab5944` |
| 38 | `theorem` | [isBounded_sUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/isbounded-sunion--a13cb2972a8c39658405268d.md) | 247 | `result-track:a13cb2972a8c39658405268ddefb0f81763f48befdc4abd61ee5363926a54446` |
| 39 | `theorem` | [isBounded_iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/isbounded-iunion--8c3c80b468ec811fcbba9b16.md) | 251 | `result-track:8c3c80b468ec811fcbba9b16fffeef462eb5e275974217d5f12200088f78ff3f` |
| 40 | `lemma` | [eventually_ne_cobounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/eventually-ne-cobounded--72278f8ca286459f7c5aaaf5.md) | 255 | `result-track:72278f8ca286459f7c5aaaf5b1119998a882f76ca7515e2be9833bbfd0c4c968` |
| 41 | `theorem` | [Filter.HasBasis.disjoint_cobounded_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/filter-hasbasis-disjoint-cobounded-iff--d816f6ae483acd8e3cc4bd10.md) | 262 | `result-track:d816f6ae483acd8e3cc4bd10c6051ceddc95c9f33319b31390bf087864530ef2` |
| 42 | `theorem` | [Set.Finite.isBounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/set-finite-isbounded--749e551cedb4287f762b1bc1.md) | 267 | `result-track:749e551cedb4287f762b1bc1e66d81205b81a4b81dc077746fd2998d74dd3042` |
| 43 | `lemma` | [Filter.Tendsto.eventually_ne_cobounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/filter-tendsto-eventually-ne-cobounded--40a72d5535d4f16a76b40075.md) | 270 | `result-track:40a72d5535d4f16a76b40075c459f3b8413563aad0f274a2d1a023b2fdd55e03` |
| 44 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/instance--1942ddee7790eb0ecdeb61d0.md) | 274 | `declaration-track:1942ddee7790eb0ecdeb61d02ab0be072d95155d228a5938f41ddbee6751c04c` |
| 45 | `abbrev` | [Bornology.cofinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/bornology-cofinite--3d1c07d4c1c6b7d74478827f.md) | 278 | `declaration-track:3d1c07d4c1c6b7d74478827f7222572fcee252f82d650b8a79930a30617df534` |
| 46 | `class` | [BoundedSpace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/boundedspace--b9387e4e1dc064a187cd8498.md) | 283 | `declaration-track:b9387e4e1dc064a187cd84984508f3f5ef1deba5dbc6bcba6549a4d780c774d6` |
| 47 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/instance--56fb86e9e143cfb9cbc365c0.md) | 288 | `declaration-track:56fb86e9e143cfb9cbc365c0ea028243c66841f21e7fc66bab67164479a369bd` |
| 48 | `theorem` | [isBounded_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/isbounded-univ--d5d09ee17b6554c74c9ff547.md) | 296 | `result-track:d5d09ee17b6554c74c9ff5475af68b4a34e9d45a9a508c114f9bbb59513a278b` |
| 49 | `theorem` | [cobounded_eq_bot_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/cobounded-eq-bot-iff--fadcd5397b3c98b446d7fae9.md) | 299 | `result-track:fadcd5397b3c98b446d7fae989b277cef62dac89a26ed2bc89fe771e3948f318` |
| 50 | `theorem` | [IsBounded.all](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/isbounded-all--8f862c4fcdcb6e0b4e85deab.md) | 304 | `result-track:8f862c4fcdcb6e0b4e85deab028ae55d87f5c0abff8bf952852d7073b4ca7bb5` |
| 51 | `theorem` | [IsCobounded.all](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/iscobounded-all--175a181ca65ec0a1b2103983.md) | 307 | `result-track:175a181ca65ec0a1b21039839b026a0b061efaddcac072638ab92678722511cb` |
| 52 | `theorem` | [cobounded_eq_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/cobounded-eq-bot--7d63de51f8917457f8eaaef4.md) | 313 | `result-track:7d63de51f8917457f8eaaef488c47b943942766a1f7adbcdbac15a2e7c5d2cee` |
| 53 | `instance` | [instBornology](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/instbornology--37723a0f23377f15c67be292.md) | 321 | `declaration-track:37723a0f23377f15c67be2921526e44d3a944a4518a8fdec9fca24a69edf30b8` |
| 54 | `lemma` | [isCobounded_preimage_ofDual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/iscobounded-preimage-ofdual--314a51b7db6aead7958ec5d9.md) | 323 | `result-track:314a51b7db6aead7958ec5d9b9cd1202ae351394976ed4752afe3a17313f1839` |
| 55 | `lemma` | [isCobounded_preimage_toDual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/iscobounded-preimage-todual--e988dded7bc1bc627a70a7de.md) | 326 | `result-track:e988dded7bc1bc627a70a7de2c36812ad4c8996ed99f0a495d927ea50af080ae` |
| 56 | `lemma` | [isBounded_preimage_ofDual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/isbounded-preimage-ofdual--159101b761f1e9ed6380189f.md) | 329 | `result-track:159101b761f1e9ed6380189f9539da2676bc820813a93d4c1582bd38d9a116b3` |
| 57 | `lemma` | [isBounded_preimage_toDual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8801d3e8c24da8f71f9dd1e310b573f9800ad6885993518921510a3d3a903987.lean/declarations/isbounded-preimage-todual--a7dd2a571a48c21f85de056e.md) | 332 | `result-track:a7dd2a571a48c21f85de056e482fe3da5b16bb9d10a6a4b6b1b68a7252fb45c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
