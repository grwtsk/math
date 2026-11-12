# WGNZ-v1-01: parityKernel_mul_shift_bounds

Local attribution: grwtsk contributors. Date: 2026-11-12.
Primary MSC2020: 11M41. Secondary: 26D15, 46E35.
Maintained declaration:
`GRWTSK.NumberTheory.WeilQuadraticForm.GammaNearZero.parityKernel_mul_shift_bounds`.
Source: [`../WeilGammaNearZeroEnclosure.lean`](../WeilGammaNearZeroEnclosure.lean).
Source SHA-256: `83bb82daa8bc6816e2c988fca17306d18951019a3b50474ad6926bb50664e6e4`.
Analytical companion: [`../WeilGammaNearZeroEnclosure.md`](../WeilGammaNearZeroEnclosure.md).

## Literal statement

```lean
theorem parityKernel_mul_shift_bounds (a : ℕ) {h r : ℝ}
    (hr : 0 < r) (hrh : r ≤ h) :
    Real.exp (-((a : ℝ) + 1 / 2) * h) / 2 ≤ parityKernel a r * r ∧
      parityKernel a r * r ≤ r + 1 / 2
```

## Original-kernel desingularization

For 0<r<=h set alpha=a+1/2>0. The actual denominator
1-exp(-2r) is positive. The elementary inequalities exp(x)>=1+x imply
1-exp(-2r)<=2r and (1+2r)exp(-2r)<=1. Monotonicity gives
exp(-alpha h)<=exp(-alpha r)<=1. Divide only by the proved positive
denominator. The first inequalities give exp(-alpha h)/2<=r*K_a(r);
the second give r*K_a(r)<=r/(1-exp(-2r))<=r+1/2.
This holds for every natural a, all h,r with 0<r<=h. There is no small-h
assumption, finite sampled grid, or hidden parity restriction.

Consumer: `kernel_moment_bounds` integrates the original desingularized
kernel. Multiplication by r and r^3 yields genuine second and fourth moment
integrability and outward enclosures. The tangent defect later consumes
those moments, not a replacement kernel.

## Individual source correspondence

The scalar inequalities are elementary source-local consequences of
`WeilGammaData.parityKernel`, inspected at the native revision below.
Connes--Consani--Moscovici, *Zeta Spectral Triples*, arXiv:2511.22755v1,
27 November 2025, p.8 (3.19)--(3.20), locates the unchanged arithmetic form;
this displayed scalar inequality is not attributed to that paper.
NIST DLMF 5.9.16 supplies the classical digamma-kernel comparison only.
The upper bound is reused from native
`GammaHeadIntegrability.shift_mul_parityKernel_le`, not reimplemented.
The lower bound uses Mathlib `Real.add_one_le_exp`, `Real.exp_le_exp`,
and positive-denominator order algebra at the exact dependency pin.
See companion Section 3, equation (3.1), for the written argument.

Primary links: https://arxiv.org/abs/2511.22755v1 and
https://dlmf.nist.gov/5.9.E16 . The supplied CCM edition's page 8 was checked.
Native source: https://github.com/grwtsk/math/tree/05c3158365036f6eaa025d78cf2586dbbfb81f20 .
Mathlib source: https://github.com/leanprover-community/mathlib4/tree/d13f23b723b8a846827a245b89c10fc7d3f11612 .
No paper is credited with proving the project's universal arithmetic sign.

## Domain and hostile checks

At r=0 the totalized division is not the limiting value; the theorem
correctly requires r>0. The physical integral ignores this null endpoint.
Negative shifts are not included in the kernel comparison. Both actual
parities a=0,1 and every natural a are covered. These positive kernel bounds
do not imply a positive gamma constant or positivity of the signed Weil form.

## Evidence and remaining obligations

SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. This is an elementary local
consequence/source-bound candidate, not a promoted research-registry claim.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Native initial revision: `05c3158365036f6eaa025d78cf2586dbbfb81f20`.
LEAN_ELABORATION / COMPLETE_DEPENDENCY_BUILD / FRESH_KERNEL_REPLAY /
TRANSITIVE_AXIOM_AUDIT / CERTIFIED_NUMERICAL_EVALUATION /
INDEPENDENT_ANALYTICAL_REVIEW: NOT_RUN. Source inspection is not elaboration.
No known historical failure is promoted; no current compiler result is claimed.

The exact-pin import build, statement/axiom audits, the H^2 shift-defect
supplier and actual-test/matrix consumers remain formal obligations.
The original all-character/all-window signed arithmetic inequality remains
unresolved. Neither this bound nor its source publication proves RH/GRH.
Coordination: math#1801, scope `6831173870`. The canonical execution skill
was inaccessible at Noe `1d5f33f44c6b4e64d420b7279d09324d2b8e7268`;
no dependent proof runtime or workflow was dispatched.
