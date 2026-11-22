# Whole-cell enclosure of the original gamma correction

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Primary MSC2020: 11M26; secondary 11M41, 65D30, 65G20.
Source: [WeilGammaCellEvaluation.lean](WeilGammaCellEvaluation.lean).
Consumer: [WeilExponentialBumpGammaEvaluation](WeilExponentialBumpGammaEvaluation.md).
Coordination: [math#1801, iteration 9 scope](https://github.com/grwtsk/math/issues/1801#issuecomment-6991820849).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty UNASSESSED. No arithmetic sign or RH/GRH theorem is claimed.
All formal execution and independent review are NOT_RUN.

## Exact source and quantified domain

For a complex-valued function on the real line, retain the maintained
`SourcePrimeCorrelation.correlation` and `energy`, with Lebesgue measure:

    C_f(r) = integral_R conj(f(t))*f(t+r) dt,
    E(f)   = integral_R |f(t)|^2 dt.

For EVERY natural a, retain the original `CharacterWindow` definitions:

    k_a(r) = exp(-(a+1/2)*r)/(1-exp(-2r)),
    S_f(r) = integral_R |f(t+r)-f(t)|^2 dt,
    D_a(f,r) = k_a(r)*S_f(r) = gammaCorrectionDensity(a,f,r).

S_f is notation in this exposition, not a new Lean source object. The kernel
estimates require r>0. The translation identity requires f in actual L2.
The integration theorem requires D_a(f,.) integrable on (0,infinity). The
concrete bump consumer DERIVES that condition from the existing compact-C1
admission; it is not supplied by a numerical test or a favorable sign.
No projection onto zero ordinates or positive surrogate Weil form is used.

## Complete primary analytical argument

### Translation energy and enclosure (WGC-1, WGC-2)

Expand the complex square pointwise:

    |f(t+r)-f(t)|^2
      = |f(t+r)|^2 + |f(t)|^2 - 2 Re(conj(f(t))*f(t+r)).

L2 membership gives integrability of each squared norm. The existing source
correlation theorem gives integrability of the product. Translation invariance
of Lebesgue measure and commutation of real part with the Bochner integral give

    S_f(r) = 2E(f)-2 Re C_f(r).                         (WGC-1)

For certified |E(f)-mu|<=e0 and |C_f(r)-z|<=e, taking real parts and applying
the triangle inequality yields

    |S_f(r)-2(mu-Re z)| <= 2(e0+e).

Since S_f(r)>=0 exactly, with b=2(mu-Re z), d=2(e0+e),

    max(0,b-d) <= S_f(r) <= max(0,b+d).                (WGC-2)

The upper max is harmless; the certificate already forces b+d>=S_f(r)>=0.
Only the nonnegative translation energy is clipped. The complete arithmetic
Weil form and its complex prime response are NEVER clipped.

### Kernel monotonicity and finite coefficients (WGC-3 to WGC-5)

Write A=a+1/2>0. For 0<r<=s, the positive numerator exp(-A*r) decreases and
the positive denominator 1-exp(-2r) increases. Cross-multiplying positive
denominators proves

    k_a(s) <= k_a(r).                                  (WGC-3)

Reuse the EXISTING `ExponentialBumpCells.expNegBinomial_enclosure`:

    L_n(v)=(1-v/n)^n <= exp(-v) <= U_n(v)=(1+v/n)^(-n)

for 0<=v<=n and integer n>0. For v>0 the inverse base of U_n(v) is in (0,1),
so U_n(v)<1. A private elementary-power proof supplies this strictly positive
denominator floor; there is NO additional `hgap` premise in the public source.
The initially proposed finite-floor input was discharged before publication.

If n>=A*r and n>=2r, define the finite arithmetic coefficients

    Kminus(a,r,n) = L_n(A*r)/(1-L_n(2r)),
    Kplus(a,r,n)  = U_n(A*r)/(1-U_n(2r)).

The lower denominator is positive because L_n(2r)<=exp(-2r)<1. Its numerator
is nonnegative because A*r<=n. The upper denominator is positive by U_n(2r)<1.
Both directions of interval division therefore give

    0 <= Kminus(a,r,n) <= k_a(r) <= Kplus(a,r,n).        (WGC-4)

For a positive cell [l,u], l<=u, choosing n>=max(A*u,2u) supplies the necessary
orders at BOTH endpoints. Monotonicity then proves, for EVERY r in [l,u],

    0 <= Kminus(a,u,n) <= k_a(r) <= Kplus(a,l,n).        (WGC-5)

The lower coefficient is evaluated at the RIGHT endpoint; the upper is at the
LEFT endpoint. No derivative of the kernel or floating-point exponential sample
is an input. For rational endpoints these are exact rational expressions.
A very small left endpoint can still produce an ill-conditioned numerical
evaluation; positive exact denominators are not a floating-point error budget.

### Density and finite integration (WGC-6, WGC-7)

Combine WGC-2 with nonnegative coefficients kl<=k_a(r)<=ku:

    kl*max(0,b-d) <= D_a(f,r) <= ku*max(0,b+d).           (WGC-6)

All four factors used in the product inequalities have the needed sign. In the
application, the SAME b,d enclose S_f throughout a cell; certifying only the
midpoint is not enough.

Take ANY finite adjacent lag partition y_0=eta,...,y_M=R with 0<y_j<=y_(j+1)
for every j<M. Assume complete lower/upper density bounds lo_j,up_j on every
closed cell. The original gamma-domain hypothesis restricts to integrability
on each half-open integration cell. Monotonicity of integration gives

    lo_j*(y_(j+1)-y_j) <= integral_cell D_a <= up_j*(y_(j+1)-y_j).

Summing adjacent integrals, with NO gaps, proves

    sum_j lo_j*h_j <= integral_eta^R D_a <= sum_j up_j*h_j. (WGC-7)

Weakly increasing cells are permitted; zero-width cells contribute zero. The
M=0 case forces eta=R and gives the zero integral. No gamma tail is discarded
by this theorem: the concrete consumer adds the existing near/far allowance.

## Comparison and hostile checks

A midpoint does not certify a cell: an integrable continuous function can vanish
at the midpoint and be positive elsewhere. Here the concrete correlation bound
pays for EVERY displacement from the midpoint up to half the lag-cell width.

Endpoint orientation is essential: WGC-3 is decreasing, so k_a(l) cannot be a
lower bound on a nonconstant positive-width cell. Lower/upper coefficient
uncertainty and variation are separate from correlation sampling errors.

Cancellation can make a sampled b negative while S_f is nonnegative. For
example, E=C=1, mu=9/10,z=11/10 and e0=e=1/10 give b=-2/5,d=2/5. Clipping the
center and treating it as exact loses the certificate; clipping the interval
endpoints as above is valid. This is synthetic scalar data, not a source sign.

An alternative WRITTEN quadrature route encloses |f(t+r)-f(t)|^2 directly on
physical/lag rectangles. For a globally B-bounded, K-Lipschitz test, its physical
Lipschitz bound is 8BK and its lag Lipschitz bound is 4BK. With r in [eta,R] and
support [-T,T], the UNION of translated and untranslated supports is contained
in [-T-R,T], not generally [-T,T]. This route avoids E-C cancellation, but pays
for the larger spatial interval. It shares the original source and elementary
inequalities, is not implemented here, and is NOT independent review.

Dated comparison, 2026-11-18: the maintained correlation cells already supply
both factor errors, the product cross term, and lag perturbation. The compact
cutoffs already supply gamma admission and both omitted regions. This increment
adds finite monotone-kernel scalar cells and their actual arithmetic consumer;
it does not replace those providers or the separate operator-output quadrature.
Repository indexed search was incomplete and proves no corpus-wide absence.

S. M. Rump, *Verification methods: Rigorous results using floating-point
arithmetic*, Acta Numerica 19 (2010), 287-449, corrected supplied author edition,
section 12, Theorem 12.1 and Algorithm 12.2 (PDF pp.85-86), gives verified C4
Simpson quadrature. It is methodological comparison ONLY: neither that theorem
nor its implementation is formalized here. This is an elementary range enclosure
and monotone integration argument. The PDF's page-86 rendering was inspected.
[Author edition](https://www.tuhh.de/ti3/rump/intlab/ActaNumerica2010.pdf).
Supplied-edition SHA-256: `6d4d2eaa2dd40389fa75fbdc26f4e37f863806d734a6bbbf02005271cc08fea2`.
The online PDF screenshot failed with a cache miss; the uploaded rendering was
available. No copyrighted paper or implementation is copied into the repository.

## Individual declaration provenance and consumers

Prefix for every record:
`GRWTSK.NumberTheory.WeilQuadraticForm.GammaCells`.
Every record has version 1, date 2026-11-18, status SOURCE_PROOF_CANDIDATE,
novelty UNASSESSED, and all formal execution/independent review NOT_RUN.

- **WGC-1** `translationEnergy_eq_energy_sub_correlation`: all complex L2 tests
  and real lags; classical square expansion and translation invariance, applied
  to the maintained correlation. Uses `integrable_correlation_integrand` and
  mathlib integration, not a newly formalized paper theorem. Consumer WGC-2.
- **WGC-2** `translationEnergy_enclosure`: same domain, arbitrary real energy
  center/radii and complex correlation center satisfying the stated enclosures;
  source-specific interval consequence of WGC-1. Consumer WGC-6.
- **WGC-3** `parityKernel_antitone`: every natural parity parameter and all
  0<r<=s; elementary exponential/order argument on the exact source kernel.
  Consumer WGC-5. No positivity of the complete form follows.
- **WGC-4** `kernelBinomial_enclosure`: every a,n,r with r>0,n>0 and both order
  bounds; direct local consequence of EBC-1, not a direct Rump formalization.
  The private power lemma derives denominator positivity. Consumer WGC-5.
- **WGC-5** `kernelBinomial_cell_enclosure`: every positive ordered cell, point
  in that cell and sufficient common order; combines WGC-3/4. Consumer EBQ-1.
- **WGC-6** `gammaCorrectionDensity_enclosure`: actual L2 source, energy and
  correlation enclosures, nonnegative kernel lower bound and kernel upper bound;
  interval multiplication with exact translation nonnegativity. Consumer EBQ-1.
- **WGC-7** `gammaIntegral_enclosure`: original gamma admission and every finite
  adjacent positive partition with all-cell bounds; mathlib integral monotonicity
  and adjacent-interval summation. Consumer EBQ-2 DERIVES all-cell hypotheses.

The source convention is inherited from `WeilConductorFrontier` and
`WeilSourcePrimeCorrelation`, whose existing provenance cites Connes, Consani
and Moscovici, *Zeta Spectral Triples*, arXiv:2511.22755v1, (3.17)-(3.20).
No new explicit formula or paper-to-theorem equivalence is asserted here.

## Pins, evidence and open obligations

Inspection base: `grwtsk/math@f5fbc2d11e06372d086cf4a1962af5a482d914fd`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`, unchanged.
Pinned API inspection included mathlib complex norms and interval integration.
Static lexical/identity checks, when performed, are recorded in the issue;
they are not parsing, elaboration, kernel checking or mathematical acceptance.
No build, axiom audit, numerical source certificate or independent review has
been run. Exact-source verification remains open in #1801.

The canonical Noe proof skill was inaccessible at
`579468f41b6fb1c02fce66f25a2deee81bde78ff`; no dependent execution was dispatched.
This source publication does not alter that boundary. The publication receipt
records the final main commit, content hashes, any concurrent-base reconciliation
and all actual checks. No optional catalog/registry regeneration is claimed.
