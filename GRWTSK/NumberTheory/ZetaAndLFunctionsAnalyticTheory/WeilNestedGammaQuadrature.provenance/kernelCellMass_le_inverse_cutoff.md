# Cutoff-dependent accumulated-weight control

Local attribution: grwtsk contributors. Source date: 2026-11-11.
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.NestedGammaQuadrature.kernelCellMass_le_inverse_cutoff`.
MSC2020: primary 11M06; supporting 65D30, 26A42.

## Exact source statement

Canonical file: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilNestedGammaQuadrature.lean`.
Source SHA-256: `e14ee0de0355892683393056136e19c6b28882db59bbb88e70fbeee71b2cc133`. A digest identifies bytes, not proof validity.
The following is the literal declaration type with its proof body omitted.
Native names are bound by the namespace opens in the canonical module.

```lean
theorem kernelCellMass_le_inverse_cutoff (a : ℕ) {ε R : ℝ}
    (hε : 0 < ε) (hεR : ε ≤ R) :
    kernelCellMass a ε R ≤ ((R + 1 / 2) / ε) * (R - ε)
```

## Analytical argument

Let a be any natural kernel index and 0<epsilon<=R. For epsilon<r<=R,
K_a(r)>=0 and the native estimate r*K_a(r)<=r+1/2 gives

    epsilon*K_a(r) <= r*K_a(r) <= R+1/2.

The kernel is genuinely integrable away from zero, by the existing tail
integrability theorem. Integrating this bound over (epsilon,R] proves

    W=kernelCellMass(a,epsilon,R)
      <= ((R+1/2)/epsilon)*(R-epsilon).

The companion theorem `cutoffSquared_mul_mass_le` multiplies by epsilon^2,
cancels the positive epsilon and uses R-epsilon<=R, obtaining

    epsilon^2*W <= (R+1/2)*R*epsilon.

Here is the precise written joint-parameter consequence (not a separate
formal limit declaration). Fix A,R,L with A>=0,R>0. For
0<epsilon<=min(1,R), choose an outer mesh radius delta<=epsilon^2,
integers m_i>=1 with 1/m_i<=epsilon^2, and point tolerances
0<=eta_i<=epsilon^2. With D=2A+R and 0<=s_i<=R,

    b_i <= C_inner*epsilon^2,
    C_inner = L^2*R*D^2 + 4*D*L*R + 4*D.

Indeed eta_i^2<=epsilon^4<=epsilon^2. Exact finite mass additivity gives
sum_i w_i*b_i<=C_inner*epsilon^2*W. Consequently the outer and inner
errors together are at most

    (J+C_inner)*(R+1/2)*R*epsilon,

which tends to zero. A uniform outer partition with at least
ceil((R-epsilon)/(2epsilon^2)) cells (and at least one cell when needed)
has midpoint radius at most epsilon^2; m_i=ceil(epsilon^(-2)) suffices.
For a rational sequence epsilon_k tending to zero these choices are
explicit finite integers. Existence of source-bound point evaluations
remains a property of the represented input/evaluation interface.
The original head is O(epsilon^2) at fixed A,R,L. Its full constant remains
headConstant(A,R,L)/2. One can also choose the exponential-prefix length
in this written argument. Write E=energy(f)>=0 and

    C_tail = 4*E*exp(-(a+1/2)*R)/(1-exp(-2R)).

Because a+2n+1/2>=1/2, the exact tailUpper formula gives

    tailUpper(a+2n,R)*E <= C_tail*exp(-2nR).

If C_tail=0, n=0 suffices. Otherwise choose the natural integer

    n >= ceil(max(0, log(C_tail/epsilon))/(2R)).

Then the tail budget is at most epsilon, considering separately
C_tail<=epsilon and C_tail>epsilon. This choice is analytical: it is not
a certified rounded computation of the logarithm or of C_tail, and it is
not a separate Lean parameter-choice declaration. Along with the displayed
mesh and inner tolerances it controls the full physical gamma head,
quadrature and tail budgets for each fixed source, assuming the supplied
point certificates. All remaining arithmetic rounding budgets still need
source-bound control. This does not establish arbitrary-accuracy rational
whole-form enclosure existence.

## Declaration map and arithmetic consumer

`GammaHeadIntegrability.shift_mul_parityKernel_le` supplies the actual
kernel estimate; `ExactGammaTail.parityKernel_integrableOn_tail` supplies
integrability. The public bound and `cutoffSquared_mul_mass_le` control the
W factor already present in `primitiveArithmeticValue_nested_enclosure`.
The written diagonal estimate uses exactly those native cell masses, not
an unrelated quadrature model.

## Domain, hostile cases and unresolved obligations

At epsilon=R the interval is empty and both sides of the first bound are
zero. Epsilon=0 is excluded: the kernel without its cancelling energy has
a singularity. The estimate is conservative O(1/epsilon), not a claim of
sharp logarithmic asymptotics. It is uniform in natural a, hence covers
both parities and shifted tail indices. Constants are fixed-window
constants; no uniformity over expanding support is asserted.

Holding delta or the point tolerance fixed while epsilon shrinks is not
licensed by this bound. All parameter choices above explicitly shrink
with epsilon. These are upper approximation errors, not lower sign bounds.
Near-null directions still require a nonnegative limit argument; neither
strict positivity nor universal certificate existence follows.

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
