# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt04.Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c0ad4455f08c506b892214654c7c4f78b3b4d98",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c0ad4455f08c506b892214654c7c4f78b3b4d98`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceBoundaryCubic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compactLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean/declarations/compactlaplace--5d75300a101741cb5b45b646.md) | 21 | `declaration-track:5d75300a101741cb5b45b6463df3cac07eb1e80b72c7ad21c786b4557f7e1b56` |
| 2 | `def` | [primitiveTransform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean/declarations/primitivetransform--c03e36dba8e1eccac51084d0.md) | 24 | `declaration-track:c03e36dba8e1eccac51084d0ede07870901c314ec7679bed7cbe367348b01178` |
| 3 | `def` | [normalizedPrimitiveTransform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean/declarations/normalizedprimitivetransform--e15e7d6cb90a0d72bf0bd9eb.md) | 26 | `declaration-track:e15e7d6cb90a0d72bf0bd9eb622bdb1b11da41fd97510e921ab54534c7f18183` |
| 4 | `theorem` | [compactLaplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean/declarations/compactlaplace-integrable--24b0bb1b517c8627349dd043.md) | 29 | `result-track:24b0bb1b517c8627349dd043dbbbbdb82e20e1ab7c3e89a2979b1d3df4bcdbf8` |
| 5 | `theorem` | [complex_weighted_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean/declarations/complex-weighted-derivative--8c5232e1b2df9f8e0849187b.md) | 36 | `result-track:8c5232e1b2df9f8e0849187bb0017d36882dbe4ff0fabcb587fd748fe9e1807c` |
| 6 | `theorem` | [actual_complex_pole_filter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean/declarations/actual-complex-pole-filter--95d044001245d1fce84e34ca.md) | 65 | `result-track:95d044001245d1fce84e34ca76c52a6891bd1897eb08282319d034d0375275f6` |
| 7 | `theorem` | [primitive_transform_normalization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean/declarations/primitive-transform-normalization--ffcdfc55003c21680422ac2a.md) | 92 | `result-track:ffcdfc55003c21680422ac2a5ebc682111b6e1d950ff2cad80034ef301f3cfc7` |
| 8 | `theorem` | [boundary_transform_factored](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean/declarations/boundary-transform-factored--a5436d4f34a2c62f043f7d1f.md) | 102 | `result-track:a5436d4f34a2c62f043f7d1f3c2be6fb747498583e43252b776652be2d5332f2` |
| 9 | `theorem` | [boundary_transform_factored_unnormalized](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean/declarations/boundary-transform-factored-unnormalized--85b1964d3746d2d9b28557ce.md) | 109 | `result-track:85b1964d3746d2d9b28557cee9286670792538e37eec09f520523872fa32f67f` |
| 10 | `theorem` | [compactLaplace_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean/declarations/compactlaplace-hasderivat--6095dc770711d398619aaab8.md) | 119 | `result-track:6095dc770711d398619aaab8060a5a7acd73dc90c33ab1c56ff052f282a1f743` |
| 11 | `theorem` | [compactLaplace_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean/declarations/compactlaplace-differentiable--500ce39c0b778ab13ff3cba2.md) | 164 | `result-track:500ce39c0b778ab13ff3cba2394035f3b8f85e5d47329f8e98a464f7d7d6bb35` |
| 12 | `theorem` | [normalized_primitive_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean/declarations/normalized-primitive-differentiable--fd2c4624f3b6ae21bb888309.md) | 168 | `result-track:fd2c4624f3b6ae21bb8883093dea403cbfb29bdc33ae9de4bb3a6b9d523f0aae` |
| 13 | `theorem` | [primitive_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean/declarations/primitive-differentiable--d8b483b861af07606f2883c1.md) | 173 | `result-track:d8b483b861af07606f2883c115619dd5017a644b14bdbccbaf7682abaaa0ded0` |
| 14 | `theorem` | [boundary_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean/declarations/boundary-differentiable--03473ff9c336a3899f38243e.md) | 178 | `result-track:03473ff9c336a3899f38243e6dc76dcd7dd93b4585984efbc0afbda21789725a` |
| 15 | `theorem` | [normalized_primitive_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean/declarations/normalized-primitive-half--aac4b1a2abe5f0d36c33519f.md) | 187 | `result-track:aac4b1a2abe5f0d36c33519f2c9a45fc01b667d939ef4f36228427da915b5379` |
| 16 | `theorem` | [normalized_primitive_half_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean/declarations/normalized-primitive-half-ne-zero--02f680015a893c352f9825ed.md) | 202 | `result-track:02f680015a893c352f9825ed07a3583dadbca716f4eb513397b0c76dabd3f7b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
