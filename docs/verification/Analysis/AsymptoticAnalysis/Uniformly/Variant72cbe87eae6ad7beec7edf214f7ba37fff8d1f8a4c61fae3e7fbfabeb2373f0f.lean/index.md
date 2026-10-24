# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Uniformly.Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58a60c7a2cae9d92d9bd3b5c3c09d7f8482f3403",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Uniformly/Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58a60c7a2cae9d92d9bd3b5c3c09d7f8482f3403`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Uniformly/Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Uniformly/Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.Theta` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Asymptotics` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.FundThmCalculus` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 11; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Mathlib.Analysis.Asymptotics.Asymptotics` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isBigO_of_isBigOUniformly](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.lean/declarations/isbigo-of-isbigouniformly--3a6177c882682a0fb698b703.md) | 37 | `result-track:3a6177c882682a0fb698b70382191a63c19d11a3c919bab41bf180b26613d8b6` |
| 2 | `theorem` | [isBigO_rev_of_isBigOUniformly_rev](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.lean/declarations/isbigo-rev-of-isbigouniformly-rev--c7aad64739b2da3ae4ad2271.md) | 46 | `result-track:c7aad64739b2da3ae4ad2271b2b5d0d0668b4d7e40e49a4169b708784b834120` |
| 3 | `theorem` | [isTheta_of_isThetaUniformly](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.lean/declarations/istheta-of-isthetauniformly--7229f9361ddbf18cac6b0a37.md) | 55 | `result-track:7229f9361ddbf18cac6b0a3707d15f75ac7898c0de2b57a7c34a857470b46111` |
| 4 | `theorem` | [isLittleO_const_fst_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.lean/declarations/islittleo-const-fst-atbot--4d3143d6c212f6e69cdf4039.md) | 65 | `result-track:4d3143d6c212f6e69cdf403970d474fc3dc86c9088a96b056f9c66d4df8b5b73` |
| 5 | `theorem` | [isLittleO_const_snd_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.lean/declarations/islittleo-const-snd-atbot--26944079cdee483288c7cea0.md) | 72 | `result-track:26944079cdee483288c7cea07aa304cfd682cf8a22dfd0668f720620adecda2a` |
| 6 | `theorem` | [isLittleO_const_fst_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.lean/declarations/islittleo-const-fst-attop--e7a5f7ad33fa148d78d49739.md) | 79 | `result-track:e7a5f7ad33fa148d78d49739f464820b1a57764f3f9de519b107b6a034058a89` |
| 7 | `theorem` | [isLittleO_const_snd_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.lean/declarations/islittleo-const-snd-attop--04b3e0a1b731d8990716f7f2.md) | 86 | `result-track:04b3e0a1b731d8990716f7f2725460a7153885c569a06dab39246491eed96999` |
| 8 | `theorem` | [_root_.ContinuousOn.const_isBigOWithUniformlyOn_isCompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.lean/declarations/root-continuouson-const-isbigowithuniformlyon-iscompact--8ba609f5c8dd40f26b27aa0a.md) | 105 | `result-track:8ba609f5c8dd40f26b27aa0a6bcf5c0f9aae11adb1d9e98f44e524c1a651d757` |
| 9 | `theorem` | [_root_.ContinuousOn.const_isBigOUniformlyOn_isCompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.lean/declarations/root-continuouson-const-isbigouniformlyon-iscompact--571b0d44488aadc3c1de7f81.md) | 118 | `result-track:571b0d44488aadc3c1de7f8158753f81f4167e3008a5d846d9ac93ebe82293ed` |
| 10 | `theorem` | [_root_.ContinuousOn.const_isBigOWithUniformlyOn_isCompact_rev](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.lean/declarations/root-continuouson-const-isbigowithuniformlyon-iscompact-rev--b6206851926f527ae28c9871.md) | 131 | `result-track:b6206851926f527ae28c98715d8eb4b0bf3e76d15d65913b48ebf8ed5bb8f1dd` |
| 11 | `theorem` | [_root_.ContinuousOn.const_isBigOUniformlyOn_isCompact_rev](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.lean/declarations/root-continuouson-const-isbigouniformlyon-iscompact-rev--5ccb81a12d43a56b025ebc97.md) | 148 | `result-track:5ccb81a12d43a56b025ebc97da8f4a54f0eb2cd7f30a46b56f1cbc1edfb9693a` |
| 12 | `theorem` | [_root_.ContinuousOn.const_isThetaUniformlyOn_isCompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.lean/declarations/root-continuouson-const-isthetauniformlyon-iscompact--87885e94d566315cf16e07cd.md) | 155 | `result-track:87885e94d566315cf16e07cd95f2a63ef6c48626c4c6731644e905a269658199` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
