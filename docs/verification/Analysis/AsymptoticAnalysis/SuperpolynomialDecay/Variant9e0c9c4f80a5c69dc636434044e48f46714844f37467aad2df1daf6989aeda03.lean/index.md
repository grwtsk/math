# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SuperpolynomialDecay.Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e63dcbbbee2e75a0b0371c6a4a75a198ce3a1b94",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e63dcbbbee2e75a0b0371c6a4a75a198ce3a1b94`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SuperpolynomialDecay](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay--9ee2311035daeb64ecfbbac5.md) | 62 | `declaration-track:9ee2311035daeb64ecfbbac5f7487f17b22709b7d8f11c3dbb304a2a0606f716` |
| 2 | `theorem` | [SuperpolynomialDecay.congr'](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-congr--b50dbb6944aef1adc01a71bc.md) | 72 | `result-track:b50dbb6944aef1adc01a71bc079204859c6cbc23b4b82f69c76b67cdb1aab437` |
| 3 | `theorem` | [SuperpolynomialDecay.congr](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-congr--cd8c931b7b0a436fba330eb6.md) | 76 | `result-track:cd8c931b7b0a436fba330eb68c257aeb266583f768599a1b8c6cdeea4503910b` |
| 4 | `theorem` | [superpolynomialDecay_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-zero--0a6189c36d1481647dd743dd.md) | 81 | `result-track:0a6189c36d1481647dd743dd8929fda0a5a8e414aaa64aedf75808909d0a051f` |
| 5 | `theorem` | [SuperpolynomialDecay.add](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-add--f4cd2cb10562dc785f494255.md) | 84 | `result-track:f4cd2cb10562dc785f494255194ada0e6670a0c00e698656157058509245fa28` |
| 6 | `theorem` | [SuperpolynomialDecay.mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-mul--f36bbd7d6018a1fe3798f311.md) | 88 | `result-track:f36bbd7d6018a1fe3798f3115375fe3a28c5df8c94c9da71dbbbab30c303204b` |
| 7 | `theorem` | [SuperpolynomialDecay.mul_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-mul-const--66aa2b3fd79abab9c3366937.md) | 92 | `result-track:66aa2b3fd79abab9c3366937dfac07f741c18e6250545eaa5b7d8eb36240c8ba` |
| 8 | `theorem` | [SuperpolynomialDecay.const_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-const-mul--8e67b902a2352d683636af69.md) | 96 | `result-track:8e67b902a2352d683636af69e2aed44458ac7b6b8f59ec1f0424313efa658be2` |
| 9 | `theorem` | [SuperpolynomialDecay.param_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-param-mul--e635322118b0ef972bffef84.md) | 100 | `result-track:e635322118b0ef972bffef84f2e514b0adc85595e078417ba9102543f5e6f192` |
| 10 | `theorem` | [SuperpolynomialDecay.mul_param](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-mul-param--627fb463076d96e07bf5ea25.md) | 106 | `result-track:627fb463076d96e07bf5ea2512e5fd94a7b6c3c65fc5d968897cd5b6eadeb9fc` |
| 11 | `theorem` | [SuperpolynomialDecay.param_pow_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-param-pow-mul--0108ca22c8ed496de90ad34f.md) | 110 | `result-track:0108ca22c8ed496de90ad34ffc6be3f93f92a2c94abe56e782c6b3013a3d9bd5` |
| 12 | `theorem` | [SuperpolynomialDecay.mul_param_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-mul-param-pow--234d615c116e7f3875111619.md) | 116 | `result-track:234d615c116e7f3875111619a761de32f5239b8b56290916f2fc157645c032f2` |
| 13 | `theorem` | [SuperpolynomialDecay.polynomial_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-polynomial-mul--4e227d2732dde6b485c19841.md) | 120 | `result-track:4e227d2732dde6b485c198417afc82395afa5bde19041e18aaff5ca047c3aa45` |
| 14 | `theorem` | [SuperpolynomialDecay.mul_polynomial](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-mul-polynomial--d5a74d7a23feeace59ba1298.md) | 126 | `result-track:d5a74d7a23feeace59ba1298ae05e1e9b5f6593a540e03cfb9a94ddca3878618` |
| 15 | `theorem` | [SuperpolynomialDecay.trans_eventuallyLE](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-trans-eventuallyle--5e0166d6c1c619f4d9e39b79.md) | 137 | `result-track:5e0166d6c1c619f4d9e39b791bb02fee2c3278efa9196ceb07e3a74c73e7d8e2` |
| 16 | `theorem` | [superpolynomialDecay_iff_abs_tendsto_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-iff-abs-tendsto-zero--7fd9d14661c0dced0613d0dd.md) | 151 | `result-track:7fd9d14661c0dced0613d0dd5ac6b28820b91cf8ad0d19e2f5bdbb30e611b2f9` |
| 17 | `theorem` | [superpolynomialDecay_iff_superpolynomialDecay_abs](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-iff-superpolynomialdecay-abs--3da5ca26cffa959a279306cc.md) | 156 | `result-track:3da5ca26cffa959a279306cce274ce2c1a47c15c62b19a2485987e441eeed039` |
| 18 | `theorem` | [SuperpolynomialDecay.trans_eventually_abs_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-trans-eventually-abs-le--126e58fc1ea4a366b39dbac5.md) | 163 | `result-track:126e58fc1ea4a366b39dbac531968b1ff4694faeb9bb3949d6bf6aebf4bf5c6f` |
| 19 | `theorem` | [SuperpolynomialDecay.trans_abs_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-trans-abs-le--c7cb6f71dacbc13143794466.md) | 174 | `result-track:c7cb6f71dacbc1314379446634e4f46a2e1e2d49fe9301904698b17ba5e76257` |
| 20 | `theorem` | [superpolynomialDecay_mul_const_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-mul-const-iff--2295ba7e66d19afe6ab4756a.md) | 184 | `result-track:2295ba7e66d19afe6ab4756a75114880aa5b73c74d05a4dc8dafbb3c85fc1c89` |
| 21 | `theorem` | [superpolynomialDecay_const_mul_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-const-mul-iff--7dafea04459cd04ab6c5af87.md) | 189 | `result-track:7dafea04459cd04ab6c5af879555f48b869f9ae78b2f76a7762b610bca109715` |
| 22 | `theorem` | [superpolynomialDecay_iff_abs_isBoundedUnder](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-iff-abs-isboundedunder--f90f5eab972b3b923cbabfee.md) | 203 | `result-track:f90f5eab972b3b923cbabfeeef7b6434aa3481c74012fe46fc4a6b1f1d39a863` |
| 23 | `theorem` | [superpolynomialDecay_iff_zpow_tendsto_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-iff-zpow-tendsto-zero--af8e3877da78ab4c7162f12b.md) | 221 | `result-track:af8e3877da78ab4c7162f12bcdf17149a1c03267f84a244c65c194cc83057b39` |
| 24 | `theorem` | [SuperpolynomialDecay.param_zpow_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-param-zpow-mul--33b478353e0ed4dba8abb90c.md) | 235 | `result-track:33b478353e0ed4dba8abb90ccc947ab76b1e24d5c68ade89b39765592af8338e` |
| 25 | `theorem` | [SuperpolynomialDecay.mul_param_zpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-mul-param-zpow--ca742ed2bfc1a898df7031a2.md) | 242 | `result-track:ca742ed2bfc1a898df7031a29fb7009b7f752d76afdccfea9cf94df92af666b7` |
| 26 | `theorem` | [SuperpolynomialDecay.inv_param_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-inv-param-mul--d9c6a3a820200d48438e8689.md) | 246 | `result-track:d9c6a3a820200d48438e8689779d863c43c51ff09f03422256a8c61507c8bb3c` |
| 27 | `theorem` | [SuperpolynomialDecay.param_inv_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-param-inv-mul--9920d4e63eb7914d844956c4.md) | 250 | `result-track:9920d4e63eb7914d844956c40ab71eb8df8079f9d0716cde46846b36caf459b5` |
| 28 | `theorem` | [superpolynomialDecay_param_mul_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-param-mul-iff--92046de09b59b5ffb351b4c9.md) | 256 | `result-track:92046de09b59b5ffb351b4c93309bdf177e549c7622618a1de58b53d45b73d3a` |
| 29 | `theorem` | [superpolynomialDecay_mul_param_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-mul-param-iff--4f815bef070b7d3506f952a5.md) | 263 | `result-track:4f815bef070b7d3506f952a5b237b06d57910c58e1d7253ca24d2f7478d5da0f` |
| 30 | `theorem` | [superpolynomialDecay_param_pow_mul_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-param-pow-mul-iff--6427d308101ee1cd267c2a0f.md) | 267 | `result-track:6427d308101ee1cd267c2a0f3c29b60c5a6e077511cc2460a95cb7b1dde1114a` |
| 31 | `theorem` | [superpolynomialDecay_mul_param_pow_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-mul-param-pow-iff--7a24f57820ed0cc95131acf2.md) | 275 | `result-track:7a24f57820ed0cc95131acf2c560c259a0c906adfd87b322af3bd9626ded2aa8` |
| 32 | `theorem` | [superpolynomialDecay_iff_norm_tendsto_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-iff-norm-tendsto-zero--063abace46fab447bdeaab2e.md) | 288 | `result-track:063abace46fab447bdeaab2e520a6fb8d7fff36843ece681381b5bd1c63ac7c8` |
| 33 | `theorem` | [superpolynomialDecay_iff_superpolynomialDecay_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-iff-superpolynomialdecay-norm--73f4c5940d346dc96a1bdc01.md) | 293 | `result-track:73f4c5940d346dc96a1bdc016938222ed5086fd2c4aa946ec33596dc31bb0b99` |
| 34 | `theorem` | [superpolynomialDecay_iff_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-iff-isbigo--0334a68e4723ba699242d771.md) | 300 | `result-track:0334a68e4723ba699242d7714f151cab83ae14b76c730bd12363a63e641de2a3` |
| 35 | `theorem` | [superpolynomialDecay_iff_isLittleO](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/declarations/superpolynomialdecay-iff-islittleo--aa28cb2106ac4c11749942c1.md) | 315 | `result-track:aa28cb2106ac4c11749942c14aa2c784f4b50458a2c49f6248f8b305f26b0fd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
