# WGNZ-v1-02: kernel_moment_bounds

Local attribution: grwtsk contributors. Date: 2026-11-12.
Primary MSC2020: 11M41. Secondary: 26D15, 46E35.
Maintained declaration:
`GRWTSK.NumberTheory.WeilQuadraticForm.GammaNearZero.kernel_moment_bounds`.
Source: [`../WeilGammaNearZeroEnclosure.lean`](../WeilGammaNearZeroEnclosure.lean).
Source SHA-256: `83bb82daa8bc6816e2c988fca17306d18951019a3b50474ad6926bb50664e6e4`.
Analytical companion: [`../WeilGammaNearZeroEnclosure.md`](../WeilGammaNearZeroEnclosure.md).

## Literal statement

```lean
theorem kernel_moment_bounds (a : ℕ) {h : ℝ} (hh : 0 ≤ h) :
    IntegrableOn (fun r : ℝ => parityKernel a r * r ^ 2) (Ioc 0 h) ∧
    IntegrableOn (fun r : ℝ => parityKernel a r * r ^ 4) (Ioc 0 h) ∧
    Real.exp (-((a : ℝ) + 1 / 2) * h) * h ^ 2 / 4 ≤ secondMoment a h ∧
    secondMoment a h ≤ h ^ 2 / 4 + h ^ 3 / 3 ∧
    (∫ r in Ioc (0 : ℝ) h, parityKernel a r * r ^ 4) ≤ h ^ 4 / 8 + h ^ 5 / 5
```

## Integrable second and fourth physical moments

Multiply the preceding desingularized upper bound by r^k>=0 on (0,h]:
K_a(r)*r^(k+1)<=r^(k+1)+r^k/2. The latter polynomial is integrable on the
finite interval; measurability and nonnegativity of the former give actual
Lebesgue integrability by domination. Its integral is bounded above by
h^(k+2)/(k+2)+h^(k+1)/(2(k+1)). Take k=1 and k=3.
For the lower second moment multiply exp(-alpha h)/2<=r*K_a(r) by r
and integrate to get exp(-alpha h)*h^2/4. At h=0 the interval is empty,
so all bounds still hold. The natural index a and cutoff h remain quantified.

Consumer: `gamma_near_zero_enclosure_of_shift_defect` multiplies the
pointwise tangent defect by the SAME K_a and uses the fourth moment, giving
beta(h)=h^4/96+h^5/60. Companion Section 5 retains all original prime,
conductor, parity and zeta-pole terms in that arithmetic comparison.

## Individual source correspondence

Native `parityKernel` and this module's exact `secondMoment`; no upstream
moment theorem is imported as a paper formalization. Pinned Mathlib
`Analysis/SpecialFunctions/Integrals/Basic.lean`, root declarations
`integral_pow` and `integral_id`, evaluates the explicit majorants.
Connes--Consani--Moscovici, arXiv:2511.22755v1, p.8 (3.19)--(3.20), is
context for the original Weil arithmetic expression, not a claim that it
states this bound. NIST DLMF 5.9.16 is the scalar-kernel comparison.
Companion Section 3, equations (3.1)--(3.3), gives the complete calculation.

Primary links: https://arxiv.org/abs/2511.22755v1 and
https://dlmf.nist.gov/5.9.E16 . The supplied CCM edition's page 8 was checked.
Native source: https://github.com/grwtsk/math/tree/05c3158365036f6eaa025d78cf2586dbbfb81f20 .
Mathlib source: https://github.com/leanprover-community/mathlib4/tree/d13f23b723b8a846827a245b89c10fc7d3f11612 .
No paper is credited with proving the project's universal arithmetic sign.

## Domain and hostile checks

The moments use a physical translation cutoff, not a Fourier band.
The upper bounds are parity-uniform; exp(-alpha h) retains the actual a
in the lower bound. No sampled-frequency inference, nonintegrable split,
or quadrature value is used. Moment positivity alone cannot dominate the
signed prime or signed zeta-pole terms.

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
