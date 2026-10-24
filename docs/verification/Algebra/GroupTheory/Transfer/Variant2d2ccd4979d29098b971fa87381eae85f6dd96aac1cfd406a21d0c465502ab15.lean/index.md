# Verification target: GRWTSK.Algebra.GroupTheory.Transfer.Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d938268f96e7bb9c3981cc60c51fc4f0081960a1",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d938268f96e7bb9c3981cc60c51fc4f0081960a1`.

Source path: `GRWTSK/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Complement` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Sylow` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diff](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/diff--1b7181e26d02b4190e411a55.md) | 42 | `declaration-track:1b7181e26d02b4190e411a558f4ada7ded59f00f3b1b5d13c6ab6ba81c4b9d6f` |
| 2 | `theorem` | [diff_mul_diff](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/diff-mul-diff--9594beb85ef567de3dd618a0.md) | 52 | `result-track:9594beb85ef567de3dd618a0ca541ccdfea43e3d3d19b0efbdd5eec50ab152b5` |
| 3 | `theorem` | [diff_self](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/diff-self--a5fdd7b84b9c25dbdab0bf93.md) | 60 | `result-track:a5fdd7b84b9c25dbdab0bf93f75a94b55d9a2c587c8c4fa91ccfcfca007634b6` |
| 4 | `theorem` | [diff_inv](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/diff-inv--25180da5f94553022aa2cba1.md) | 64 | `result-track:25180da5f94553022aa2cba199eb9e7fe5da1d567982e8c28d49d7970229136a` |
| 5 | `theorem` | [smul_diff_smul](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/smul-diff-smul--6972ddb7d07362df48317423.md) | 68 | `result-track:6972ddb7d07362df48317423b173bd4057c4e9d10e606a9e4db8809ba85b4fbc` |
| 6 | `def` | [transferFunction](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/transferfunction--131e98d3fff5de8cc48f2f72.md) | 84 | `declaration-track:131e98d3fff5de8cc48f2f728a0acdbb9661ce75cf8ac2ccb4596d9fe325e3f3` |
| 7 | `lemma` | [transferFunction_apply](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/transferfunction-apply--5a0cd3d79863bb9e5584590b.md) | 87 | `result-track:5a0cd3d79863bb9e5584590b248c6371db2883e6f8cdf69e5b4d0ef10e9d48c7` |
| 8 | `lemma` | [coe_transferFunction](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/coe-transferfunction--ff42b9f3dbc3e8c33af4981c.md) | 92 | `result-track:ff42b9f3dbc3e8c33af4981cb56506c47ee11af7e0b5bcb6c2345a3706cea024` |
| 9 | `def` | [transferSet](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/transferset--b4415c0ff223a3b76fcb9915.md) | 99 | `declaration-track:b4415c0ff223a3b76fcb9915607ece39f64d6007060fd6bf09f3568526cf27d8` |
| 10 | `lemma` | [mem_transferSet](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/mem-transferset--c8b7024e557907d0fdca5dcb.md) | 101 | `result-track:c8b7024e557907d0fdca5dcb4f0683d6657fbe0506fc073b29eb5f3d9546cc7c` |
| 11 | `def` | [transferTransversal](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/transfertransversal--bfcc20601c18eebbeec03118.md) | 106 | `declaration-track:bfcc20601c18eebbeec03118e5c0224858ce18f4d9c03f9612dfb4c889d2defa` |
| 12 | `lemma` | [transferTransversal_apply](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/transfertransversal-apply--fdc9fe875e61de80b5ac41fb.md) | 109 | `result-track:fdc9fe875e61de80b5ac41fbcd62590bec3b3318b1ac816c188ca64a25f472ef` |
| 13 | `lemma` | [transferTransversal_apply'](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/transfertransversal-apply--0fe7ca96151159761438bfb5.md) | 113 | `result-track:0fe7ca96151159761438bfb542e3412f27ab9586c80f93ac73d08012549fdfb7` |
| 14 | `lemma` | [transferTransversal_apply''](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/transfertransversal-apply--db3d96eb56d5280fbd63da05.md) | 120 | `result-track:db3d96eb56d5280fbd63da055460309f716f7dac7a023a87f6d628b1c732d130` |
| 15 | `def` | [transfer](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/transfer--981b462e726bc56d69dd4c22.md) | 143 | `declaration-track:981b462e726bc56d69dd4c22989b912dff0c61153c3233e1660ac17cca3f4db5` |
| 16 | `theorem` | [transfer_def](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/transfer-def--5438da2b2b2df827ecabf341.md) | 152 | `result-track:5438da2b2b2df827ecabf3412ddd6c8afa25098e3617c59035a2cf6d45c5491f` |
| 17 | `theorem` | [transfer_eq_prod_quotient_orbitRel_zpowers_quot](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/transfer-eq-prod-quotient-orbitrel-zpowers-quot--6aff215d4475849f6bb25442.md) | 156 | `result-track:6aff215d4475849f6bb254421aca95cbcc0e72d6cea4f0103e89106f0366d027` |
| 18 | `theorem` | [transfer_eq_pow_aux](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/transfer-eq-pow-aux--f7e5f556aadf12bed36d1316.md) | 180 | `result-track:f7e5f556aadf12bed36d1316cc1673076d9ec9efd25c8af0b7bfa6b0889dc373` |
| 19 | `theorem` | [transfer_eq_pow](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/transfer-eq-pow--7edf1592487fde1d1a71ec72.md) | 202 | `result-track:7edf1592487fde1d1a71ec7244b8fd6074ed1aad775fd9ab652d904eacd8a388` |
| 20 | `theorem` | [transfer_center_eq_pow](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/transfer-center-eq-pow--6ff95a2ca7a717878f7e97e3.md) | 220 | `result-track:6ff95a2ca7a717878f7e97e3716e3013c52a8d20c6f9b0a680c340d939b2041e` |
| 21 | `def` | [transferCenterPow](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/transfercenterpow--fba85f94ccbb9eecb9112b61.md) | 227 | `declaration-track:fba85f94ccbb9eecb9112b61599c0d667904c7f0ca2495b88bea9b8c7881816f` |
| 22 | `theorem` | [transferCenterPow_apply](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/transfercenterpow-apply--10a1b5f6521def6e9f2ccce2.md) | 233 | `result-track:10a1b5f6521def6e9f2ccce29ee3f4c55dc3d8c55863378ea06d9bab25066769` |
| 23 | `def` | [transferSylow](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/transfersylow--7133a9456509ca11a934faf0.md) | 243 | `declaration-track:7133a9456509ca11a934faf098467d24b40f2e8caba97e4cf07a872cb8b76f25` |
| 24 | `theorem` | [transferSylow_eq_pow_aux](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/transfersylow-eq-pow-aux--c9c53a0b4039b3189d71d273.md) | 251 | `result-track:c9c53a0b4039b3189d71d273033fe470deeb52bd6fa20eb0267585857e96e156` |
| 25 | `theorem` | [transferSylow_eq_pow](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/transfersylow-eq-pow--e01231199e5cb10c976ab6a7.md) | 261 | `result-track:e01231199e5cb10c976ab6a79afbd5b7de214d2b0958d7e2d874da39eb35aecb` |
| 26 | `theorem` | [transferSylow_restrict_eq_pow](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/transfersylow-restrict-eq-pow--90da179026c58ed7f81f0e6a.md) | 267 | `result-track:90da179026c58ed7f81f0e6afaf10ee3308b8ac1de73e2cd49feb8799f9dd1a0` |
| 27 | `theorem` | [ker_transferSylow_isComplement'](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/ker-transfersylow-iscomplement--5c95177f9787e0ea74895e4c.md) | 273 | `result-track:5c95177f9787e0ea74895e4cdde7f7030db170aa9ad6f34ea460496b56cc951b` |
| 28 | `theorem` | [not_dvd_card_ker_transferSylow](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/not-dvd-card-ker-transfersylow--e4218915a4cb95e4bfc7ebbe.md) | 284 | `result-track:e4218915a4cb95e4bfc7ebbea18c6266a725d6b6da1aab34e727f40d29ea8963` |
| 29 | `theorem` | [ker_transferSylow_disjoint](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/ker-transfersylow-disjoint--a44f453c9fb802c13e716b87.md) | 287 | `result-track:a44f453c9fb802c13e716b87df3b67acc5e209248dda0cdf4afdd8cd9e37147c` |
| 30 | `theorem` | [normalizer_le_centralizer](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/normalizer-le-centralizer--ecbe0948f09a02a1683187da.md) | 306 | `result-track:ecbe0948f09a02a1683187daacf6e55e33e2288124b48240044d3e7bcc523764` |
| 31 | `theorem` | [isComplement'](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean/declarations/iscomplement--9261586af01880a4d1501ee8.md) | 336 | `result-track:9261586af01880a4d1501ee80f8d4a9a933dbbca65ee8a81bfb1d98748e51262` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
