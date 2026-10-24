# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AreaOfACircle.Variant831aafe9cc0e54dc3a4d4d81d154d487ab0d0423e37becc9e887c15552b71fb0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3320ee7301be6bd4b2e1d6f4a0d308df9768592b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant831aafe9cc0e54dc3a4d4d81d154d487ab0d0423e37becc9e887c15552b71fb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant831aafe9cc0e54dc3a4d4d81d154d487ab0d0423e37becc9e887c15552b71fb0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant831aafe9cc0e54dc3a4d4d81d154d487ab0d0423e37becc9e887c15552b71fb0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3320ee7301be6bd4b2e1d6f4a0d308df9768592b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant831aafe9cc0e54dc3a4d4d81d154d487ab0d0423e37becc9e887c15552b71fb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant831aafe9cc0e54dc3a4d4d81d154d487ab0d0423e37becc9e887c15552b71fb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.InverseDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.FundThmCalculus` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Integral` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant831aafe9cc0e54dc3a4d4d81d154d487ab0d0423e37becc9e887c15552b71fb0.lean/declarations/macro-rules--f32c83fbd7b56c995e89969a.md) | 47 | `declaration-track:f32c83fbd7b56c995e89969a4edd43cc83a67d5cd51ac6ea21171fc9f6a2aa9d` |
| 2 | `def` | [disc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant831aafe9cc0e54dc3a4d4d81d154d487ab0d0423e37becc9e887c15552b71fb0.lean/declarations/disc--6ecaa3ab1e22689cbad5aeb9.md) | 61 | `declaration-track:6ecaa3ab1e22689cbad5aeb9464622e652268e2073dc050d7a9e81e75d52d6c7` |
| 3 | `theorem` | [disc_eq_regionBetween](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant831aafe9cc0e54dc3a4d4d81d154d487ab0d0423e37becc9e887c15552b71fb0.lean/declarations/disc-eq-regionbetween--60ffd2b85590f04d648f3b59.md) | 69 | `result-track:60ffd2b85590f04d648f3b593f1f75edb3ff15bd4b7111c9337b4f84bf0ab961` |
| 4 | `theorem` | [measurableSet_disc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant831aafe9cc0e54dc3a4d4d81d154d487ab0d0423e37becc9e887c15552b71fb0.lean/declarations/measurableset-disc--952ceca3aa2b5b0144deffdc.md) | 85 | `result-track:952ceca3aa2b5b0144deffdc825023f26d98f9031580aae793709c49bfb4d524` |
| 5 | `theorem` | [area_disc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant831aafe9cc0e54dc3a4d4d81d154d487ab0d0423e37becc9e887c15552b71fb0.lean/declarations/area-disc--593906844b76e39bfce2390c.md) | 90 | `result-track:593906844b76e39bfce2390c24feb826c0a77692da103c6c91fcc02472457a74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
