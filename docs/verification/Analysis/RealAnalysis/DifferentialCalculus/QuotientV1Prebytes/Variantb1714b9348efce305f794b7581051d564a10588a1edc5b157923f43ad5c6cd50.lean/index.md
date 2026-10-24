# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuotientV1Prebytes.Variantb1714b9348efce305f794b7581051d564a10588a1edc5b157923f43ad5c6cd50

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79bd476067db60146fde1d50824b7f603a733dad",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuotientV1Prebytes/Variantb1714b9348efce305f794b7581051d564a10588a1edc5b157923f43ad5c6cd50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuotientV1Prebytes/Variantb1714b9348efce305f794b7581051d564a10588a1edc5b157923f43ad5c6cd50.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuotientV1Prebytes/Variantb1714b9348efce305f794b7581051d564a10588a1edc5b157923f43ad5c6cd50.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79bd476067db60146fde1d50824b7f603a733dad`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuotientV1Prebytes/Variantb1714b9348efce305f794b7581051d564a10588a1edc5b157923f43ad5c6cd50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuotientV1Prebytes/Variantb1714b9348efce305f794b7581051d564a10588a1edc5b157923f43ad5c6cd50.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePrimeMomentScale` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [continuousHalfDenominator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuotientV1Prebytes/Variantb1714b9348efce305f794b7581051d564a10588a1edc5b157923f43ad5c6cd50.lean/declarations/continuoushalfdenominator--12d27d81c023a556701e0910.md) | 27 | `declaration-track:12d27d81c023a556701e0910f71da1b3afdc6ba32e9aac6eb303189f05e67763` |
| 2 | `def` | [continuousHalfRational](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuotientV1Prebytes/Variantb1714b9348efce305f794b7581051d564a10588a1edc5b157923f43ad5c6cd50.lean/declarations/continuoushalfrational--3cd60a79ea518dc9913e17ae.md) | 30 | `declaration-track:3cd60a79ea518dc9913e17ae16fb7e527e4319a964edec8dc30530acfb287869` |
| 3 | `def` | [continuousHalfScaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuotientV1Prebytes/Variantb1714b9348efce305f794b7581051d564a10588a1edc5b157923f43ad5c6cd50.lean/declarations/continuoushalfscalederivative--646fb8d97290049bc5f5d6dd.md) | 34 | `declaration-track:646fb8d97290049bc5f5d6dda4308415519b603cafaed6dfb86b7893f8e1816f` |
| 4 | `theorem` | [continuousHalfDenominator_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuotientV1Prebytes/Variantb1714b9348efce305f794b7581051d564a10588a1edc5b157923f43ad5c6cd50.lean/declarations/continuoushalfdenominator-pos--66810f5e4fd448e75ab9dbe5.md) | 38 | `result-track:66810f5e4fd448e75ab9dbe5dd1c03d8c160536ed73c98e773163de59acc7378` |
| 5 | `theorem` | [continuousHalfRational_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuotientV1Prebytes/Variantb1714b9348efce305f794b7581051d564a10588a1edc5b157923f43ad5c6cd50.lean/declarations/continuoushalfrational-hasderivat--c8c20efec2d17319eaa7e5b0.md) | 43 | `result-track:c8c20efec2d17319eaa7e5b051e2f75abc7bd9fb020e08b916dfe2ef593a68aa` |
| 6 | `theorem` | [continuousHalfRational_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuotientV1Prebytes/Variantb1714b9348efce305f794b7581051d564a10588a1edc5b157923f43ad5c6cd50.lean/declarations/continuoushalfrational-contdiff--220b9dadb5a6870f4774db98.md) | 54 | `result-track:220b9dadb5a6870f4774db98dc3bef1e5b99846c271c00cc6560a2a01dd51618` |
| 7 | `theorem` | [continuousHalfScaleDerivative_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuotientV1Prebytes/Variantb1714b9348efce305f794b7581051d564a10588a1edc5b157923f43ad5c6cd50.lean/declarations/continuoushalfscalederivative-continuous--dc13444bd1536520541a6dfa.md) | 62 | `result-track:dc13444bd1536520541a6dfa830d50426b74499962e27a591cf2842f36359a2c` |
| 8 | `theorem` | [continuousHalfScaleDerivative_lt_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuotientV1Prebytes/Variantb1714b9348efce305f794b7581051d564a10588a1edc5b157923f43ad5c6cd50.lean/declarations/continuoushalfscalederivative-lt-zero--fcf1c499daeaed1c60234ba5.md) | 71 | `result-track:fcf1c499daeaed1c60234ba50a7f9e67450cbc35fe8748fb2a992dfe246ae083` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
