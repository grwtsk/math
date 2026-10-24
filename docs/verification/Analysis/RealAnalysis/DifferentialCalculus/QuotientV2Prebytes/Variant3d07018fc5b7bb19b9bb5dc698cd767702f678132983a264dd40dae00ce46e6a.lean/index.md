# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuotientV2Prebytes.Variant3d07018fc5b7bb19b9bb5dc698cd767702f678132983a264dd40dae00ce46e6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b5ff785117e01142a512e84e23d52a2e0ad42d0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuotientV2Prebytes/Variant3d07018fc5b7bb19b9bb5dc698cd767702f678132983a264dd40dae00ce46e6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuotientV2Prebytes/Variant3d07018fc5b7bb19b9bb5dc698cd767702f678132983a264dd40dae00ce46e6a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuotientV2Prebytes/Variant3d07018fc5b7bb19b9bb5dc698cd767702f678132983a264dd40dae00ce46e6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b5ff785117e01142a512e84e23d52a2e0ad42d0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuotientV2Prebytes/Variant3d07018fc5b7bb19b9bb5dc698cd767702f678132983a264dd40dae00ce46e6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuotientV2Prebytes/Variant3d07018fc5b7bb19b9bb5dc698cd767702f678132983a264dd40dae00ce46e6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePrimeMomentScale` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [continuousHalfDenominator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuotientV2Prebytes/Variant3d07018fc5b7bb19b9bb5dc698cd767702f678132983a264dd40dae00ce46e6a.lean/declarations/continuoushalfdenominator--15c10d5c2a2f73700e4f8218.md) | 35 | `declaration-track:15c10d5c2a2f73700e4f8218925a085886289ce9055fcdebc53377e981045873` |
| 2 | `def` | [continuousHalfRational](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuotientV2Prebytes/Variant3d07018fc5b7bb19b9bb5dc698cd767702f678132983a264dd40dae00ce46e6a.lean/declarations/continuoushalfrational--c201b23d06fc0a33dda50088.md) | 38 | `declaration-track:c201b23d06fc0a33dda50088ed11823a20d44019b6125430e304b3afae1eafcc` |
| 3 | `def` | [continuousHalfScaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuotientV2Prebytes/Variant3d07018fc5b7bb19b9bb5dc698cd767702f678132983a264dd40dae00ce46e6a.lean/declarations/continuoushalfscalederivative--ab7cdd571c1272c5ff0c8a57.md) | 42 | `declaration-track:ab7cdd571c1272c5ff0c8a57c2dd892d6df368d0eb1180e43b9048220a0f8720` |
| 4 | `theorem` | [continuousHalfDenominator_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuotientV2Prebytes/Variant3d07018fc5b7bb19b9bb5dc698cd767702f678132983a264dd40dae00ce46e6a.lean/declarations/continuoushalfdenominator-pos--98d6c918fa7df29f53f1c30f.md) | 46 | `result-track:98d6c918fa7df29f53f1c30fa97a0d5935f1ae4e504f95c567d91c0f28ecb500` |
| 5 | `theorem` | [continuousHalfRational_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuotientV2Prebytes/Variant3d07018fc5b7bb19b9bb5dc698cd767702f678132983a264dd40dae00ce46e6a.lean/declarations/continuoushalfrational-hasderivat--af32c382d8fb20287e1996a7.md) | 51 | `result-track:af32c382d8fb20287e1996a7fcb052ae93986b7c3a7cae510be10ae89b2567dc` |
| 6 | `theorem` | [continuousHalfRational_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuotientV2Prebytes/Variant3d07018fc5b7bb19b9bb5dc698cd767702f678132983a264dd40dae00ce46e6a.lean/declarations/continuoushalfrational-contdiff--31903d448591be920178aa7f.md) | 63 | `result-track:31903d448591be920178aa7f601802f0a8363ef4b3cb5d00b0f4d17ce7bc64b7` |
| 7 | `theorem` | [continuousHalfScaleDerivative_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuotientV2Prebytes/Variant3d07018fc5b7bb19b9bb5dc698cd767702f678132983a264dd40dae00ce46e6a.lean/declarations/continuoushalfscalederivative-continuous--43bae668feeef82a8bae9b0a.md) | 71 | `result-track:43bae668feeef82a8bae9b0af715d9f756c1b5cca827fd8e86b1ec311a431528` |
| 8 | `theorem` | [continuousHalfScaleDerivative_lt_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuotientV2Prebytes/Variant3d07018fc5b7bb19b9bb5dc698cd767702f678132983a264dd40dae00ce46e6a.lean/declarations/continuoushalfscalederivative-lt-zero--3b89c3ed30d41ab838717555.md) | 80 | `result-track:3b89c3ed30d41ab838717555ef1afa6e2d4ae3fc17020cabc8bce4a8671822ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
