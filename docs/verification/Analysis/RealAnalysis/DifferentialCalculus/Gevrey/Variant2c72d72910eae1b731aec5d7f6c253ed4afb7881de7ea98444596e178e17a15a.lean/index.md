# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Gevrey.Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b42c6d3993eb756afcffbde22bacb5f0e057649a",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b42c6d3993eb756afcffbde22bacb5f0e057649a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Defs` — import line 34; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.SmoothTransition` — import line 35; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 36; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 37; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 38; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Liouville` — import line 39; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 40; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 41; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 42; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Bounds` — import line 43; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 44; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 45; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 46; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GevreyProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/gevreyprofile--3fd896fbfd2b83b6847ce2cd.md) | 60 | `declaration-track:3fd896fbfd2b83b6847ce2cd7245103c86879f2c83d7a4761e4bead686a785da` |
| 2 | `def` | [theta](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/theta--c929f05dffa2478b64c80bb5.md) | 69 | `declaration-track:c929f05dffa2478b64c80bb589ca5f77e623bd0d8588183d55b2943e50ebe2d4` |
| 3 | `def` | [Theta](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/theta--a74875d19f60d2b4ae6d2807.md) | 72 | `declaration-track:a74875d19f60d2b4ae6d28075631cae2a024cdd384d15ef55d20e85a9810537d` |
| 4 | `def` | [rhoTwo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/rhotwo--f960ec22c20af28cf9806877.md) | 75 | `declaration-track:f960ec22c20af28cf98068774bd35015f0d048da1aae0c48adea378d80f97b5a` |
| 5 | `def` | [G](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/g--5885ee023c7932c25819171e.md) | 82 | `declaration-track:5885ee023c7932c25819171e799cc9ee71c7caacf5262637678c3120b145037b` |
| 6 | `lemma` | [G_differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/g-differentiableon--c8bbb0a8bc2589960600c704.md) | 84 | `result-track:c8bbb0a8bc2589960600c7041e1b6f965d387c98dca3dfc3fe726cfdeadcd590` |
| 7 | `lemma` | [G_analyticOnNhd](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/g-analyticonnhd--b91e9e67b485d71c613a20ec.md) | 90 | `result-track:b91e9e67b485d71c613a20ec87606640ad4bd3df850185b22afc803689daec67` |
| 8 | `lemma` | [Gn_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/gn-hasderivat--a22704176cd753f22d9abbe8.md) | 93 | `result-track:a22704176cd753f22d9abbe8959de3596514e88a69b8f1a270158a47bec67aa3` |
| 9 | `def` | [gR](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/gr--f58d81927c67cdf98b39fa13.md) | 100 | `declaration-track:f58d81927c67cdf98b39fa1360742769d4d4b0623cfc7ab124fcecae976aff47` |
| 10 | `lemma` | [gR_iteratedDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/gr-iteratedderiv--70d9299985cea66680480ab2.md) | 102 | `result-track:70d9299985cea66680480ab2de91bd261c6648d866e4b65aa019a99c0dcab843` |
| 11 | `lemma` | [expNegInvGlue_eventuallyEq_gR](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/expneginvglue-eventuallyeq-gr--239e4c6a7489a53552520fa0.md) | 115 | `result-track:239e4c6a7489a53552520fa0e82ea034c839c5a1a27f71f95c652241d895c17f` |
| 12 | `lemma` | [norm_iteratedDeriv_G_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/norm-iteratedderiv-g-le--45926c88f86372d45d6c6496.md) | 122 | `result-track:45926c88f86372d45d6c6496f32b2ca1d56ee90e8bb8931ecc6cc926241ddf5a` |
| 13 | `lemma` | [pow_mul_exp_neg_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/pow-mul-exp-neg-le--01e48482c239ddc73f63a480.md) | 154 | `result-track:01e48482c239ddc73f63a48015fb80af676c1ea159757c23f0b7c8eb7c7f68d1` |
| 14 | `lemma` | [cauchy_bound_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/cauchy-bound-le--8cd8e3916ef158c7507e6192.md) | 170 | `result-track:8cd8e3916ef158c7507e61927736749dce077d1339dd27741fcbcad88b6d8d32` |
| 15 | `theorem` | [gevrey_expNegInvGlue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/gevrey-expneginvglue--1a07dcd617ccd4e7ccee0f25.md) | 193 | `result-track:1a07dcd617ccd4e7ccee0f25958150ad95e970d0a6b100f722c49636a528cfe1` |
| 16 | `def` | [gb](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/gb--ec26258e4e9cb9ea87609a11.md) | 229 | `declaration-track:ec26258e4e9cb9ea87609a110ce32cb273f72fbf88a5829cda3435c06cc6bf59` |
| 17 | `lemma` | [gb_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/gb-zero--af487fb31a54d53634ddb72f.md) | 231 | `result-track:af487fb31a54d53634ddb72f5adc087d580bab4f97c96929f4c09b3cefdf4a3e` |
| 18 | `lemma` | [expNegInvGlue_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/expneginvglue-le-one--20be35aa32da6828b1f1ad4e.md) | 233 | `result-track:20be35aa32da6828b1f1ad4ea3b4a53036d95aef26b7e1a567fdaa1a3b26b342` |
| 19 | `lemma` | [abs_iteratedDeriv_g_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/abs-iteratedderiv-g-le--34b0b86e34db5842321bd7f3.md) | 242 | `result-track:34b0b86e34db5842321bd7f3c7d627c4642167919989aa7b1f3816d1782e71e9` |
| 20 | `lemma` | [abs_iteratedDeriv_gflip_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/abs-iteratedderiv-gflip-le--c48acc4efb6a6a93a1d3e1b2.md) | 250 | `result-track:c48acc4efb6a6a93a1d3e1b2b8a55e1e1edb633a1423f30eb4f6d06154ead4e6` |
| 21 | `lemma` | [gb_mul_gb_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/gb-mul-gb-le--600409e7196a31b8795068dc.md) | 256 | `result-track:600409e7196a31b8795068dca9457b3790e2f451bb4b322e864de61f87bebb29` |
| 22 | `lemma` | [theta_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/theta-contdiff--84b9f119689e58ac004956d9.md) | 272 | `result-track:84b9f119689e58ac004956d966c8defdcfde1676a3bd6e82ddc0f24cfb74fc6b` |
| 23 | `lemma` | [theta_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/theta-continuous--dffcb65a420a3a633254fe27.md) | 275 | `result-track:dffcb65a420a3a633254fe270b60293ac25583655b232ebbb7931b6fe563c0ce` |
| 24 | `lemma` | [theta_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/theta-nonneg--bba42961165e21d004b14caf.md) | 277 | `result-track:bba42961165e21d004b14cafacc613410cb16008ee10e45c69963b38bd7966c9` |
| 25 | `lemma` | [theta_eq_zero_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/theta-eq-zero-of-nonpos--5226a8a40feeb534162283cf.md) | 279 | `result-track:5226a8a40feeb534162283cf80d2b830510d9b77d9d9edee1b4fb7807d8f5141` |
| 26 | `lemma` | [theta_eq_zero_of_one_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/theta-eq-zero-of-one-le--cebadf318face632fe69b719.md) | 282 | `result-track:cebadf318face632fe69b719904ebfbda7d9e30676b2a16bc3adb339d48d27d4` |
| 27 | `lemma` | [theta_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/theta-pos--49ac6127a80aa65764c91b8c.md) | 285 | `result-track:49ac6127a80aa65764c91b8c74200d445b9394fa11b7d4acbdc9bb9ce912c475` |
| 28 | `lemma` | [abs_iteratedDeriv_theta_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/abs-iteratedderiv-theta-le--fe7fc852e2c1cf99d28e1c01.md) | 289 | `result-track:fe7fc852e2c1cf99d28e1c0172d8359688034618b1852c68998e8ef03189e6d8` |
| 29 | `lemma` | [Theta_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/theta-hasderivat--167aeec24c6adc952f2d9a06.md) | 319 | `result-track:167aeec24c6adc952f2d9a065087da1ffd4453354e362f1d00f701a14a8989ed` |
| 30 | `lemma` | [Theta_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/theta-deriv--6f6e5e08908d59cc011162f8.md) | 323 | `result-track:6f6e5e08908d59cc011162f8a0fdf9a9fb8760477eac9091e26db2d9a43ca1e0` |
| 31 | `lemma` | [Theta_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/theta-differentiable--a86016f698a9682cbf1b4cef.md) | 325 | `result-track:a86016f698a9682cbf1b4cefad27f0bffa9347228b331ac5eeb4c08b41bb1c85` |
| 32 | `lemma` | [Theta_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/theta-contdiff--d94f6e0bfca9214233977ad1.md) | 327 | `result-track:d94f6e0bfca9214233977ad1caeae865c3af6ca816046f39a3f78f746d290ef1` |
| 33 | `lemma` | [iteratedDeriv_succ_Theta](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/iteratedderiv-succ-theta--c0e620ca960b4c63110caa35.md) | 331 | `result-track:c0e620ca960b4c63110caa353491ab6790797bad21fbc5f1e238c84e88f57989` |
| 34 | `lemma` | [Theta_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/theta-of-nonpos--424d26d346f4f53740d148d9.md) | 334 | `result-track:424d26d346f4f53740d148d98eb9e8cc4f0ef3ac7170f8778bdb34a32dcb61ae` |
| 35 | `lemma` | [Theta_of_one_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/theta-of-one-le--e97fafa5c96768606a707cc3.md) | 341 | `result-track:e97fafa5c96768606a707cc39ca8d5fb3b14cb438973d90ea7f265696652833a` |
| 36 | `lemma` | [Theta_one_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/theta-one-pos--8e7ab8b0fdd19fd99b788101.md) | 349 | `result-track:8e7ab8b0fdd19fd99b788101d94c703d206f71a7f02d17a88fe452144f232f91` |
| 37 | `lemma` | [Theta_one_ge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/theta-one-ge--e026765119c4f057fac56a8b.md) | 354 | `result-track:e026765119c4f057fac56a8b4183231cd02728960d25b43384347640c3dacaa3` |
| 38 | `lemma` | [rhoTwo_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/rhotwo-eq--5e74febe39b3bd826e4bbb59.md) | 384 | `result-track:5e74febe39b3bd826e4bbb59c4c56d8df26359794005a87d1d4e3a328a10aded` |
| 39 | `lemma` | [rhoTwo_eq_fun](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/rhotwo-eq-fun--f0f893f9f1e17134946a4544.md) | 387 | `result-track:f0f893f9f1e17134946a45443ab374e4e9683dc1ed5dee1fe6403ac5f2bd12ec` |
| 40 | `lemma` | [rhoTwo_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/rhotwo-contdiff--dec00aae65812ca81de0cf69.md) | 389 | `result-track:dec00aae65812ca81de0cf692782d90a8bef87e0b1b4bbd18b972cf33dd18929` |
| 41 | `lemma` | [rhoTwo_taper](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/rhotwo-taper--07f2d3e4a9450f7831a85b84.md) | 392 | `result-track:07f2d3e4a9450f7831a85b8408aabe7e18d9a800f2a855db0d752e9049e482fc` |
| 42 | `lemma` | [iteratedDeriv_rhoTwo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/iteratedderiv-rhotwo--36ceb0a662c1a7a43556a204.md) | 403 | `result-track:36ceb0a662c1a7a43556a204b7045f59e9533311aacb3eb9ede85f3e0ffcc8e5` |
| 43 | `theorem` | [gevreyProfile_rhoTwo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/declarations/gevreyprofile-rhotwo--c4344e72c5d471ef4987e050.md) | 409 | `result-track:c4344e72c5d471ef4987e0501a331ad9c161c630a122d6ba133f20f87e2ba798` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
