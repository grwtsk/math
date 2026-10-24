# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceBumpMoments.Variant26632eea071865c8fb8ba78dd7eb011ac997af037eb7aa2d6d5ccfc7254362d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cfffc83e8aaa0e2a50f3f3d48fa47261b4e67a3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant26632eea071865c8fb8ba78dd7eb011ac997af037eb7aa2d6d5ccfc7254362d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant26632eea071865c8fb8ba78dd7eb011ac997af037eb7aa2d6d5ccfc7254362d7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant26632eea071865c8fb8ba78dd7eb011ac997af037eb7aa2d6d5ccfc7254362d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cfffc83e8aaa0e2a50f3f3d48fa47261b4e67a3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant26632eea071865c8fb8ba78dd7eb011ac997af037eb7aa2d6d5ccfc7254362d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant26632eea071865c8fb8ba78dd7eb011ac997af037eb7aa2d6d5ccfc7254362d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant26632eea071865c8fb8ba78dd7eb011ac997af037eb7aa2d6d5ccfc7254362d7.lean/declarations/bumpmoment--9eef791e06f1a18edd538e8c.md) | 21 | `declaration-track:9eef791e06f1a18edd538e8cb5655d1d501fa128200d2e199ca63621561ab132` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant26632eea071865c8fb8ba78dd7eb011ac997af037eb7aa2d6d5ccfc7254362d7.lean/declarations/bumpmoment-intervalintegrable--c78556cae7357b5ae7cc4a43.md) | 26 | `result-track:c78556cae7357b5ae7cc4a4396fbcafe27e587394932e9b2c82cc1d829b76efb` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant26632eea071865c8fb8ba78dd7eb011ac997af037eb7aa2d6d5ccfc7254362d7.lean/declarations/bumpmoment-zero-eq-source--d30190f9e1d5405edd5d828f.md) | 33 | `result-track:d30190f9e1d5405edd5d828f059ec8ee154b5feee9dfa42bf4fad3791d36f3eb` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant26632eea071865c8fb8ba78dd7eb011ac997af037eb7aa2d6d5ccfc7254362d7.lean/declarations/bumpmoment-zero-zero--8b855dd0e5a00b0129d6c42c.md) | 46 | `result-track:8b855dd0e5a00b0129d6c42c93f6154519173f0531920b057a1e1e244a5d2541` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant26632eea071865c8fb8ba78dd7eb011ac997af037eb7aa2d6d5ccfc7254362d7.lean/declarations/bumpflux-hasderivat--d909cabce5cbef56a290c34b.md) | 56 | `result-track:d909cabce5cbef56a290c34b071d92b4efbff2abcfc2154ffff758769ccb2fd3` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant26632eea071865c8fb8ba78dd7eb011ac997af037eb7aa2d6d5ccfc7254362d7.lean/declarations/bumpmoment-equation--ab9a40125c7343a62e0859c7.md) | 67 | `result-track:ab9a40125c7343a62e0859c7004f06e87c68414b7536ba2ca9d6446724ea5a14` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMoments/Variant26632eea071865c8fb8ba78dd7eb011ac997af037eb7aa2d6d5ccfc7254362d7.lean/declarations/re-eq-zero-of-weighted-energy--0c665d1ccf2609ee19a107c6.md) | 102 | `result-track:0c665d1ccf2609ee19a107c6e4399990ce02474917f828cfaadd36243a8ee9c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
