# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPositiveLift.Variant33b7192e6e46adeb3dd41c8eb7edd425b6e859a128a25fc49b35922304867e81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9021a744ac4972eaaadf0c08f819ce79662abf79",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant33b7192e6e46adeb3dd41c8eb7edd425b6e859a128a25fc49b35922304867e81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant33b7192e6e46adeb3dd41c8eb7edd425b6e859a128a25fc49b35922304867e81.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant33b7192e6e46adeb3dd41c8eb7edd425b6e859a128a25fc49b35922304867e81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9021a744ac4972eaaadf0c08f819ce79662abf79`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant33b7192e6e46adeb3dd41c8eb7edd425b6e859a128a25fc49b35922304867e81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant33b7192e6e46adeb3dd41c8eb7edd425b6e859a128a25fc49b35922304867e81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailRankThreeReduction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAt_jetRatio](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant33b7192e6e46adeb3dd41c8eb7edd425b6e859a128a25fc49b35922304867e81.lean/declarations/hasderivat-jetratio--c861d6acf9441effd781e6ad.md) | 31 | `result-track:c861d6acf9441effd781e6ade89514685535bed2599309f3d24a185b9a563968` |
| 2 | `theorem` | [source_jet_det_nonpos_of_wronskian](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant33b7192e6e46adeb3dd41c8eb7edd425b6e859a128a25fc49b35922304867e81.lean/declarations/source-jet-det-nonpos-of-wronskian--f8769b5dd5620a1a0c2b9c1f.md) | 45 | `result-track:f8769b5dd5620a1a0c2b9c1f78039048d08fd0626923ab010068883e52ed1ff3` |
| 3 | `theorem` | [residual_cross_nonpos_of_source_jet_det](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant33b7192e6e46adeb3dd41c8eb7edd425b6e859a128a25fc49b35922304867e81.lean/declarations/residual-cross-nonpos-of-source-jet-det--069463dad0754c40c1828849.md) | 109 | `result-track:069463dad0754c40c18288492eaa206e2c73115a8776c7076c5d0636e034b7dd` |
| 4 | `theorem` | [integral_moment_cross_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant33b7192e6e46adeb3dd41c8eb7edd425b6e859a128a25fc49b35922304867e81.lean/declarations/integral-moment-cross-nonpos--adfb526ffeac7713141d54ac.md) | 122 | `result-track:adfb526ffeac7713141d54acbbaa4e5f87c26dc5f36c69b584471ae8ef83bffa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
