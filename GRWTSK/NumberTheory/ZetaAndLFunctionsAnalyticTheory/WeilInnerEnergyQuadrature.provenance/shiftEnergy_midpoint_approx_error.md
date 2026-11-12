# Inner energy with source-bound point-evaluation error

Local attribution: grwtsk contributors. Source date: 2026-11-11.
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.InnerEnergyQuadrature.shiftEnergy_midpoint_approx_error`.
MSC2020: primary 11M06; supporting 65D30, 26A42.

## Exact source statement

Canonical file: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilInnerEnergyQuadrature.lean`.
Source SHA-256: `8d567d66b52cb7222b4079f634cec3de69ecf4e87fdf428b75e8fbb1e8e1c265`. A digest identifies bytes, not proof validity.
The following is the literal declaration type with its proof body omitted.
Native names are bound by the namespace opens in the canonical module.

```lean
theorem shiftEnergy_midpoint_approx_error {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) {A R s η : ℝ} (hA : 0 ≤ A) (hR : 0 < R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0)
    (hs : s ∈ Icc (0 : ℝ) R) {m : ℕ} (hm : 0 < m) (hη : 0 ≤ η)
    (zp z0 : ℕ → ℂ)
    (hp : ∀ j < m, ‖zp j - f (midpoint A R m j + s)‖ ≤ η)
    (h0 : ∀ j < m, ‖z0 j - f (midpoint A R m j)‖ ≤ η) :
    |energy (fun t => f (t + s) - f t) - sampledEnergy A R m zp z0| ≤
      innerBudget A R L s m η
```

## Analytical argument

Use the same D,h,x_j as in the exact midpoint theorem. Suppose eta>=0
and each supplied z_j^+,z_j^0 has norm error at most eta against the
actual f(x_j+s),f(x_j). For z=f(x_j+s)-f(x_j) and w=z_j^+-z_j^0,
|z|<=Ls and |z-w|<=2eta. Hence |w|<=Ls+2eta, and

    ||z|^2-|w|^2| <= |z-w|(|z|+|w|)
                    <= 4Ls*eta+4eta^2.

Multiplication by h>=0 and summation over m points contributes at most
h*m*(4Ls*eta+4eta^2)=D*(4Ls*eta+4eta^2). Add the exact midpoint
quadrature bound to obtain `innerBudget`. Both evaluations are charged.

The two finite arrays and their actual source-error premises are an explicit
certified-evaluation interface. Rational real and imaginary arrays can be
coerced into this interface, but there is no claim that a supplied abstract
smooth function automatically has a computable evaluation oracle.

## Declaration map and arithmetic consumer

`normSquare_perturbation` proves the generic squared-norm perturbation
bound. `shiftSquare_point_error` substitutes actual source increments and
both point errors. `shiftEnergy_midpoint_approx_error` adds the already
proved full midpoint error. The direct arithmetic consumer is
`NestedGammaQuadrature.primitiveArithmeticValue_nested_enclosure`.
The signed character/prime expression itself is never approximated by a
modulus in this derivation.

## Domain, hostile cases and unresolved obligations

The eta^2 term cannot be omitted: for f=0 and s=0, choose every z_j^+=eta
and z_j^0=-eta on the real axis. The point certificates hold, the true
energy is zero, and the sampled energy is exactly 4D*eta^2. The proposed
bound has equality. Multiplication of the source and both arrays by a
complex unit preserves all hypotheses and errors.

Eta=0 reduces to the exact-sample theorem. Only indices j<m matter;
values outside that finite range have no effect. All previous support and
Lipschitz assumptions remain. There is no assumed inner-integral error
certificate: it is the conclusion derived from point certificates.
No density or admissibility of splines is inferred, and no rational
endpoint evaluator for the whole Weil expression is supplied.

## Sources, comparison and evidence

Inspected native source revision: `grwtsk/math@7fd7181a0a62c5c1e9e2607d4f5b2e22f020da0c`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
The unchanged native definitions and consumers in `WeilGammaHeadIntegrability`,
`WeilExactGammaTail` and `WeilGammaWeightedQuadrature` are authoritative.
In particular, the prime term remains `Re(conj(chi(n))*correlation(f,log n))`;
this convention is not reconstructed from a loose paper analogy.

This is an elementary local consequence of the physical source, not a theorem
imported verbatim from a paper and not a new-paper claim. The mathematical
context is Connes, Consani and Moscovici, *Zeta Spectral Triples*,
arXiv:2511.22755v1 (27 November 2025), convolution/complex pairing (2.1)--(2.5)
and the native gamma context (3.19)--(3.20), as recorded in the inspected
source provenance. No theorem of that paper is identified with the present
midpoint error theorem. Source-return here is to the existing arithmetic
expression, not a newly established completed-L-function explicit formula.

The methods are the reverse triangle inequality, integration of the exact
midpoint distance, finite additivity, and positive-weight comparison.
Pinned Mathlib `Mathlib/MeasureTheory/Integral/IntervalIntegral/Basic.lean`
was inspected for `norm_integral_le_of_norm_le`,
`sum_integral_adjacent_intervals` and interval additivity. Public Mathlib
documentation was also compared; documentation is not elaboration evidence.
No third-party implementation was copied. Repository searches were incomplete
and prove no absence of prior results. Novelty: `UNASSESSED`. No research
claim-ID promotion or change to any existing claim meaning is made.

Written argument: supplied. Formal status: `SOURCE_PROOF_CANDIDATE`.
`LEAN_ELABORATION`, `FULL_DEPENDENCY_BUILD`, `FRESH_KERNEL`,
`TRANSITIVE_AXIOM_AUDIT`, `INDEPENDENT_ANALYTICAL_REVIEW`, and
`NUMERICAL_CERTIFICATION`: `NOT_RUN`. Static token/delimiter checks are not
parsing, elaboration, axiom-audit or numerical-sign evidence. Earlier repaired
and checked modules in issue #1789 keep their exact historical evidence;
those checks do not establish this new import closure.

The current required proof-automation skill path was inaccessible (404) at
inspected Noe main `e8309df2b998cc050e80ca1dffd4a78bb83d9448`.
No verified local skill checkout or Lean/Lake executable was available.
Dependent execution remained stopped. No runner, scheduler or remote proof
service was dispatched. Ordinary authorized source authoring and GitHub
publication continue under the inspected AGENTS/CONTRIBUTING policy.

The next formal obligation is to build the complete native import closure
at the published source and these exact pins, repair its earliest actual
failure, then check literal statement correspondence and transitive axioms.
No current compiler failure is claimed without a run. Coordination and
publication readback belong to [issue #1789](https://github.com/grwtsk/math/issues/1789),
continuation comment `6817050860`. Publication does not promote these statuses.
