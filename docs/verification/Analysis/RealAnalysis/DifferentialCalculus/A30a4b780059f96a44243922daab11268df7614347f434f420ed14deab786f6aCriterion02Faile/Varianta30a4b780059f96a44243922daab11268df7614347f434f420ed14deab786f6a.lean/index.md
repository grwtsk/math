# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.A30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6aCriterion02Faile.Varianta30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55215738125cb0648a2fde85c135ff3589ed3486",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/A30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6aCriterion02Faile/Varianta30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/A30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6aCriterion02Faile/Varianta30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/A30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6aCriterion02Faile/Varianta30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55215738125cb0648a2fde85c135ff3589ed3486`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/A30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6aCriterion02Faile/Varianta30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/A30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6aCriterion02Faile/Varianta30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailRankThreeReduction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAt_jetRatio](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/A30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6aCriterion02Faile/Varianta30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6a.lean/declarations/hasderivat-jetratio--1d981b3a4947838a9c5bff4f.md) | 9 | `result-track:1d981b3a4947838a9c5bff4f2566ac7d47f45f6939da154c8b63e427f17603bf` |
| 2 | `theorem` | [source_jet_det_nonpos_of_wronskian](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/A30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6aCriterion02Faile/Varianta30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6a.lean/declarations/source-jet-det-nonpos-of-wronskian--d0105be9ecca8c68bad7cb39.md) | 21 | `result-track:d0105be9ecca8c68bad7cb39a06f408f19d75f1d0da058b3855ee2aa4da9e54c` |
| 3 | `theorem` | [residual_cross_nonpos_of_source_jet_det](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/A30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6aCriterion02Faile/Varianta30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6a.lean/declarations/residual-cross-nonpos-of-source-jet-det--314b742e9709d25ec4818604.md) | 84 | `result-track:314b742e9709d25ec481860497d1acb88e74a62b3352465069ef0ad956b0cd75` |
| 4 | `theorem` | [integral_moment_cross_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/A30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6aCriterion02Faile/Varianta30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6a.lean/declarations/integral-moment-cross-nonpos--6196630c8be6146cb1a6e103.md) | 95 | `result-track:6196630c8be6146cb1a6e103ad22f94b78d805fbf697843838b79fcc8a777915` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
