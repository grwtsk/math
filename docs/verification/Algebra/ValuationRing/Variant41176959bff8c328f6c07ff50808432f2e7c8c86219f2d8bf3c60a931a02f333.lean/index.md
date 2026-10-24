# Verification target: GRWTSK.Algebra.ValuationRing.Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf46e4acabccc3509e99396e8f524afb7cf72fb8",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/index.md) · [Full source](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf46e4acabccc3509e99396e8f524afb7cf72fb8`.

Source path: `GRWTSK/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean.json)

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
| 1 | `class` | [PreValuationRing](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/prevaluationring--d9cf56c89e8dc9782486c93b.md) | 64 | `declaration-track:d9cf56c89e8dc9782486c93b44ba3bffb0e774de41a8fea33f2adc8430786f1a` |
| 2 | `lemma` | [PreValuationRing.cond](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/prevaluationring-cond--1071e6e7766d4f3666ab2ebe.md) | 67 | `result-track:1071e6e7766d4f3666ab2ebe8af5d72cd1b989c8e0d668b1086d122d28fe6b27` |
| 3 | `class` | [ValuationRing](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/valuationring--39b0e6d9dad60567037b3ba7.md) | 72 | `declaration-track:39b0e6d9dad60567037b3ba71530391b4e8e52e5c1a0a3d9773386b8ba868602` |
| 4 | `def` | [ValueGroup](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/valuegroup--9c7dce7cfcb30868424856f3.md) | 85 | `declaration-track:9c7dce7cfcb30868424856f3c27f3ad74b8054f65dd33bc56e00a58b6caea55a` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/instance--335ed8d18bb64305a9e9c418.md) | 87 | `declaration-track:335ed8d18bb64305a9e9c41847e063198e064f8ebcc4c2f703762bea577eb9d6` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/instance--9ab9e9e89e10f8346d2329a1.md) | 89 | `declaration-track:9ab9e9e89e10f8346d2329a13cb2fdcf279dacac535f5cf38cc59e1b1eef5bb7` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/instance--d90924bd74800387d6277a01.md) | 103 | `declaration-track:d90924bd74800387d6277a015f61f5b2b2a88632c06ee3dc4e32ccde94c9bf5f` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/instance--48e7bc764b2d934b23c27e3a.md) | 105 | `declaration-track:48e7bc764b2d934b23c27e3af7048b7a56089cf2093a91eefa2fc1c712a02b14` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/instance--aece8f0318f6323f771eb8e9.md) | 107 | `declaration-track:aece8f0318f6323f771eb8e92a9a09dc1422e1ef695efb0b3f7f7f65379f2c04` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/instance--6e3d7ce55387158ecd70a71a.md) | 118 | `declaration-track:6e3d7ce55387158ecd70a71a1a7987bf36f960a99c10aa92578f4a44e17fbb59` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/instance--ef0268a8ad429eecba92ec59.md) | 129 | `declaration-track:ef0268a8ad429eecba92ec59f6761f644ff7c2cdea7dda8976e38804c79f2c38` |
| 12 | `theorem` | [le_total](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/le-total--bbf4d765414c6f0411bee4d6.md) | 138 | `result-track:bbf4d765414c6f0411bee4d65b3c9efafbfa5579a2d1855fd1a5344530794fc8` |
| 13 | `instance` | [linearOrder](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/linearorder--db00b5f20619f4fdc82b9792.md) | 156 | `declaration-track:db00b5f20619f4fdc82b9792dd7ed23a0a733cb1322ac9c03e2d38f1733ddea9` |
| 14 | `instance` | [commGroupWithZero](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/commgroupwithzero--53242d7a6f0bc14ae4afac2b.md) | 175 | `declaration-track:53242d7a6f0bc14ae4afac2b26b27e3446b0112e8d555602ff807f307d02487d` |
| 15 | `instance` | [linearOrderedCommGroupWithZero](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/linearorderedcommgroupwithzero--6d2071d3101f738e35071dcf.md) | 194 | `declaration-track:6d2071d3101f738e35071dcf03256d11b9ba2d36898c1d3c08e6ebac65805020` |
| 16 | `def` | [valuation](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/valuation--87d0a5984664a76b6cd540ec.md) | 210 | `declaration-track:87d0a5984664a76b6cd540ec96dbe94a2ffa252c7739dc39b6705f987b45a4f5` |
| 17 | `theorem` | [mem_integer_iff](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/mem-integer-iff--42a9050f4acd81790a4f3a0d.md) | 235 | `result-track:42a9050f4acd81790a4f3a0d8efcb91de7f1b02deb5a8afb98b6c38d3e0e0091` |
| 18 | `def` | [equivInteger](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/equivinteger--ae31a5258d0382956e9bfc98.md) | 245 | `declaration-track:ae31a5258d0382956e9bfc9813fc525237521911ef9328e0c524f7f32fa6128e` |
| 19 | `theorem` | [coe_equivInteger_apply](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/coe-equivinteger-apply--f353c7e22df1ec855161f236.md) | 263 | `result-track:f353c7e22df1ec855161f2366ebb8a3c6e8cf00a4c88b86303da199dbd100344` |
| 20 | `theorem` | [range_algebraMap_eq](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/range-algebramap-eq--72610922f3e0bd948071ad97.md) | 265 | `result-track:72610922f3e0bd948071ad97a558a2066ca5d9fe56b82e49cf0ac4108065f91c` |
| 21 | `theorem` | [integers](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/integers--7b2417eb2ceb8e67f7fb5f92.md) | 268 | `result-track:7b2417eb2ceb8e67f7fb5f9240e095a1c8ec522d35c50db37d3daca057684997` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/instance--9d256f7cd3fd5a831d807774.md) | 279 | `declaration-track:9d256f7cd3fd5a831d807774f74a0cc85529cef373eda9e73f3f37e296611a57` |
| 23 | `instance` | [le_total_ideal](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/le-total-ideal--24a00493016066ea27258d46.md) | 289 | `declaration-track:24a00493016066ea27258d46c520b9a66d09597bbfffdadb60a411afa332d43b` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/instance--7776c459f6a10c29bb460e50.md) | 307 | `declaration-track:7776c459f6a10c29bb460e50e58b2cbbb17f4733b8b259842ae75480caa00bae` |
| 25 | `theorem` | [_root_.GRWTSK.Algebra.PreValuationRing.Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.PreValuationRing.iff_dvd_total](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/root-grwtsk-algebra-prevaluationring-variant2432c56eef36af4fcc3aa0dec76f--c05a1d00d784b97c3e84c4ae.md) | 318 | `result-track:c05a1d00d784b97c3e84c4ae3859d2f09e9e5dad41edb1ea7b2f001fb0cde871` |
| 26 | `theorem` | [_root_.GRWTSK.Algebra.PreValuationRing.Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.PreValuationRing.iff_ideal_total](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/root-grwtsk-algebra-prevaluationring-variant2432c56eef36af4fcc3aa0dec76f--53e0d5fefd258410d60956f2.md) | 324 | `result-track:53e0d5fefd258410d60956f275151aef78e40f4fbfb04422a5ee08bfb6c305bb` |
| 27 | `theorem` | [dvd_total](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/dvd-total--11db4e9fdcd4302408165e0d.md) | 332 | `result-track:11db4e9fdcd4302408165e0ded710a9e38407b6e307a83ea9f409819dbb5cd86` |
| 28 | `theorem` | [iff_dvd_total](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/iff-dvd-total--2c6d76e80981919a03209398.md) | 340 | `result-track:2c6d76e80981919a032093983ec7479687c3135ad8995e2e0c794a7bfa168a96` |
| 29 | `theorem` | [iff_ideal_total](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/iff-ideal-total--2cff2450e41a485270e7b578.md) | 344 | `result-track:2cff2450e41a485270e7b578552901e26fb02689f97e0818c063100e71d08fe0` |
| 30 | `theorem` | [unique_irreducible](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/unique-irreducible--4697604083de7809f82f540b.md) | 348 | `result-track:4697604083de7809f82f540b2949aa827c8830b7c3a325b4157fcaaa1c6665fe` |
| 31 | `theorem` | [iff_isInteger_or_isInteger](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/iff-isinteger-or-isinteger--3305f3f7e1761cb00be147a2.md) | 356 | `result-track:3305f3f7e1761cb00be147a23d4726310f846c32edc22161bec3b794ffc79bb1` |
| 32 | `theorem` | [isInteger_or_isInteger](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/isinteger-or-isinteger--ba1b182955b84bea14c05cde.md) | 382 | `result-track:ba1b182955b84bea14c05cded74e25efabc557a44aac75edfbc0145159e37075` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/instance--eab2bb74215232cb392d73df.md) | 389 | `declaration-track:eab2bb74215232cb392d73dfffadb96d3859e3aa36322edec140f988f2e64948` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/instance--febefab9fb55e2659d2aaf03.md) | 398 | `declaration-track:febefab9fb55e2659d2aaf03eb16e31f3fe01288cff208c987524aca75417343` |
| 35 | `theorem` | [iff_local_bezout_domain](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/iff-local-bezout-domain--18b1f05bf5c4a6b5c5e2823f.md) | 414 | `result-track:18b1f05bf5c4a6b5c5e2823f527d7213bcc6ca9770c1fb370d06f4c48c6a5e4c` |
| 36 | `theorem` | [TFAE](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/tfae--56758a469e02b0fc9fa43501.md) | 417 | `result-track:56758a469e02b0fc9fa4350151a378b926fcd7e09c266be557d893749549ea3c` |
| 37 | `theorem` | [_root_.GRWTSK.Algebra.PreValuationRing.Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.Function.Surjective.preValuationRing](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/root-grwtsk-algebra-prevaluationring-variant2432c56eef36af4fcc3aa0dec76f--de7d773608ceb09536992a07.md) | 430 | `result-track:de7d773608ceb09536992a07bace31028e4c6d4d4672472e7346fa6e261911e5` |
| 38 | `theorem` | [_root_.GRWTSK.Algebra.PreValuationRing.Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.Function.Surjective.valuationRing](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/root-grwtsk-algebra-prevaluationring-variant2432c56eef36af4fcc3aa0dec76f--f93c74097bf05bfeb9ca8624.md) | 438 | `result-track:f93c74097bf05bfeb9ca86246e2f2eb7a8ed19d9b6c01e8a8e04ac2090aa35d3` |
| 39 | `lemma` | [_root_.GRWTSK.Algebra.PreValuationRing.Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.isFractionRing_of_exists_eq_algebraMap_or_inv_eq_algebraMap_of_injective](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/root-grwtsk-algebra-prevaluationring-variant2432c56eef36af4fcc3aa0dec76f--39642668af88e24dfa2a2684.md) | 449 | `result-track:39642668af88e24dfa2a26841f530ea798ca502609e2f40f3679be86a5cdc1eb` |
| 40 | `lemma` | [_root_.GRWTSK.Algebra.PreValuationRing.Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.Valuation.Integers.isFractionRing](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/root-grwtsk-algebra-prevaluationring-variant2432c56eef36af4fcc3aa0dec76f--5a47506429e6461436e5570d.md) | 467 | `result-track:5a47506429e6461436e5570d3ea44fb41ebdb8a8a98183d419e859d5aadb1bc6` |
| 41 | `instance` | [instIsFractionRingInteger](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/instisfractionringinteger--90322ae87a69320e80c00b13.md) | 472 | `declaration-track:90322ae87a69320e80c00b1372431654451d0bbb13c785673b0e5ff463bab89b` |
| 42 | `theorem` | [of_integers](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/of-integers--7231deb3d2902b188a88db8e.md) | 477 | `result-track:7231deb3d2902b188a88db8e3779cdc613d6326041aad6ed3d9a7196ad1a523b` |
| 43 | `instance` | [instValuationRingInteger](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/instvaluationringinteger--2ad6da8ed756c92c0b8e84d4.md) | 490 | `declaration-track:2ad6da8ed756c92c0b8e84d4a8a2e785bfed6902193c0d398a50ff3a58780700` |
| 44 | `theorem` | [isFractionRing_iff](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/isfractionring-iff--7b91de18c89c2bba7bffa540.md) | 493 | `result-track:7b91de18c89c2bba7bffa5402bd0d639839faac243c92c08595b2abb17763224` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/declarations/instance--095bcf4722b507810dc4e2a0.md) | 509 | `declaration-track:095bcf4722b507810dc4e2a0cf88902de4df7b9e3d43b0d93529a4466bcbaeca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
