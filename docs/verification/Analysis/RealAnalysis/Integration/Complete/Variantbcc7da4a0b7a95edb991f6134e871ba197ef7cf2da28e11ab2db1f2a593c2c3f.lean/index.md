# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Complete.Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79cc2c523cfab60ab98b85956c422f658b0883de",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79cc2c523cfab60ab98b85956c422f658b0883de`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Continuity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eLpNorm'_lim_eq_lintegral_liminf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/declarations/elpnorm-lim-eq-lintegral-liminf--dc6ef36ff30c5245b768e023.md) | 31 | `result-track:dc6ef36ff30c5245b768e02322a24de1f2e7c3a1cd2d168aa398c8b0ebd05e62` |
| 2 | `theorem` | [eLpNorm'_lim_le_liminf_eLpNorm'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/declarations/elpnorm-lim-le-liminf-elpnorm--def301dade854fbc6bcf10e2.md) | 42 | `result-track:def301dade854fbc6bcf10e261314d48a275984007370fb50eb0e8b1c892bd2e` |
| 3 | `theorem` | [eLpNorm_exponent_top_lim_eq_essSup_liminf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/declarations/elpnorm-exponent-top-lim-eq-esssup-liminf--6bbcd8bab1b6b4066a4b5bc9.md) | 60 | `result-track:6bbcd8bab1b6b4066a4b5bc9853464fb0922de0578aa860e4a8824ea60967f37` |
| 4 | `theorem` | [eLpNorm_exponent_top_lim_le_liminf_eLpNorm_exponent_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/declarations/elpnorm-exponent-top-lim-le-liminf-elpnorm-exponent-top--da40eeb32cebadd1e56886bb.md) | 69 | `result-track:da40eeb32cebadd1e56886bbf33d044e7f8143721240bc6fb7329f4813d55e31` |
| 5 | `theorem` | [eLpNorm_lim_le_liminf_eLpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/declarations/elpnorm-lim-le-liminf-elpnorm--19645429876241cc75227c7c.md) | 77 | `result-track:19645429876241cc75227c7c22acc2619dbee3df59b74b8e83262eca0fd65683` |
| 6 | `theorem` | [tendsto_Lp_iff_tendsto_eLpNorm'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/declarations/tendsto-lp-iff-tendsto-elpnorm--75d5c5c1fff967eb1b432647.md) | 93 | `result-track:75d5c5c1fff967eb1b432647f9e9e5bd2d7595c41862862b61c9841f6fca319c` |
| 7 | `theorem` | [tendsto_Lp_iff_tendsto_eLpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/declarations/tendsto-lp-iff-tendsto-elpnorm--cc6c2fd3cecbf58fbf94dfb0.md) | 105 | `result-track:cc6c2fd3cecbf58fbf94dfb0f2ac851231bb1135e0af294901d9fb1fdd888aa1` |
| 8 | `theorem` | [tendsto_Lp_iff_tendsto_eLpNorm''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/declarations/tendsto-lp-iff-tendsto-elpnorm--c38b98f2bcaf9f085cb03f8b.md) | 119 | `result-track:c38b98f2bcaf9f085cb03f8b075ad03bf9a97e9c805958238f176af953344c42` |
| 9 | `theorem` | [tendsto_Lp_of_tendsto_eLpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/declarations/tendsto-lp-of-tendsto-elpnorm--1deb29d723eb5679eb963a76.md) | 135 | `result-track:1deb29d723eb5679eb963a76c43c8e3c524bef04d0b938753789cf38ea104d0c` |
| 10 | `theorem` | [cauchySeq_Lp_iff_cauchySeq_eLpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/declarations/cauchyseq-lp-iff-cauchyseq-elpnorm--be9f2435899523154ab8b0f9.md) | 144 | `result-track:be9f2435899523154ab8b0f96e0f101cd43428c1dc3f282877c2bed186b2cf7e` |
| 11 | `theorem` | [completeSpace_lp_of_cauchy_complete_eLpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/declarations/completespace-lp-of-cauchy-complete-elpnorm--e00506a394b49ed6f180d6a3.md) | 155 | `result-track:e00506a394b49ed6f180d6a3404f79281d15f17529a2cea28fd06d2ad4b3b95a` |
| 12 | `theorem` | [eLpNorm'_sum_norm_sub_le_tsum_of_cauchy_eLpNorm'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/declarations/elpnorm-sum-norm-sub-le-tsum-of-cauchy-elpnorm--61e6f030ee889a92d01cbb4a.md) | 195 | `result-track:61e6f030ee889a92d01cbb4ae96543b9b22433a45252c7763e5a6e454e7e8a25` |
| 13 | `theorem` | [lintegral_rpow_sum_enorm_sub_le_rpow_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/declarations/lintegral-rpow-sum-enorm-sub-le-rpow-tsum--0d2e668c7092771b85ddf2dd.md) | 211 | `result-track:0d2e668c7092771b85ddf2ddb32eacf5f0d38640d48fc0ed07155b80a7df4112` |
| 14 | `theorem` | [lintegral_rpow_tsum_coe_enorm_sub_le_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/declarations/lintegral-rpow-tsum-coe-enorm-sub-le-tsum--d84a1b2c22a6c0b24b594179.md) | 230 | `result-track:d84a1b2c22a6c0b24b594179aacf0ca7dda6e918d9ddd8d7e1061dc4d6425852` |
| 15 | `theorem` | [tsum_enorm_sub_ae_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/declarations/tsum-enorm-sub-ae-lt-top--316864b5a6c3d7d7578c7b4a.md) | 255 | `result-track:316864b5a6c3d7d7578c7b4a1ee790b527fe8efc48cf3d097b514b73bd5988a9` |
| 16 | `theorem` | [ae_tendsto_of_cauchy_eLpNorm'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/declarations/ae-tendsto-of-cauchy-elpnorm--a129f4fce116cbb299ce31a1.md) | 271 | `result-track:a129f4fce116cbb299ce31a1f33b151b21b570949e106ba8d762165e729e1774` |
| 17 | `theorem` | [ae_tendsto_of_cauchy_eLpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/declarations/ae-tendsto-of-cauchy-elpnorm--4b5b471386e1473e907e81ad.md) | 308 | `result-track:4b5b471386e1473e907e81adc0ce5fe410da31eed41040e4710f512aaa47da65` |
| 18 | `theorem` | [cauchy_tendsto_of_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/declarations/cauchy-tendsto-of-tendsto--c3f3ea9bc291e5cad2f9f683.md) | 339 | `result-track:c3f3ea9bc291e5cad2f9f6838a79762e7b04416a4870533dd6c88c08899a32f1` |
| 19 | `theorem` | [memLp_of_cauchy_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/declarations/memlp-of-cauchy-tendsto--71b3c279fdcda9275b3d574d.md) | 362 | `result-track:71b3c279fdcda9275b3d574d545f9da41dd1e80e3788986a8fcb4f9b968117db` |
| 20 | `theorem` | [cauchy_complete_eLpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/declarations/cauchy-complete-elpnorm--a767bd8f594b6eb86c956fc9.md) | 382 | `result-track:a767bd8f594b6eb86c956fc92b51301292fb7d17871a1125d4039ce915b45506` |
| 21 | `instance` | [instCompleteSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/declarations/instcompletespace--a9d3e6d8ff48e99b2f4310c3.md) | 401 | `declaration-track:a9d3e6d8ff48e99b2f4310c3dc8cd0b71b07b70e97f2567a0cb7fd45248b4a6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
