# WGNZ-v1-03: gamma_near_zero_enclosure_of_shift_defect

Local attribution: grwtsk contributors. Date: 2026-11-12.
Primary MSC2020: 11M41. Secondary: 26D15, 46E35.
Maintained declaration:
`GRWTSK.NumberTheory.WeilQuadraticForm.GammaNearZero.gamma_near_zero_enclosure_of_shift_defect`.
Source: [`../WeilGammaNearZeroEnclosure.lean`](../WeilGammaNearZeroEnclosure.lean).
Source SHA-256: `83bb82daa8bc6816e2c988fca17306d18951019a3b50474ad6926bb50664e6e4`.
Analytical companion: [`../WeilGammaNearZeroEnclosure.md`](../WeilGammaNearZeroEnclosure.md).

## Literal statement

```lean
theorem gamma_near_zero_enclosure_of_shift_defect (a : ℕ) {h : ℝ} (hh : 0 ≤ h)
    (f : ℝ → ℂ) (hf : Continuous f)
    (hshift : ∀ r ∈ Ioc (0 : ℝ) h,
      0 ≤ r ^ 2 * energy (deriv f) - energy (fun t => f (t + r) - f t) ∧
      r ^ 2 * energy (deriv f) - energy (fun t => f (t + r) - f t) ≤
        r ^ 4 * energy (deriv (deriv f)) / 12) :
    IntegrableOn (gammaCorrectionDensity a f) (Ioc 0 h) ∧
    0 ≤ secondMoment a h * energy (deriv f) -
      (∫ r in Ioc (0 : ℝ) h, gammaCorrectionDensity a f r) ∧
    secondMoment a h * energy (deriv f) -
      (∫ r in Ioc (0 : ℝ) h, gammaCorrectionDensity a f r) ≤
        nearZeroBudget h * energy (deriv (deriv f))
```

## Conditional source-exact tangent-defect integral enclosure

Keep the exact hshift premise in the literal statement. On (0,h], it gives
e_f(r)<=r^2*E(deriv f) and a nonnegative defect bounded by
r^4*E(deriv(deriv f))/12. The actual energies are nonnegative. Continuity of
f makes the squared-increment integrand jointly measurable, and parameter
integration makes r->e_f(r) measurable. Kernel-moment domination supplies
actual integrability of gammaCorrectionDensity before subtracting integrals.
Multiply both defect inequalities by K_a(r)>=0. The integrated difference
is exactly secondMoment(a,h)*E(deriv f)-integral gammaCorrectionDensity.
The fourth moment gives an upper bound
(h^4/8+h^5/5)*E(deriv(deriv f))/12, which is beta(h)*E(deriv(deriv f)).
No divergence is being equated through totalization.

The H^2 theorem supplying hshift is WRITTEN in companion Section 2:
r^2||f'||^2-e_f(r)=(1/2)integral_[0,r]^2||T_u f'-T_v f'||^2.
The strong translation fundamental theorem bounds the integrand by
(u-v)^2||f''||^2 and the square integrates to r^4||f''||^2/12.
That Sobolev/actual-test supplier is NOT implemented in Lean here.
In particular this declaration is not advertised as an unconditional
formal theorem for every smooth compact source.

Consumers: companion Sections 4 and 5 polarize the bound on any finite
complex H^2 span, obtaining 0<=J_2 D-Gnear<=beta B, and return the correction
with its negative sign to primitiveArithmeticValue and to the zeta form
with BOTH pole orientations. These consumers are WRITTEN, not new Lean
declarations. Full completed-L source identification and all-test arithmetic
positivity remain separate.

## Individual source correspondence

The exact source objects are native `energy`, `gammaCorrectionDensity`,
`parityKernel`, and (in the written consumer) `primitiveArithmeticValue`,
`twistedPrime`, and `ExactGammaTail.tailMass` at the native revision below.
The proof composes the preceding local moment theorem with integral order
and linearity. Native `GammaHeadIntegrability.gammaCorrectionDensity_measurable`
is reused; its proof consumes pinned Mathlib
`MeasureTheory/Integral/Prod.lean`,
`StronglyMeasurable.integral_prod_right'`, for parameter measurability.
Connes--Consani--Moscovici, *Zeta Spectral Triples*, arXiv:2511.22755v1,
p.8 (3.19)--(3.20) and Proposition 3.4, supplies the comparison for the
original signed form and its zero-extended basis, not the H^2 error theorem.
DLMF 5.9.16 is the classical scalar gamma comparison.
The real-space variance proof and Fourier multiplier check are provided
in the companion, with h^4/96 sharpness for fixed parity. They share ordinary
L^2 translation calculus and are not independent external reviews.

Primary links: https://arxiv.org/abs/2511.22755v1 and
https://dlmf.nist.gov/5.9.E16 . The supplied CCM edition's page 8 was checked.
Native source: https://github.com/grwtsk/math/tree/05c3158365036f6eaa025d78cf2586dbbfb81f20 .
Mathlib source: https://github.com/leanprover-community/mathlib4/tree/d13f23b723b8a846827a245b89c10fc7d3f11612 .
No paper is credited with proving the project's universal arithmetic sign.

## Domain and hostile checks

A zero-extended interval indicator has e_f(r)=2r near zero and is not H^1;
using its a.e. classical derivative zero would violate hshift. Thus this
budget does not apply to the jumping finite exponential Galerkin basis.
The explicit hshift premise prevents that false application even though
Lean derivatives and integrals are totalized. The polynomial fixture is
H^2/C^2 only and is not silently promoted into the smooth canonical test class.
High modulation makes the tangent overestimate unbounded for fixed h;
the second-derivative budget cannot be replaced by a fixed tolerance.
The complex matrix bound uses the actual derivative Gram B, not an
unjustified identity matrix. No numerical certificate or universal
certificate-existence theorem is asserted.

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
