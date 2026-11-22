# Concrete rational gamma tail and panel coefficients

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Owner: [WeilGammaWeightExamples.lean](WeilGammaWeightExamples.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaWeightExamples`.
MSC2020 primary 11M06; dependency 65G20.
Status **SOURCE_PROOF_CANDIDATE**; novelty/prior-art completeness **UNASSESSED**.

## Actual source data

For each row, the source is the actual `tailWeight(-2 log u)`, with its entire
improper integral. Both endpoints have denominator 10^9.

| u | N | lower numerator | upper numerator |
|---|---:|---:|---:|
| 15/16 | 96 | 2470144883 | 2470144884 |
| 3/4 | 24 | 1616456183 | 1616456184 |
| 1/2 | 12 | 1012953753 | 1012953754 |
| 1/4 | 6 | 500391475 | 500391476 |
| 1/8 | 4 | 250012208 | 250012209 |

Each row satisfies exact rational inequalities `lower<=S_N` and
`S_N+E_N<=upper`, using the COMPLETE E_N from the preceding module.
The finite rational arithmetic was evaluated in Python's
standard-library Fraction arithmetic during authoring. No floating-point
number was used to decide an interval endpoint. The analytical source return
uses `rationalTail_bounds`. Python calculation does not establish that the
Lean proof elaborates or that its dependency closure has been kernel checked.

Successive panel midpoint numerators, again over 10^9, are
853688700, 603502430, 512562278, and 250379267. Each panel radius is 1/10^9,
not 1/(2*10^9), because BOTH endpoint intervals are paid. The far midpoint is
500024417/2000000000, with radius 1/2000000000. The source tail is not dropped.

The last lag is 6 log 2 > 4, using the pinned mathlib proved lower bound for
log 2. Thus it is beyond the support-separation width at radius two. This
alone is not a radius-two sign certificate, nor a claim that this coarse
example mesh gives a useful total lag-quadrature error.

## Individual declaration correspondence

- `table_arithmetic`: five explicit rational computations, including positivity
  of u, u<1, partial-sum lower bounds and complete-remainder upper bounds.
  `norm_num` proof bodies use only rational arithmetic and finite sums.
- `tail_table`: combines each checked rational row with the exact original
  improper-integral theorem; no numerical log or exponential oracle.
- `tail_midpoint_error`: both endpoints imply the half-width absolute error.
- `panel_midpoint_error`: uses antitone log lags and the original tail-difference
  identity. Both endpoint errors produce the full panel radius.
- `last_lag_gt_four`: log(1/8)=-3log2 and mathlib `Real.log_two_gt_d9` give the
  actual support-separation inequality. The lag coordinate is not rounded.
- `four_panel_coefficient_charge`: evaluates the coefficient-only full-row
  allowance 4*(4*10^-9)+2*(1/(2*10^9))=17/10^9.
- `next_term_is_not_complete_tail`: original tail at u=1/2 is at least S_3>S_2,
  rejecting an upper approximation that pays only the first omitted term.

The exact finite kernel decomposition plus monotone denominator estimate is
the primary proof. The rational table alone is not an independent analytic
argument, and it is not a sample-based extrapolation to all source tests.

## Consumer, pins, and evidence

Consumer: [WeilGammaRoundedQuadrature.lean](WeilGammaRoundedQuadrature.lean),
with rational midpoint coefficients and the proved radii above. The complete
coefficient producer is [WeilGammaRationalWeights.lean](WeilGammaRationalWeights.lean).

Inspected base `grwtsk/math@bbf9ed09f0e29d1fd2796f4c7a5317fdcecc7ff6`.
Lean `v4.34.1`; mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Exact inspected upstream source:
`Mathlib/Analysis/Complex/ExponentialBounds.lean`, blob
`747071091440887040140f84067ad4afd2f4cc4b`, namespace Real,
`log_two_near_10` and `log_two_gt_d9`. Upstream authors Mario Carneiro and
Joseph Myers; use is through the existing dependency, not copied adaptation.
The concrete rational weight rows are local calculations, not paper-derived
novelty claims. No additional external theorem is assumed.

Source-text and exact-rational authoring checks are reported in math#1837.
Lean parsing/elaboration, exact signatures, fresh kernel replay, transitive
axiom audit and independent review: **NOT_RUN**. The numeral proofs have not
been executed by Lean and may need performance or elaboration repairs.
No numerical evaluation of the complete signed Weil form, passing matrix,
high floor, primitive-character transfer or cofinal existence is asserted.
