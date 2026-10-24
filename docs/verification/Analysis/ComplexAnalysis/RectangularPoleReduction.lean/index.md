# Verification target: GRWTSK.Analysis.Complex.RectangularPoleReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e21eb584148f5bfbc9c959330c5578f2452ae79",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RectangularPoleReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RectangularPoleReduction.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RectangularPoleReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e21eb584148f5bfbc9c959330c5578f2452ae79`.

Source path: `GRWTSK/Analysis/Complex/RectangularPoleReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RectangularPoleReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.FinitePoleSubtraction`](../../../../mathematics/Analysis/ComplexAnalysis/FinitePoleSubtraction.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.OrientedRectangle`](../../../../mathematics/Analysis/ComplexAnalysis/OrientedRectangle.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedRectangle](../../../../mathematics/Analysis/ComplexAnalysis/RectangularPoleReduction.lean/declarations/closedrectangle--bb4209e8da5c48baedb3ee9f.md) | 30 | `declaration-track:bb4209e8da5c48baedb3ee9fd7323476416e06af292dcf01e3821886856c0534` |
| 2 | `def` | [principalSum](../../../../mathematics/Analysis/ComplexAnalysis/RectangularPoleReduction.lean/declarations/principalsum--531310c1c6e61a92bdbaa8c0.md) | 34 | `declaration-track:531310c1c6e61a92bdbaa8c0b3714e074f7190a211ef908990087fe784a431a7` |
| 3 | `theorem` | [analyticAt_principalSum](../../../../mathematics/Analysis/ComplexAnalysis/RectangularPoleReduction.lean/declarations/analyticat-principalsum--91f68b0244c399eb01341661.md) | 37 | `result-track:91f68b0244c399eb013416610ae6c6f314b9275732649eb373170672641e6966` |
| 4 | `def` | [EdgeIntegrable](../../../../mathematics/Analysis/ComplexAnalysis/RectangularPoleReduction.lean/declarations/edgeintegrable--1fd5b129e22ae06a6adc3bb9.md) | 46 | `declaration-track:1fd5b129e22ae06a6adc3bb985fabb60813f14ebf4f0a308818e557f11326a8c` |
| 5 | `theorem` | [boundaryIntegral_add](../../../../mathematics/Analysis/ComplexAnalysis/RectangularPoleReduction.lean/declarations/boundaryintegral-add--1810772747b313312ed845d4.md) | 52 | `result-track:1810772747b313312ed845d42c2873a0eb309a4781b99f5c56780d6107fb606b` |
| 6 | `theorem` | [boundaryIntegral_congr](../../../../mathematics/Analysis/ComplexAnalysis/RectangularPoleReduction.lean/declarations/boundaryintegral-congr--26e0f3f35f309c4e33843d00.md) | 64 | `result-track:26e0f3f35f309c4e33843d00c45f1e0c1c22286dfdff8cd9eb25ca40e433ea51` |
| 7 | `theorem` | [boundaryIntegral_zero_on_rectangle](../../../../mathematics/Analysis/ComplexAnalysis/RectangularPoleReduction.lean/declarations/boundaryintegral-zero-on-rectangle--367f2a1f4171545e0b421162.md) | 81 | `result-track:367f2a1f4171545e0b4211624c3475daae62a9eff5e3e306bfb99d6155b88c76` |
| 8 | `theorem` | [edgeIntegrable_of_analytic_germs](../../../../mathematics/Analysis/ComplexAnalysis/RectangularPoleReduction.lean/declarations/edgeintegrable-of-analytic-germs--ec2885218ae9d9932e186bc0.md) | 95 | `result-track:ec2885218ae9d9932e186bc02dade6ce04a9f2acace7f58ad4351e83fe7d39be` |
| 9 | `theorem` | [boundaryIntegral_eq_principalSum](../../../../mathematics/Analysis/ComplexAnalysis/RectangularPoleReduction.lean/declarations/boundaryintegral-eq-principalsum--847c9db6805ce7e91a66c047.md) | 115 | `result-track:847c9db6805ce7e91a66c0476c225a52a2716f31302a35ace929d5e998df9005` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
