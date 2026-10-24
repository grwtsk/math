# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.LSeries.Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da9c0a5732be3b22f84ae924d4f18e9332658251",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da9c0a5732be3b22f84ae924d4f18e9332658251`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Coeff.Upper` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Convolution` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Linearity` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lamC](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/lamc--5dbf34baa26236c08d34ffbc.md) | 33 | `declaration-track:5dbf34baa26236c08d34ffbcb0cd9095301d5d1c43d81149b634a6c01a8bfac3` |
| 2 | `def` | [lamLogC](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/lamlogc--7095fd888a5d4a87fa541264.md) | 35 | `declaration-track:7095fd888a5d4a87fa541264babe25d953f3c090eb166ce258d30aeed22d417d` |
| 3 | `lemma` | [lamC_apply](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/lamc-apply--4ed46781624c52462eb40b81.md) | 37 | `result-track:4ed46781624c52462eb40b8116415843a559e7257ff8fc6dd72617b7d4683d94` |
| 4 | `lemma` | [lamLogC_apply](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/lamlogc-apply--91a6a8b5f739a14cd76e63b6.md) | 38 | `result-track:91a6a8b5f739a14cd76e63b6afc7e20aa678b2ca356eaebd6112f0bd87b593af` |
| 5 | `lemma` | [lamLogConv_zero_apply](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/lamlogconv-zero-apply--3c174f6f75a460ee3b60d9ae.md) | 43 | `result-track:3c174f6f75a460ee3b60d9aea806bf8600c46aec0ce2c75cafbcbf1fe811f072` |
| 6 | `lemma` | [lam_mul_lamLogConv](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/lam-mul-lamlogconv--8b06e5bb2f02f0d4ab0034f9.md) | 47 | `result-track:8b06e5bb2f02f0d4ab0034f95aaa98821ffcd508ffcaf53fee71598872e1d29c` |
| 7 | `lemma` | [lamC_conv_xiCoeffJ](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/lamc-conv-xicoeffj--b208bd1e2ef8321996e2e96a.md) | 52 | `result-track:b208bd1e2ef8321996e2e96ac2731ac41f22f7061248d61cad6a8dfff562d722` |
| 8 | `theorem` | [xiCoeffJ_identity](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/xicoeffj-identity--fb2efc64b33051a4dccb1ff5.md) | 74 | `result-track:fb2efc64b33051a4dccb1ff5dce99c2c9ab4235c0357f6464afb311201a61d8a` |
| 9 | `lemma` | [lamLogC_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/lamlogc-eq--2b3dc5902dde6131976300bd.md) | 91 | `result-track:2b3dc5902dde6131976300bd993adb68f5be9c682ae81b9bf29ebfe68883bcb7` |
| 10 | `lemma` | [norm_xiCoeffJ_rpow_nonneg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/norm-xicoeffj-rpow-nonneg--f9e559f48e5e173868e49a13.md) | 100 | `result-track:f9e559f48e5e173868e49a136ecb9cbd60c753b8853d2943155957f80e217903` |
| 11 | `lemma` | [sum_range_le_sum_Ioc](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/sum-range-le-sum-ioc--299822cd9c0d8a0f91691eaa.md) | 103 | `result-track:299822cd9c0d8a0f91691eaa078b99b747c3b20aa8fd4f7ff280570a8567f0a3` |
| 12 | `lemma` | [norm_term_xiCoeffJ](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/norm-term-xicoeffj--358379844bbf2395c34a4faf.md) | 116 | `result-track:358379844bbf2395c34a4faf372879765be322a104f84ef060961af528bff469` |
| 13 | `def` | [Asig](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/asig--10cad53211a685d14d8a6895.md) | 129 | `declaration-track:10cad53211a685d14d8a6895e38f7d875c234ff2869e64b8c1ce0bd36fb3985d` |
| 14 | `lemma` | [summable_lam_rpow_of_gt_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/summable-lam-rpow-of-gt-one--2b38edea374c496b855be850.md) | 131 | `result-track:2b38edea374c496b855be850e95a847cb338ccb0b0b3daa9d9876b6558b1194d` |
| 15 | `lemma` | [lam_rpow_nonneg'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/lam-rpow-nonneg--b79c01ab612e8594459e30db.md) | 141 | `result-track:b79c01ab612e8594459e30dbe07e1e329b9d7529bd8ffe3376cf73550d2cf4f9` |
| 16 | `lemma` | [Asig_nonneg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/asig-nonneg--9b5ff077a688e33d9d7551fa.md) | 144 | `result-track:9b5ff077a688e33d9d7551fa91cdbfbb51c8fa5195d626b72cba2e729321b622` |
| 17 | `lemma` | [sum_lam_rpow_le_Asig](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/sum-lam-rpow-le-asig--d8688b95fbd07e1145fbf6bd.md) | 146 | `result-track:d8688b95fbd07e1145fbf6bd1ecf28764df8d7063bff8fb1bd47789ed3d4755a` |
| 18 | `def` | [sigAux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/sigaux--cc7c99f127872ad8ff4226fc.md) | 151 | `declaration-track:cc7c99f127872ad8ff4226fcd5483f08f89e9e16e7265fde1f8ad8f051351158` |
| 19 | `lemma` | [one_lt_sigAux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/one-lt-sigaux--e46daaa3a9ebd325c4c8ca32.md) | 153 | `result-track:e46daaa3a9ebd325c4c8ca3238aa79f1e3f5f987ee8d0bad67ff42540538617f` |
| 20 | `def` | [R0sig](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/r0sig--66fe1f6904314f3dfd2d516d.md) | 156 | `declaration-track:66fe1f6904314f3dfd2d516d441c8ed2bfe4653ac2e96d7427747ee4a7c7e4c0` |
| 21 | `lemma` | [R0sig_pos](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/r0sig-pos--49e1e9f8c441248ec842002a.md) | 158 | `result-track:49e1e9f8c441248ec842002a67aaa5c448077a8e17166ee02d9f04e01f82153c` |
| 22 | `lemma` | [sum_norm_xiCoeffJ_rpow_le_gen](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/sum-norm-xicoeffj-rpow-le-gen--d89f9f9c0e83a1aee3651bdf.md) | 161 | `result-track:d89f9f9c0e83a1aee3651bdfadf37d4a619d961deebd9ec08270f868b548f3ba` |
| 23 | `lemma` | [summable_norm_xiCoeffJ_gen](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/summable-norm-xicoeffj-gen--4fb2c9d6289a0fef98f3fb63.md) | 230 | `result-track:4fb2c9d6289a0fef98f3fb630983881382b24a63df5db9ae3731f93b8dda7ee5` |
| 24 | `theorem` | [norm_xiCoeffJ_tsum_le_of_gt_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/norm-xicoeffj-tsum-le-of-gt-one--e86ee262c1c76f1191f39193.md) | 238 | `result-track:e86ee262c1c76f1191f391936c3e355e9372d55f11a21cdecbc5cb738b6b1c47` |
| 25 | `lemma` | [summable_norm_xiCoeffJ_rpow_gen](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/summable-norm-xicoeffj-rpow-gen--7d17f4e02dd70c4a6ac70296.md) | 251 | `result-track:7d17f4e02dd70c4a6ac702964c8dc8fc3a4c21c55f5beb319dba41e429f98ff4` |
| 26 | `lemma` | [norm_LSeries_lamC_le_gen](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/norm-lseries-lamc-le-gen--4d3984fb2c7d1896c62a6c8f.md) | 261 | `result-track:4d3984fb2c7d1896c62a6c8f3c997c4f90f56d2d0527ad91fcef36cb01cddf76` |
| 27 | `theorem` | [LSeries_xiCoeffJ_of_gt_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/lseries-xicoeffj-of-gt-one--54fb807ab0f74fc767a89e99.md) | 279 | `result-track:54fb807ab0f74fc767a89e999af02a99bf4c1657f9bb4bfefd4cbb04a998cd38` |
| 28 | `theorem` | [norm_xiCoeffJ_tsum_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/norm-xicoeffj-tsum-le--fc6ae37dd1fe442d602d508c.md) | 316 | `result-track:fc6ae37dd1fe442d602d508cfabe26cbfb8dad33efefc1c13074482e1507dbef` |
| 29 | `theorem` | [LSeries_xiCoeffJ](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc963cadb251e64200829320bf469a75ff1d008fa4676e7ddeecfa57ed1f29dc9.lean/declarations/lseries-xicoeffj--ea25e181d50fe63a32e3d89c.md) | 322 | `result-track:ea25e181d50fe63a32e3d89cc01e1e9d553f6820e55f9a10f556b0dc692e9f78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
