# Verification target: GRWTSK.Data.Sampling.Descriptions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54b541f7021e6b159b711bfdd50f4ae9ccf76f5c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Data/Sampling/Descriptions.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Waveform/Descriptions__SourceOccurrence898ac9c683067b3caf345624.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Waveform/Descriptions__SourceOccurrence898ac9c683067b3caf345624.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54b541f7021e6b159b711bfdd50f4ae9ccf76f5c`.

Source path: `GRWTSK/Data/Sampling/Descriptions.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Data/Sampling/Descriptions.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Notation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.LpSpace` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Role](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Waveform/Descriptions__SourceOccurrence898ac9c683067b3caf345624.lean/declarations/role--5e85c870dc24dd56ff0ed23b.md) | 26 | `declaration-track:5e85c870dc24dd56ff0ed23beaff135386031c9b54cab1e604a0e2c5b2b73f49` |
| 2 | `structure` | [SourceDescription](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Waveform/Descriptions__SourceOccurrence898ac9c683067b3caf345624.lean/declarations/sourcedescription--dbe57801d332e5a9f0c214a5.md) | 31 | `declaration-track:dbe57801d332e5a9f0c214a5a535b8dff2d4077477349cb75c65261ed4bebb86` |
| 3 | `structure` | [SamplingDescription](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Waveform/Descriptions__SourceOccurrence898ac9c683067b3caf345624.lean/declarations/samplingdescription--83a971aec8dd181dcafa3b9f.md) | 41 | `declaration-track:83a971aec8dd181dcafa3b9fb7d622d49619745d9ec3d4fdfe4cc440d0974ecc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
