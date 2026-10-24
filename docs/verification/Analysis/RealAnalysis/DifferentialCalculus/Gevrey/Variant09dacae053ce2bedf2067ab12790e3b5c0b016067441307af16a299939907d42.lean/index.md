# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Gevrey.Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df944f8bb21f78243c91cc7bbfdd5d03ccac1987",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df944f8bb21f78243c91cc7bbfdd5d03ccac1987`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Defs` — import line 29; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.SmoothTransition` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 32; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 33; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Liouville` — import line 34; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 35; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 36; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 37; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Bounds` — import line 38; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 39; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 40; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 41; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GevreyProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/gevreyprofile--3588ec41f707b730769c70b3.md) | 52 | `declaration-track:3588ec41f707b730769c70b3eb3b36035c0ac631d01414f04c685a4195faa082` |
| 2 | `def` | [theta](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/theta--00edb5b486a782c067475ea3.md) | 61 | `declaration-track:00edb5b486a782c067475ea3e91c986b5439839540a98acb09d76f8af3751f53` |
| 3 | `def` | [Theta](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/theta--792c970ce43547be182d040c.md) | 64 | `declaration-track:792c970ce43547be182d040c0d0a96647b73675cd9f1719b5281e569efc905e5` |
| 4 | `def` | [rhoTwo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/rhotwo--88b7ec50c0aa72a52ea13708.md) | 67 | `declaration-track:88b7ec50c0aa72a52ea137089634a6008e14d9a65d3bf8df062859fb7c58a7de` |
| 5 | `def` | [G](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/g--9083a3463de1b160544e8bb6.md) | 74 | `declaration-track:9083a3463de1b160544e8bb6516ee1d92f0b7e5f8e97f66e101dea10264fa9e2` |
| 6 | `lemma` | [G_differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/g-differentiableon--4f9cb3bf4b618d9ca13a6866.md) | 76 | `result-track:4f9cb3bf4b618d9ca13a6866f52e07cf71d121501deaeeeb76332902b30613e4` |
| 7 | `lemma` | [G_analyticOnNhd](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/g-analyticonnhd--c4fba346dc8ff6deb147671f.md) | 82 | `result-track:c4fba346dc8ff6deb147671fd3ead3121f0b63a9f569835404d2c2e3657c4ebe` |
| 8 | `lemma` | [Gn_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/gn-hasderivat--c53368f432ca340091f1ea91.md) | 85 | `result-track:c53368f432ca340091f1ea9190970e862c22294306039d153e301e43dbab01ee` |
| 9 | `def` | [gR](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/gr--6f10ea8ad87720cc9924e25b.md) | 92 | `declaration-track:6f10ea8ad87720cc9924e25b3106db36a7bf9db0bd8066e5afba1db1b48486a6` |
| 10 | `lemma` | [gR_iteratedDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/gr-iteratedderiv--50180204e577b49418f0153b.md) | 94 | `result-track:50180204e577b49418f0153b57f8e2bdb11471231c7511f3527c841722f76b66` |
| 11 | `lemma` | [expNegInvGlue_eventuallyEq_gR](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/expneginvglue-eventuallyeq-gr--39ecfaefe8b0a0c526860b66.md) | 107 | `result-track:39ecfaefe8b0a0c526860b66e86359e4c5dbf46cb6635338757877ff4c92f02c` |
| 12 | `lemma` | [norm_iteratedDeriv_G_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/norm-iteratedderiv-g-le--a18ddb617705976aca6973b3.md) | 114 | `result-track:a18ddb617705976aca6973b3ef6fbadef903f14b9eb214e156b2837f5bddabd1` |
| 13 | `lemma` | [pow_mul_exp_neg_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/pow-mul-exp-neg-le--9f54663c4bd2d2d1e8d8dfc7.md) | 146 | `result-track:9f54663c4bd2d2d1e8d8dfc7ebeff608c121527568b9450a32162285b08fd5bf` |
| 14 | `lemma` | [cauchy_bound_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/cauchy-bound-le--44cd3f8b774569045c7e39ce.md) | 162 | `result-track:44cd3f8b774569045c7e39cef429196610d2526a7c56839e903f903a61da1ba6` |
| 15 | `theorem` | [gevrey_expNegInvGlue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/gevrey-expneginvglue--7141ee2d995eae27f4e9b5ae.md) | 185 | `result-track:7141ee2d995eae27f4e9b5aeb16aa65fbab7ea61155cf9aeb83d022d41305654` |
| 16 | `def` | [gb](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/gb--757c51b68b88c103d9caed0b.md) | 221 | `declaration-track:757c51b68b88c103d9caed0b7bfd880f209e7a7daed49450247c94c50361145a` |
| 17 | `lemma` | [gb_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/gb-zero--bd36de111742d9946c2ec570.md) | 223 | `result-track:bd36de111742d9946c2ec570a2fca756802f9af83e6d67a42f54f0552441b499` |
| 18 | `lemma` | [expNegInvGlue_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/expneginvglue-le-one--42d2f3c829d97f96caeb0752.md) | 225 | `result-track:42d2f3c829d97f96caeb075285f65d5d9494f74f25d1c230dd1ea4b46f7e2b29` |
| 19 | `lemma` | [abs_iteratedDeriv_g_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/abs-iteratedderiv-g-le--3ec77b2e529efc450b2f1cf9.md) | 234 | `result-track:3ec77b2e529efc450b2f1cf9daa87616164403a894229f29de1aa1005365c157` |
| 20 | `lemma` | [abs_iteratedDeriv_gflip_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/abs-iteratedderiv-gflip-le--bc4b17ea6eb3d09b65027f5c.md) | 242 | `result-track:bc4b17ea6eb3d09b65027f5c208776f52cff989d8e9701dacb3652779f4079ab` |
| 21 | `lemma` | [gb_mul_gb_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/gb-mul-gb-le--e85d125bec38bc0cc4fb0b85.md) | 248 | `result-track:e85d125bec38bc0cc4fb0b85c5804f5e822e811e27bae6cdcf63668696705325` |
| 22 | `lemma` | [theta_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/theta-contdiff--17cd440eaecee45a759f7532.md) | 264 | `result-track:17cd440eaecee45a759f7532456daaabdbf3cca7b5b23a33386da7d2a4ea7811` |
| 23 | `lemma` | [theta_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/theta-continuous--251981513d6910579764b7a2.md) | 267 | `result-track:251981513d6910579764b7a22706f91b5d323f735ad2a15b15ade05e0479e483` |
| 24 | `lemma` | [theta_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/theta-nonneg--14ff88449ba45af4dd1ef7b7.md) | 269 | `result-track:14ff88449ba45af4dd1ef7b7ed829ccdc870b495aa575ec05edcdca844317dcc` |
| 25 | `lemma` | [theta_eq_zero_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/theta-eq-zero-of-nonpos--4167d601beedef23be17ca55.md) | 271 | `result-track:4167d601beedef23be17ca554ffe0c08e69a4df624dfff3de39736b9108066fb` |
| 26 | `lemma` | [theta_eq_zero_of_one_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/theta-eq-zero-of-one-le--ee740cd642b2a00b92d40d6f.md) | 274 | `result-track:ee740cd642b2a00b92d40d6f6ac3b8fa91ec471579ddc2e5eaf87ff8f82de506` |
| 27 | `lemma` | [theta_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/theta-pos--7451d4203b7815aa733fb8bd.md) | 277 | `result-track:7451d4203b7815aa733fb8bd8828a4e5ed525e716a9aba158ce2119f904c0a65` |
| 28 | `lemma` | [abs_iteratedDeriv_theta_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/abs-iteratedderiv-theta-le--ee25c5cb6896b331f59b7d0b.md) | 281 | `result-track:ee25c5cb6896b331f59b7d0b11134020ec7305096dc5d6a293b500f0a6915ca0` |
| 29 | `lemma` | [Theta_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/theta-hasderivat--abaad4e6c87e243165b7f670.md) | 311 | `result-track:abaad4e6c87e243165b7f670d0dcdba619de12b32bed1b598879aa1c81f99e6a` |
| 30 | `lemma` | [Theta_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/theta-deriv--1cf56f65f1e46f3efb2cbd2a.md) | 315 | `result-track:1cf56f65f1e46f3efb2cbd2aae2e71ca0c78e781d94ee342c9a69e1ba9944a7d` |
| 31 | `lemma` | [Theta_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/theta-differentiable--45b8f6a3b82a9aed5570d991.md) | 317 | `result-track:45b8f6a3b82a9aed5570d99149d2d579f13df7af227ca67e8468a18648068d67` |
| 32 | `lemma` | [Theta_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/theta-contdiff--e60118513ee11d251adaed17.md) | 319 | `result-track:e60118513ee11d251adaed176aac535866c4b5b73a14da27d7dad8a1bde3bfb6` |
| 33 | `lemma` | [iteratedDeriv_succ_Theta](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/iteratedderiv-succ-theta--1bddbb8cd2ec83be71b03cbe.md) | 323 | `result-track:1bddbb8cd2ec83be71b03cbe3bf422055e0304e9ed3ff84a8495fe01870d0ace` |
| 34 | `lemma` | [Theta_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/theta-of-nonpos--8e9a0f542417ee1b50a301e1.md) | 326 | `result-track:8e9a0f542417ee1b50a301e14e060e4d715c2237d03b7d2f79a27a573f0197fe` |
| 35 | `lemma` | [Theta_of_one_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/theta-of-one-le--318e9791ec605c15ec9d349a.md) | 333 | `result-track:318e9791ec605c15ec9d349a2fca50332341e16c529ed63d4d535d78a6dc086b` |
| 36 | `lemma` | [Theta_one_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/theta-one-pos--8d5e86b0feb7be0d5defe6c4.md) | 341 | `result-track:8d5e86b0feb7be0d5defe6c4df82460d17902ebb053077f6cb01ca49b714793e` |
| 37 | `lemma` | [Theta_one_ge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/theta-one-ge--eda121aa909a120ab29bed2e.md) | 346 | `result-track:eda121aa909a120ab29bed2ebc4c7f2b67c55692b4f839f921a679d8a5267012` |
| 38 | `lemma` | [rhoTwo_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/rhotwo-eq--e1407fb386bb4c8d791d6a28.md) | 376 | `result-track:e1407fb386bb4c8d791d6a28f42794575caf6d782463ebd07720d4b8468cf203` |
| 39 | `lemma` | [rhoTwo_eq_fun](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/rhotwo-eq-fun--9f8b6f862ebff16de34d8b58.md) | 379 | `result-track:9f8b6f862ebff16de34d8b58d2e0673af4e7e95395e5054426df43cc1a4c1c73` |
| 40 | `lemma` | [rhoTwo_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/rhotwo-contdiff--f0fece3cb2e83e6446470a13.md) | 381 | `result-track:f0fece3cb2e83e6446470a134328e9f748aee46015fd22037d6c1637e0789201` |
| 41 | `lemma` | [rhoTwo_taper](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/rhotwo-taper--761c1c207616ec23cbd922b7.md) | 384 | `result-track:761c1c207616ec23cbd922b7748b81bd6103687d1c4000516bf6b12a4a279c80` |
| 42 | `lemma` | [iteratedDeriv_rhoTwo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/iteratedderiv-rhotwo--1ad1323d81dfd181fe83335c.md) | 395 | `result-track:1ad1323d81dfd181fe83335c52c06597c09b9d5969a9bce85b6c3e2b57113ab2` |
| 43 | `theorem` | [gevreyProfile_rhoTwo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/declarations/gevreyprofile-rhotwo--615a870afa59e68fa1117d01.md) | 401 | `result-track:615a870afa59e68fa1117d01a894617a3409982856cdf8f30a045972af68685d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
