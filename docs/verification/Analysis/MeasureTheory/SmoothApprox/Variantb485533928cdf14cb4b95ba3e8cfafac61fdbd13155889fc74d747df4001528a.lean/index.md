# Verification target: GRWTSK.Analysis.MeasureTheory.SmoothApprox.Variantb485533928cdf14cb4b95ba3e8cfafac61fdbd13155889fc74d747df4001528a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c595df7be86f653a48302db05a4d4474f59ac7bf",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SmoothApprox/Variantb485533928cdf14cb4b95ba3e8cfafac61fdbd13155889fc74d747df4001528a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SmoothApprox/Variantb485533928cdf14cb4b95ba3e8cfafac61fdbd13155889fc74d747df4001528a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SmoothApprox/Variantb485533928cdf14cb4b95ba3e8cfafac61fdbd13155889fc74d747df4001528a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c595df7be86f653a48302db05a4d4474f59ac7bf`.

Source path: `GRWTSK/Analysis/MeasureTheory/SmoothApprox/Variantb485533928cdf14cb4b95ba3e8cfafac61fdbd13155889fc74d747df4001528a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SmoothApprox/Variantb485533928cdf14cb4b95ba3e8cfafac61fdbd13155889fc74d747df4001528a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.SmoothApprox` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ContinuousMapDense` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exist_eLpNorm_sub_le_of_continuous](../../../../../mathematics/Analysis/MeasureTheory/SmoothApprox/Variantb485533928cdf14cb4b95ba3e8cfafac61fdbd13155889fc74d747df4001528a.lean/declarations/exist-elpnorm-sub-le-of-continuous--1d77952995b51cde5cb92f88.md) | 47 | `result-track:1d77952995b51cde5cb92f88fe309f23c73e7ef72b0830e33374bdeeba4dfdde` |
| 2 | `theorem` | [exist_eLpNorm_sub_le](../../../../../mathematics/Analysis/MeasureTheory/SmoothApprox/Variantb485533928cdf14cb4b95ba3e8cfafac61fdbd13155889fc74d747df4001528a.lean/declarations/exist-elpnorm-sub-le--4a1b497054d4da5fdb9fa1a7.md) | 95 | `result-track:4a1b497054d4da5fdb9fa1a7e54926c3899be510636ca06fa07150ee99c24ca3` |
| 3 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.ExistELpNormSubLeOfContinuous.Variantb7cb39d5a8ac7287cfe6b7b3f9763978f80ca606269a19529f272c25f9d5c68e.MeasureTheory.Lp.dense_hasCompactSupport_contDiff](../../../../../mathematics/Analysis/MeasureTheory/SmoothApprox/Variantb485533928cdf14cb4b95ba3e8cfafac61fdbd13155889fc74d747df4001528a.lean/declarations/root-grwtsk-analysis-measuretheory-existelpnormsubleofcontinuous-variant--055e3c5272c72bcd86780b43.md) | 110 | `result-track:055e3c5272c72bcd86780b43ae6390d3d172cb4ba93341c72942d7958739ba99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
