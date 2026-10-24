# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualChebyshevTailAttempt01.Variant13f41ff20cf7b636c6f9c2b285c63fb91219512330065ec85c34c6ad7dcaeb65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3de5e623770d57303869a39bc912a96251e71db",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variant13f41ff20cf7b636c6f9c2b285c63fb91219512330065ec85c34c6ad7dcaeb65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variant13f41ff20cf7b636c6f9c2b285c63fb91219512330065ec85c34c6ad7dcaeb65.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variant13f41ff20cf7b636c6f9c2b285c63fb91219512330065ec85c34c6ad7dcaeb65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3de5e623770d57303869a39bc912a96251e71db`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variant13f41ff20cf7b636c6f9c2b285c63fb91219512330065ec85c34c6ad7dcaeb65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variant13f41ff20cf7b636c6f9c2b285c63fb91219512330065ec85c34c6ad7dcaeb65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualChebyshevAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [psiErrorTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variant13f41ff20cf7b636c6f9c2b285c63fb91219512330065ec85c34c6ad7dcaeb65.lean/declarations/psierrortail--7e640f77853106a36340d278.md) | 14 | `declaration-track:7e640f77853106a36340d2785780830b9bb3f7765d7867b9c1757220d5f1d8a1` |
| 2 | `def` | [triangleKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variant13f41ff20cf7b636c6f9c2b285c63fb91219512330065ec85c34c6ad7dcaeb65.lean/declarations/trianglekernel--cbf9f85195b16b1e33699d5f.md) | 16 | `declaration-track:cbf9f85195b16b1e33699d5f094ad4b6fb47eebcf518cdbb0dd793534d894fc9` |
| 3 | `theorem` | [triangleKernel_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variant13f41ff20cf7b636c6f9c2b285c63fb91219512330065ec85c34c6ad7dcaeb65.lean/declarations/trianglekernel-measurable--d0c4d53286cf278fb5e70b5c.md) | 19 | `result-track:d0c4d53286cf278fb5e70b5c10b11bfb8a9fb32229323b208fda6f35a11ae6a1` |
| 4 | `theorem` | [triangleKernel_slice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variant13f41ff20cf7b636c6f9c2b285c63fb91219512330065ec85c34c6ad7dcaeb65.lean/declarations/trianglekernel-slice--a7ff1baf9389186614151bd0.md) | 24 | `result-track:a7ff1baf9389186614151bd03b2c6758e3ec12bc06da8688ec48a6e0ebf63400` |
| 5 | `theorem` | [triangleKernel_slice_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variant13f41ff20cf7b636c6f9c2b285c63fb91219512330065ec85c34c6ad7dcaeb65.lean/declarations/trianglekernel-slice-integrable--8bba877fbdc388a2a7956fea.md) | 30 | `result-track:8bba877fbdc388a2a7956fea96952dee15d0d8189c9eaa39e3f238357cea1420` |
| 6 | `theorem` | [triangleKernel_slice_norm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variant13f41ff20cf7b636c6f9c2b285c63fb91219512330065ec85c34c6ad7dcaeb65.lean/declarations/trianglekernel-slice-norm-integral--2ade96132da3a6a039476107.md) | 36 | `result-track:2ade96132da3a6a0394761071961adff4667c6854974f215c065a70cda0dcc7a` |
| 7 | `theorem` | [triangleKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variant13f41ff20cf7b636c6f9c2b285c63fb91219512330065ec85c34c6ad7dcaeb65.lean/declarations/trianglekernel-integrable--e0cb946a6339136b15b8ced3.md) | 43 | `result-track:e0cb946a6339136b15b8ced3dfc9c7eae323861ec633564b4c28db74ff269b94` |
| 8 | `theorem` | [triangleKernel_inner_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variant13f41ff20cf7b636c6f9c2b285c63fb91219512330065ec85c34c6ad7dcaeb65.lean/declarations/trianglekernel-inner-eq--a69791e5acf981f675ce7f6c.md) | 53 | `result-track:a69791e5acf981f675ce7f6ccc17ca881488e56297a36b90ac551e9c584fd2c1` |
| 9 | `theorem` | [psiErrorTail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variant13f41ff20cf7b636c6f9c2b285c63fb91219512330065ec85c34c6ad7dcaeb65.lean/declarations/psierrortail-integrable--7259967c9981703d40ea6cbe.md) | 66 | `result-track:7259967c9981703d40ea6cbed50f15fdded3b2dc6795b37bcd666ed1156f1942` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
