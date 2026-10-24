# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FixedSourceKernel.Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a98adaf75ee042dc6a7e5f7abf9ec9218d351b29",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a98adaf75ee042dc6a7e5f7abf9ec9218d351b29`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SamplingError` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.InnerPrimitiveTransport` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logSample](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/logsample--3fb0a350015d68ed855997d6.md) | 26 | `declaration-track:3fb0a350015d68ed855997d69c32622e7d673c16f1ed688364c70ad08db9558f` |
| 2 | `def` | [sampleDerivativeProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/samplederivativeprofile--3c7e540680e99cde359247b6.md) | 29 | `declaration-track:3c7e540680e99cde359247b6e5a1eab28fd244cff0630c777f44a8fbb31a57a5` |
| 3 | `theorem` | [v_diff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/v-diff--5b2f014ad04c8e49b5dd184f.md) | 31 | `result-track:5b2f014ad04c8e49b5dd184f6fa47ecb307fb7a25f9ce05e756b3268e477c3f5` |
| 4 | `theorem` | [v_cont](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/v-cont--4e2bf8f485fe7ca8719dfc43.md) | 34 | `result-track:4e2bf8f485fe7ca8719dfc436c01cd361acecf76fa6f2446320bdbc1ef3feb1a` |
| 5 | `theorem` | [profile_cont](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/profile-cont--f6c195d12dcb78951a054b57.md) | 36 | `result-track:f6c195d12dcb78951a054b57305815e57a627e2adfb0d1334ca8407c040cbff3` |
| 6 | `theorem` | [profile_compact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/profile-compact--507dd511e70e2aecf2fef874.md) | 40 | `result-track:507dd511e70e2aecf2fef874ba3eb8b490c63611353eae30a6b4039c292b889a` |
| 7 | `theorem` | [logSample_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/logsample-hasderivat--f623e0c88bc8168768f4b641.md) | 48 | `result-track:f623e0c88bc8168768f4b641cfcad89aa73b8339c03c32dcc003ab6a75d8a10f` |
| 8 | `theorem` | [logSample_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/logsample-eq--494ce149bfd35299ccbec210.md) | 58 | `result-track:494ce149bfd35299ccbec210d2e71f57e11f36b8fa4ff4bcf571a3f0f56df3b5` |
| 9 | `theorem` | [logSample_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/logsample-exp--24e0f5163e4f4e04a9192e49.md) | 63 | `result-track:24e0f5163e4f4e04a9192e4924b11d79d7c183340ac71398280b2feac6a0fe85` |
| 10 | `theorem` | [translated_compact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/translated-compact--d498ce1728a70230cbece381.md) | 70 | `result-track:d498ce1728a70230cbece3817a699d004dda20c8fcebe442481af2ed499a0320` |
| 11 | `theorem` | [logSample_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/logsample-integrableon--c57591e1209a4c0ade3ebd21.md) | 77 | `result-track:c57591e1209a4c0ade3ebd21a9e5f3b4f803dbc3df0636e14d49fe1b906a2220` |
| 12 | `theorem` | [logSample_deriv_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/logsample-deriv-exp--5ecdf84321e3e5d738d74f05.md) | 88 | `result-track:5ecdf84321e3e5d738d74f05c8a042f82fef84be68ba620419aab6e3097929ff` |
| 13 | `def` | [derivativeBudget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/derivativebudget--28ec6efcc4c72969111f50fa.md) | 96 | `declaration-track:28ec6efcc4c72969111f50fabc02672126d1e13f3c1755ff518d2ef3ed08ab67` |
| 14 | `theorem` | [derivativeBudget_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/derivativebudget-integrable--1ce442a0b181ab29b3880561.md) | 99 | `result-track:1ce442a0b181ab29b38805616bbca673558f15b1785f654318d828d4a78439f7` |
| 15 | `theorem` | [derivativeBudget_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/derivativebudget-nonneg--461e4f6c34494f10d4f2bb4b.md) | 105 | `result-track:461e4f6c34494f10d4f2bb4b56aeead6aae2c106d76ae394111c7a175989d5a5` |
| 16 | `theorem` | [derivative_translate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/derivative-translate--d8dfdf3bf36657ed901f13f0.md) | 108 | `result-track:d8dfdf3bf36657ed901f13f00be5f0fd661c7618ac65c3e7779b63b23a40555a` |
| 17 | `theorem` | [logSample_deriv_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/logsample-deriv-integrableon--4b7a520db2560847f4658691.md) | 117 | `result-track:4b7a520db2560847f4658691f78e1192a8ed264edf815f85c1209ac760fadbe6` |
| 18 | `theorem` | [logSample_variation_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/logsample-variation-le--d55305091d33c87b2a95bacd.md) | 135 | `result-track:d55305091d33c87b2a95bacd0826389af916b2c48e3694f14d320a818cfa4865` |
| 19 | `theorem` | [logSample_zero_of_time_le_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/logsample-zero-of-time-le-log--0349dd56becb8519405c835a.md) | 154 | `result-track:0349dd56becb8519405c835a0277f1ac6374e523c868a759630e27167224c068` |
| 20 | `theorem` | [logSample_zero_of_exp_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/logsample-zero-of-exp-le--1ce2a59030747fe09a02cfbb.md) | 161 | `result-track:1ce2a59030747fe09a02cfbbd885ab7050b74df449a294507a0ac76b1ce5b01c` |
| 21 | `def` | [fixedKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/fixedkernel--366e1934496a8c55a5512ea3.md) | 167 | `declaration-track:366e1934496a8c55a5512ea33af231a145a965f3700acd8bf53cd1a12f75a622` |
| 22 | `theorem` | [fixedKernel_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/fixedkernel-eq-sum--4a1dd1930746848376f84bc3.md) | 170 | `result-track:4a1dd1930746848376f84bc33ebedfb62791092b5eb66f032f08e487caa1388c` |
| 23 | `theorem` | [fixedKernel_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/fixedkernel-summable--08c0f6ad04e0aeb389b3b242.md) | 180 | `result-track:08c0f6ad04e0aeb389b3b24268599d117b559e6895822042ef6de90f1c28f589` |
| 24 | `theorem` | [fixedKernel_eq_literal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/fixedkernel-eq-literal--a53e18e274db59965cfcafa9.md) | 192 | `result-track:a53e18e274db59965cfcafa900fc21b9ea2c77a8e3e542c3643c7de407de9bb0` |
| 25 | `theorem` | [fixedKernel_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/fixedkernel-measurable--4f1ca8d33b7e06d0c483001d.md) | 201 | `result-track:4f1ca8d33b7e06d0c483001d3e5be39cb322f447e11c95884dd20fbfc8f1a4e8` |
| 26 | `theorem` | [fixedKernel_zero_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/fixedkernel-zero-of-nonpos--b2838cd733354a77e2662acf.md) | 208 | `result-track:b2838cd733354a77e2662acfcad0d883e94d4296eb197f2dbdb3e41a246a7b8c` |
| 27 | `theorem` | [fixedKernel_integrableOn_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/declarations/fixedkernel-integrableon-icc--1ea5f9cddb95d38bc7c15b7a.md) | 216 | `result-track:1ea5f9cddb95d38bc7c15b7ad29a674c0234490e504bac4ec3ef1714a77e4600` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
