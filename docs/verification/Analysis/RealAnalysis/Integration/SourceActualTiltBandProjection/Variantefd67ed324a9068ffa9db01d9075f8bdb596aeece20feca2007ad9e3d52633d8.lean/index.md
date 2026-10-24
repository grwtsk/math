# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualTiltBandProjection.Variantefd67ed324a9068ffa9db01d9075f8bdb596aeece20feca2007ad9e3d52633d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c506456e2769454e6cd22b4b5f6939f0b7447764",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantefd67ed324a9068ffa9db01d9075f8bdb596aeece20feca2007ad9e3d52633d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantefd67ed324a9068ffa9db01d9075f8bdb596aeece20feca2007ad9e3d52633d8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantefd67ed324a9068ffa9db01d9075f8bdb596aeece20feca2007ad9e3d52633d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c506456e2769454e6cd22b4b5f6939f0b7447764`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantefd67ed324a9068ffa9db01d9075f8bdb596aeece20feca2007ad9e3d52633d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantefd67ed324a9068ffa9db01d9075f8bdb596aeece20feca2007ad9e3d52633d8.lean.json)

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
| 1 | `def` | [actualStandardBand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantefd67ed324a9068ffa9db01d9075f8bdb596aeece20feca2007ad9e3d52633d8.lean/declarations/actualstandardband--85f78b6e55075a902542781a.md) | 25 | `declaration-track:85f78b6e55075a902542781a3449cf9919e829b86b8f5d5afd2759acea4a5688` |
| 2 | `def` | [actualTiltBandSpectrum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantefd67ed324a9068ffa9db01d9075f8bdb596aeece20feca2007ad9e3d52633d8.lean/declarations/actualtiltbandspectrum--dde70a7baa952279aec3eaf2.md) | 29 | `declaration-track:dde70a7baa952279aec3eaf2d1c300046a0d52f5296b5c2e9642cd6ba15aec53` |
| 3 | `def` | [actualTiltBandState](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantefd67ed324a9068ffa9db01d9075f8bdb596aeece20feca2007ad9e3d52633d8.lean/declarations/actualtiltbandstate--1653c78e777a8f5e179e49f8.md) | 34 | `declaration-track:1653c78e777a8f5e179e49f86037cbd16819058e5ba0a88a8ef524e40872da7e` |
| 4 | `theorem` | [state_norm_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantefd67ed324a9068ffa9db01d9075f8bdb596aeece20feca2007ad9e3d52633d8.lean/declarations/state-norm-sq-integral--adaabb3c889058fc024d92b3.md) | 37 | `result-track:adaabb3c889058fc024d92b3727792995f004499c4118653abffa52e35e85b23` |
| 5 | `theorem` | [actualTiltBandState_fourier_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantefd67ed324a9068ffa9db01d9075f8bdb596aeece20feca2007ad9e3d52633d8.lean/declarations/actualtiltbandstate-fourier-eq--67973e5322e7d2ff13bf37fe.md) | 45 | `result-track:67973e5322e7d2ff13bf37fe4ac1ab43d977a2d540ff8329347a5de8402f202e` |
| 6 | `theorem` | [actualTiltBandSpectrum_coe_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantefd67ed324a9068ffa9db01d9075f8bdb596aeece20feca2007ad9e3d52633d8.lean/declarations/actualtiltbandspectrum-coe-ae--a11ed9cefc24989f8f8b6c57.md) | 50 | `result-track:a11ed9cefc24989f8f8b6c570da7d440f978fa0eb1c428cd2f41f3e9f46fd3d4` |
| 7 | `theorem` | [actualTiltStandardSpectrum_norm_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantefd67ed324a9068ffa9db01d9075f8bdb596aeece20feca2007ad9e3d52633d8.lean/declarations/actualtiltstandardspectrum-norm-sq-integrable--7f298221b99d82aff5d88646.md) | 60 | `result-track:7f298221b99d82aff5d886469e7402c8ee1df6b6a21253289d17edf0581c5b46` |
| 8 | `theorem` | [actualTiltBandState_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantefd67ed324a9068ffa9db01d9075f8bdb596aeece20feca2007ad9e3d52633d8.lean/declarations/actualtiltbandstate-norm-sq--af40c655a2c5d6b4e658df46.md) | 69 | `result-track:af40c655a2c5d6b4e658df46caecea93e98be650ee35d6c16ae460bb5f144acd` |
| 9 | `theorem` | [actualTiltStandardSpectrum_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantefd67ed324a9068ffa9db01d9075f8bdb596aeece20feca2007ad9e3d52633d8.lean/declarations/actualtiltstandardspectrum-energy--781c403bcfea08f4b0f93b63.md) | 80 | `result-track:781c403bcfea08f4b0f93b63f89c74cbafa99c5f5d909db09a2896fd77be6731` |
| 10 | `theorem` | [actualTiltBandState_norm_sq_le_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantefd67ed324a9068ffa9db01d9075f8bdb596aeece20feca2007ad9e3d52633d8.lean/declarations/actualtiltbandstate-norm-sq-le-energy--6cd8382449f497af9d8606e1.md) | 91 | `result-track:6cd8382449f497af9d8606e116bcb5e854791c1117917752875e029dd6075df6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
