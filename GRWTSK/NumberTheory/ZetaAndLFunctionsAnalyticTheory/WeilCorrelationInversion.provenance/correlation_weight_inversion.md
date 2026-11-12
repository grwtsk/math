# WPI-v1-02: correlation_weight_inversion

Local declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.correlation_weight_inversion`.
Maintained source: `../WeilCorrelationInversion.lean`.
Primary MSC2020: 11M41. Secondary: 42A38, 11M06.
Source SHA-256: `1ead84bdbad11fbe64623f1dc3b2fe2c9f66a57df842ec0ac2fbdf661d7db9c7`.
Evidence status: SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED.

## Literal source statement

```lean
theorem correlation_weight_inversion (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A) (sigma y : ℝ) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r *
      Complex.exp ((s - 1 / 2) * (r : ℂ))
    (1 / (2 * (Real.pi : ℂ))) *
      (∫ t : ℝ, W ((sigma : ℂ) + Complex.I * (t : ℂ)) *
        Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ))) =
      correlation f y * (Real.exp ((sigma - 1 / 2) * y) : ℂ)
```

## Complete analytical argument and consumer

Let V(s)=integral C_f(r) exp((s-1/2)r) dr and fix real sigma.
Put b=sigma-1/2 and g(r)=C_f(r)exp(br). The preceding theorem proves continuity
of g. The native integrable_correlation_laplace_integrand gives g in L1,
using f in L1 and its pointwise support bound derived from tsupport.
Exponential addition gives, for EVERY real t,
V(sigma+it)=H_g(t):=integral g(r)exp(itr)dr.
Native integrable_correlation_contour_weight_vertical gives H_g in L1.

For clarity, Mathlib uses Fg(u)=integral exp(-2*pi*i*r*u)g(r)dr.
The exact dictionary is H_g(t)=Fg(-t/(2*pi)). The nonzero linear substitution
t=-2*pi*u transfers integrability of H_g to integrability of Fg.
Mathlib Fourier inversion at the continuous point y then yields
(1/(2*pi))*integral H_g(t)exp(-ity)dt=g(y).
The real substitution has absolute Jacobian 2*pi. The factor 1/(2*pi)
is not 1/(2*pi*i): this is a dt line integral after the ds=i*dt cancellation.
The source candidate proves this angular inversion as a private helper and
then supplies ALL its hypotheses from the native correlation source.

Consequently the displayed line integral equals
C_f(y)exp((sigma-1/2)y) for every real sigma,y. Neither sigma>1 nor RH is
needed for the weight alone; sigma=2 is used for the arithmetic series.
The reflected leg uses sigma=-1 and y replaced by -y, after t->-t.
Consumer: the per-prime inversion and the complete two-leg prime evaluation.
The cancellation at y=log n is exp(-2*y)*exp(3*y/2)=exp(-y/2).

## Source comparison and provenance

Local attribution: grwtsk contributors. Date: 2026-11-12.
This is a local consequence on the existing native arithmetic source, not a
new definition of a Weil form and not a proof of RH or primitive Dirichlet GRH.
The method is classical exponential tilting, Fourier inversion and absolute
series integration. Novelty is UNASSESSED; none is asserted.

Primary formal source: Mathlib at `d13f23b723b8a846827a245b89c10fc7d3f11612`,
`Mathlib/Analysis/Fourier/Inversion.lean`,
`MeasureTheory.Integrable.fourierInv_fourier_eq` and
`Continuous.fourierInv_fourier_eq`; `Mathlib/Analysis/Convolution.lean`,
`HasCompactSupport.continuous_convolution_right`;
`Mathlib/MeasureTheory/Integral/DominatedConvergence.lean`,
`hasSum_integral_of_summable_integral_norm`; and the actual
`DirichletCharacter.LSeriesSummable_twist_vonMangoldt`.

Individual upstream comparison: Anthropic formal-math at `16a5ce41304fcdaea4e0be7c132e1c361dc26da5`,
`zeta23/Zeta23/WeilEF/VerticalLine.lean` (`Hfn_line`, `tilted_inversion`,
`per_n_line_integral`, `line_integral_swap`) and
`zeta23/Zeta23/ThmE/VerticalLineChi.lean` (`per_n_line_integral_chi`,
`line_integral_swap_chi`, `prime_side_line_chi`). Upstream copyright/licensing:
Anthropic PBC, Apache-2.0. This development compares the same standard method
but does not import or copy the upstream modules. Their toolchain is not used.
No headline result or upstream verification status is transferred.

Direct references:
- https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Fourier/Inversion.lean
- https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Integral/DominatedConvergence.lean
- https://github.com/anthropics/formal-math/blob/16a5ce41304fcdaea4e0be7c132e1c361dc26da5/zeta23/Zeta23/WeilEF/VerticalLine.lean
- https://github.com/anthropics/formal-math/blob/16a5ce41304fcdaea4e0be7c132e1c361dc26da5/zeta23/Zeta23/ThmE/VerticalLineChi.lean
- https://github.com/grwtsk/math/issues/1801#issuecomment-6828845884

Native baseline: `grwtsk/math@6f7d2e3b6d15f0d2c49aaba984af27c48786943c`. Reused definitions and theorems are
in `WeilSourcePrimeCorrelation`, `WeilCorrelationFourier`, `WeilContourWeight`,
`DirichletWeilIntegrand`, `WeilReflectedSourceAdapter`,
`CharacterWeilWindowBounds`, and `WeilLowSchurEnclosure`.
The contour completion, analytic continuation, zero target, pole functionals,
character phases and prime weights are unchanged. No root import/pin changes.

## Evidence and open obligations

WRITTEN_ANALYTIC_ARGUMENT: supplied above. SOURCE_PROOF_CANDIDATE.
LEAN_ELABORATION: NOT_RUN. FULL_DEPENDENCY_BUILD: NOT_RUN.
FRESH_KERNEL_REPLAY: NOT_RUN. TRANSITIVE_AXIOM_AUDIT: NOT_RUN.
INDEPENDENT_ANALYTICAL_REVIEW: NOT_RUN. NUMERICAL_CERTIFICATION: NOT_RUN.
No known failing check is promoted; no current first compiler error was located.
Static source checks and finite scalar sanity checks are not Lean parsing,
proof replay, independent review, or certification of the entire Weil form.

The canonical execution skill was inaccessible at Noe revision
`982acb9cfa87c86ef09a4ad009576be1923885a8`; dependent proof execution was not
attempted. This does not prevent ordinary authorized source publication.

The first formal obligation is checking BOTH new modules and the complete
native dependency closure at Lean `leanprover/lean4:v4.34.1` and the above
Mathlib pin. The source-local identifiers WPI-v1-01--05 identify these candidate
records only; no external claim-registry acceptance or novelty promotion occurs.
The physical gamma/conductor evaluation, unordered zero-sum identification,
criterion/test-domain transfers and universal all-test signed arithmetic
inequality remain separate obligations. Accurate prime evaluation does not
prove that it is dominated by the gamma, conductor and pole terms.
