# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualTiltBandProjection.Variantb4d28af1ae6e0d15a5b420ea5173a089b59f6bc749d788c237d0bfda086f88a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbc3a8f6cbec9239dc5feb840f8273dac4ecb412",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb4d28af1ae6e0d15a5b420ea5173a089b59f6bc749d788c237d0bfda086f88a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb4d28af1ae6e0d15a5b420ea5173a089b59f6bc749d788c237d0bfda086f88a9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb4d28af1ae6e0d15a5b420ea5173a089b59f6bc749d788c237d0bfda086f88a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbc3a8f6cbec9239dc5feb840f8273dac4ecb412`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb4d28af1ae6e0d15a5b420ea5173a089b59f6bc749d788c237d0bfda086f88a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb4d28af1ae6e0d15a5b420ea5173a089b59f6bc749d788c237d0bfda086f88a9.lean.json)

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
| 1 | `def` | [actualStandardBand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb4d28af1ae6e0d15a5b420ea5173a089b59f6bc749d788c237d0bfda086f88a9.lean/declarations/actualstandardband--34587553a672a7f0509ee648.md) | 25 | `declaration-track:34587553a672a7f0509ee648cb3bc0422624dac53350fa6f3d567c89560964ab` |
| 2 | `def` | [actualTiltBandSpectrum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb4d28af1ae6e0d15a5b420ea5173a089b59f6bc749d788c237d0bfda086f88a9.lean/declarations/actualtiltbandspectrum--14647079bd7d5f0e553371d3.md) | 29 | `declaration-track:14647079bd7d5f0e553371d32bc56be3ebf1a9635a0dd9b5a33a90ee01a40833` |
| 3 | `def` | [actualTiltBandState](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb4d28af1ae6e0d15a5b420ea5173a089b59f6bc749d788c237d0bfda086f88a9.lean/declarations/actualtiltbandstate--fe61f5698d8ccb52bab7e48e.md) | 36 | `declaration-track:fe61f5698d8ccb52bab7e48e4602d900b37aa2a64a03db0639f8103304b1ecbc` |
| 4 | `theorem` | [state_norm_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb4d28af1ae6e0d15a5b420ea5173a089b59f6bc749d788c237d0bfda086f88a9.lean/declarations/state-norm-sq-integral--4eca7402541dc46ef78e8800.md) | 39 | `result-track:4eca7402541dc46ef78e88004bc37201bb65b57040fc941fdabdba8a93077ffc` |
| 5 | `theorem` | [actualTiltBandState_fourier_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb4d28af1ae6e0d15a5b420ea5173a089b59f6bc749d788c237d0bfda086f88a9.lean/declarations/actualtiltbandstate-fourier-eq--191755d9e6698a2fb7ebbc9d.md) | 47 | `result-track:191755d9e6698a2fb7ebbc9dea6a394e73750a5ec7dd8afa6bfd43cb9c587532` |
| 6 | `theorem` | [actualTiltBandSpectrum_coe_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb4d28af1ae6e0d15a5b420ea5173a089b59f6bc749d788c237d0bfda086f88a9.lean/declarations/actualtiltbandspectrum-coe-ae--95b3d39f157f9684db1528cb.md) | 52 | `result-track:95b3d39f157f9684db1528cbad62da68c2b1a4f190d7197e2b6e18a6484a3458` |
| 7 | `theorem` | [actualTiltStandardSpectrum_norm_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb4d28af1ae6e0d15a5b420ea5173a089b59f6bc749d788c237d0bfda086f88a9.lean/declarations/actualtiltstandardspectrum-norm-sq-integrable--fe15b58f39f6a699c953a73e.md) | 62 | `result-track:fe15b58f39f6a699c953a73e597b0fae621c6f895b27a55a59924a6924bb79da` |
| 8 | `theorem` | [actualTiltBandState_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb4d28af1ae6e0d15a5b420ea5173a089b59f6bc749d788c237d0bfda086f88a9.lean/declarations/actualtiltbandstate-norm-sq--3a038e94c855d23d00e08ba1.md) | 71 | `result-track:3a038e94c855d23d00e08ba18633a22d6d792015ec8660e646dc29743c46a479` |
| 9 | `theorem` | [actualTiltStandardSpectrum_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb4d28af1ae6e0d15a5b420ea5173a089b59f6bc749d788c237d0bfda086f88a9.lean/declarations/actualtiltstandardspectrum-energy--bd97fecba63e1419a067c48b.md) | 83 | `result-track:bd97fecba63e1419a067c48ba87fcb87b2457b223fc525b4ca615e650e06bd86` |
| 10 | `theorem` | [actualTiltBandState_norm_sq_le_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb4d28af1ae6e0d15a5b420ea5173a089b59f6bc749d788c237d0bfda086f88a9.lean/declarations/actualtiltbandstate-norm-sq-le-energy--9ebe6d827833c2174d936e33.md) | 94 | `result-track:9ebe6d827833c2174d936e3344b1f2190901bd91a3b5c7494cb9c8423e8c0e1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
