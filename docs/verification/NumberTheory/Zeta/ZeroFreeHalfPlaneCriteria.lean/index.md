# Verification target: GRWTSK.NumberTheory.Zeta.ZeroFreeHalfPlaneCriteria

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46a407af562e1a2951e31fdb39bb0661249aa558",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/ZeroFreeHalfPlaneCriteria.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Zeta/ZeroFreeHalfPlaneCriteria.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Zeta/ZeroFreeHalfPlaneCriteria.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46a407af562e1a2951e31fdb39bb0661249aa558`.

Source path: `GRWTSK/NumberTheory/Zeta/ZeroFreeHalfPlaneCriteria.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/ZeroFreeHalfPlaneCriteria.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.PolynomialLaplaceHolomorphy`](../../../../mathematics/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.LaplaceDirichletSeries`](../../../../mathematics/NumberTheory/Moebius/LaplaceDirichletSeries.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MeanSquareLaplaceHolomorphy`](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.PoleRegularization`](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry`](../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [original_pickup_initial_identity](../../../../mathematics/NumberTheory/Zeta/ZeroFreeHalfPlaneCriteria.lean/declarations/original-pickup-initial-identity--dc169eda90ea53fa1969c914.md) | 33 | `result-track:dc169eda90ea53fa1969c914e57268dd2b30fa48d04117bae45981cb37bb446d` |
| 2 | `theorem` | [original_laplace_holomorphic_excludes_right_zeros](../../../../mathematics/NumberTheory/Zeta/ZeroFreeHalfPlaneCriteria.lean/declarations/original-laplace-holomorphic-excludes-right-zeros--78777b0d4924e08e37a5d98d.md) | 39 | `result-track:78777b0d4924e08e37a5d98d3225311b83c55bbc85adcc4b0f07452ccf60e761` |
| 3 | `theorem` | [original_laplace_holomorphic_implies_rh](../../../../mathematics/NumberTheory/Zeta/ZeroFreeHalfPlaneCriteria.lean/declarations/original-laplace-holomorphic-implies-rh--b50fe564bfc7a7ad501ad917.md) | 46 | `result-track:b50fe564bfc7a7ad501ad917899e8a10bc106a48c0dbf6d0769f58adabe0b923` |
| 4 | `theorem` | [whole_pickup_poly_excludes_right_zeros](../../../../mathematics/NumberTheory/Zeta/ZeroFreeHalfPlaneCriteria.lean/declarations/whole-pickup-poly-excludes-right-zeros--6d8ddcb40fcfeaa671e0bfb3.md) | 65 | `result-track:6d8ddcb40fcfeaa671e0bfb3854b8391e86e23fb1ff0a10320ce6ed5558fd2aa` |
| 5 | `theorem` | [whole_pickup_poly_implies_rh](../../../../mathematics/NumberTheory/Zeta/ZeroFreeHalfPlaneCriteria.lean/declarations/whole-pickup-poly-implies-rh--1b5a17e2bb9cf641fb29e3dc.md) | 70 | `result-track:1b5a17e2bb9cf641fb29e3dc1e50e8b5d1e3496f8de7396def45ca15a29cda7a` |
| 6 | `theorem` | [energy_poly_implies_rh](../../../../mathematics/NumberTheory/Zeta/ZeroFreeHalfPlaneCriteria.lean/declarations/energy-poly-implies-rh--b66ee41ed5c359360d8f68cd.md) | 74 | `result-track:b66ee41ed5c359360d8f68cdea504f1a40642ddb5a6d168e891307750a2bb9d3` |
| 7 | `theorem` | [cross_poly_implies_rh](../../../../mathematics/NumberTheory/Zeta/ZeroFreeHalfPlaneCriteria.lean/declarations/cross-poly-implies-rh--0699c27c9f393ca4c83cd1d1.md) | 78 | `result-track:0699c27c9f393ca4c83cd1d1d7942132f61d1609f6ea6dbbc87489e06bf10be5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
