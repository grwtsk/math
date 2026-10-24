# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Lemmas.Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7877e4d9627e08b8036c4cd9c9a0f15810b9ba2f",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7877e4d9627e08b8036c4cd9c9a0f15810b9ba2f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean.json)

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
| 1 | `theorem` | [Int.isCoprime_iff_gcd_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/int-iscoprime-iff-gcd-eq-one--8cef3db71cd451ef036a90cd.md) | 38 | `result-track:8cef3db71cd451ef036a90cd5649c30388d570c5d9f0070905abee7183534fd2` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/instance--beb7218308e56f4d95fcae24.md) | 47 | `declaration-track:beb7218308e56f4d95fcae24a1a9a0e4991e36442bc437b1c40d7bace97c4c1c` |
| 3 | `theorem` | [Nat.isCoprime_iff_coprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/nat-iscoprime-iff-coprime--c9fe14932d48ef995bf3f4de.md) | 51 | `result-track:c9fe14932d48ef995bf3f4dec6db957123950ecd428ac70ec68f214a739b4f11` |
| 4 | `theorem` | [Nat.Coprime.cast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/nat-coprime-cast--9a9e3ae78161b09610b573c0.md) | 56 | `result-track:9a9e3ae78161b09610b573c06c50e2c8db0e1d7ca9437e9e1d1d3e88f4831e82` |
| 5 | `theorem` | [Rat.isCoprime_num_den](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/rat-iscoprime-num-den--fc6340079166d7c1358ed6fd.md) | 60 | `result-track:fc6340079166d7c1358ed6fddd36e72a24d318bacb6e23f27f8f1ef5af595af7` |
| 6 | `theorem` | [Int.isCoprime_gcdA](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/int-iscoprime-gcda--fc2a902c7659131b4e487da2.md) | 63 | `result-track:fc2a902c7659131b4e487da24d73a8126a7c54c62a9f3150ab415e68c9cf7e47` |
| 7 | `theorem` | [Int.isCoprime_gcdB](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/int-iscoprime-gcdb--6993ad538fb96256b1caada4.md) | 67 | `result-track:6993ad538fb96256b1caada4b35a375eb25bfb9c07c14f23287923af8c509892` |
| 8 | `theorem` | [ne_zero_or_ne_zero_of_nat_coprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/ne-zero-or-ne-zero-of-nat-coprime--ee8ddd4ecda2c3a17e77fbcd.md) | 71 | `result-track:ee8ddd4ecda2c3a17e77fbcd90029c0a705cc23582d5b0ab88a522360b9ef79c` |
| 9 | `theorem` | [IsCoprime.prod_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/iscoprime-prod-left--d91dcb0a6e5656f004e47b0b.md) | 76 | `result-track:d91dcb0a6e5656f004e47b0b701a856e9999cd0b857174226801e1f3f98b52c5` |
| 10 | `theorem` | [IsCoprime.prod_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/iscoprime-prod-right--7529447ed7bd2d723d4853e9.md) | 84 | `result-track:7529447ed7bd2d723d4853e966cd4cc5a16d749c88bb24482bdf058fad34eaa5` |
| 11 | `theorem` | [IsCoprime.prod_left_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/iscoprime-prod-left-iff--1f9a3f0c56a6fef0be1761a2.md) | 87 | `result-track:1f9a3f0c56a6fef0be1761a2104c012e37b4c3acd1014ad3a8ee627fd8b4b8a9` |
| 12 | `theorem` | [IsCoprime.prod_right_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/iscoprime-prod-right-iff--5ba59dfca5cdbda4a9d8404b.md) | 92 | `result-track:5ba59dfca5cdbda4a9d8404b7d41dfa7b8e683e0fee1c6715d1cf84669285bc3` |
| 13 | `theorem` | [IsCoprime.of_prod_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/iscoprime-of-prod-left--eb00b3b527610cdb1a9248c7.md) | 95 | `result-track:eb00b3b527610cdb1a9248c763a504d1c4963dd68e30c79269e6f4ab36eca247` |
| 14 | `theorem` | [IsCoprime.of_prod_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/iscoprime-of-prod-right--37038871d27f2acd7de5f4b8.md) | 99 | `result-track:37038871d27f2acd7de5f4b83e7753e82ea4da44578cd49c7f63d44cea048cd0` |
| 15 | `theorem` | [Finset.prod_dvd_of_coprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/finset-prod-dvd-of-coprime--cfb6528952a245733061c915.md) | 103 | `result-track:cfb6528952a245733061c9157e20fb581f27770aabdcc4ddd346972dd62227cb` |
| 16 | `theorem` | [Fintype.prod_dvd_of_coprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/fintype-prod-dvd-of-coprime--3e1497d214ff645b09550ee7.md) | 118 | `result-track:3e1497d214ff645b09550ee761815df5730b22f91885a2336a367973f341466b` |
| 17 | `theorem` | [exists_sum_eq_one_iff_pairwise_coprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/exists-sum-eq-one-iff-pairwise-coprime--59d475cef730c17e628f1d35.md) | 126 | `result-track:59d475cef730c17e628f1d35bbf5350536154df76fcc6205047e6f2c837009e0` |
| 18 | `theorem` | [exists_sum_eq_one_iff_pairwise_coprime'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/exists-sum-eq-one-iff-pairwise-coprime--8c4e576abaa30fb410419af3.md) | 179 | `result-track:8c4e576abaa30fb410419af305b0cc949f2e7673fd97e33d28676dd81acf79e1` |
| 19 | `theorem` | [pairwise_coprime_iff_coprime_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/pairwise-coprime-iff-coprime-prod--e20d86078982d0385df322ee.md) | 184 | `result-track:e20d86078982d0385df322ee63d93bc1858dcd9969821a0f77d5641eb41c143c` |
| 20 | `theorem` | [IsCoprime.pow_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/iscoprime-pow-left--a69de2fe35d4170df0ce26b4.md) | 196 | `result-track:a69de2fe35d4170df0ce26b40287ea8854b828d22227b9e8039813eecbea4c5e` |
| 21 | `theorem` | [IsCoprime.pow_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/iscoprime-pow-right--36b387c6f5c00631cfc8e568.md) | 200 | `result-track:36b387c6f5c00631cfc8e568d7771dae62cf358824fc9bf6c0a2a12a5645f120` |
| 22 | `theorem` | [IsCoprime.pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/iscoprime-pow--f33c5df0a0a964c592496045.md) | 204 | `result-track:f33c5df0a0a964c592496045e5e14909e3a2eb3d5000aade9ccc1aee078053d8` |
| 23 | `theorem` | [IsCoprime.pow_left_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/iscoprime-pow-left-iff--20f01a0ad68dd0750ea51bad.md) | 207 | `result-track:20f01a0ad68dd0750ea51badfd276d339e9283872bfcb8cea409e15da378263d` |
| 24 | `theorem` | [IsCoprime.pow_right_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/iscoprime-pow-right-iff--cdb6d772c9b4c00db82b6dcb.md) | 212 | `result-track:cdb6d772c9b4c00db82b6dcb5b8a022c494e3398481b6373a8792041400f452c` |
| 25 | `theorem` | [IsCoprime.pow_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/iscoprime-pow-iff--8b8f819dc3d797eb5d2908c4.md) | 215 | `result-track:8b8f819dc3d797eb5d2908c4b648a17744354b23557430178f419d8e70352d5c` |
| 26 | `theorem` | [IsRelPrime.prod_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/isrelprime-prod-left--3aea2c6c94ac8ec1378d2586.md) | 224 | `result-track:3aea2c6c94ac8ec1378d25866b69eede957290aeee096d4a39b76c8eb0f0113f` |
| 27 | `theorem` | [IsRelPrime.prod_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/isrelprime-prod-right--a0fbf9dbcfb02e1048068fbb.md) | 231 | `result-track:a0fbf9dbcfb02e1048068fbb97a9ff7abfc6c794136cffe52e4dfbf19e430b51` |
| 28 | `theorem` | [IsRelPrime.prod_left_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/isrelprime-prod-left-iff--98d3111b4875ed276c7583f9.md) | 234 | `result-track:98d3111b4875ed276c7583f9324860d76ed573cf0685a63b1869f17c83660a4f` |
| 29 | `theorem` | [IsRelPrime.prod_right_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/isrelprime-prod-right-iff--a11a08479c2ba77fefd686a0.md) | 239 | `result-track:a11a08479c2ba77fefd686a0ba8c821c5e0ab861fbd6074a1939ef50eb83ff20` |
| 30 | `theorem` | [IsRelPrime.of_prod_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/isrelprime-of-prod-left--6386964b9edc6d9e936ce905.md) | 242 | `result-track:6386964b9edc6d9e936ce9050cce31b465ff1e50a572b89ce712269e2cf4140a` |
| 31 | `theorem` | [IsRelPrime.of_prod_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/isrelprime-of-prod-right--d3b8d288117559784d18010d.md) | 246 | `result-track:d3b8d288117559784d18010d41c4c324be76aede437351e1cdf730aea7e75fea` |
| 32 | `theorem` | [Finset.prod_dvd_of_isRelPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/finset-prod-dvd-of-isrelprime--9a8ac561686a3e234b220e3f.md) | 250 | `result-track:9a8ac561686a3e234b220e3fec43f884f3b4987f704cc278a09bbeaf345f67a8` |
| 33 | `theorem` | [Fintype.prod_dvd_of_isRelPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/fintype-prod-dvd-of-isrelprime--28d101562a2403d6e9c79f90.md) | 266 | `result-track:28d101562a2403d6e9c79f905eceb07d216ff4f13d1fda5dbd50c710bf85040a` |
| 34 | `theorem` | [pairwise_isRelPrime_iff_isRelPrime_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/pairwise-isrelprime-iff-isrelprime-prod--cfd9a03b5d7b6b4019235e54.md) | 270 | `result-track:cfd9a03b5d7b6b4019235e5478738d17ace7bfe736ad53b15927992e7186f77d` |
| 35 | `theorem` | [pow_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/pow-left--6478c124b35f20286e50bf82.md) | 284 | `result-track:6478c124b35f20286e50bf820bb2c4aee616dcd7e9f2de0a6c42709c39932464` |
| 36 | `theorem` | [pow_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/pow-right--0f611873add64da10abd4411.md) | 288 | `result-track:0f611873add64da10abd44119bf47fb17b0f5662fa27c469b1cc99200784f1fc` |
| 37 | `theorem` | [pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/pow--bcf2057efa828f58f39f91a1.md) | 292 | `result-track:bcf2057efa828f58f39f91a13b0632fc1eebbabb35dd6ed7de41670989a3b8db` |
| 38 | `theorem` | [pow_left_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/pow-left-iff--2adafa5e29b85fa3e00e6fdf.md) | 295 | `result-track:2adafa5e29b85fa3e00e6fdfa4d2670bc7ff1a2b3e79cce491a08f53bd5ccad9` |
| 39 | `theorem` | [pow_right_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/pow-right-iff--0a07f6b0d8459cc1a0084087.md) | 300 | `result-track:0a07f6b0d8459cc1a00840878cc4dda6e2e2f47166d103ea86444b13ad9f41a0` |
| 40 | `theorem` | [pow_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/declarations/pow-iff--5b443675862a446485d3ce6a.md) | 303 | `result-track:5b443675862a446485d3ce6a517cc7d8d4699336e28b5521ffe54a4b9a829148` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
