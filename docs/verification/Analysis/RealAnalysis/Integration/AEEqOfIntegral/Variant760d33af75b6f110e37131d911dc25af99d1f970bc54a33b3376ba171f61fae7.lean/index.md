# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AEEqOfIntegral.Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73607fe8a34e63c62707f8d1cd49d5970d967941",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73607fe8a34e63c62707f8d1cd49d5970d967941`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Dual` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Lp` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ae_eq_zero_of_forall_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/ae-eq-zero-of-forall-inner--7dba4a87a33e303006640253.md) | 65 | `result-track:7dba4a87a33e303006640253b39483efc55614053664e347d4268f006c79ba37` |
| 2 | `theorem` | [ae_eq_zero_of_forall_dual_of_isSeparable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/ae-eq-zero-of-forall-dual-of-isseparable--1254dd3112397bcf383bfae1.md) | 83 | `result-track:1254dd3112397bcf383bfae18a789b6056b3ea2c4a9a8a8d6536a4c36655f297` |
| 3 | `theorem` | [ae_eq_zero_of_forall_dual](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/ae-eq-zero-of-forall-dual--502e11a78f5b11ba549bd318.md) | 118 | `result-track:502e11a78f5b11ba549bd318c719742a734ae794330b34843da177ebff648501` |
| 4 | `theorem` | [ae_const_le_iff_forall_lt_measure_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/ae-const-le-iff-forall-lt-measure-zero--65ab1714a1f3168416658a82.md) | 134 | `result-track:65ab1714a1f3168416658a82258a610a30326704e8baa1d7ed71f579545a0a24` |
| 5 | `theorem` | [ae_le_of_forall_set_lintegral_le_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/ae-le-of-forall-set-lintegral-le-of-sigmafinite--7d8d9e90b035c4d52460b77c.md) | 173 | `result-track:7d8d9e90b035c4d52460b77c4eb9710e292c7e8a67b41edf345fcd635f849f66` |
| 6 | `theorem` | [ae_eq_of_forall_set_lintegral_eq_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/ae-eq-of-forall-set-lintegral-eq-of-sigmafinite--1ff1a94db670c73e733de837.md) | 233 | `result-track:1ff1a94db670c73e733de837581e4188afc40a940e0bc3014908454079bbf1b5` |
| 7 | `theorem` | [ae_nonneg_of_forall_set_integral_nonneg_of_stronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/ae-nonneg-of-forall-set-integral-nonneg-of-stronglymeasurable--0b5cbc473485e902d662c200.md) | 250 | `result-track:0b5cbc473485e902d662c200b95154c4753bd771d9f1b09fa97100cde6178df3` |
| 8 | `theorem` | [ae_nonneg_of_forall_set_integral_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/ae-nonneg-of-forall-set-integral-nonneg--1ba339a0027e429f3e2aa35f.md) | 289 | `result-track:1ba339a0027e429f3e2aa35f6ddd7e21010f2b87c6462d9c47d33b66145a07f3` |
| 9 | `theorem` | [ae_le_of_forall_set_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/ae-le-of-forall-set-integral-le--003c4d47b6463bc9421a09c5.md) | 303 | `result-track:003c4d47b6463bc9421a09c5c28804ca409e3b18210e2a65b0cef2d314cb6513` |
| 10 | `theorem` | [ae_nonneg_restrict_of_forall_set_integral_nonneg_inter](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/ae-nonneg-restrict-of-forall-set-integral-nonneg-inter--98ce290b73a296ebaa10b213.md) | 312 | `result-track:98ce290b73a296ebaa10b213a6442a7151b95a7cfbda543edebe71ebe90ece6c` |
| 11 | `theorem` | [ae_nonneg_of_forall_set_integral_nonneg_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/ae-nonneg-of-forall-set-integral-nonneg-of-sigmafinite--0f58d1a5a7585e17c541b0b1.md) | 322 | `result-track:0f58d1a5a7585e17c541b0b1eb4e6c41e98670d5d580787e1a45e39f57bf8a2b` |
| 12 | `theorem` | [AEFinStronglyMeasurable.ae_nonneg_of_forall_set_integral_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/aefinstronglymeasurable-ae-nonneg-of-forall-set-integral-nonneg--d71ed3e77e52e229bcd263f9.md) | 334 | `result-track:d71ed3e77e52e229bcd263f9cb6f99e7353a739089567a85aba2a3663bfec876` |
| 13 | `theorem` | [ae_nonneg_restrict_of_forall_set_integral_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/ae-nonneg-restrict-of-forall-set-integral-nonneg--82132157de327e4d737cbb25.md) | 352 | `result-track:82132157de327e4d737cbb256df0e2b522b4ae4e2b14cb68522f9466708481da` |
| 14 | `theorem` | [ae_eq_zero_restrict_of_forall_set_integral_eq_zero_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/ae-eq-zero-restrict-of-forall-set-integral-eq-zero-real--e7f204539a29a79eb6ee490f.md) | 363 | `result-track:e7f204539a29a79eb6ee490f2cc86e878bd4c55bdb4cc35d9595c2c9e52ad0f6` |
| 15 | `theorem` | [ae_eq_zero_restrict_of_forall_set_integral_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/ae-eq-zero-restrict-of-forall-set-integral-eq-zero--bbf16eb92f9183c3d2ce513b.md) | 387 | `result-track:bbf16eb92f9183c3d2ce513b38a97405b575e3735eda09d84b453a9941241aa6` |
| 16 | `theorem` | [ae_eq_restrict_of_forall_set_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/ae-eq-restrict-of-forall-set-integral-eq--3743dd751c7cc1d8ef953b1f.md) | 402 | `result-track:3743dd751c7cc1d8ef953b1fc5b9bef11e00c2e16764bf0f4cbab713b0e92d0b` |
| 17 | `theorem` | [ae_eq_zero_of_forall_set_integral_eq_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/ae-eq-zero-of-forall-set-integral-eq-of-sigmafinite--9443c8427e833dddd8893bd2.md) | 417 | `result-track:9443c8427e833dddd8893bd2bdad59b32d72b6e8d423a74db2b66c96f99f35a9` |
| 18 | `theorem` | [ae_eq_of_forall_set_integral_eq_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/ae-eq-of-forall-set-integral-eq-of-sigmafinite--f453d36b1ffcc43bed49f32d.md) | 431 | `result-track:f453d36b1ffcc43bed49f32d64f6c11e4693e8223d067abc6de36c7f6ed4a5fd` |
| 19 | `theorem` | [AEFinStronglyMeasurable.ae_eq_zero_of_forall_set_integral_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/aefinstronglymeasurable-ae-eq-zero-of-forall-set-integral-eq-zero--7d68bd5d45168377db8392ce.md) | 446 | `result-track:7d68bd5d45168377db8392ceeb635ff532e1e621e2134cb874247fcafe6ac7c1` |
| 20 | `theorem` | [AEFinStronglyMeasurable.ae_eq_of_forall_set_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/aefinstronglymeasurable-ae-eq-of-forall-set-integral-eq--300417cc1d1a8b979355458d.md) | 465 | `result-track:300417cc1d1a8b979355458d493b9346b25a61719dbbb955a7d75f47571116ba` |
| 21 | `theorem` | [Lp.ae_eq_zero_of_forall_set_integral_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/lp-ae-eq-zero-of-forall-set-integral-eq-zero--1740437211eedf54a1eb44be.md) | 480 | `result-track:1740437211eedf54a1eb44beaaf2dffb848401fa1383928e0bebd9fb17c266b5` |
| 22 | `theorem` | [Lp.ae_eq_of_forall_set_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/lp-ae-eq-of-forall-set-integral-eq--9e2ad05a7b8894ee46dcb4b6.md) | 488 | `result-track:9e2ad05a7b8894ee46dcb4b6170243681e064a305ce9df4ec94713881263950f` |
| 23 | `theorem` | [ae_eq_zero_of_forall_set_integral_eq_of_finStronglyMeasurable_trim](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/ae-eq-zero-of-forall-set-integral-eq-of-finstronglymeasurable-trim--25744dfc10e71a6416cfe236.md) | 499 | `result-track:25744dfc10e71a6416cfe23622fe59352d50fc1fcb771bc464aa8c52b6696e9c` |
| 24 | `theorem` | [Integrable.ae_eq_zero_of_forall_set_integral_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/integrable-ae-eq-zero-of-forall-set-integral-eq-zero--5f4450223e937faf16a78e3e.md) | 528 | `result-track:5f4450223e937faf16a78e3ecf883434d308efea780bf9baedd70d45e6cd930e` |
| 25 | `theorem` | [Integrable.ae_eq_of_forall_set_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/integrable-ae-eq-of-forall-set-integral-eq--a7df7f5a9a5040ea75c87e42.md) | 541 | `result-track:a7df7f5a9a5040ea75c87e42ddb9627041553b08dcc99a24c938f1afc0cddcb9` |
| 26 | `lemma` | [ae_eq_zero_of_forall_set_integral_isClosed_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/ae-eq-zero-of-forall-set-integral-isclosed-eq-zero--fe2be265e25e840bb1994e08.md) | 557 | `result-track:fe2be265e25e840bb1994e08a1bfde7986f912d7b3c828852f322301dc95bd0c` |
| 27 | `lemma` | [ae_eq_zero_of_forall_set_integral_isCompact_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/ae-eq-zero-of-forall-set-integral-iscompact-eq-zero--dc29ed152e48864b56382836.md) | 576 | `result-track:dc29ed152e48864b563828365c5f203fd8d6738e65bdf9c89b658e4b63f23d0b` |
| 28 | `lemma` | [ae_eq_zero_of_forall_set_integral_isCompact_eq_zero'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/ae-eq-zero-of-forall-set-integral-iscompact-eq-zero--809fade6f81ee386f2c7d346.md) | 598 | `result-track:809fade6f81ee386f2c7d3467e2b84cedb5af174308a27ad20289411c283a213` |
| 29 | `theorem` | [AeMeasurable.ae_eq_of_forall_set_lintegral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/declarations/aemeasurable-ae-eq-of-forall-set-lintegral-eq--bc90e8c2fc4368a03e471fa4.md) | 614 | `result-track:bc90e8c2fc4368a03e471fa493f91d6389b2afb7081b7fe740a3450296b7d4d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
