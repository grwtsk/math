# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceFractionalQuadrature.Variantf97ca49c2b326f63ec6e83f75d2a64842a250e37ba41da367d7bdf9bbc89a3bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1921abc979e84af06247c81e35b8fc1831298c6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variantf97ca49c2b326f63ec6e83f75d2a64842a250e37ba41da367d7bdf9bbc89a3bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variantf97ca49c2b326f63ec6e83f75d2a64842a250e37ba41da367d7bdf9bbc89a3bd.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variantf97ca49c2b326f63ec6e83f75d2a64842a250e37ba41da367d7bdf9bbc89a3bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1921abc979e84af06247c81e35b8fc1831298c6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variantf97ca49c2b326f63ec6e83f75d2a64842a250e37ba41da367d7bdf9bbc89a3bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variantf97ca49c2b326f63ec6e83f75d2a64842a250e37ba41da367d7bdf9bbc89a3bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSampling` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fract_eq_sub_of_unit_cell](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variantf97ca49c2b326f63ec6e83f75d2a64842a250e37ba41da367d7bdf9bbc89a3bd.lean/declarations/fract-eq-sub-of-unit-cell--79c3b5cf93226e766a922f49.md) | 33 | `result-track:79c3b5cf93226e766a922f4900a222827057601b3ebf6f8e8ba4e5b53f023e6a` |
| 2 | `theorem` | [fract_deriv_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variantf97ca49c2b326f63ec6e83f75d2a64842a250e37ba41da367d7bdf9bbc89a3bd.lean/declarations/fract-deriv-intervalintegrable--843dabc8a21bcc46539602dd.md) | 40 | `result-track:843dabc8a21bcc46539602dd52bb7c1f51075d973e935864e7fa344103cb06d7` |
| 3 | `theorem` | [unit_right_sampling_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variantf97ca49c2b326f63ec6e83f75d2a64842a250e37ba41da367d7bdf9bbc89a3bd.lean/declarations/unit-right-sampling-identity--c293fa944523283e0c0049dd.md) | 54 | `result-track:c293fa944523283e0c0049dd79890b722930559e7da682f96b0a8cf3a7ff8641` |
| 4 | `theorem` | [finite_quadrature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variantf97ca49c2b326f63ec6e83f75d2a64842a250e37ba41da367d7bdf9bbc89a3bd.lean/declarations/finite-quadrature--776ee59800bda4ea28bb633a.md) | 76 | `result-track:776ee59800bda4ea28bb633a9683e7629dd25702504d92bcaf7ce0a27e049e29` |
| 5 | `theorem` | [finite_quadrature_of_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variantf97ca49c2b326f63ec6e83f75d2a64842a250e37ba41da367d7bdf9bbc89a3bd.lean/declarations/finite-quadrature-of-endpoint-zero--b609c3fa2697318f9e143250.md) | 99 | `result-track:b609c3fa2697318f9e14325064f8cb9d86a59fc177625eeb87da92aa7d2efa0a` |
| 6 | `theorem` | [positive_axis_quadrature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variantf97ca49c2b326f63ec6e83f75d2a64842a250e37ba41da367d7bdf9bbc89a3bd.lean/declarations/positive-axis-quadrature--cce7173306f7d5dea020476f.md) | 106 | `result-track:cce7173306f7d5dea020476f4c6fcd07c8e1e35077d684fdb0b01365d1371632` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
