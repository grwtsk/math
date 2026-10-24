# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualTiltBandProjection.Variantfcac6f6db73db243acf4dfdbe490b5c413f58d3722c0e7e43ce5c9a630967768

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fddadc0a5eaf159801f50c35465f112787c79be7",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantfcac6f6db73db243acf4dfdbe490b5c413f58d3722c0e7e43ce5c9a630967768.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantfcac6f6db73db243acf4dfdbe490b5c413f58d3722c0e7e43ce5c9a630967768.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantfcac6f6db73db243acf4dfdbe490b5c413f58d3722c0e7e43ce5c9a630967768.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fddadc0a5eaf159801f50c35465f112787c79be7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantfcac6f6db73db243acf4dfdbe490b5c413f58d3722c0e7e43ce5c9a630967768.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantfcac6f6db73db243acf4dfdbe490b5c413f58d3722c0e7e43ce5c9a630967768.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualTiltFourierDictionary` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualStandardBand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantfcac6f6db73db243acf4dfdbe490b5c413f58d3722c0e7e43ce5c9a630967768.lean/declarations/actualstandardband--5989278f04fe7eca2c1362b6.md) | 25 | `declaration-track:5989278f04fe7eca2c1362b67e839fc170ce918436bebec045919c49d779ba45` |
| 2 | `def` | [actualTiltBandSpectrum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantfcac6f6db73db243acf4dfdbe490b5c413f58d3722c0e7e43ce5c9a630967768.lean/declarations/actualtiltbandspectrum--f2a0c4605dbd42c07d98f486.md) | 29 | `declaration-track:f2a0c4605dbd42c07d98f4868c4fcd2c36dedcd06d4d32e385f18d6da80e3e7b` |
| 3 | `def` | [actualTiltBandState](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantfcac6f6db73db243acf4dfdbe490b5c413f58d3722c0e7e43ce5c9a630967768.lean/declarations/actualtiltbandstate--52881165cb5573292260e077.md) | 36 | `declaration-track:52881165cb5573292260e077f457cc569154a7dce8d2418c8f0d8c0945f89e63` |
| 4 | `theorem` | [state_norm_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantfcac6f6db73db243acf4dfdbe490b5c413f58d3722c0e7e43ce5c9a630967768.lean/declarations/state-norm-sq-integral--3a04e595ff2d0e4cd8739ebc.md) | 39 | `result-track:3a04e595ff2d0e4cd8739ebcba0a2591563be6acda6e155472819af87a159752` |
| 5 | `theorem` | [actualTiltBandState_fourier_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantfcac6f6db73db243acf4dfdbe490b5c413f58d3722c0e7e43ce5c9a630967768.lean/declarations/actualtiltbandstate-fourier-eq--b76dc07e0a373f8f1f0f3b48.md) | 47 | `result-track:b76dc07e0a373f8f1f0f3b481abe98ab332bfb874b2a937dc39bfb598bcfd832` |
| 6 | `theorem` | [actualTiltBandSpectrum_coe_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantfcac6f6db73db243acf4dfdbe490b5c413f58d3722c0e7e43ce5c9a630967768.lean/declarations/actualtiltbandspectrum-coe-ae--99980f20ee63b33a8f361fd3.md) | 52 | `result-track:99980f20ee63b33a8f361fd3e05d4d5cc421810fee6a1cb8498c6e64989ab30c` |
| 7 | `theorem` | [actualTiltStandardSpectrum_norm_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantfcac6f6db73db243acf4dfdbe490b5c413f58d3722c0e7e43ce5c9a630967768.lean/declarations/actualtiltstandardspectrum-norm-sq-integrable--ae65fcf9c9033d94076a6ba7.md) | 62 | `result-track:ae65fcf9c9033d94076a6ba7c7567c9174b76e69dc030a58b0d44d53e48caf13` |
| 8 | `theorem` | [actualTiltBandState_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantfcac6f6db73db243acf4dfdbe490b5c413f58d3722c0e7e43ce5c9a630967768.lean/declarations/actualtiltbandstate-norm-sq--ae8f4e2f6b1bc97e5ff72d77.md) | 71 | `result-track:ae8f4e2f6b1bc97e5ff72d77a202bc56e5eb478791a6fc52344bcb098199d553` |
| 9 | `theorem` | [actualTiltStandardSpectrum_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantfcac6f6db73db243acf4dfdbe490b5c413f58d3722c0e7e43ce5c9a630967768.lean/declarations/actualtiltstandardspectrum-energy--094c761121ab0eed800fa0e7.md) | 82 | `result-track:094c761121ab0eed800fa0e7ee58882d44a4723e8ff84c068a9eb7106b85564d` |
| 10 | `theorem` | [actualTiltBandState_norm_sq_le_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantfcac6f6db73db243acf4dfdbe490b5c413f58d3722c0e7e43ce5c9a630967768.lean/declarations/actualtiltbandstate-norm-sq-le-energy--e85aaa2cfd6a89333b4faf0c.md) | 93 | `result-track:e85aaa2cfd6a89333b4faf0cb8c56b6a665330d88f1d4af8124e1b1a6c501a60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
