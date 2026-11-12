# `norm_horizontalIntegral_le`

Local attribution: grwtsk contributors. Edition: 2026-11-11, candidate v1.
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.norm_horizontalIntegral_le`.
Source: [../WeilHorizontalEdges.lean](../WeilHorizontalEdges.lean).
MSC2020: 11M41 (primary), 11M06, 30E20. Coordination: math#1801, comment 6815196548.

## Exact statement

```lean
theorem norm_horizontalIntegral_le (F : ℂ → ℂ) (f : ℝ → ℂ)
    (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A)
    (C T epsilon : ℝ) (hT : 2 ≤ T) (he : epsilon = -1 ∨ epsilon = 1)
    (hD : ∀ sigma ∈ Icc (-1 : ℝ) 2,
      ‖logDeriv F ((sigma : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ))‖ ≤
        C * (1 + T) ^ 4)
    (_hint : IntervalIntegrable (horizontalIntegrand F f (epsilon * T)) volume (-1) 2) :
    ‖horizontalIntegral F f (epsilon * T)‖ ≤
      3 * (C * derivativeL1Cost f 3 ^ 2 * Real.exp (A * (3 / 2 : ℝ)) ^ 2) /
        (1 + T) ^ 2
```

## Proof, source return and consumer

Retain explicit IntervalIntegrable. The pinned uniform norm-integral theorem is stated on uIoc; pass from Ioc(-1,2) to Icc(-1,2), apply the all-point product bound, and pay the entire segment length three.

The signature retains every supplier in the generic lemma. The final primitive
application derives the suppliers from the original completed source and selects
one sequence before all admissible tests. The consumer is horizontal removal in
the pole-inclusive finite-to-infinite Weil contour route, not arithmetic positivity.
No new RH/GRH, simplicity or pole-neutral premise is introduced. The inverse-character
arithmetic convention and both zeta poles remain unchanged.

## Individual provenance

grwtsk contributors, canonical `WeilContourWeight.lean` (MIT), blob `aa53350b401764c081a0559833d7f840a5ecc847` at inspected math main; original correlation, entire weight and `norm_correlation_contour_weight_le_strip`. Yury Kudryashov, Patrick Massot and Sébastien Gouëzel, Mathlib `MeasureTheory/Integral/IntervalIntegral/Basic.lean` (Apache-2.0), blob `2504147e2230a26eb804b0898004d0186c4e36a1` at the pin below.

Inspected math main: `21c3956913b469693e5acaf5bc6bf05c34c78196`.
Lean: `leanprover/lean4:v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Local Lean SHA-256: `b9f529135bdbb5a2166f4343e239c1b4b0ae0c91a77a5b4740e52338af6693c2`.
[Primary interval source](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Integral/IntervalIntegral/Basic.lean).
[Complete argument, exact source map and hostile checks](README.md).
This is a local consequence/definition using the named source APIs, not an
asserted direct formalization of a newly claimed paper theorem. Upstream licenses
and authorship are retained; imported source candidates are not reverified.

## Evidence and open obligations

SOURCE_PROOF_CANDIDATE. Elaboration/build, fresh kernel replay, transitive axiom
audit, independent review and repository-wide verification: NOT_RUN. No axiom
report is available. Novelty: UNASSESSED. Text/scalar checks and publication do
not establish Lean acceptance. Finite contour residues, Fourier inversion,
compensated arithmetic evaluation and full arithmetic assembly remain separate.
Fixed-test vanishing does not control unbounded varying-test derivative costs.
