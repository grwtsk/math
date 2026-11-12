# Full midpoint-cell integration for the original shift energy

Local attribution: grwtsk contributors. Source date: 2026-11-11.
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.InnerEnergyQuadrature.shiftEnergy_midpoint_error`.
MSC2020: primary 11M06; supporting 65D30, 26A42.

## Exact source statement

Canonical file: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilInnerEnergyQuadrature.lean`.
Source SHA-256: `8d567d66b52cb7222b4079f634cec3de69ecf4e87fdf428b75e8fbb1e8e1c265`. A digest identifies bytes, not proof validity.
The following is the literal declaration type with its proof body omitted.
Native names are bound by the namespace opens in the canonical module.

```lean
theorem shiftEnergy_midpoint_error {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) {A R s : ℝ} (hA : 0 ≤ A) (hR : 0 < R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0)
    (hs : s ∈ Icc (0 : ℝ) R) {m : ℕ} (hm : 0 < m) :
    |energy (fun t => f (t + s) - f t) - midpointEnergy A R m f s| ≤
      (L : ℝ) ^ 2 * s * (2 * A + R) ^ 2 / (m : ℝ)
```

## Analytical argument

Assume A>=0, R>0, 0<=s<=R and m>=1. Put a=-A-R, D=2A+R>0,
h=D/m, and x_j=a+(j+1/2)h. Let g(t)=|f(t+s)-f(t)|^2.
Global Lipschitz continuity makes g continuous. If t>A, both source
arguments exceed A. If t<-A-R, then t and t+s are below -A.
Thus g vanishes outside [a,A]. Its continuity and compact support imply
genuine Lebesgue integrability. The whole-line source energy equals its
interval integral; replacing Icc by Ioc changes only a null endpoint.

The preceding source-derived modulus is |g(x)-g(y)|<=C|x-y| with C=4L^2s.
For each cell [a+jh,a+(j+1)h], split at x_j and integrate the two linear
pieces of |t-x_j|. The integral is exactly h^2/4. Therefore

    |integral_cell g - h*g(x_j)|
      <= integral_cell |g(t)-g(x_j)| <= C*h^2/4 = L^2*s*h^2.

Finite additivity over all adjacent cells and the triangle inequality give
m*L^2*s*h^2=L^2*s*D^2/m. No assertion about a cell follows merely from
its midpoint value. The full distance function was integrated.

## Declaration map and arithmetic consumer

`integral_abs_midpoint` proves the exact cell-distance integral;
`midpoint_cell_error` uses it with the derived majorant;
`uniform_midpoint_error` proves finite adjacent-cell additivity.
`shiftDifference_zero_outside` is reused from the native gamma-head module.
The public theorem identifies the integral with `SourcePrimeCorrelation.energy`.
Its immediate consumer is `shiftEnergy_midpoint_approx_error`, followed by
the nested arithmetic enclosure. No substitute energy is introduced.

## Domain, hostile cases and unresolved obligations

The assumptions exclude m=0, and use R>0 so the grid width is positive.
At s=0 the energy and exact sample sum are zero. At A=0, continuity and
pointwise support force f=0, including at the origin. Complex phases remain
inside the increments. The physical interval is [-A-R,A], never a periodic
quotient. The theorem does not require a separate MemLp assumption:
the stated source conditions supply integrability. The outer arithmetic
consumer retains its own original MemLp hypothesis.

The constant depends on A,R,L,s. No uniform assertion over expanding
windows or unbounded derivatives follows. This is neither a sign theorem
nor an effective sampling procedure for an unrepresented abstract f.

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
