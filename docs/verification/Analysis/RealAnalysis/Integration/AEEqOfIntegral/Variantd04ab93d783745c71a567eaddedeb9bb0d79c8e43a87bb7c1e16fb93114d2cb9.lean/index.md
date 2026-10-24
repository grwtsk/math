# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AEEqOfIntegral.Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab3b390a490889e5774dd39e424e93e44e54c2f7",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab3b390a490889e5774dd39e424e93e44e54c2f7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Dual` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Lp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ae_eq_zero_of_forall_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/ae-eq-zero-of-forall-inner--5ab19d27e2830898d0b4d9e5.md) | 57 | `result-track:5ab19d27e2830898d0b4d9e55780d46623f5f95f8aa0c1eb9960fe88c78d537b` |
| 2 | `theorem` | [ae_eq_zero_of_forall_dual_of_isSeparable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/ae-eq-zero-of-forall-dual-of-isseparable--f1771679f651a4aaf97e4f3a.md) | 75 | `result-track:f1771679f651a4aaf97e4f3a3d2c4012b0d580e966c757bd748c1a0d37c83634` |
| 3 | `theorem` | [ae_eq_zero_of_forall_dual](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/ae-eq-zero-of-forall-dual--451098942a6d77e1d2cdb55d.md) | 110 | `result-track:451098942a6d77e1d2cdb55dd964f5a58999a3d52968c9f63115d3a24f76f1f8` |
| 4 | `theorem` | [ae_const_le_iff_forall_lt_measure_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/ae-const-le-iff-forall-lt-measure-zero--e794c808fe6df2f63b814ba9.md) | 126 | `result-track:e794c808fe6df2f63b814ba902132c8f6c1c754997965f8228d98c2262d4c018` |
| 5 | `theorem` | [ae_le_of_forall_set_lintegral_le_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/ae-le-of-forall-set-lintegral-le-of-sigmafinite--775b4c3ce6f3d0f85cdef99e.md) | 165 | `result-track:775b4c3ce6f3d0f85cdef99e10a59de0e5bc3f707efe87dd02246ce51fc9f43b` |
| 6 | `theorem` | [ae_eq_of_forall_set_lintegral_eq_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/ae-eq-of-forall-set-lintegral-eq-of-sigmafinite--d415bb7795b50d56b0fce51e.md) | 225 | `result-track:d415bb7795b50d56b0fce51ec0f1dc669b891b62575e007a7da8fe680aad1601` |
| 7 | `theorem` | [ae_nonneg_of_forall_set_integral_nonneg_of_stronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/ae-nonneg-of-forall-set-integral-nonneg-of-stronglymeasurable--fd7a10ff8246e485cac24ea4.md) | 242 | `result-track:fd7a10ff8246e485cac24ea4288641efcfa1cc11d237b96f84f869a19232052e` |
| 8 | `theorem` | [ae_nonneg_of_forall_set_integral_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/ae-nonneg-of-forall-set-integral-nonneg--2580b8bd3d49292a80e8e565.md) | 281 | `result-track:2580b8bd3d49292a80e8e5658a04e3b50e35ac24af745dcc13ad44d423a62fa3` |
| 9 | `theorem` | [ae_le_of_forall_set_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/ae-le-of-forall-set-integral-le--4bc0037c7ca4a8745fafb998.md) | 295 | `result-track:4bc0037c7ca4a8745fafb9989681ccc387df2d8172e3bc5a51df406818a9cd84` |
| 10 | `theorem` | [ae_nonneg_restrict_of_forall_set_integral_nonneg_inter](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/ae-nonneg-restrict-of-forall-set-integral-nonneg-inter--c2e888e9c1aab61b7744dac0.md) | 304 | `result-track:c2e888e9c1aab61b7744dac06b3820711103e0ceb755fe8942861dd9bff80c1a` |
| 11 | `theorem` | [ae_nonneg_of_forall_set_integral_nonneg_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/ae-nonneg-of-forall-set-integral-nonneg-of-sigmafinite--f6ce93ab6da31ed3f4bdc571.md) | 314 | `result-track:f6ce93ab6da31ed3f4bdc571c84437f358c87556f072b5eba29045f982926622` |
| 12 | `theorem` | [AEFinStronglyMeasurable.ae_nonneg_of_forall_set_integral_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/aefinstronglymeasurable-ae-nonneg-of-forall-set-integral-nonneg--ad0057c71219a7aa6f3c5773.md) | 326 | `result-track:ad0057c71219a7aa6f3c57737e7a6c06d84e9e2f8b274b70fb35ff92bce5c284` |
| 13 | `theorem` | [ae_nonneg_restrict_of_forall_set_integral_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/ae-nonneg-restrict-of-forall-set-integral-nonneg--ae0488d7de973349b7f367b4.md) | 344 | `result-track:ae0488d7de973349b7f367b44b501557cce11d8cb076c1e8a1d2449a28b955f9` |
| 14 | `theorem` | [ae_eq_zero_restrict_of_forall_set_integral_eq_zero_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/ae-eq-zero-restrict-of-forall-set-integral-eq-zero-real--d774905823b3f89748009dfd.md) | 355 | `result-track:d774905823b3f89748009dfd8e825192b0326de1aa07f5d6e91942f0d0e4ac89` |
| 15 | `theorem` | [ae_eq_zero_restrict_of_forall_set_integral_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/ae-eq-zero-restrict-of-forall-set-integral-eq-zero--04750bc8c080d54a3bac38ce.md) | 379 | `result-track:04750bc8c080d54a3bac38ce04ec9d1170a5f0152128cbf094cc721707c4b358` |
| 16 | `theorem` | [ae_eq_restrict_of_forall_set_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/ae-eq-restrict-of-forall-set-integral-eq--7d72fe3e970878051943e00a.md) | 394 | `result-track:7d72fe3e970878051943e00ad2e138bba3d2ef8ef2ac343a0243372b71a24c6a` |
| 17 | `theorem` | [ae_eq_zero_of_forall_set_integral_eq_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/ae-eq-zero-of-forall-set-integral-eq-of-sigmafinite--b747983bae517039e5773071.md) | 409 | `result-track:b747983bae517039e57730713bef3870fded482f0e210ff31b577fa064c0cb4c` |
| 18 | `theorem` | [ae_eq_of_forall_set_integral_eq_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/ae-eq-of-forall-set-integral-eq-of-sigmafinite--68fe81f2d3456c72aced5699.md) | 423 | `result-track:68fe81f2d3456c72aced56996e3c5e9ab3e59574b9c55c81983b4b0eb4ee5f0e` |
| 19 | `theorem` | [AEFinStronglyMeasurable.ae_eq_zero_of_forall_set_integral_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/aefinstronglymeasurable-ae-eq-zero-of-forall-set-integral-eq-zero--415e6824e4d4711fcee096d7.md) | 438 | `result-track:415e6824e4d4711fcee096d70602a06407223fd774cf6ba43315d657e9fcb1ba` |
| 20 | `theorem` | [AEFinStronglyMeasurable.ae_eq_of_forall_set_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/aefinstronglymeasurable-ae-eq-of-forall-set-integral-eq--a76211c312028620ec0421f3.md) | 457 | `result-track:a76211c312028620ec0421f3ec163f13918fd46832d6aa8884985824e89b3654` |
| 21 | `theorem` | [Lp.ae_eq_zero_of_forall_set_integral_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/lp-ae-eq-zero-of-forall-set-integral-eq-zero--dc7a7ead57fa84c687d0a6c7.md) | 472 | `result-track:dc7a7ead57fa84c687d0a6c7fb1fde9b2d4d9a8856d9ee17227b41b45da90ffd` |
| 22 | `theorem` | [Lp.ae_eq_of_forall_set_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/lp-ae-eq-of-forall-set-integral-eq--5c56e1c270e832eda546806b.md) | 480 | `result-track:5c56e1c270e832eda546806b10d911f4ddc579edee55b9a715efc9ef8167a059` |
| 23 | `theorem` | [ae_eq_zero_of_forall_set_integral_eq_of_finStronglyMeasurable_trim](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/ae-eq-zero-of-forall-set-integral-eq-of-finstronglymeasurable-trim--7dd844922fcf4795f88a9364.md) | 491 | `result-track:7dd844922fcf4795f88a9364735a27c9e6ed94904c219a9a792e41d2d596b793` |
| 24 | `theorem` | [Integrable.ae_eq_zero_of_forall_set_integral_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/integrable-ae-eq-zero-of-forall-set-integral-eq-zero--bc4ff149877a133a97567d20.md) | 520 | `result-track:bc4ff149877a133a97567d2022320f7a6039f3a3c404ff46269ce4e8be750ff6` |
| 25 | `theorem` | [Integrable.ae_eq_of_forall_set_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/integrable-ae-eq-of-forall-set-integral-eq--13a2b907079b9e61329daf51.md) | 533 | `result-track:13a2b907079b9e61329daf513a51aedabc94aa45325c40b15f677554ab32ef85` |
| 26 | `lemma` | [ae_eq_zero_of_forall_set_integral_isClosed_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/ae-eq-zero-of-forall-set-integral-isclosed-eq-zero--474775d23f81dad3595720b9.md) | 549 | `result-track:474775d23f81dad3595720b97b792050fa79a6e6df1369205896815eca6ea68e` |
| 27 | `lemma` | [ae_eq_zero_of_forall_set_integral_isCompact_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/ae-eq-zero-of-forall-set-integral-iscompact-eq-zero--0cc7939739e02985de0bb1b3.md) | 568 | `result-track:0cc7939739e02985de0bb1b3c64e4d2db71b707a2d2a808360a025a2d5a111c2` |
| 28 | `lemma` | [ae_eq_zero_of_forall_set_integral_isCompact_eq_zero'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/ae-eq-zero-of-forall-set-integral-iscompact-eq-zero--4493b49d8402d8df6fe93f13.md) | 590 | `result-track:4493b49d8402d8df6fe93f133aa863697e6a5cb31826d689c36920eaf49f62d5` |
| 29 | `theorem` | [AeMeasurable.ae_eq_of_forall_set_lintegral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/declarations/aemeasurable-ae-eq-of-forall-set-lintegral-eq--07f346054ea3e2cada5f2c9e.md) | 606 | `result-track:07f346054ea3e2cada5f2c9ed1f0b667171ae6c52160a8fac53092c1f969df66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
