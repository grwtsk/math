# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualTiltBandProjection.Variantb3e58aede7e898e8a41a16ac2d03f4fb796a0b1c98e07b4d51da3ccf2e7917f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ceaf69a1a61f2aad6290a4c468435a1550cc9e4b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb3e58aede7e898e8a41a16ac2d03f4fb796a0b1c98e07b4d51da3ccf2e7917f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb3e58aede7e898e8a41a16ac2d03f4fb796a0b1c98e07b4d51da3ccf2e7917f6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb3e58aede7e898e8a41a16ac2d03f4fb796a0b1c98e07b4d51da3ccf2e7917f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ceaf69a1a61f2aad6290a4c468435a1550cc9e4b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb3e58aede7e898e8a41a16ac2d03f4fb796a0b1c98e07b4d51da3ccf2e7917f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb3e58aede7e898e8a41a16ac2d03f4fb796a0b1c98e07b4d51da3ccf2e7917f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualTiltFourierDictionary` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualStandardBand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb3e58aede7e898e8a41a16ac2d03f4fb796a0b1c98e07b4d51da3ccf2e7917f6.lean/declarations/actualstandardband--376adc32f60ad10e878de00b.md) | 17 | `declaration-track:376adc32f60ad10e878de00b9d00ef88b561679f7e11002baed037ba9c60daac` |
| 2 | `def` | [actualTiltBandSpectrum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb3e58aede7e898e8a41a16ac2d03f4fb796a0b1c98e07b4d51da3ccf2e7917f6.lean/declarations/actualtiltbandspectrum--5e59f0ef100153f6600713ce.md) | 21 | `declaration-track:5e59f0ef100153f6600713ce62cc30eab698ac386d61e777f12a875faf2dc8a8` |
| 3 | `def` | [actualTiltBandState](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb3e58aede7e898e8a41a16ac2d03f4fb796a0b1c98e07b4d51da3ccf2e7917f6.lean/declarations/actualtiltbandstate--57c6039732f646ea2340b7d1.md) | 26 | `declaration-track:57c6039732f646ea2340b7d15cbfe080ed44d47038f4f669774a6994ce741ac0` |
| 4 | `theorem` | [state_norm_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb3e58aede7e898e8a41a16ac2d03f4fb796a0b1c98e07b4d51da3ccf2e7917f6.lean/declarations/state-norm-sq-integral--8817141753e0db6b73323636.md) | 29 | `result-track:8817141753e0db6b73323636960726a5568ea66b4c60565f1cff55c73578900c` |
| 5 | `theorem` | [actualTiltBandState_fourier_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb3e58aede7e898e8a41a16ac2d03f4fb796a0b1c98e07b4d51da3ccf2e7917f6.lean/declarations/actualtiltbandstate-fourier-eq--983dc9f1de75d3b0a0666421.md) | 37 | `result-track:983dc9f1de75d3b0a06664217ceca8d1836e749c63b5c66460c46e0410ae2478` |
| 6 | `theorem` | [actualTiltBandSpectrum_coe_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb3e58aede7e898e8a41a16ac2d03f4fb796a0b1c98e07b4d51da3ccf2e7917f6.lean/declarations/actualtiltbandspectrum-coe-ae--cd65fe16e914ba32e3de0fdf.md) | 42 | `result-track:cd65fe16e914ba32e3de0fdf06d0d2ef8f689eba550c10eba534c6870f51614d` |
| 7 | `theorem` | [actualTiltStandardSpectrum_norm_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb3e58aede7e898e8a41a16ac2d03f4fb796a0b1c98e07b4d51da3ccf2e7917f6.lean/declarations/actualtiltstandardspectrum-norm-sq-integrable--45b21e4972456f71c2ee9542.md) | 52 | `result-track:45b21e4972456f71c2ee9542872e531fea2af8fd2634af3a809b6dbe43f46c97` |
| 8 | `theorem` | [actualTiltBandState_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb3e58aede7e898e8a41a16ac2d03f4fb796a0b1c98e07b4d51da3ccf2e7917f6.lean/declarations/actualtiltbandstate-norm-sq--cab2815f6ca6ef167921aeb2.md) | 61 | `result-track:cab2815f6ca6ef167921aeb2a5e7c6e68bb078295ab487d524793ee6d86f0276` |
| 9 | `theorem` | [actualTiltStandardSpectrum_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb3e58aede7e898e8a41a16ac2d03f4fb796a0b1c98e07b4d51da3ccf2e7917f6.lean/declarations/actualtiltstandardspectrum-energy--c1e7fed555e4581634cecf32.md) | 72 | `result-track:c1e7fed555e4581634cecf3260d51205435912bfef365e31a50f5b32f9b7513f` |
| 10 | `theorem` | [actualTiltBandState_norm_sq_le_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb3e58aede7e898e8a41a16ac2d03f4fb796a0b1c98e07b4d51da3ccf2e7917f6.lean/declarations/actualtiltbandstate-norm-sq-le-energy--cf552a315436e5148a2b18bc.md) | 83 | `result-track:cf552a315436e5148a2b18bc42c6ec09031324d296a8ffd36deafc015ffb642d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
