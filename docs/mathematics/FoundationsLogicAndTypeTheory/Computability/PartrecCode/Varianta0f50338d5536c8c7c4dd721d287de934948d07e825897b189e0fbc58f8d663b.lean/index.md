# GRWTSK.FoundationsLogicAndTypeTheory.Computability.PartrecCode.Varianta0f50338d5536c8c7c4dd721d287de934948d07e825897b189e0fbc58f8d663b

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**53 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianta0f50338d5536c8c7c4dd721d287de934948d07e825897b189e0fbc58f8d663b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdc1d168e35228d2f5e4abdc6ace1f06abe839b8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianta0f50338d5536c8c7c4dd721d287de934948d07e825897b189e0fbc58f8d663b.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [rfind'](declarations/rfind--c28b3156d3112f745fc66491.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [Code](declarations/code--e2d31f4cfc6cb7d422af8bd7.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instInhabited](declarations/instinhabited--dfa8e9e3ae18bf25c697553a.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [const](declarations/const--15048f22c3828a43583cd616.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [const_inj](declarations/const-inj--999a3268079699f3f3371583.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [id](declarations/id--89208f382a6fbbdb9e632018.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [curry](declarations/curry--41c788661e44ba9dac9841eb.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [encodeCode](declarations/encodecode--780541c221fc456a28d3b5e3.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ofNatCode](declarations/ofnatcode--f4d567a09c5a5d7e51aa3ad5.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [encode_ofNatCode](declarations/encode-ofnatcode--0e8c4ce4994a7b52e88ba34e.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [instDenumerable](declarations/instdenumerable--86d7f6b28e18e3a6ea4bd2bc.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [encodeCode_eq](declarations/encodecode-eq--e023e3cc44c48c16460e9521.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ofNatCode_eq](declarations/ofnatcode-eq--c0a624ab0668d894b10628d8.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [encode_lt_pair](declarations/encode-lt-pair--21a607d38299fa29f86ee201.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [encode_lt_comp](declarations/encode-lt-comp--0f1bae19a44db1e6c5c2a656.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [encode_lt_prec](declarations/encode-lt-prec--f2951e3c5c31150e23f46698.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [encode_lt_rfind'](declarations/encode-lt-rfind--dc91eef96f5e05d2774d267b.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [primrec₂_pair](declarations/primrec-pair--5cfdaa0db3a2a21b6187df46.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [primrec₂_comp](declarations/primrec-comp--cea5d75a0d1f6fb4e4d588c3.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [primrec₂_prec](declarations/primrec-prec--900345a5ad09595e4bc90f86.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [primrec_rfind'](declarations/primrec-rfind--a3675414d6d4bb89085fd255.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [primrec_recOn'](declarations/primrec-recon--03fd3abc0b8b1bb74a758fc1.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [primrec_recOn](declarations/primrec-recon--c32dfa190b6a6429d0452c86.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [computable_recOn](declarations/computable-recon--fba986eeccc26e6e1671733b.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [eval](declarations/eval--64edfa9c1dc82d6cd63b948c.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [eval_prec_zero](declarations/eval-prec-zero--f6f6260fa58cd4b80e664885.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eval_prec_succ](declarations/eval-prec-succ--cfd1e2eab097c429d8e38255.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance--f177d26909896090a40b9bbd.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [eval_const](declarations/eval-const--d17a6403238d07102dfbd26b.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [eval_id](declarations/eval-id--13642ade40e4b69392b5428a.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [eval_curry](declarations/eval-curry--73371b96e8317fedf737635e.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [primrec_const](declarations/primrec-const--ed75a93ff13a43ea913a6b2c.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [primrec₂_curry](declarations/primrec-curry--8922db2539170589cd779516.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [curry_inj](declarations/curry-inj--3915c8cbdafa510edd0c6f6e.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [smn](declarations/smn--2ead30059e1261c00386e4b5.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [exists_code](declarations/exists-code--00687119199b98c739fde278.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [evaln](declarations/evaln--65d71096c02c32ec17776ba1.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [evaln_bound](declarations/evaln-bound--4411a21ef9be512078f1deb7.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [evaln_mono](declarations/evaln-mono--5604ef372c78bbbc6b87028f.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [evaln_sound](declarations/evaln-sound--43e91edf5d5acd8a6851b03b.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [evaln_complete](declarations/evaln-complete--ea0e94b2fc0a7bed43e6853a.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [lup](declarations/lup--7fe529cc6deecfaecf631379.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [hlup](declarations/hlup--c8217eac11d8144dc30f4633.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [G](declarations/g--426e73f41efae2c51aafa9b4.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [hG](declarations/hg--fcae4c4bba8cc2c54594d155.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [evaln_map](declarations/evaln-map--4d907c35f83edc75312fa10e.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [primrec_evaln](declarations/primrec-evaln--770cd2e6fcb614909e41becf.md) | 950 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [eval_eq_rfindOpt](declarations/eval-eq-rfindopt--2b13ba9021386b6ace19fe11.md) | 1018 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [eval_part](declarations/eval-part--c5550636d421ee49721b2bcd.md) | 1023 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [fixed_point](declarations/fixed-point--a8085aded077d3591b168504.md) | 1033 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [fixed_point₂](declarations/fixed-point--2cc2b760bbdea222169379f0.md) | 1051 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance--355dfe63176615ce4230e96d.md) | 1059 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance--e80ecb7590b9f9bc860be7d0.md) | 1065 | `BLOCKED_NATIVE_ADMISSION` |
