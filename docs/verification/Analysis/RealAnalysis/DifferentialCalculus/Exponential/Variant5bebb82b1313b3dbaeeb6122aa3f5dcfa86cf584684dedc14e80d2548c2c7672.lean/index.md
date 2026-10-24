# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Exponential.Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4022f8281a8931d885c94c6741b2e842e11cd6f",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4022f8281a8931d885c94c6741b2e842e11cd6f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Algebra.Exponential` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Exponential` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.CauSeqFilter` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictFDerivAt_exp_zero_of_radius_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasstrictfderivat-exp-zero-of-radius-pos--5c79ac9770f5a4c01c4e2248.md) | 76 | `result-track:5c79ac9770f5a4c01c4e2248639d4c1f5becf9183ee65a6e6e09140601f10a96` |
| 2 | `theorem` | [hasFDerivAt_exp_zero_of_radius_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasfderivat-exp-zero-of-radius-pos--2146189c850bcd95beaca97f.md) | 85 | `result-track:2146189c850bcd95beaca97f28604381568ced8b088b0e1e3d53917a72ee968d` |
| 3 | `theorem` | [hasFDerivAt_exp_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasfderivat-exp-of-mem-ball--579b177918378a24aa8e45c4.md) | 99 | `result-track:579b177918378a24aa8e45c4aea1efede18c482d2fd033e449f887fd2645fa83` |
| 4 | `theorem` | [hasStrictFDerivAt_exp_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasstrictfderivat-exp-of-mem-ball--67df14a1b793ccfb0c8e6fb2.md) | 119 | `result-track:67df14a1b793ccfb0c8e6fb24b11a911a70a147123323de3d28a9e902d242a03` |
| 5 | `theorem` | [hasStrictDerivAt_exp_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasstrictderivat-exp-of-mem-ball--440a5c1d90f4cfddede9e1a1.md) | 133 | `result-track:440a5c1d90f4cfddede9e1a14fc77359fe8ccaff810653fdf3b110df1e32c065` |
| 6 | `theorem` | [hasDerivAt_exp_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasderivat-exp-of-mem-ball--6e16cf9abd146c9a8ed7cf4a.md) | 140 | `result-track:6e16cf9abd146c9a8ed7cf4a647a6bb4e35291b4274c3314086a22dc39e8b399` |
| 7 | `theorem` | [hasStrictDerivAt_exp_zero_of_radius_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasstrictderivat-exp-zero-of-radius-pos--8152adfeeb63b2d12d896fca.md) | 146 | `result-track:8152adfeeb63b2d12d896fca8de9a54e5cb2cfed7ac38c2ac0f9c8d910485c81` |
| 8 | `theorem` | [hasDerivAt_exp_zero_of_radius_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasderivat-exp-zero-of-radius-pos--ad667d84901fb5b71f9c85c0.md) | 152 | `result-track:ad667d84901fb5b71f9c85c07bb2b38d56291290034fe990630680abd1d81918` |
| 9 | `theorem` | [hasStrictFDerivAt_exp_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasstrictfderivat-exp-zero--5efc1db17d99c071fa5284cb.md) | 164 | `result-track:5efc1db17d99c071fa5284cb7c6a44375bb279b437399912922f0e5ca6c36c77` |
| 10 | `theorem` | [hasFDerivAt_exp_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasfderivat-exp-zero--5c323aa6bd4e872e0dd553a7.md) | 169 | `result-track:5c323aa6bd4e872e0dd553a74f98ce9686c3943ac7766c271ca2d4ef0fa2b808` |
| 11 | `theorem` | [hasStrictFDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasstrictfderivat-exp--1422f0ed626827494e25120e.md) | 180 | `result-track:1422f0ed626827494e25120ec5c3c47f17e8b953ef8f32a474597d810af99a5a` |
| 12 | `theorem` | [hasFDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasfderivat-exp--d0d093d2149061184b8d9815.md) | 185 | `result-track:d0d093d2149061184b8d9815d21d0553081ffa4be616972f6fba20b9f9604852` |
| 13 | `theorem` | [hasStrictDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasstrictderivat-exp--2fb2e2f28a2de744c5e030ad.md) | 196 | `result-track:2fb2e2f28a2de744c5e030ad8b79f4ebecae95d2e62900c61581fba299e36d59` |
| 14 | `theorem` | [hasDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasderivat-exp--8ff513861452d4829fc27eea.md) | 201 | `result-track:8ff513861452d4829fc27eea781d1db882cac9da7a50ea8b07900ce1fdfbe3f9` |
| 15 | `theorem` | [hasStrictDerivAt_exp_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasstrictderivat-exp-zero--e73131e13f8f780ddaac1350.md) | 205 | `result-track:e73131e13f8f780ddaac135029908d033a4defc2f7136bbed69c2baf3394d214` |
| 16 | `theorem` | [hasDerivAt_exp_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasderivat-exp-zero--087d14f542955472461ac758.md) | 209 | `result-track:087d14f542955472461ac758b033bfa426b5624cff67a9966387f4c5240b8274` |
| 17 | `theorem` | [Complex.exp_eq_exp_ℂ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/complex-exp-eq-exp--6b98adaf8b0397fb3141dd94.md) | 214 | `result-track:6b98adaf8b0397fb3141dd94af32f949f243c7dae09fd4575dea81650dd8e68d` |
| 18 | `theorem` | [Real.exp_eq_exp_ℝ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/real-exp-eq-exp--38edec4b1013786466352477.md) | 220 | `result-track:38edec4b1013786466352477ddfaad21b06a4ad29d540f5c34580fdf74c9e993` |
| 19 | `theorem` | [hasFDerivAt_exp_smul_const_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasfderivat-exp-smul-const-of-mem-ball--138b3693a0dc2f3f7cd2f6ee.md) | 262 | `result-track:138b3693a0dc2f3f7cd2f6eef64789c6749b1256ba0b3c5596967575f2ec297e` |
| 20 | `theorem` | [hasFDerivAt_exp_smul_const_of_mem_ball'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasfderivat-exp-smul-const-of-mem-ball--a2182cdf88d4beb53a38b515.md) | 292 | `result-track:a2182cdf88d4beb53a38b515ad3f1c2a934766d38cfeec7c95cc090d2ee4c9d4` |
| 21 | `theorem` | [hasStrictFDerivAt_exp_smul_const_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasstrictfderivat-exp-smul-const-of-mem-ball--493c4e44d95c9a3243637076.md) | 301 | `result-track:493c4e44d95c9a3243637076da9eb357ecfcdf7a67a11f908b4466546eb4505f` |
| 22 | `theorem` | [hasStrictFDerivAt_exp_smul_const_of_mem_ball'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasstrictfderivat-exp-smul-const-of-mem-ball--41df865a3c2e9625cb67a648.md) | 312 | `result-track:41df865a3c2e9625cb67a64828adc635939dc097be755b17c1aea027027211dc` |
| 23 | `theorem` | [hasStrictDerivAt_exp_smul_const_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasstrictderivat-exp-smul-const-of-mem-ball--f78082b2e971c8af2cc216b2.md) | 324 | `result-track:f78082b2e971c8af2cc216b292781f1903ee81c5bb6ff33798780b3a620e3094` |
| 24 | `theorem` | [hasStrictDerivAt_exp_smul_const_of_mem_ball'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasstrictderivat-exp-smul-const-of-mem-ball--973d4fd53122de48dff2a6e8.md) | 329 | `result-track:973d4fd53122de48dff2a6e8689e4dad800c6983be1f9aa58c655ce8e447476e` |
| 25 | `theorem` | [hasDerivAt_exp_smul_const_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasderivat-exp-smul-const-of-mem-ball--f98eaabce47610781874e522.md) | 334 | `result-track:f98eaabce47610781874e522dc1d9fa99536c9c3b39c0aaef43d2fcdac120c33` |
| 26 | `theorem` | [hasDerivAt_exp_smul_const_of_mem_ball'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasderivat-exp-smul-const-of-mem-ball--6457427a13d20dbfd1a8de2d.md) | 339 | `result-track:6457427a13d20dbfd1a8de2d43986d0c3ed31049672a672705b0f7e5a4329a5c` |
| 27 | `theorem` | [hasFDerivAt_exp_smul_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasfderivat-exp-smul-const--d86ee1301b6d3acb0d1747e2.md) | 354 | `result-track:d86ee1301b6d3acb0d1747e20d4c789df2d885a22f004d0077b67d4458939102` |
| 28 | `theorem` | [hasFDerivAt_exp_smul_const'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasfderivat-exp-smul-const--2e3f777836e5bea8f2271db0.md) | 359 | `result-track:2e3f777836e5bea8f2271db04fbbbe450287c90f003f0e8081321721b8cbe023` |
| 29 | `theorem` | [hasStrictFDerivAt_exp_smul_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasstrictfderivat-exp-smul-const--b7ca1608f439330e1d966af4.md) | 365 | `result-track:b7ca1608f439330e1d966af4d4951e6030084da362b2dc196cde174390ec7eee` |
| 30 | `theorem` | [hasStrictFDerivAt_exp_smul_const'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasstrictfderivat-exp-smul-const--9e458a909982513134e19027.md) | 371 | `result-track:9e458a909982513134e19027bc6a4258c13b4bdb1e9b13a6102cf74b9072afe4` |
| 31 | `theorem` | [hasStrictDerivAt_exp_smul_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasstrictderivat-exp-smul-const--0fe1def780eb6f3413dd02e2.md) | 379 | `result-track:0fe1def780eb6f3413dd02e2b4115036d9e30c8bfb727dee7ae3319170fc7856` |
| 32 | `theorem` | [hasStrictDerivAt_exp_smul_const'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasstrictderivat-exp-smul-const--63b63d9d0e28e7b6643015aa.md) | 384 | `result-track:63b63d9d0e28e7b6643015aa10c4124f6c01824832bd90e7ddd1dccd96a50f09` |
| 33 | `theorem` | [hasDerivAt_exp_smul_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasderivat-exp-smul-const--e95e97be81a4fb7a2cc4aeae.md) | 389 | `result-track:e95e97be81a4fb7a2cc4aeae1e2beefc792f47a8fae86554a75fcf110bb95837` |
| 34 | `theorem` | [hasDerivAt_exp_smul_const'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hasderivat-exp-smul-const--c9f57322716a3b30cddc8a90.md) | 393 | `result-track:c9f57322716a3b30cddc8a90fb36c4a9d423491ee366a1ef693346ee2cd1617e` |
| 35 | `lemma` | [HasSum.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant5bebb82b1313b3dbaeeb6122aa3f5dcfa86cf584684dedc14e80d2548c2c7672.lean/declarations/hassum-exp--2b92b69ff8f40bbeedbfd976.md) | 407 | `result-track:2b92b69ff8f40bbeedbfd976c45b873690f78d7b36a9f4383b7898520b606e46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
