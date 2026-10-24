# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ArithmeticInterceptFinite.Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5163fe54814af59448d1d9e7241f8360e7345c0",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5163fe54814af59448d1d9e7241f8360e7345c0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Prime` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_two_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-two-lower--ea72d16b03fa343bdbbaf0a6.md) | 21 | `result-track:ea72d16b03fa343bdbbaf0a6f9912ecfa6124f59065d48618fa44ae048a12152` |
| 2 | `theorem` | [log_two_fine_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-two-fine-lower--963d17350ae161ca24dbdeac.md) | 26 | `result-track:963d17350ae161ca24dbdeac6bb15392d6a87628ebf999cb1b9a6ca46e70934d` |
| 3 | `theorem` | [log_two_upper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-two-upper--48e13383de4e92354f7104f8.md) | 31 | `result-track:48e13383de4e92354f7104f8e07e1fbb29100cd5937da918b9e5e18847150a37` |
| 4 | `theorem` | [log_three_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-three-lower--94da4562f8aa4f9449e6ec2a.md) | 36 | `result-track:94da4562f8aa4f9449e6ec2a7f4fff1545914e50782cd261b2e5dbc2ea32d933` |
| 5 | `def` | [stieltjesLowerFour](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/stieltjeslowerfour--7c075bf724778350eff3ced8.md) | 42 | `declaration-track:7c075bf724778350eff3ced811c7d1e81dfac987123f6bfab46a7d17cb6c8f4a` |
| 6 | `theorem` | [stieltjesLowerFour_gt_neg_quarter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/stieltjeslowerfour-gt-neg-quarter--5dc8840a4529284d3457fe2d.md) | 44 | `result-track:5dc8840a4529284d3457fe2de201e6f758e37cb8323e86388070e41356621623` |
| 7 | `theorem` | [stieltjesLowerFour_gt_neg_249](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/stieltjeslowerfour-gt-neg-249--98385a5cbc2409354c7c02a4.md) | 53 | `result-track:98385a5cbc2409354c7c02a4e9633db3bb1c7597d17069728d75070ea1c8e091` |
| 8 | `theorem` | [log_3_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-3-lower--79ce4e7789d550d8748773dc.md) | 62 | `result-track:79ce4e7789d550d8748773dca6d422556e17ddda385e8b8e18935d2d93eb0881` |
| 9 | `theorem` | [log_5_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-5-lower--5e65828a165667e834cec504.md) | 75 | `result-track:5e65828a165667e834cec504036c76319105b8ce3941194334a56d0480da8c33` |
| 10 | `theorem` | [log_7_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-7-lower--a4c13e0b4f398b854a091658.md) | 88 | `result-track:a4c13e0b4f398b854a0916586955ed27f079dbb0e502626bb958b703d54381c9` |
| 11 | `theorem` | [log_11_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-11-lower--536c8a5f0f8c1c6bfda72814.md) | 101 | `result-track:536c8a5f0f8c1c6bfda728147ce90d4d2ef0ac5406eb86542420478d84a8b0d1` |
| 12 | `theorem` | [log_13_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-13-lower--64a2bb453671d8b7c6bf4b4f.md) | 114 | `result-track:64a2bb453671d8b7c6bf4b4fb243be87a1767ad49cfdd598e3855e8c7cd3c774` |
| 13 | `theorem` | [log_17_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-17-lower--ea241d822cfd21f3f955c6fb.md) | 127 | `result-track:ea241d822cfd21f3f955c6fb62cf806f0d41b79ba0c72cce93a24ddd20ffea84` |
| 14 | `theorem` | [log_19_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-19-lower--2c8996f0e6dbe5f54242a578.md) | 140 | `result-track:2c8996f0e6dbe5f54242a578908caa2b7614da4c63852c25014947f06f2b05e1` |
| 15 | `theorem` | [log_23_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-23-lower--ba99a417fd35ab3b1c23dcf3.md) | 153 | `result-track:ba99a417fd35ab3b1c23dcf3bf20f9c4938da0656ee4b8098cbdba905f4c2c43` |
| 16 | `theorem` | [log_29_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-29-lower--8f07ada6b1b597138bcc236c.md) | 166 | `result-track:8f07ada6b1b597138bcc236ce28d8f078f0c90414b265a5c06b606b1263b7576` |
| 17 | `theorem` | [log_31_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-31-lower--3f80d8b7f3357e4aa1f70e57.md) | 179 | `result-track:3f80d8b7f3357e4aa1f70e5736d5d1d6c19786ecf6052670007389f8e2b42829` |
| 18 | `theorem` | [log_37_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-37-lower--933cc379bcae923115982d8a.md) | 192 | `result-track:933cc379bcae923115982d8a5caf2cce209e3e311701fdb397745b992ece3fe0` |
| 19 | `theorem` | [log_41_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-41-lower--e9643931ce8cd94e46483b45.md) | 205 | `result-track:e9643931ce8cd94e46483b45fbfc7886aa698153adae1aa123427da2e2a6dd11` |
| 20 | `theorem` | [log_43_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-43-lower--8dd76246a448c86839930b9b.md) | 218 | `result-track:8dd76246a448c86839930b9bc4fec9532f9fac760ff1ddc58ac5de5dc98257fe` |
| 21 | `theorem` | [log_47_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-47-lower--d66952e390d6bd2f5424de0e.md) | 231 | `result-track:d66952e390d6bd2f5424de0e3d510c3875d1d12cebcdf68c44c5a6d32b349834` |
| 22 | `theorem` | [log_53_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-53-lower--85fcdc6dcf4ffc801f7a96c0.md) | 244 | `result-track:85fcdc6dcf4ffc801f7a96c0330fce10cd3e4faff9104f5e953465140bbcc0dc` |
| 23 | `theorem` | [log_59_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-59-lower--323a72ee6268e8446fd8d274.md) | 257 | `result-track:323a72ee6268e8446fd8d2749bc44ab95b6a84d62bde37b44e9caaedceae64d4` |
| 24 | `theorem` | [log_61_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-61-lower--7fdcab8a852af2e51617a1ce.md) | 270 | `result-track:7fdcab8a852af2e51617a1cef819ff00c8fa97ced78a8dc68401de916310cb1a` |
| 25 | `theorem` | [log_67_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-67-lower--7af8779b417dbfdece97ae63.md) | 283 | `result-track:7af8779b417dbfdece97ae63b9e39b5565e92d17d055f090f8f941020ace3be3` |
| 26 | `theorem` | [log_71_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-71-lower--c4c041a251a952dd539c8ed0.md) | 296 | `result-track:c4c041a251a952dd539c8ed0b4c1ebc4aa6aa96a9ac968ba8270fee547d9c82b` |
| 27 | `theorem` | [log_73_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-73-lower--c63bb401381ca53b8bb27c57.md) | 309 | `result-track:c63bb401381ca53b8bb27c57fdb77b20fa5365d6e9338d90263a1c8a798d7756` |
| 28 | `theorem` | [log_79_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-79-lower--10795245cf1ffc5b6738d770.md) | 322 | `result-track:10795245cf1ffc5b6738d77002dbffece7db011b978afa6b04fe4c9f1e6549eb` |
| 29 | `theorem` | [log_83_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-83-lower--9b050134e35b9940536139ec.md) | 335 | `result-track:9b050134e35b9940536139ecdda0741e74026ae733a898810d45cb9fe5ac649a` |
| 30 | `theorem` | [log_89_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-89-lower--f7654e529393fb13dffd7cbb.md) | 348 | `result-track:f7654e529393fb13dffd7cbb70fdf93b248c1927856f76724651839816154570` |
| 31 | `theorem` | [log_97_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/log-97-lower--2381078b2c344617239d4ed4.md) | 361 | `result-track:2381078b2c344617239d4ed487d189b9a2c9172a6190657be83bdb0c54f26e1b` |
| 32 | `def` | [primeInventory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/primeinventory--3ba8cdc332475fe4fdc5f192.md) | 374 | `declaration-track:3ba8cdc332475fe4fdc5f192f33e1712092b468e2223bbcd05c274b3f2b13af0` |
| 33 | `def` | [certifiedLogLower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/certifiedloglower--702584a2d8bbeb3e297b54b2.md) | 376 | `declaration-track:702584a2d8bbeb3e297b54b204940af691bff03c0952b69280d025a1b22f6d38` |
| 34 | `def` | [powerCoefficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/powercoefficient--11cf5c7998b7df91ac7ebb16.md) | 379 | `declaration-track:11cf5c7998b7df91ac7ebb1680740422f0e299622f8a789f360d08509457cfe6` |
| 35 | `def` | [finiteProperPowerMoment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/finiteproperpowermoment--c4aa38c670b36aaec709bb14.md) | 381 | `declaration-track:c4aa38c670b36aaec709bb14821ef7e604cf73795e6c9a9be5cc50fdea9dabc4` |
| 36 | `theorem` | [inventory_primes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/inventory-primes--02aac5b81e6271f8ecf41eca.md) | 384 | `result-track:02aac5b81e6271f8ecf41eca462ee8e8802b650d73fb850994930d8d302136bc` |
| 37 | `theorem` | [inventory_log_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/inventory-log-lower--b3671ddddc18f8bc30b1b36a.md) | 390 | `result-track:b3671ddddc18f8bc30b1b36a5b4bb4e42603d9b75577cdef72e3ed30c8f6335f` |
| 38 | `theorem` | [finiteProperPowerMoment_gt_nine_quarters](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/finiteproperpowermoment-gt-nine-quarters--3a7f2f817d11a6e75b115af9.md) | 471 | `result-track:3a7f2f817d11a6e75b115af938c505e577689d46d71110226471374b6bc2fe61` |
| 39 | `theorem` | [finiteProperPowerMoment_eq_atoms](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/finiteproperpowermoment-eq-atoms--5efdfa3ae39c91891d295f06.md) | 490 | `result-track:5efdfa3ae39c91891d295f067d48b32124d5da86b9160cc5a7686e835d2dd5c8` |
| 40 | `theorem` | [intercept_positive_of_actual_bridges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/intercept-positive-of-actual-bridges--787815b7bdf88562d83ca37a.md) | 502 | `result-track:787815b7bdf88562d83ca37a0cd79fbc5860ec648f011c2920d099e8c10eaefb` |
| 41 | `theorem` | [intercept_gt_one_five_hundred_of_actual_bridges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variantd7d767a1dd0190fc415599f2dcf3ca08f137755c2fa89e77e853584380350d1b.lean/declarations/intercept-gt-one-five-hundred-of-actual-bridges--e1a79a9fe137e12a448a3b37.md) | 511 | `result-track:e1a79a9fe137e12a448a3b37422062e7f2ee163263e980aaad2efe535824f81f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
