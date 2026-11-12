# `exists_zeta_horizontal_edges_vanish`

Local attribution: grwtsk contributors. Edition: 2026-11-11, candidate v1.
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.exists_zeta_horizontal_edges_vanish`.
Source: [../WeilHorizontalEdges.lean](../WeilHorizontalEdges.lean).
MSC2020: 11M41 (primary), 11M06, 30E20. Coordination: math#1801, comment 6815196548.

## Exact statement

```lean
theorem exists_zeta_horizontal_edges_vanish :
    let C := horizontalLogDerivativeConstant (1 : DirichletCharacter ℂ 1) + 1 +
      gammaRLogDerivativeConstant
    ∃ T : ℕ → ℝ,
      (∀ n, (n : ℝ) + 2 < T n ∧ T n < (n : ℝ) + 3) ∧
      (∀ n (sigma epsilon : ℝ), epsilon = -1 ∨ epsilon = 1 →
        completedRiemannZeta ((sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ)) ≠ 0) ∧
      ∀ (f : ℝ → ℂ) (A : ℝ), 0 ≤ A → Admissible f → tsupport f ⊆ Icc (-A) A →
        let K := C * derivativeL1Cost f 3 ^ 2 * Real.exp (A * (3 / 2 : ℝ)) ^ 2
        (∀ n (epsilon : ℝ), epsilon = -1 ∨ epsilon = 1 →
          IntervalIntegrable (horizontalIntegrand completedRiemannZeta f (epsilon * T n))
            volume (-1) 2 ∧
          ‖horizontalIntegral completedRiemannZeta f (epsilon * T n)‖ ≤
            3 * K / (1 + T n) ^ 2) ∧
        (∀ n, ‖orientedHorizontalBoundary completedRiemannZeta f (T n)‖ ≤
          (3 / Real.pi) * K / (1 + T n) ^ 2) ∧
        (∀ epsilon : ℝ, epsilon = -1 ∨ epsilon = 1 →
          Tendsto (fun n => horizontalIntegral completedRiemannZeta f (epsilon * T n))
            atTop (𝓝 0)) ∧
        Tendsto (fun n => ∫ sigma in (2 : ℝ)..(-1),
          horizontalIntegrand completedRiemannZeta f (T n) sigma) atTop (𝓝 0) ∧
        Tendsto (fun n => orientedHorizontalBoundary completedRiemannZeta f (T n))
          atTop (𝓝 0)
```

## Proof, source return and consumer

Specialize the preceding source theorem to the primitive level-one character and rewrite the literal completedLFunction identity. The poles at 0 and 1 are not removed from the source or from the prospective residue formula.

The signature retains every supplier in the generic lemma. The final primitive
application derives the suppliers from the original completed source and selects
one sequence before all admissible tests. The consumer is horizontal removal in
the pole-inclusive finite-to-infinite Weil contour route, not arithmetic positivity.
No new RH/GRH, simplicity or pole-neutral premise is introduced. The inverse-character
arithmetic convention and both zeta poles remain unchanged.

## Individual provenance

grwtsk contributors, `DirichletCompletedHorizontalLogDerivative.lean` (MIT), `exists_horizontal_completedLFunction_logDeriv_bound`, blob `4ca3d1fc73c6670a347f77943b403d10ad96a522`; David Loeffler and Michael Stoll, Mathlib `NumberTheory/LSeries/DirichletContinuation.lean` (Apache-2.0), `differentiableAt_completedLFunction` and `completedLFunction_modOne_eq`, blob `89c72580697983d86706cff17ccbea2cee6475a3`. grwtsk contributors, canonical `WeilContourWeight.lean` (MIT), blob `aa53350b401764c081a0559833d7f840a5ecc847` at inspected math main; original correlation, entire weight and `norm_correlation_contour_weight_le_strip`.

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
