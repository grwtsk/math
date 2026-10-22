# Wiener–Ikehara: pinned logarithmic Schwartz–Fourier source

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

This mathematical source is committed directly to grwtsk/math main. Pure Lean modules:

- GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean
- GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaMellinFourierSourceControls.lean

They intentionally do not import the still-unmerged PR #965 source. They use pinned Mathlib and are independently replayable after the local Codex coordinator obtains the repository's exact toolchain. Operational replay requests, runtime receipts, and axiom audits belong in grwtsk/noeaaeue, not this mathematical repository.

## Actual analytic result

Let Psi : Real -> Complex be infinitely differentiable and compactly supported, with the closure of its support contained in (0,infinity). Set

    H(u) = exp(2*pi*u) * Psi(exp(2*pi*u)).

The source authors proofs that Psi vanishes in a neighborhood of zero; its pullback along the real exponential has compact support on BOTH ends of the logarithmic axis; H is smooth and compactly supported; and the pinned smooth-compact-support-to-Schwartz theorem constructs H as an actual member of the Schwartz space.

Pinned Schwartz Fourier inversion constructs a genuine inverse Fourier transform g (rather than introducing an equivalent unproved witness), with exactly

    Fourier(g)(log(y)/(2*pi)) = y * Psi(y)  for all real y>0.

The Fourier convention is the Mathlib character exp(-2*pi*i*t*xi); using 1/(2*pi) and the positive logarithmic argument is essential. The controls check y=1, where the Fourier frequency is zero, and y=exp(2*pi), where it is +1.

## Complete zero-safe coefficient normalization

For arbitrary complex coefficients f(n), positive real T, and positive integer n, this produces

    f(n)/n * Fourier(g)(log(n/T)/(2*pi))
      = f(n)/T * Psi(n/T).

The source defines a separate Fourier-weighted coefficient of zero at n=0. Positive support implies Psi(0)=0, so the identity holds for EVERY natural n, without asking for log(0) or division by a zero integer.

The integrated controls exhibit one and the same g working for all choices of arithmetic coefficients f, every T>0, and every n. This is an exact mathematical transport, not a claim that the Fourier-weighted series has already converged.

## Actual Mellin-tail integral normalization

The source independently invokes pinned Mathlib's unbounded-domain change-of-variables theorem integral_deriv_smul_comp_Ioi to prove

    integral_{u > -log(T)} exp(u)*Psi(exp(u)) du
      = integral_{y > 1/T} Psi(y) dy,  T>0.

Both lower integration endpoints, the exponential Jacobian, and the complex-valued integrand are retained. This is a substantive analytic lemma used to relate the Fourier integral tail to the smooth Wiener test integral.

## Maintained PNT formalization provenance

Source project: AlexKontorovich/PrimeNumberTheoremAnd, maintained main at commit
127b50e33f6033e2147921167a117af96d9ba4ea.

Maintained file: PrimeNumberTheoremAnd/Wiener.lean, blob
59fd5069a7eca51a8bc5005b5c43e31a5cbb38ac.

Maintained Fourier file: PrimeNumberTheoremAnd/Fourier.lean, blob
99e15a0237162df31161745e8e9e98a891c44a51.

The maintained project currently uses leanprover/lean4:v4.35.0. The relevant Wiener declarations include limiting_cor_schwartz, fourier_surjection_on_schwartz, wiener_ikehara_smooth_aux, and wiener_ikehara_smooth. Analytical ideas and source proof structure are credited to Alex Kontorovich, Terry Tao and contributors under the upstream Apache 2.0 license.

The local mathematical repository uses leanprover/lean4:v4.33.0 and pinned Mathlib revision
db584cd6d46c92f209a44c0f1c829460d327499d.

Concrete pinned imported sources:
- Mathlib/Analysis/Distribution/SchwartzSpace/Fourier.lean blob 29b759c53de55f6eee6359d7603e7a12c94d70e1;
- Mathlib/Analysis/Distribution/SchwartzSpace/Basic.lean blob 3662f5e0037dafdaa62d8661e27c4dac33ed4858;
- Mathlib/Analysis/Fourier/Notation.lean blob fa130a45039688864921a2cd8a83631fa8c47da2;
- Mathlib/MeasureTheory/Integral/IntegralEqImproper.lean, integral_deriv_smul_comp_Ioi.

No maintained external theorem term has been imported across the version mismatch.

## The real missing theorem

The missing analytic supplier is the actual Fourier-weighted Tauberian limit limiting_cor_schwartz, instantiated with pinned complex von Mangoldt coefficients, Chebyshev linear norm-cumsum growth, absolute L-series convergence for Re(s)>1, and the SAME pole-subtracted auxiliary that is continuous at Re(s)>=1.

For any Schwartz test g it must establish, with the exact normalization,

    sum_{n>=1} Lambda(n)/n *
      Fourier(g)(log(n/T)/(2*pi))
    - integral_{u>=-log(T)} Fourier(g)(u/(2*pi)) du
      -> 0 as T -> infinity.

The imported coefficient and Mellin integral lemmas above show HOW this limit would yield the smooth-test Wiener–Ikehara conclusion. They do not establish the limit. The q=1 source, closed-half-plane analytic inputs, earlier bracket and interval drafts, and all external theorem dependencies require source-bound Lean elaboration and axiom auditing before they can be treated as accepted formal proofs.

The original fixed uniform integer-psi quadratic capacity remains MATHEMATICALLY REJECTED; this lemma is a reusable analytic PNT component, not evidence for RH, Chowla or Goldbach.

**Next substantive obligation:** derive the Fourier-weighted Schwartz limit from the maintained analytic argument at the PINNED Mathlib and verify the complete source-to-kernel chain. The local coordinator should first replay and audit the present genuine Mellin–Fourier source and controls, while preserving unrelated work on main.
