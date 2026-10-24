# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPositiveLift.Variantc2d1a5ef18cc71eca30bb3ae1e59067d6bf64c61b5005f455f5adb0f9e4a5c48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "738f3544f8c8b5bde6ff3f9e81e1a22057345478",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc2d1a5ef18cc71eca30bb3ae1e59067d6bf64c61b5005f455f5adb0f9e4a5c48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc2d1a5ef18cc71eca30bb3ae1e59067d6bf64c61b5005f455f5adb0f9e4a5c48.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc2d1a5ef18cc71eca30bb3ae1e59067d6bf64c61b5005f455f5adb0f9e4a5c48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `738f3544f8c8b5bde6ff3f9e81e1a22057345478`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc2d1a5ef18cc71eca30bb3ae1e59067d6bf64c61b5005f455f5adb0f9e4a5c48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc2d1a5ef18cc71eca30bb3ae1e59067d6bf64c61b5005f455f5adb0f9e4a5c48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailRankThreeReduction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAt_jetRatio](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc2d1a5ef18cc71eca30bb3ae1e59067d6bf64c61b5005f455f5adb0f9e4a5c48.lean/declarations/hasderivat-jetratio--b178243cadec1ae5a54d66c8.md) | 23 | `result-track:b178243cadec1ae5a54d66c8e46fd391eb59387eca94c768d2925a60b6b5cb55` |
| 2 | `theorem` | [source_jet_det_nonpos_of_wronskian](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc2d1a5ef18cc71eca30bb3ae1e59067d6bf64c61b5005f455f5adb0f9e4a5c48.lean/declarations/source-jet-det-nonpos-of-wronskian--258c0e5e677a9bd494ca61b9.md) | 37 | `result-track:258c0e5e677a9bd494ca61b99ad85b135530c886ff61cd98693d6edc9afc8181` |
| 3 | `theorem` | [residual_cross_nonpos_of_source_jet_det](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc2d1a5ef18cc71eca30bb3ae1e59067d6bf64c61b5005f455f5adb0f9e4a5c48.lean/declarations/residual-cross-nonpos-of-source-jet-det--e56ce3a08d66767ec19fc6cf.md) | 101 | `result-track:e56ce3a08d66767ec19fc6cf5c9ec65ca2a9e304c5a849d84b392cbf9650f0aa` |
| 4 | `theorem` | [integral_moment_cross_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc2d1a5ef18cc71eca30bb3ae1e59067d6bf64c61b5005f455f5adb0f9e4a5c48.lean/declarations/integral-moment-cross-nonpos--1645b5f2f26f205a70af95fb.md) | 114 | `result-track:1645b5f2f26f205a70af95fb14bd927ad5843753ff83a648d68f89ad52ac0f74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
