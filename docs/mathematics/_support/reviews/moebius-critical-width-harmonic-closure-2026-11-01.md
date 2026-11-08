# Pinned Mathlib closes the exact harmonic endpoint for critical-width smoothing

Local attribution: grwtsk contributors. Date 2026-11-01.
Formalization assistance: OpenAI ChatGPT.
Source proof candidates pending Lean/native acceptance.

## Concrete mathematical improvement and source identity

Previous `MoebiusCriticalWidthSmoothBirth.lean` retains the exact
original integer-indexed source, proves source-level cutoff
comparison and actual critical Gram positivity as Lean CANDIDATES,
then reduces its full signed dense smoothing allowance to
`CriticalUnsignedLinearBudget eta κ`.

The critical unsigned allowance has two analytically separable
parts:
(A) actual real-time birth-localized integrals bounded by an exact
finite harmonic sum;
(B) the positive-index harmonic sum bounded by 1+T for
N=floor(exp T). Neither part invokes arithmetic cancellation.

This source eliminates part (B) as a NEW math-premise by using the
ACTUAL PINNED Mathlib API:
`Mathlib/NumberTheory/Harmonic/Bounds.lean`, revision
d13f23b723b8a846827a245b89c10fc7d3f11612,
`harmonic_eq_sum_Icc` and
`harmonic_floor_le_one_add_log`.
The latter states, for y>=1,
`(harmonic floor(y) : ℝ) <= 1 + log y`.
Set y=exp T and T>=0; exact source conversion gives
`∑_{n∈Icc 1 floor(exp T)} (n:ℝ)⁻¹ <= 1+T`.
Both inclusion of n=1 and the exact floor are preserved.

Mathlib provides its full proofs at the pinned source; this local
bridge has NOT been elaborated, compiled, kernel-replayed or
transitively axiom-audited yet. It is inaccurate to say that
Lean acceptance has already been obtained for the new bridge.

## The unique remaining concrete source supplier

The new named `CriticalLocalBirthIntegralBound eta κ` is

  ∀ T>=0, criticalUnsignedDefect eta κ T
    <= 8 sqrt(e) κ²
       Σ_(n∈Icc 1 floor(exp T)) 1/n.

This is a real-analysis lemma about positive original response
kernels and a smooth cutoff; it does NOT assume any signed
Möbius sum or good-scale cancellation. The independent analytic
derivation is preserved in
`moebius-critical-width-smooth-birth-2026-11-01.md`.
In particular, Delta_n = original - smooth is supported in a
window of length κ/sqrt(n), obeys
0<=Delta_n<= κ/n, and the positive original source response
mass in that window is <=4 sqrt(e n). Summing both original
ordered orientations and then over n <= floor(exp T) yields
the displayed harmonic coefficient 8sqrt(e)κ².

New declaration `criticalUnsignedLinearBudget_of_local`
converts this local integral bound to the already named
`CriticalUnsignedLinearBudget` using the proved harmonic
source candidate, without a new rate-dependent good-scale
set or assuming RH. The downstream
`denseLongGapAllRateOn_iff_critical_of_local` consumes ONLY
the local integral bound and the explicit positive C-infinity
cutoff conditions. Its conclusion is equivalence of growth
OBLIGATIONS, not proof that the signed growth bound holds.

## Hostile boundary and next proof

This is not an assertion of Lebesgue convergence from finite
sampling, not an arithmetic elliptic or Kakeya theorem, and
not a replacement source. The positivity of the original
kernel is only applicable for T>=0 and positive n. For n=0
the finite original support excludes it. The cutoff's
parameter κ must be strictly positive and at most one for
the stated numerical local integral bound. Smoothing by
a sign-changing or >1 multiplier invalidates the
monotone unsigned comparison.

The missing Lean proof is now purely the local real-integral
supplier (support, bounded response deficit, finite exchange
and original positive response mass), with no outstanding
harmonic mathematics or new arithmetic cancellation premise.
All sources remain SOURCE_PROOF_CANDIDATE. Compilation,
expected interface typecheck, fresh kernel replay and
transitive axiom audit NOT_RUN. No Noe native job or
controller launched. Dense original signed all-positive-rate
estimate OPEN; canonical RH OPEN.

## References and provenance

Mathlib, `Mathlib/NumberTheory/Harmonic/Bounds.lean`,
revision d13f23b723b8a846827a245b89c10fc7d3f11612.
Existing grwtsk/math `MoebiusEndpointGapLocalization.lean`
source blob d625b45178651e474f54ca4b49abda0a8676e154
contains the original `EndpointHarmonicBound` declaration.
The upstream proof is reused with original author attribution
and licenses preserved. No novelty claimed for this
standard harmonic estimate.
