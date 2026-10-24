# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Prod.Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67641f1ae7c95edb29cd1dd3c12408019e29783a",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67641f1ae7c95edb29cd1dd3c12408019e29783a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurableSet_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/measurableset-integrable--f00765720e5e9a6bb2aaf285.md) | 59 | `result-track:f00765720e5e9a6bb2aaf2853962e4eb0d01f3edd2d7f078e7661f171f9e4f3b` |
| 2 | `theorem` | [MeasureTheory.StronglyMeasurable.integral_prod_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/measuretheory-stronglymeasurable-integral-prod-right--923b959468d34bd9c7d175d9.md) | 71 | `result-track:923b959468d34bd9c7d175d9721b5edb4c9bee5e3fb03dd69bea2cd98d60849e` |
| 3 | `theorem` | [MeasureTheory.StronglyMeasurable.integral_prod_right'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/measuretheory-stronglymeasurable-integral-prod-right--40bada447e56cc45c88fc9a5.md) | 119 | `result-track:40bada447e56cc45c88fc9a500cad8867e3a6df2a58aa8374aedd1ffae45ceac` |
| 4 | `theorem` | [MeasureTheory.StronglyMeasurable.integral_prod_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/measuretheory-stronglymeasurable-integral-prod-left--b23a893855281376320731b1.md) | 126 | `result-track:b23a893855281376320731b1bc1322fc9284ea72228a01425c546ea498ef560a` |
| 5 | `theorem` | [MeasureTheory.StronglyMeasurable.integral_prod_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/measuretheory-stronglymeasurable-integral-prod-left--c194c00f67b047caa27ecdf2.md) | 132 | `result-track:c194c00f67b047caa27ecdf206bfe2e6f8c2089e0f8182c80a70b94a042919f5` |
| 6 | `theorem` | [integrable_measure_prodMk_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integrable-measure-prodmk-left--4e64fecfe2729f46d00cb6c5.md) | 147 | `result-track:4e64fecfe2729f46d00cb6c522ff87dea5c93cf32229fbe1aa45162de4dcde8f` |
| 7 | `theorem` | [MeasureTheory.AEStronglyMeasurable.prod_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/measuretheory-aestronglymeasurable-prod-swap--653c4014beb4178487af92d0.md) | 171 | `result-track:653c4014beb4178487af92d04fafdfd3bde0e18456470def47f868cfe42ab240` |
| 8 | `theorem` | [MeasureTheory.AEStronglyMeasurable.comp_fst](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/measuretheory-aestronglymeasurable-comp-fst--624f52ab880f5f8e21bd3da6.md) | 177 | `result-track:624f52ab880f5f8e21bd3da68bfc9ee459a7f2259c8b2fedd74cc7709f4513b3` |
| 9 | `theorem` | [MeasureTheory.AEStronglyMeasurable.comp_snd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/measuretheory-aestronglymeasurable-comp-snd--5fd57d5bcf4d2e2187b02549.md) | 181 | `result-track:5fd57d5bcf4d2e2187b02549fa5456e91718b18e957868190e9b3cc14e46384b` |
| 10 | `theorem` | [MeasureTheory.AEStronglyMeasurable.integral_prod_right'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/measuretheory-aestronglymeasurable-integral-prod-right--42193e038681d8bfe8408f94.md) | 187 | `result-track:42193e038681d8bfe8408f947235b94edd39739a76c6bc8494baf3d6240263fe` |
| 11 | `theorem` | [MeasureTheory.AEStronglyMeasurable.prodMk_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/measuretheory-aestronglymeasurable-prodmk-left--98d1221dd3b668af2fb08061.md) | 193 | `result-track:98d1221dd3b668af2fb080612beb75e2b5b41d59d8a39eac99c3dee63c4a62fc` |
| 12 | `theorem` | [integrable_swap_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integrable-swap-iff--dae06f6d4d8260230a9f7436.md) | 214 | `result-track:dae06f6d4d8260230a9f7436edfe92d8e9964a4b42a04fd326518e05f37b6b16` |
| 13 | `theorem` | [Integrable.swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integrable-swap--aa8857fdad9d17a2b1a403bb.md) | 218 | `result-track:aa8857fdad9d17a2b1a403bba87e26865f3bfc217c31206e322fd0fb7af5bf0d` |
| 14 | `theorem` | [hasFiniteIntegral_prod_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/hasfiniteintegral-prod-iff--9ec33d6d33e33c38f8e99a01.md) | 222 | `result-track:9ec33d6d33e33c38f8e99a01334e1b3994e0751d8ccf3f0fdc578ee0300ab947` |
| 15 | `theorem` | [hasFiniteIntegral_prod_iff'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/hasfiniteintegral-prod-iff--cc0c85f2bbfe2c159bed30c8.md) | 240 | `result-track:cc0c85f2bbfe2c159bed30c89392c20d44233b3781072611d1c0bb4c1c661990` |
| 16 | `theorem` | [integrable_prod_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integrable-prod-iff--60ca4cc580b493995e66f46e.md) | 257 | `result-track:60ca4cc580b493995e66f46ed7fca6bb0a2392259468862be9891c8fcca21b8a` |
| 17 | `theorem` | [integrable_prod_iff'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integrable-prod-iff--9ac265fa709279fedc6b2f46.md) | 265 | `result-track:9ac265fa709279fedc6b2f4661a4414b653f85362043da6a8a9d6a20e9d8e4b9` |
| 18 | `theorem` | [Integrable.prod_left_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integrable-prod-left-ae--88dd695b75297fe341133269.md) | 272 | `result-track:88dd695b75297fe3411332696090862a565d81b80cb4022d634aed0e33c06e3f` |
| 19 | `theorem` | [Integrable.prod_right_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integrable-prod-right-ae--07b8485a3e503ce9d24babc9.md) | 276 | `result-track:07b8485a3e503ce9d24babc93c01eb78b564a548f12532bb2d09bb9046dec4ac` |
| 20 | `theorem` | [Integrable.integral_norm_prod_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integrable-integral-norm-prod-left--88218b60a8ef337e4d4605ce.md) | 280 | `result-track:88218b60a8ef337e4d4605ce681e7ee1921f833c64a24b7e738bdf0d0bceee15` |
| 21 | `theorem` | [Integrable.integral_norm_prod_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integrable-integral-norm-prod-right--297bbc6e1c158ecc389f93c4.md) | 284 | `result-track:297bbc6e1c158ecc389f93c43e9fb5c3e2a27f9dcf25bdf2fb5ae454be428616` |
| 22 | `theorem` | [Integrable.op_fst_snd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integrable-op-fst-snd--ebe6d4fc975fd0473f85c1c8.md) | 289 | `result-track:ebe6d4fc975fd0473f85c1c86e69eda9228d32ebd370390d825b05e6369f8db7` |
| 23 | `theorem` | [Integrable.smul_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integrable-smul-prod--ccb6273c8ec9c6bdd9755608.md) | 309 | `result-track:ccb6273c8ec9c6bdd97556081c2b6d770aa719f8ff36a70c7524b2869b2b1e55` |
| 24 | `theorem` | [Integrable.mul_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integrable-mul-prod--efcefffede2b04f7d88e6b81.md) | 318 | `result-track:efcefffede2b04f7d88e6b814715969a787049efbd6c22ef8bea68b1577a7922` |
| 25 | `theorem` | [IntegrableOn.swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integrableon-swap--2a9b0c7a1e527f15691ead55.md) | 325 | `result-track:2a9b0c7a1e527f15691ead5501830ffb022ed505649307381da3c1869adad9c9` |
| 26 | `theorem` | [Integrable.integral_prod_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integrable-integral-prod-left--52d7200d708491612a7f23c7.md) | 335 | `result-track:52d7200d708491612a7f23c7c54fc6d4f5618c840e80eb2b3cb9013ac3e2b70b` |
| 27 | `theorem` | [Integrable.integral_prod_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integrable-integral-prod-right--09ee3af2cabae33e024665bb.md) | 344 | `result-track:09ee3af2cabae33e024665bb7b295c0ddf99325c33ed04453487f9288dc2e90b` |
| 28 | `theorem` | [integral_prod_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integral-prod-swap--8bd4bfc54e250352a5d94452.md) | 352 | `result-track:8bd4bfc54e250352a5d944524558f7884cbdfa0b7a8acb7e251b328c6f480507` |
| 29 | `theorem` | [setIntegral_prod_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/setintegral-prod-swap--01679000d45fc7bc73539339.md) | 356 | `result-track:01679000d45fc7bc7353933944cd35f3d1f860645c867256fe251dc86e7943e7` |
| 30 | `theorem` | [integral_fn_integral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integral-fn-integral-add--a2be75c799cc8bafd4a78008.md) | 367 | `result-track:a2be75c799cc8bafd4a78008d33ffe7e3900325dafac998ca964690bc3ae1913` |
| 31 | `theorem` | [integral_fn_integral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integral-fn-integral-sub--7447ed86dee8daf5cce47952.md) | 377 | `result-track:7447ed86dee8daf5cce479527450e0abb5865023fea4b596583d177f68b9df3f` |
| 32 | `theorem` | [lintegral_fn_integral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/lintegral-fn-integral-sub--4b71169689639896c3dc5c06.md) | 387 | `result-track:4b71169689639896c3dc5c06d103315329f5b756085b996bc5bcfed1d9dc559b` |
| 33 | `theorem` | [integral_integral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integral-integral-add--280820ac6b8caa4a47eeea18.md) | 396 | `result-track:280820ac6b8caa4a47eeea1843372255d68d3a550a9a1ac889c764bcdba32ec5` |
| 34 | `theorem` | [integral_integral_add'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integral-integral-add--1aade05c364b7cafeab8ea6d.md) | 404 | `result-track:1aade05c364b7cafeab8ea6d7ed4572d6e2f53a702cde1bcb6c929427553b470` |
| 35 | `theorem` | [integral_integral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integral-integral-sub--3c89d27a10a656fe804e4bfe.md) | 410 | `result-track:3c89d27a10a656fe804e4bfe91f1253b3d3e4edbb92870b14e6c8bf22d66a2ba` |
| 36 | `theorem` | [integral_integral_sub'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integral-integral-sub--2892fba0d1d41ce8ae4b89fc.md) | 418 | `result-track:2892fba0d1d41ce8ae4b89fca9bc8b1fbbf0033e70f2a8e9234cd2e086617e86` |
| 37 | `theorem` | [continuous_integral_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/continuous-integral-integral--efe003f374b08c5de362946e.md) | 424 | `result-track:efe003f374b08c5de362946e4da417a6bab6827c555b58031688bad39bbff521` |
| 38 | `theorem` | [integral_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integral-prod--b63381bb81ed9202a6417dd1.md) | 449 | `result-track:b63381bb81ed9202a6417dd1aa40dfed1317a64522724e4259999fc33d4a68f2` |
| 39 | `theorem` | [integral_prod_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integral-prod-symm--d6146f9c6c60258bf9c6c9f3.md) | 472 | `result-track:d6146f9c6c60258bf9c6c9f3f62e84ea4b495d6df90410bb46e91d78ad9e812d` |
| 40 | `theorem` | [integral_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integral-integral--26d40816344ecca37c9d4a29.md) | 477 | `result-track:26d40816344ecca37c9d4a2930758f19e0b3ac0774f0d50c892a295439113aff` |
| 41 | `theorem` | [integral_integral_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integral-integral-symm--30f6f11cc134b1dbdbfb05a7.md) | 482 | `result-track:30f6f11cc134b1dbdbfb05a748b617d2000c1b0f6737428718fe4c4fa67c5540` |
| 42 | `theorem` | [integral_integral_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integral-integral-swap--b68705219cdb56e172d06e86.md) | 487 | `result-track:b68705219cdb56e172d06e86e8c31f6f364b070dc820fc8c7fe577d20e3d1ecf` |
| 43 | `lemma` | [intervalIntegral_integral_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/intervalintegral-integral-swap--b48dfb6dc2b0a658f6ff42ad.md) | 492 | `result-track:b48dfb6dc2b0a658f6ff42adba0d0a06d153ce1b7c127e7f9bf63d8838c79667` |
| 44 | `theorem` | [setIntegral_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/setintegral-prod--f124c3ac1f9dfaabc0122c17.md) | 504 | `result-track:f124c3ac1f9dfaabc0122c17919a074499fe5426239b655367ff008324367049` |
| 45 | `theorem` | [integral_prod_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integral-prod-smul--c31f43af4bd4b1625d957247.md) | 510 | `result-track:c31f43af4bd4b1625d957247cb87f30bf0dfcc66c1053fff50669ebdf8d14410` |
| 46 | `theorem` | [integral_prod_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integral-prod-mul--af1757997cfe819534394b3c.md) | 521 | `result-track:af1757997cfe819534394b3ca9f85875dd4f286b112eb37fc9568eaedff04164` |
| 47 | `theorem` | [setIntegral_prod_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/setintegral-prod-mul--9dcf259fa7abfef3a3cbc48a.md) | 525 | `result-track:9dcf259fa7abfef3a3cbc48a4484060592a88691c3d2047de33252730332edd4` |
| 48 | `theorem` | [integral_fun_snd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integral-fun-snd--16be468f71a12e3ef62945d6.md) | 531 | `result-track:16be468f71a12e3ef62945d6c2d35a80d9e8e0fe827228a3cde8c74d6e2d298d` |
| 49 | `theorem` | [integral_fun_fst](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integral-fun-fst--1fbabc68eecd486c44e3f7c6.md) | 534 | `result-track:1fbabc68eecd486c44e3f7c6f4a21e6f0aba63423449d81355b76c006b469595` |
| 50 | `lemma` | [integral_integral_swap_of_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantc7c96a652f1bf718b6379f58de9bce80ee477d3be6a54e8e5aaa2fb04bf2b36f.lean/declarations/integral-integral-swap-of-hascompactsupport--ee590766b989e895c78c0127.md) | 547 | `result-track:ee590766b989e895c78c012714d16dcf378b16752d377d728220180f73353b1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
