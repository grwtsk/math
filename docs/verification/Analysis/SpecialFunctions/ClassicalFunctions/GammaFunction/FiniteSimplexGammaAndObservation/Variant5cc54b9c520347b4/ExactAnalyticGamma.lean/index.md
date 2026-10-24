# Verification target: GRWTSK.Analysis.SpecialFunctions.ClassicalFunctions.GammaFunction.FiniteSimplexGammaAndObservation.Variant5cc54b9c520347b4.ExactAnalyticGamma

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a30331525d7cb4c5375d8ce7217ad73ab91612d1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/ExactAnalyticGamma.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/ExactAnalyticGamma.lean/index.md) · [Full source](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/ExactAnalyticGamma.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a30331525d7cb4c5375d8ce7217ad73ab91612d1`.

Source path: `GRWTSK/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/ExactAnalyticGamma.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/ExactAnalyticGamma.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Probability.Simplex` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Beta` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Pi` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Decomposition.RadonNikodym` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Distributions.Gamma` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [exactGamma](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/ExactAnalyticGamma.lean/declarations/exactgamma--d0891012cd6603d2c810daf3.md) | 58 | `declaration-track:d0891012cd6603d2c810daf30cc35c914d1fc03c334b67994c8e0e3a77d4824c` |
| 2 | `theorem` | [exactGamma_positive](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/ExactAnalyticGamma.lean/declarations/exactgamma-positive--96b1381cdd8dbf73fdfb4bfb.md) | 60 | `result-track:96b1381cdd8dbf73fdfb4bfb1639996585a27c9d7f18d6c786ba52ea26d8f428` |
| 3 | `theorem` | [exactGamma_recurrence](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/ExactAnalyticGamma.lean/declarations/exactgamma-recurrence--464d8db1b110e183c721a062.md) | 64 | `result-track:464d8db1b110e183c721a0624892e4bd8e75e44fc96dfa55d1321562c36c4cfa` |
| 4 | `theorem` | [exactGamma_reflection](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/ExactAnalyticGamma.lean/declarations/exactgamma-reflection--43db9c20d989abfe3a6c6a9e.md) | 71 | `result-track:43db9c20d989abfe3a6c6a9e1ddaf4b7d5bff011a63303ef7be2e399b6c664f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
