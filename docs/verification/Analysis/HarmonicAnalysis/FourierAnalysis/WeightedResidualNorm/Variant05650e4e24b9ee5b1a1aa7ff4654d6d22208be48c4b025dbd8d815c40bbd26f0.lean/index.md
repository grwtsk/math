# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.WeightedResidualNorm.Variant05650e4e24b9ee5b1a1aa7ff4654d6d22208be48c4b025dbd8d815c40bbd26f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54b0ede56fbf7fde751128145fd26633a8c47dd2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant05650e4e24b9ee5b1a1aa7ff4654d6d22208be48c4b025dbd8d815c40bbd26f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant05650e4e24b9ee5b1a1aa7ff4654d6d22208be48c4b025dbd8d815c40bbd26f0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant05650e4e24b9ee5b1a1aa7ff4654d6d22208be48c4b025dbd8d815c40bbd26f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54b0ede56fbf7fde751128145fd26633a8c47dd2`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant05650e4e24b9ee5b1a1aa7ff4654d6d22208be48c4b025dbd8d815c40bbd26f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant05650e4e24b9ee5b1a1aa7ff4654d6d22208be48c4b025dbd8d815c40bbd26f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CoreTailSplit` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrectedCutoffIncrement` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FourierL1L2Forward` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel` — import line 4; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceTailSchedule` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [l2_angular_square](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant05650e4e24b9ee5b1a1aa7ff4654d6d22208be48c4b025dbd8d815c40bbd26f0.lean/declarations/l2-angular-square--73afd79286cf96c65fd8e482.md) | 17 | `result-track:73afd79286cf96c65fd8e482b2c485c3852969883f272aa2e53bdc56ff758469` |
| 2 | `theorem` | [weightedResidual_fourier_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant05650e4e24b9ee5b1a1aa7ff4654d6d22208be48c4b025dbd8d815c40bbd26f0.lean/declarations/weightedresidual-fourier-ae--ce64334122cd13c97fc6145e.md) | 42 | `result-track:ce64334122cd13c97fc6145e1540f564ebed17006978d6f9b1ab8b8ac87d299a` |
| 3 | `theorem` | [weightedResidual_norm_sq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant05650e4e24b9ee5b1a1aa7ff4654d6d22208be48c4b025dbd8d815c40bbd26f0.lean/declarations/weightedresidual-norm-sq--25dcd62294d4a3b194302457.md) | 63 | `result-track:25dcd62294d4a3b194302457a01b3f73b7e6d9462ce995cd3383ca228ba1e93b` |
| 4 | `theorem` | [arithmeticError_le_core_tails](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant05650e4e24b9ee5b1a1aa7ff4654d6d22208be48c4b025dbd8d815c40bbd26f0.lean/declarations/arithmeticerror-le-core-tails--a923089d5175fecf0dfa4b42.md) | 71 | `result-track:a923089d5175fecf0dfa4b423d381a0228db52f506c527ff8089bd0432395f5b` |
| 5 | `theorem` | [arithmeticError_le_scheduled_core](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant05650e4e24b9ee5b1a1aa7ff4654d6d22208be48c4b025dbd8d815c40bbd26f0.lean/declarations/arithmeticerror-le-scheduled-core--daa7df707421ff38b636154a.md) | 84 | `result-track:daa7df707421ff38b636154a19757968809f8d49efd75b35422d377ff133eb58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
