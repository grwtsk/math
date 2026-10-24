# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogarithmicSourceAttempt01.Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a84c37400b92c38384146f1f77b32b6a970772ef",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a84c37400b92c38384146f1f77b32b6a970772ef`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveLogLift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a.lean/declarations/positiveloglift--63b1b2061798cf73ac7d85c3.md) | 18 | `declaration-track:63b1b2061798cf73ac7d85c3525d486bb847640411cb0512faf11884a83c9f04` |
| 2 | `theorem` | [positiveLogLift_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a.lean/declarations/positiveloglift-exp--b5490b74c9a8ccf79037d933.md) | 21 | `result-track:b5490b74c9a8ccf79037d933289838f7d21c3cef4a811ecefc57329b9d48b493` |
| 3 | `theorem` | [exp_square_weight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a.lean/declarations/exp-square-weight--bfa1caa6b9df6a9687b40687.md) | 25 | `result-track:bfa1caa6b9df6a9687b406871a008eea43ad9ee06eafbeb178012cdfc9c1ba3b` |
| 4 | `theorem` | [lift_square_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a.lean/declarations/lift-square-jacobian--6ac4374cabb24382e4c44dc5.md) | 30 | `result-track:6ac4374cabb24382e4c44dc5181f2aecd18a1a5592020ba03c821b72ed73e285` |
| 5 | `theorem` | [lift_square_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a.lean/declarations/lift-square-integrable-iff--0ed4844b54368e310ad54c44.md) | 37 | `result-track:0ed4844b54368e310ad54c44d073c664886b475e2465475c913450045113acd5` |
| 6 | `theorem` | [lift_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a.lean/declarations/lift-square-integral--10adc62612348dacab59a1e9.md) | 48 | `result-track:10adc62612348dacab59a1e9d0f54b1e96f5c57ef41cb86c635ea0801167a738` |
| 7 | `def` | [actualLogSource](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a.lean/declarations/actuallogsource--cfde5fd46814e4b3c95869ef.md) | 59 | `declaration-track:cfde5fd46814e4b3c95869efb3cc4c7b0c84374ec13710df74608f4e7b76c8d1` |
| 8 | `theorem` | [actualLogSource_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a.lean/declarations/actuallogsource-square-integrable--66d6b2ed172a2b1c9ed894b3.md) | 62 | `result-track:66d6b2ed172a2b1c9ed894b3ef747432c908437d8c0503e920a9d8533b0b91af` |
| 9 | `theorem` | [actualLogSource_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a.lean/declarations/actuallogsource-square-integral--b90a616aa562274f9f7e94dc.md) | 66 | `result-track:b90a616aa562274f9f7e94dc302b01f61296545b0d346fbf838ad02ad430cf65` |
| 10 | `theorem` | [positiveLogLift_dilation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a.lean/declarations/positiveloglift-dilation--7ae31d4ee7db3b7985e767bd.md) | 71 | `result-track:7ae31d4ee7db3b7985e767bd7a5540559e62a34e10704e4dd9e26258c22fbb42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
