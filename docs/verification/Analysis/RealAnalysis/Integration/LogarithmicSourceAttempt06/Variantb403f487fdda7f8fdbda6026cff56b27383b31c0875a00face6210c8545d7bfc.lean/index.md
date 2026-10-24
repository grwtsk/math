# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogarithmicSourceAttempt06.Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb44213ddfaa003a757daa0f9a1b7bca29675fe0",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb44213ddfaa003a757daa0f9a1b7bca29675fe0`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveLogLift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/declarations/positiveloglift--2dc0da57c08721eba273da95.md) | 27 | `declaration-track:2dc0da57c08721eba273da9513d91f889bd5eab0d2105d53c4f2acdf6477fc32` |
| 2 | `theorem` | [positiveLogLift_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/declarations/positiveloglift-exp--16d52308b58ac4cbc4a9879c.md) | 30 | `result-track:16d52308b58ac4cbc4a9879c24e05b669c238498411ec864b8d8134ae54aba30` |
| 3 | `theorem` | [exp_square_weight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/declarations/exp-square-weight--cf692435b166b680f4dc23fd.md) | 34 | `result-track:cf692435b166b680f4dc23fdda3bf2890714aad2385068b95b50b40cd2221e06` |
| 4 | `theorem` | [lift_square_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/declarations/lift-square-jacobian--572b99e99a3e9b33bcd1597a.md) | 40 | `result-track:572b99e99a3e9b33bcd1597adfa5212cf6a6bee4089b8521fddff2d8ed38f981` |
| 5 | `theorem` | [lift_square_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/declarations/lift-square-integrable-iff--6a1f777318581e077061ad88.md) | 47 | `result-track:6a1f777318581e077061ad88093421958944379301c95f17249c7cff7a23d05c` |
| 6 | `theorem` | [lift_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/declarations/lift-square-integral--69b4fae43850caddb5af8f15.md) | 58 | `result-track:69b4fae43850caddb5af8f15537df29302a9e155bd9d96de8c8db50e0274cfe8` |
| 7 | `def` | [actualLogSource](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/declarations/actuallogsource--5bef2b04b2f29f161fd67e34.md) | 69 | `declaration-track:5bef2b04b2f29f161fd67e342614797e8651f3a0be492625717f18f682974325` |
| 8 | `theorem` | [actualLogSource_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/declarations/actuallogsource-square-integrable--b2168b8df9ce6b0b4e92b7c4.md) | 72 | `result-track:b2168b8df9ce6b0b4e92b7c4a35e3061e509df71d642124102c1b58ed4143847` |
| 9 | `theorem` | [actualLogSource_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/declarations/actuallogsource-square-integral--14f56dea8924b5cf84d8e504.md) | 76 | `result-track:14f56dea8924b5cf84d8e504231f07ae96dbccfd5feb075c14c458528d2e8fb9` |
| 10 | `theorem` | [actualLogSource_zero_outside](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/declarations/actuallogsource-zero-outside--fe39723e15635a51c9b2c20e.md) | 81 | `result-track:fe39723e15635a51c9b2c20e48e6c389ad4075f0557b2917365c8481cdfa4590` |
| 11 | `theorem` | [actualLogSource_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/declarations/actuallogsource-hascompactsupport--ddf59204e2c7aa7d7baa4333.md) | 97 | `result-track:ddf59204e2c7aa7d7baa43333bf1a18d54b702a61b955ef7a80cbcf4f4d57775` |
| 12 | `theorem` | [lift_first_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/declarations/lift-first-jacobian--3d7d8b95ec7f0c202a494586.md) | 108 | `result-track:3d7d8b95ec7f0c202a49458636006041aab20426b3000a01c53743180a750b1e` |
| 13 | `theorem` | [actualLogSource_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/declarations/actuallogsource-integrable--47b3750b5243a39fda3ca156.md) | 114 | `result-track:47b3750b5243a39fda3ca156141f196c5a68346e3704ac5813081934b7384b33` |
| 14 | `theorem` | [actualLogSource_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/declarations/actuallogsource-integral-zero--a168e90b776bd907ecd375e6.md) | 126 | `result-track:a168e90b776bd907ecd375e6c4f61463c357e3224bf3c028deeb522805599cee` |
| 15 | `theorem` | [positiveLogLift_dilation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/declarations/positiveloglift-dilation--a6856c7eb1bc636bc6f1c66d.md) | 140 | `result-track:a6856c7eb1bc636bc6f1c66d39cdc16c9ab0b997daa291a6a21ca8832893f12f` |
| 16 | `theorem` | [actualLogSource_real_dilation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/declarations/actuallogsource-real-dilation--d7c864aed45e773402c631ec.md) | 149 | `result-track:d7c864aed45e773402c631ecac95253766b1699974f69f8a55b6b7711dc6b000` |
| 17 | `theorem` | [actualLogSource_integer_dilation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/declarations/actuallogsource-integer-dilation--f8978510e351ad54d22fda63.md) | 158 | `result-track:f8978510e351ad54d22fda6308cfe1b6acdbe23607fe101296b6e73dde052632` |
| 18 | `theorem` | [lift_mellin_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/declarations/lift-mellin-jacobian--514eefa46f729ec8a22d04c7.md) | 163 | `result-track:514eefa46f729ec8a22d04c77cf61368f5a48f26a25a5b18af148999feb7db88` |
| 19 | `theorem` | [lift_mellin_eq_bilateral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/declarations/lift-mellin-eq-bilateral--470687c314b9028bd4798d3e.md) | 177 | `result-track:470687c314b9028bd4798d3e124bf8496a9ad8d6f73e5fabb14f309be08edcf8` |
| 20 | `theorem` | [lift_mellin_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/declarations/lift-mellin-integrable-iff--0e6600fc60488a710f43713b.md) | 189 | `result-track:0e6600fc60488a710f43713bf2ca8fa05dfa4cc637d9046864aa78165091e239` |
| 21 | `theorem` | [actualLogSource_mellin_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/declarations/actuallogsource-mellin-integrable--2a6efb12d5127cc94caef0c0.md) | 200 | `result-track:2a6efb12d5127cc94caef0c04709d4698d04b35030d5897c5c9c8b009b754984` |
| 22 | `theorem` | [actualLogSource_mellin_critical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variantb403f487fdda7f8fdbda6026cff56b27383b31c0875a00face6210c8545d7bfc.lean/declarations/actuallogsource-mellin-critical--f6a26a723121869b35f8addb.md) | 209 | `result-track:f6a26a723121869b35f8addbcf851de0e8595294816d6d57f3b28de682475daa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
