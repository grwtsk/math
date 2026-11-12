# Spatial modulus of the actual complex shift-square integrand

Local attribution: grwtsk contributors. Source date: 2026-11-11.
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.InnerEnergyQuadrature.shiftSquare_spatial_difference_le`.
MSC2020: primary 11M06; supporting 65D30, 26A42.

## Exact source statement

Canonical file: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilInnerEnergyQuadrature.lean`.
Source SHA-256: `8d567d66b52cb7222b4079f634cec3de69ecf4e87fdf428b75e8fbb1e8e1c265`. A digest identifies bytes, not proof validity.
The following is the literal declaration type with its proof body omitted.
Native names are bound by the namespace opens in the canonical module.

```lean
theorem shiftSquare_spatial_difference_le {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) {s : ℝ} (hs : 0 ≤ s) (x y : ℝ) :
    |‖f (x + s) - f x‖ ^ 2 - ‖f (y + s) - f y‖ ^ 2| ≤
      4 * (L : ℝ) ^ 2 * s * |x - y|
```

## Analytical argument

Let f:R->C be globally L-Lipschitz, L>=0, and s>=0. Write
z=f(x+s)-f(x), w=f(y+s)-f(y). Then |z|,|w|<=Ls and

    |z-w| <= |f(x+s)-f(y+s)| + |f(x)-f(y)| <= 2L|x-y|.

The reverse triangle inequality gives ||z|-|w||<=|z-w|. Factoring the
squared norms, with their sum nonnegative, proves

    ||z|^2-|w|^2| <= (2L|x-y|)(2Ls) = 4L^2 s |x-y|.

This holds on the entire real line. Regularity of the integrand is derived
from the actual source evaluations; it is not a quadrature-certificate field.

## Declaration map and arithmetic consumer

`shift_norm_le` supplies the increment bounds; the public declaration proves
the spatial modulus. `shiftEnergy_midpoint_error` integrates it over every
cell, then `shiftEnergy_midpoint_approx_error` and
`NestedGammaQuadrature.primitiveArithmeticValue_nested_enclosure` return it
to the unchanged primitive nonprincipal arithmetic expression.

## Domain, hostile cases and unresolved obligations

No compact support or L2 hypothesis is required for this pointwise result.
At s=0 both increments vanish; L=0 is also exact. Arbitrary complex phases
are allowed. Only an upper error bound is asserted, not nonnegativity of
the full arithmetic form. A discontinuous hard zero extension cannot be
silently treated as globally Lipschitz.

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
