# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Fintype.Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac80571d69ae61d9c80d9a0c7c200ed665254ccb",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac80571d69ae61d9c80d9a0c7c200ed665254ccb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ToType](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/totype--6626253aafa87036e2ab7f49.md) | 50 | `declaration-track:6626253aafa87036e2ab7f4987eb8130bedfb2d011e03d4e7db01b7cfbe245e3` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/instance--75d9f4846ca460693f06df0e.md) | 55 | `declaration-track:75d9f4846ca460693f06df0e0f05487b8016d9c506998baaa2629045059e4980` |
| 3 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/example--06a656ef193969a49a546c6c.md) | 57 | `declaration-track:06a656ef193969a49a546c6c05424e6b17effddfd7a708838eff93555d15f1aa` |
| 4 | `def` | [mkToType](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/mktotype--3669e5007d999947e7c09d5d.md) | 62 | `declaration-track:3669e5007d999947e7c09d5d56601aea12e25584eef2b00b0b6da70c42d71467` |
| 5 | `instance` | [instCoeSortMultisetType.instCoeOutToType](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/instcoesortmultisettype-instcoeouttotype--c6ba8cecf714eefd8cace924.md) | 67 | `declaration-track:c6ba8cecf714eefd8cace924ee4c56f9e48045751d896eb98375501477c14c20` |
| 6 | `theorem` | [coe_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/coe-mk--7fcf6d64a8321875d6b2d253.md) | 70 | `result-track:7fcf6d64a8321875d6b2d2533e2d8d982abbe7d94e8bdc8f10a2c6f0bd586492` |
| 7 | `lemma` | [coe_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/coe-mem--e76cbea17f281d44341482a5.md) | 73 | `result-track:e76cbea17f281d44341482a596204bdfb4e4af145da24f8a5c032d38829a7d05` |
| 8 | `theorem` | [forall_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/forall-coe--3f0b88113aa001c60169bfbe.md) | 76 | `result-track:3f0b88113aa001c60169bfbed65122985c35405041291f2dc148b8e430990682` |
| 9 | `theorem` | [exists_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/exists-coe--ab2721af3205b0a46c8e01f0.md) | 81 | `result-track:ab2721af3205b0a46c8e01f01dd2f451778c543b0fdd5c03f9d2f7692675538d` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/instance--ba2f3f9cd449d354b5d89ed2.md) | 85 | `declaration-track:ba2f3f9cd449d354b5d89ed234683588c16f6e66566f7531372c026601764065` |
| 11 | `def` | [toEnumFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/toenumfinset--71c0294e1d67082795785e1e.md) | 98 | `declaration-track:71c0294e1d67082795785e1edae5c37df24a32812ac36ed1659e375ed5ff1407` |
| 12 | `theorem` | [mem_toEnumFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/mem-toenumfinset--50b3876c5f79ac6c43c29496.md) | 102 | `result-track:50b3876c5f79ac6c43c294962be192239e7ca6785b0d0bbe56fdeb3ebfe995d3` |
| 13 | `theorem` | [mem_of_mem_toEnumFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/mem-of-mem-toenumfinset--061549b5a36c0f46ec6a7747.md) | 106 | `result-track:061549b5a36c0f46ec6a77479bf0f11f2ae280f05736dd1d2d80274f9a7eb445` |
| 14 | `lemma` | [toEnumFinset_filter_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/toenumfinset-filter-eq--40fb177a22c8a31f2e899ed9.md) | 109 | `result-track:40fb177a22c8a31f2e899ed997e0457bf3f5300047657e4134b059c5a81e5432` |
| 15 | `lemma` | [map_toEnumFinset_fst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/map-toenumfinset-fst--404946a29e1a70cbbec82451.md) | 112 | `result-track:404946a29e1a70cbbec82451d670a29f76e993b354974d03b6a773d98adc2e02` |
| 16 | `lemma` | [image_toEnumFinset_fst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/image-toenumfinset-fst--8d650a94748bc77574ccf047.md) | 115 | `result-track:8d650a94748bc77574ccf047fee38f75e1bbe5e771fe42c3413204e1e731ba26` |
| 17 | `lemma` | [map_fst_le_of_subset_toEnumFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/map-fst-le-of-subset-toenumfinset--345ecbff2114c3cc57ccef4d.md) | 119 | `result-track:345ecbff2114c3cc57ccef4d73da5d61fba882b63b02515ad2884732e2aac958` |
| 18 | `theorem` | [toEnumFinset_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/toenumfinset-mono--12cef697f5c90665204402a5.md) | 137 | `result-track:12cef697f5c90665204402a5fd86c22e5513dd384e8eb4712e27100f509734d6` |
| 19 | `theorem` | [toEnumFinset_subset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/toenumfinset-subset-iff--9c453dd8daf5d4a544041f9e.md) | 144 | `result-track:9c453dd8daf5d4a544041f9e8413f1c53e36b3eec6fadf27c29a92d4c2221e22` |
| 20 | `def` | [coeEmbedding](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/coeembedding--b2e26c5675d9e3ad7e47f848.md) | 151 | `declaration-track:b2e26c5675d9e3ad7e47f848d149baefdf16b57486839f402692b92149ce45e3` |
| 21 | `def` | [coeEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/coeequiv--8bf5e806404f4b11a0a5b451.md) | 161 | `declaration-track:8bf5e806404f4b11a0a5b45145c928738fa4b13db429ef5a40881bc68c44cc43` |
| 22 | `theorem` | [toEmbedding_coeEquiv_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/toembedding-coeequiv-trans--4694896793b5ce469faa7903.md) | 178 | `result-track:4694896793b5ce469faa7903fb1c36af88b3ad007c1848e36093cd0445715374` |
| 23 | `instance` | [fintypeCoe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/fintypecoe--8e9e452ea94261af8b2f41f7.md) | 182 | `declaration-track:8e9e452ea94261af8b2f41f7fdf9e7c4bc15c670f7cdfbe92e1b4dc3a7c41953` |
| 24 | `theorem` | [map_univ_coeEmbedding](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/map-univ-coeembedding--44959a4fde1e1d45ff9cf813.md) | 185 | `result-track:44959a4fde1e1d45ff9cf8139b65264e06cebf91a86bb3960d13fde5bc4763c8` |
| 25 | `theorem` | [map_univ_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/map-univ-coe--12b94347160fbb96fc91dcc9.md) | 193 | `result-track:12b94347160fbb96fc91dcc9d520ea303f2adcfcac934a4c1d63b74aa098d0ae` |
| 26 | `theorem` | [map_univ_comp_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/map-univ-comp-coe--0ba8a8b33c92fa90f8a28381.md) | 200 | `result-track:0ba8a8b33c92fa90f8a28381fa037d248f8d87607d79545843dabff834702c48` |
| 27 | `theorem` | [map_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/map-univ--4bf4b60f5dd13d338bab7139.md) | 205 | `result-track:4bf4b60f5dd13d338bab7139887cdb8f5c6afd59a60c25f356262cf07fd3cf7a` |
| 28 | `theorem` | [card_toEnumFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/card-toenumfinset--f714ea39a8153e7bfc5cc3db.md) | 211 | `result-track:f714ea39a8153e7bfc5cc3db5218e0d933998ccc557cfa7bd20bace43583a18f` |
| 29 | `theorem` | [card_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/card-coe--06628b5372664d4cecc46de2.md) | 217 | `result-track:06628b5372664d4cecc46de2a684dd4d9dd0862e81f0d38f35d6961496661889` |
| 30 | `theorem` | [prod_eq_prod_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/prod-eq-prod-coe--78f3e4f4f1135a1c96bca646.md) | 222 | `result-track:78f3e4f4f1135a1c96bca6460b193c56f9346811844fcc918bf27d1da817416e` |
| 31 | `theorem` | [prod_eq_prod_toEnumFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/prod-eq-prod-toenumfinset--9f34ccb3bc81dd93f01c1569.md) | 227 | `result-track:9f34ccb3bc81dd93f01c1569cb8163d218e38f38d8914c2413a296c21d90c39f` |
| 32 | `theorem` | [prod_toEnumFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/prod-toenumfinset--ec04030ec739d03f991e0599.md) | 233 | `result-track:ec04030ec739d03f991e0599c2b8bfb5182726e66b6d5d77cd3d45c130411bed` |
| 33 | `def` | [cast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/cast--0da0293fca608fea8f229e9a.md) | 244 | `declaration-track:0da0293fca608fea8f229e9a50d668264a2db8122a4bf1f963aa66a30d689b72` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/instance--6ff60aefe0b01f8a1b3a44b0.md) | 250 | `declaration-track:6ff60aefe0b01f8a1b3a44b0fa2e69eeb80beb9fbf33a4597d623cb2efb98b12` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/instance--c84e65ed4af45f9629a544d3.md) | 252 | `declaration-track:c84e65ed4af45f9629a544d330d4385e6f1d4ebfab57a50e8b7feb50baa5b04c` |
| 36 | `def` | [consEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/consequiv--ba34eb6346af4f162bdff5ce.md) | 257 | `declaration-track:ba34eb6346af4f162bdff5ce577a4472f3eadd333c67708b316ffbb949338f7c` |
| 37 | `lemma` | [consEquiv_symm_none](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/consequiv-symm-none--a70ef2b45f95590da7bb7657.md) | 285 | `result-track:a70ef2b45f95590da7bb765702a4fe30f122e5acb21a11824061374f8feb513b` |
| 38 | `lemma` | [consEquiv_symm_some](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/consequiv-symm-some--6d3e14709a304bf5adfd75c1.md) | 291 | `result-track:6d3e14709a304bf5adfd75c14a549b3b3047d3c88293ae24733c1ee15a618d28` |
| 39 | `lemma` | [coe_consEquiv_of_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/coe-consequiv-of-ne--d90fde78b334b4eef0c5f74d.md) | 296 | `result-track:d90fde78b334b4eef0c5f74d599026f3bb79c9cd4912ab84ed25a1cd5d1f84f6` |
| 40 | `lemma` | [coe_consEquiv_of_eq_of_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/coe-consequiv-of-eq-of-eq--5d301ac6c49e6762dae6ebb5.md) | 301 | `result-track:5d301ac6c49e6762dae6ebb53797cd4b4ac1ca911127c4096dba65dda98a54de` |
| 41 | `lemma` | [coe_consEquiv_of_eq_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/coe-consequiv-of-eq-of-lt--3933cad25ca27baf3a409087.md) | 304 | `result-track:3933cad25ca27baf3a409087c5fbfd9b5a211986a92b63b7362660e93e3456ef` |
| 42 | `def` | [mapEquiv_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/mapequiv-aux--d66276d9dbbf24648e4becb0.md) | 310 | `declaration-track:d66276d9dbbf24648e4becb040a16a91b3c5027e367030267c173e70cee107c3` |
| 43 | `def` | [mapEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/mapequiv--7537f9073ad9415ab9318297.md) | 324 | `declaration-track:7537f9073ad9415ab931829743116ea0517397703f0df6b1b3886585da71050d` |
| 44 | `theorem` | [mapEquiv_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/declarations/mapequiv-apply--6b4164684f861c28bab59cba.md) | 328 | `result-track:6b4164684f861c28bab59cba2a091c4406a668de8e6e24e500a795ea196e0fac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
