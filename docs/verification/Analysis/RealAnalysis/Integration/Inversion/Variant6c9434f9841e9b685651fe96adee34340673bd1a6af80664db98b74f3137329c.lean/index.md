# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Inversion.Variant6c9434f9841e9b685651fe96adee34340673bd1a6af80664db98b74f3137329c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "863049c1be20f280fb4f1cd989fb6fec45692236",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Inversion/Variant6c9434f9841e9b685651fe96adee34340673bd1a6af80664db98b74f3137329c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant6c9434f9841e9b685651fe96adee34340673bd1a6af80664db98b74f3137329c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant6c9434f9841e9b685651fe96adee34340673bd1a6af80664db98b74f3137329c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `863049c1be20f280fb4f1cd989fb6fec45692236`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Inversion/Variant6c9434f9841e9b685651fe96adee34340673bd1a6af80664db98b74f3137329c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Inversion/Variant6c9434f9841e9b685651fe96adee34340673bd1a6af80664db98b74f3137329c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.PeakFunction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.FourierTransform` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tendsto_integral_cexp_sq_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant6c9434f9841e9b685651fe96adee34340673bd1a6af80664db98b74f3137329c.lean/declarations/tendsto-integral-cexp-sq-smul--b3720401226d233e90397417.md) | 50 | `result-track:b3720401226d233e90397417f3933d228be7701348cae3338aaede2d81efe927` |
| 2 | `lemma` | [tendsto_integral_gaussian_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant6c9434f9841e9b685651fe96adee34340673bd1a6af80664db98b74f3137329c.lean/declarations/tendsto-integral-gaussian-smul--3bf1f8e50c4410a832a980ff.md) | 71 | `result-track:3bf1f8e50c4410a832a980ffa8882cbbc108e2d3e19a46a18e2712c8c3518381` |
| 3 | `lemma` | [tendsto_integral_gaussian_smul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant6c9434f9841e9b685651fe96adee34340673bd1a6af80664db98b74f3137329c.lean/declarations/tendsto-integral-gaussian-smul--975644cfaf03a8230b7f2365.md) | 104 | `result-track:975644cfaf03a8230b7f23653a47104bd138f45913fb0e151830c335299922d1` |
| 4 | `theorem` | [MeasureTheory.Integrable.fourier_inversion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant6c9434f9841e9b685651fe96adee34340673bd1a6af80664db98b74f3137329c.lean/declarations/measuretheory-integrable-fourier-inversion--08aba524ae81aa5a4aef804e.md) | 159 | `result-track:08aba524ae81aa5a4aef804e4b9c55a98c38e1b4bdfdc4d4b2cb40f937613edc` |
| 5 | `theorem` | [Continuous.fourier_inversion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant6c9434f9841e9b685651fe96adee34340673bd1a6af80664db98b74f3137329c.lean/declarations/continuous-fourier-inversion--a0b7deaaf5a141a058fec631.md) | 168 | `result-track:a0b7deaaf5a141a058fec631721d0d66aa85d9b7b5525a32c935763c320bc0c7` |
| 6 | `theorem` | [MeasureTheory.Integrable.fourier_inversion_inv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant6c9434f9841e9b685651fe96adee34340673bd1a6af80664db98b74f3137329c.lean/declarations/measuretheory-integrable-fourier-inversion-inv--cef36adc733ccbfe88dd33af.md) | 177 | `result-track:cef36adc733ccbfe88dd33affa5d0ca4aa16976666f5bcf85384ed6246c44682` |
| 7 | `theorem` | [Continuous.fourier_inversion_inv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant6c9434f9841e9b685651fe96adee34340673bd1a6af80664db98b74f3137329c.lean/declarations/continuous-fourier-inversion-inv--3c3773273eae250efc58c6e5.md) | 186 | `result-track:3c3773273eae250efc58c6e5fa1068692b706eefaeb36ec4e6d0ae7754665b06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
