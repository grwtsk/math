# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.StrongLaw.Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ddcf1107b0499008db6ae482ac58dbc3c446b02",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ddcf1107b0499008db6ae482ac58dbc3c446b02`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.IdentDistrib` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.FloorPow` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.SpecificAsymptotics` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/macro-rules--5942fba9a0fc91f2dc369aff.md) | 56 | `declaration-track:5942fba9a0fc91f2dc369aff23413cea68cf04eebbad755280795c7028767d11` |
| 2 | `def` | [truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/truncation--6fb50142643a02d8f91371d0.md) | 74 | `declaration-track:6fb50142643a02d8f91371d0ad74604729a04bd7ea176f643f4fd6a5dc88a246` |
| 3 | `theorem` | [_root_.MeasureTheory.AEStronglyMeasurable.truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/root-measuretheory-aestronglymeasurable-truncation--cd21d782d6ae89acef26f6c8.md) | 80 | `result-track:cd21d782d6ae89acef26f6c891c325e980333feaba5d66d40ab85c3288b160f4` |
| 4 | `theorem` | [abs_truncation_le_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/abs-truncation-le-bound--5dc75ad1694ddfe504e671eb.md) | 86 | `result-track:5dc75ad1694ddfe504e671ebee03aa947f0c776ff6fca68c67a1dffd01bf98f3` |
| 5 | `theorem` | [truncation_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/truncation-zero--b9fa11f27b338f7436382588.md) | 94 | `result-track:b9fa11f27b338f7436382588bc14f9445c1dc45291d5cd3c00f18b6ff94356c2` |
| 6 | `theorem` | [abs_truncation_le_abs_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/abs-truncation-le-abs-self--8e0e1b0bb905732d5f825f22.md) | 97 | `result-track:8e0e1b0bb905732d5f825f22c57af2d6f08b7f2668fca6b167c30b6632a1393b` |
| 7 | `theorem` | [truncation_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/truncation-eq-self--54fccd0bd3d2668b8a1461b9.md) | 104 | `result-track:54fccd0bd3d2668b8a1461b9c2dceb055d6c055c35a59835f1e300fd290bd66c` |
| 8 | `theorem` | [truncation_eq_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/truncation-eq-of-nonneg--efae34267f1266cb67da274c.md) | 112 | `result-track:efae34267f1266cb67da274cc40a043da4ca9e26f95af53b4c0fe9c81aee00e5` |
| 9 | `theorem` | [truncation_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/truncation-nonneg--a284ad1bdc752009322b7686.md) | 124 | `result-track:a284ad1bdc752009322b76869bbdd6142a48e7cb5e65b28269cf69f4b97e6069` |
| 10 | `theorem` | [_root_.MeasureTheory.AEStronglyMeasurable.memℒp_truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/root-measuretheory-aestronglymeasurable-mem-p-truncation--d7b4a37103ee96ecec9d361d.md) | 128 | `result-track:d7b4a37103ee96ecec9d361d959b4efad4ee0d88240797312c22bc4942e3dac4` |
| 11 | `theorem` | [_root_.MeasureTheory.AEStronglyMeasurable.integrable_truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/root-measuretheory-aestronglymeasurable-integrable-truncation--5b0a08556f29e43469c4298d.md) | 133 | `result-track:5b0a08556f29e43469c4298d598643677a166e157417a1c79dee04f7daafda97` |
| 12 | `theorem` | [moment_truncation_eq_intervalIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/moment-truncation-eq-intervalintegral--b7d8394ce1c808c2bfac9114.md) | 138 | `result-track:b7d8394ce1c808c2bfac91148d04378e7a191811365bf0a7b7f9d9c0d718dbb8` |
| 13 | `theorem` | [moment_truncation_eq_intervalIntegral_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/moment-truncation-eq-intervalintegral-of-nonneg--954479ae078e4aff8bf83508.md) | 149 | `result-track:954479ae078e4aff8bf83508dd503bfde79eaf467f03db343695e7e9360e6968` |
| 14 | `theorem` | [integral_truncation_eq_intervalIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/integral-truncation-eq-intervalintegral--5f84e92502f9ecab939963d3.md) | 176 | `result-track:5f84e92502f9ecab939963d371914ee97d940712c80a1477db326d281985fc0c` |
| 15 | `theorem` | [integral_truncation_eq_intervalIntegral_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/integral-truncation-eq-intervalintegral-of-nonneg--0f9d5e3ac02c9618277469b4.md) | 181 | `result-track:0f9d5e3ac02c9618277469b475c94dceecde166b4077159de94b29998c40a39e` |
| 16 | `theorem` | [integral_truncation_le_integral_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/integral-truncation-le-integral-of-nonneg--6e5aceae9914737644bb2d9d.md) | 186 | `result-track:6e5aceae9914737644bb2d9db7fd633c75fdea38303848c29bb14a90e754600a` |
| 17 | `theorem` | [tendsto_integral_truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/tendsto-integral-truncation--2fbfe0966b56c5f43388a8c3.md) | 199 | `result-track:2fbfe0966b56c5f43388a8c33c95c99afa6938d338c72798ef4d0d3f3f3720a2` |
| 18 | `theorem` | [IdentDistrib.truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/identdistrib-truncation--1cff46e327c7ea9b0301b478.md) | 214 | `result-track:1cff46e327c7ea9b0301b478bdd9fc37018cdefd7ef72fb52b72ffde8cb49a6f` |
| 19 | `theorem` | [sum_prob_mem_Ioc_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/sum-prob-mem-ioc-le--8e3664e84ca9b5473a09ad63.md) | 228 | `result-track:8e3664e84ca9b5473a09ad6389a213dec9c607841dc6ab4f34af91946c3a71f5` |
| 20 | `theorem` | [tsum_prob_mem_Ioi_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/tsum-prob-mem-ioi-lt-top--3804d0acc1d6a4075aae03b8.md) | 309 | `result-track:3804d0acc1d6a4075aae03b88454c01ab92af8b1386b7d6e82b828c5d184da45` |
| 21 | `theorem` | [sum_variance_truncation_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/sum-variance-truncation-le--05dfd93c97f90f72b15045fc.md) | 334 | `result-track:05dfd93c97f90f72b15045fc7534f8db8fdb2537f5c3b57ce1214d8ebc0d2a33` |
| 22 | `theorem` | [strong_law_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/strong-law-aux1--09a4826d84501b8b49af621c.md) | 411 | `result-track:09a4826d84501b8b49af621c106f3b21d1505d14139b67ac89c56ecbf9c33ab5` |
| 23 | `theorem` | [strong_law_aux2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/strong-law-aux2--84abe37b07603837ac344eab.md) | 523 | `result-track:84abe37b07603837ac344eabbaafed34603862653734eec09ab8cec8b271926a` |
| 24 | `theorem` | [strong_law_aux3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/strong-law-aux3--e2ece11a23d2c1b540b5cafc.md) | 540 | `result-track:e2ece11a23d2c1b540b5cafcc684480938b171ed4c6d2ea576868f5de8a9be19` |
| 25 | `theorem` | [strong_law_aux4](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/strong-law-aux4--8c3de84d045cb6f5584a67fe.md) | 557 | `result-track:8c3de84d045cb6f5584a67fef1bdfd2602a81d62dd8ac11c49ed1dbb990ded68` |
| 26 | `theorem` | [strong_law_aux5](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/strong-law-aux5--729c5c59ee2a273d2be75603.md) | 571 | `result-track:729c5c59ee2a273d2be75603200be1df084cd0bbf6810968cf4cf700855b8dc2` |
| 27 | `theorem` | [strong_law_aux6](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/strong-law-aux6--a402d71a5e672c2db4cf2277.md) | 599 | `result-track:a402d71a5e672c2db4cf2277970b93077b2b24f8a1dd6c2d880f5c5e34d2adfa` |
| 28 | `theorem` | [strong_law_aux7](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/strong-law-aux7--56d1f58d603c1227b5088d43.md) | 623 | `result-track:56d1f58d603c1227b5088d4395b9e4252e6e8c89f61072e812a381e19d44e499` |
| 29 | `theorem` | [strong_law_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/strong-law-ae--f131643c0cf7101576e1b28f.md) | 644 | `result-track:f131643c0cf7101576e1b28f652a442b1d71aea3ad94fe1b6f4ffe118abcaf9c` |
| 30 | `theorem` | [strong_law_Lp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/declarations/strong-law-lp--04d0efbfd235ad6496e9308e.md) | 673 | `result-track:04d0efbfd235ad6496e9308eb9d9e5fc9626cbf46a69b761172ebe5e6cfacf90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
