# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceRationalContinuousHalf.Variantd2a1c07b21eaf3a898459f734f5b25c00cf5a394f4bb239e8f768a59f2772e6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71d6b6048c0db5ddb6c5c4729a1278c20f82719a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variantd2a1c07b21eaf3a898459f734f5b25c00cf5a394f4bb239e8f768a59f2772e6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variantd2a1c07b21eaf3a898459f734f5b25c00cf5a394f4bb239e8f768a59f2772e6b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variantd2a1c07b21eaf3a898459f734f5b25c00cf5a394f4bb239e8f768a59f2772e6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71d6b6048c0db5ddb6c5c4729a1278c20f82719a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variantd2a1c07b21eaf3a898459f734f5b25c00cf5a394f4bb239e8f768a59f2772e6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variantd2a1c07b21eaf3a898459f734f5b25c00cf5a394f4bb239e8f768a59f2772e6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceNativeConstantCompensation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [continuousPoleHalf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variantd2a1c07b21eaf3a898459f734f5b25c00cf5a394f4bb239e8f768a59f2772e6b.lean/declarations/continuouspolehalf--8d0789523633e1d4d691075f.md) | 24 | `declaration-track:8d0789523633e1d4d691075f515de353476a3c0e9a2dcdcc8263a7f77c3352f5` |
| 2 | `theorem` | [continuousPoleHalf_eq_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variantd2a1c07b21eaf3a898459f734f5b25c00cf5a394f4bb239e8f768a59f2772e6b.lean/declarations/continuouspolehalf-eq-interval--98938dbf80dc958a6442f538.md) | 28 | `result-track:98938dbf80dc958a6442f538727b70c1821bbeb74274ac82f15c7dd0647645b5` |
| 3 | `theorem` | [continuousPoleHalf_eq_neg_negative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variantd2a1c07b21eaf3a898459f734f5b25c00cf5a394f4bb239e8f768a59f2772e6b.lean/declarations/continuouspolehalf-eq-neg-negative--ab04cd30f2579bad8a0ce12c.md) | 46 | `result-track:ab04cd30f2579bad8a0ce12cde90d331bcfda0cdbe84a832bf55595e6f369f91` |
| 4 | `theorem` | [continuousPoleHalf_abs_le_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variantd2a1c07b21eaf3a898459f734f5b25c00cf5a394f4bb239e8f768a59f2772e6b.lean/declarations/continuouspolehalf-abs-le-two--b966a603f3fd5b663d3198e2.md) | 54 | `result-track:b966a603f3fd5b663d3198e2b66a289ae2dea502b0f824d5498630a0e4631400` |
| 5 | `theorem` | [inverse_phase_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variantd2a1c07b21eaf3a898459f734f5b25c00cf5a394f4bb239e8f768a59f2772e6b.lean/declarations/inverse-phase-norm--ae72735c3cb2b225a6f64c1a.md) | 59 | `result-track:ae72735c3cb2b225a6f64c1a1d0aadce3ad0a510b69c2b2ac65b65f3e6371ff0` |
| 6 | `theorem` | [rationalKernel_eq_laplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variantd2a1c07b21eaf3a898459f734f5b25c00cf5a394f4bb239e8f768a59f2772e6b.lean/declarations/rationalkernel-eq-laplace--a623c5c34e77e6d99e774de6.md) | 65 | `result-track:a623c5c34e77e6d99e774de6ef154e856781b79cfdf57b10f9e7edd137bcdfce` |
| 7 | `theorem` | [rationalReadout_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variantd2a1c07b21eaf3a898459f734f5b25c00cf5a394f4bb239e8f768a59f2772e6b.lean/declarations/rationalreadout-product-integrable--6ba45526f80da779189dae2e.md) | 84 | `result-track:6ba45526f80da779189dae2e1823f13e86f379d7e3720802a5bf8b4bb64a8f95` |
| 8 | `theorem` | [native_rational_readout_eq_continuousPoleHalf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variantd2a1c07b21eaf3a898459f734f5b25c00cf5a394f4bb239e8f768a59f2772e6b.lean/declarations/native-rational-readout-eq-continuouspolehalf--babf00c842a9e6c9e3bf323d.md) | 99 | `result-track:babf00c842a9e6c9e3bf323df83ea283ad31f1abce6787432bc31512a52999f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
