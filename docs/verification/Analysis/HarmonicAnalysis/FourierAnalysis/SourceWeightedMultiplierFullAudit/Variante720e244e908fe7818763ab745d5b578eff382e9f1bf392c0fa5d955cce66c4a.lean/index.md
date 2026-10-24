# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SourceWeightedMultiplierFullAudit.Variante720e244e908fe7818763ab745d5b578eff382e9f1bf392c0fa5d955cce66c4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f4722ae6c75cb43b86d82f788bc012f4c4f0685",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variante720e244e908fe7818763ab745d5b578eff382e9f1bf392c0fa5d955cce66c4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variante720e244e908fe7818763ab745d5b578eff382e9f1bf392c0fa5d955cce66c4a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variante720e244e908fe7818763ab745d5b578eff382e9f1bf392c0fa5d955cce66c4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f4722ae6c75cb43b86d82f788bc012f4c4f0685`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variante720e244e908fe7818763ab745d5b578eff382e9f1bf392c0fa5d955cce66c4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variante720e244e908fe7818763ab745d5b578eff382e9f1bf392c0fa5d955cce66c4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterDeltaConvergence` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.LpSpace` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundaryMultiplier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variante720e244e908fe7818763ab745d5b578eff382e9f1bf392c0fa5d955cce66c4a.lean/declarations/boundarymultiplier--39eeaf55f3905810d70b9b91.md) | 14 | `declaration-track:39eeaf55f3905810d70b9b910b63fad2c78b91a2fce33333c2bbcd29d7738f0f` |
| 2 | `theorem` | [boundaryMultiplier_norm_le](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variante720e244e908fe7818763ab745d5b578eff382e9f1bf392c0fa5d955cce66c4a.lean/declarations/boundarymultiplier-norm-le--3a176a2b91444b18c80f46de.md) | 18 | `result-track:3a176a2b91444b18c80f46defc69474e1abc1fbd427fbb95f3306617b0fb7e14` |
| 3 | `theorem` | [boundaryMultiplier_measurable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variante720e244e908fe7818763ab745d5b578eff382e9f1bf392c0fa5d955cce66c4a.lean/declarations/boundarymultiplier-measurable--f20755e8e64a43102efd4d4b.md) | 65 | `result-track:f20755e8e64a43102efd4d4b5a9a3657963bbd3314febcc849e647429e16808c` |
| 4 | `theorem` | [frequencyProduct_memLp](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variante720e244e908fe7818763ab745d5b578eff382e9f1bf392c0fa5d955cce66c4a.lean/declarations/frequencyproduct-memlp--08e6ec1bb4ad549176e7a289.md) | 72 | `result-track:08e6ec1bb4ad549176e7a289825af83f673d523a39a0956fe458cbc40904d84f` |
| 5 | `def` | [frequencyVector](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variante720e244e908fe7818763ab745d5b578eff382e9f1bf392c0fa5d955cce66c4a.lean/declarations/frequencyvector--4b510754e29ae2c53bc6deee.md) | 85 | `declaration-track:4b510754e29ae2c53bc6deee466d503b5ff4d3602f9afa56cb0597e45ca24bac` |
| 6 | `theorem` | [frequencyVector_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variante720e244e908fe7818763ab745d5b578eff382e9f1bf392c0fa5d955cce66c4a.lean/declarations/frequencyvector-ae--27256550bdb0e8b9980ba656.md) | 90 | `result-track:27256550bdb0e8b9980ba656f9610d43c34740856c5bf90dbfd7ce2d0406afdd` |
| 7 | `theorem` | [frequencyVector_norm_le](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variante720e244e908fe7818763ab745d5b578eff382e9f1bf392c0fa5d955cce66c4a.lean/declarations/frequencyvector-norm-le--f746731331b15a7abef24340.md) | 96 | `result-track:f746731331b15a7abef243403d8371f73353f897892140a5efe3381b61b5722c` |
| 8 | `def` | [frequencyMultiplier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variante720e244e908fe7818763ab745d5b578eff382e9f1bf392c0fa5d955cce66c4a.lean/declarations/frequencymultiplier--8f6827a6927c02a8a68d460c.md) | 106 | `declaration-track:8f6827a6927c02a8a68d460c1d691ba2d0e3189954cc70882512becc96317288` |
| 9 | `theorem` | [frequencyMultiplier_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variante720e244e908fe7818763ab745d5b578eff382e9f1bf392c0fa5d955cce66c4a.lean/declarations/frequencymultiplier-ae--a76f8a29fc2122665cc2c1dc.md) | 135 | `result-track:a76f8a29fc2122665cc2c1dc69bab13292ec3205a4e1ff4ba15168752bccee98` |
| 10 | `def` | [sourceMultiplier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variante720e244e908fe7818763ab745d5b578eff382e9f1bf392c0fa5d955cce66c4a.lean/declarations/sourcemultiplier--5179285a2d0157eba084ebf4.md) | 142 | `declaration-track:5179285a2d0157eba084ebf48a0aeb22b941b6f20a17927225e6fcadc33ae322` |
| 11 | `theorem` | [sourceMultiplier_fourier_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variante720e244e908fe7818763ab745d5b578eff382e9f1bf392c0fa5d955cce66c4a.lean/declarations/sourcemultiplier-fourier-ae--ef829fc6c6ce22906a894d15.md) | 147 | `result-track:ef829fc6c6ce22906a894d15340ee7fe752cbc86b5cc70509d4250a68d5ec17a` |
| 12 | `theorem` | [sourceMultiplier_norm_le](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variante720e244e908fe7818763ab745d5b578eff382e9f1bf392c0fa5d955cce66c4a.lean/declarations/sourcemultiplier-norm-le--453fb9d6d1fc2dc215d2a9f4.md) | 156 | `result-track:453fb9d6d1fc2dc215d2a9f46f0244f2bb154a5848fcb12fe9385837ddd5aa8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
