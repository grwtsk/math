# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualTiltBandProjection.Variant43663b4499c7625b73df080b1ecbcd0df64dccca1aa1ce25df80d44da5fe0b7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34cc432dcdfcb8526c9807d82a109ad58d34b31a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variant43663b4499c7625b73df080b1ecbcd0df64dccca1aa1ce25df80d44da5fe0b7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variant43663b4499c7625b73df080b1ecbcd0df64dccca1aa1ce25df80d44da5fe0b7d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variant43663b4499c7625b73df080b1ecbcd0df64dccca1aa1ce25df80d44da5fe0b7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34cc432dcdfcb8526c9807d82a109ad58d34b31a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variant43663b4499c7625b73df080b1ecbcd0df64dccca1aa1ce25df80d44da5fe0b7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variant43663b4499c7625b73df080b1ecbcd0df64dccca1aa1ce25df80d44da5fe0b7d.lean.json)

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
| 1 | `def` | [actualStandardBand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variant43663b4499c7625b73df080b1ecbcd0df64dccca1aa1ce25df80d44da5fe0b7d.lean/declarations/actualstandardband--4b08e7055b9b00765fcbf725.md) | 17 | `declaration-track:4b08e7055b9b00765fcbf72539ac60260ffc1d5bb0c173a8761c3873ccf3b291` |
| 2 | `def` | [actualTiltBandSpectrum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variant43663b4499c7625b73df080b1ecbcd0df64dccca1aa1ce25df80d44da5fe0b7d.lean/declarations/actualtiltbandspectrum--8794594dbfddd808d02296c1.md) | 21 | `declaration-track:8794594dbfddd808d02296c1d6c6fa08a17776e45f0812f19edd16f10b32710c` |
| 3 | `def` | [actualTiltBandState](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variant43663b4499c7625b73df080b1ecbcd0df64dccca1aa1ce25df80d44da5fe0b7d.lean/declarations/actualtiltbandstate--23838213dbed358af64e810b.md) | 28 | `declaration-track:23838213dbed358af64e810bda2a22a590fce24f0652a49e5ccbd8d2dd235437` |
| 4 | `theorem` | [state_norm_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variant43663b4499c7625b73df080b1ecbcd0df64dccca1aa1ce25df80d44da5fe0b7d.lean/declarations/state-norm-sq-integral--3adb597766c76e146acd37f4.md) | 31 | `result-track:3adb597766c76e146acd37f4c7416f922c32dc5a203cf589cf29f06a53dab7e0` |
| 5 | `theorem` | [actualTiltBandState_fourier_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variant43663b4499c7625b73df080b1ecbcd0df64dccca1aa1ce25df80d44da5fe0b7d.lean/declarations/actualtiltbandstate-fourier-eq--3d372c088a199dce15e7c080.md) | 39 | `result-track:3d372c088a199dce15e7c080abf212300a4b85ddf57659e5f7c29df325619d3d` |
| 6 | `theorem` | [actualTiltBandSpectrum_coe_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variant43663b4499c7625b73df080b1ecbcd0df64dccca1aa1ce25df80d44da5fe0b7d.lean/declarations/actualtiltbandspectrum-coe-ae--868da635a25a37465e9ce817.md) | 44 | `result-track:868da635a25a37465e9ce817910afad3018bef3920a2e1c815603a1e2d802e80` |
| 7 | `theorem` | [actualTiltStandardSpectrum_norm_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variant43663b4499c7625b73df080b1ecbcd0df64dccca1aa1ce25df80d44da5fe0b7d.lean/declarations/actualtiltstandardspectrum-norm-sq-integrable--0e4edfe6fa3c1432d451c86e.md) | 54 | `result-track:0e4edfe6fa3c1432d451c86e0a77cdaf1ef41a5d8724d9870756d5f3d0dc27d4` |
| 8 | `theorem` | [actualTiltBandState_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variant43663b4499c7625b73df080b1ecbcd0df64dccca1aa1ce25df80d44da5fe0b7d.lean/declarations/actualtiltbandstate-norm-sq--d31fef418bc922815e333c83.md) | 63 | `result-track:d31fef418bc922815e333c83279d5824e5f33e9b4297a9c535f668998637a067` |
| 9 | `theorem` | [actualTiltStandardSpectrum_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variant43663b4499c7625b73df080b1ecbcd0df64dccca1aa1ce25df80d44da5fe0b7d.lean/declarations/actualtiltstandardspectrum-energy--0de28d707689b2b1df9a7b33.md) | 74 | `result-track:0de28d707689b2b1df9a7b3326a72c9e7ea0fa873f754ea61d964532ab1c6ed2` |
| 10 | `theorem` | [actualTiltBandState_norm_sq_le_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variant43663b4499c7625b73df080b1ecbcd0df64dccca1aa1ce25df80d44da5fe0b7d.lean/declarations/actualtiltbandstate-norm-sq-le-energy--d8cdd16547c13e5baf78e926.md) | 85 | `result-track:d8cdd16547c13e5baf78e92665c559438166c61b4f098123aafc80d2fd515a04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
