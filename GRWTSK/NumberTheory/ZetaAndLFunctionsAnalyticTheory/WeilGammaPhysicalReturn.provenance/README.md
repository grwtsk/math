# Exact physical Weil return, including conductor-one zeta

Authors: **grwtsk contributors**. Date: 2026-11-12 (America/Los_Angeles).
Status **SOURCE_PROOF_CANDIDATE**; novelty **UNASSESSED**. No novelty claim.
MSC2020: 11M41, 11M06, 33B15, 42A38. Scope: RP-OC-02 source return.

Maintained source: [WeilGammaPhysicalReturn.lean](../WeilGammaPhysicalReturn.lean).
Source SHA-256: c992ae2b6c9ee7dd498f3c00e1e5f8aa057c6c285070556845cb481bf3b0b377.
Authoring base: math@05c3158365036f6eaa025d78cf2586dbbfb81f20.
Complete base tree:49c727c41d7910d94a4a7c02c6574a239670c42c.
Lean:leanprover/lean4:v4.34.1; Mathlib:d13f23b723b8a846827a245b89c10fc7d3f11612.
Coordination:math#1801, scope6830176457 and reconciliation6830786205.

## 1. Exact endpoint, not a substitute form

Fix a primitive character chi of positive level q. Keep the canonical
Admissible smooth compact complex f, supported in [-A,A], A>=0, and

    C(r)=integral conjugate(f(u))*f(u+r)du,
    E=energy(f)=C(0),
    W(s)=integral C(r)*exp((s-1/2)*r)dr,
    a=gammaParity(chi), sigma=1/4+a/2.

The continued source is the original completedLFunction, without inserting
q^(s/2). The zero index is CriticalStripZero chi and the original multiplicity
is zeroMultiplicity chi. Neither the canonical criticalStripStatement nor
its conductor-one zeta correspondence is changed.

The final all-primitive source candidate is the unordered HasSum identity

 sum_rho m_chi(rho)*W(rho)
 = gammaConstant(q,a)*E
     + integral_(r>0) gammaCorrectionDensity(a,f,r)dr
     - twistedPrime(A,chi inverse,n -> C(log n))
     + delta_(q=1)*(W(0)+W(1)).                         (1.1)

All real quantities on the right are embedded into C. There is no projection
of the left side onto its real part. The zero weight is the existing signed
reflected complex Fourier pairing, not an absolute square off the line.
The maintained WeilSourceHeightTail supplies its actual-source count and
absolute-summability/HasSum consumer before (1.1) is assembled.

For primitive NONPRINCIPAL chi, q!=1 and the right side is exactly the EXISTING
primitiveArithmeticValue at chi inverse, with inverse primitivity and
nonprincipality derived. No character renaming changes the chi-zero divisor.

For the literal level-one principal character, (1.1) is

 sum_(rho of zeta) m(rho)*W(rho)
 = gammaConstant(1,0)*E + integral_(r>0) gammaCorrectionDensity(0,f,r)dr
     - 2*sum_(n in activePrimePowers(A)) primeWeight(n)*Re C(log n)
     + W(0)+W(1).                                    (1.2)

LFunction_modOne_eq is the existing correspondence to riemannZeta. Both
signed pole products remain. The activePrimePowers set is the original
strict-cutoff inventory, including all von Mangoldt prime powers and its
endpoint-zero argument. Nothing is interpreted as a Dirichlet series outside
its proved convergence half-plane.

## 2. Complete primary analytical proof of the gamma return

Set s_t=2+it and H(t)=W(s_t)+W(1-s_t). The native vertical weights are L1.
For alpha=a+1/2>0 and d(t)=3/2+it, write

    K_a(r)=exp(-alpha*r)/(1-exp(-2r)),
    k(t,r)=K_a(r)*(1-exp(-d(t)*r)), r>0.

The concurrently supplied digamma_right_line_compensation states

    psi((2+a+it)/2)-psi(alpha/2)=2*integral_(r>0)k(t,r)dr. (2.1)

It is a source theorem obtained from native Euler-Gamma convergence, not an
assumption in this file. Its integrability is supplied as well. Its companion
compensated_pair_inversion gives, for every real r,

    (1/(2pi))*integral_R H(t)*(1-exp(-d(t)*r))dt
      = energy(tau_r f-f).                              (2.2)

This is the original physical shift energy. It retains both vertical
orientations and the exponential tilt exp(3r/2). Its proof uses the actual
correlation, translation invariance and native Fourier inversion.

### The new product-integrability supplier

The remaining required Fubini premise is proved for F(t,r)=H(t)*k(t,r),
with product measure volume times volume restricted to r>0. Put

    B=derivativeL1Cost(f,2)^2*exp(3A),
    M=6B*(2/alpha+1/2).

The supplied two-line decay is |H(t)|<=2B/(1+|t|)^4. The native density
majorant is

    |k(t,r)|<=2*|d(t)|*(2/alpha+1/2)*exp(-alpha*r/2).

Since |d(t)|<=3(1+|t|)/2 and (1+|t|)^3>=1+t^2,

    |F(t,r)| <= M/(1+t^2)*exp(-alpha*r/2).                (2.3)

The two factors are integrable. Joint measurability follows from measurable
H and the literal complex exponential/division expression. The denominator
at r=0 is irrelevant to the restricted measure; (2.3) holds for every r>0,
including arbitrarily small r. Thus full product integrability is established
before applying Fubini. No divergent constituent of k is split off.

Use (2.2) on the t integral of F, with the actual scalar K_a factored outside.
It is exactly gammaCorrectionDensity(a,f,r) embedded into C. Product
integrability therefore also supplies L1 of this original physical correction;
it is not an extra caller hypothesis or a totalized integral default.

By (2.1), the literal gamma integrand splits as

 H(t)*[-log(pi)/2+psi((2+a+it)/2)/2]
 = H(t)*[-log(pi)/2+psi(sigma)/2] + integral_(r>0)F(t,r)dr.

Both summands are L1 by the proved statements. Native paired inversion at0
gives (1/(2pi))*integral H=2E. Integrate, apply Fubini, and use (2.2):

 I_gamma,a(f) = [-log(pi)+psi(sigma)]*E
                 + integral_(r>0) gammaCorrectionDensity(a,f,r)dr. (2.4)

### Reality is derived

At a positive real x, the eventual Euler-Gamma logarithmic derivatives are
real: log(n) and every reciprocal (x+j)^(-1) are real. The maintained actual
complex logarithmic-derivative limit implies Im psi(x)=0 by continuity of Im
and uniqueness of limits. Consequently (2.4) is an equality in C with the
embedding of the real physical expression. It is not obtained by discarding
an unknown imaginary part.

This establishes WGPR-v1-01, including actual gamma-line integrability and
physical-correction integrability, for any natural a and every admissible f.
No primitivity is needed for this gamma component alone.

## 3. Arithmetic and zero-side assembly

The recovered WeilPrimeGammaAssembly gives the SAME continued arithmetic
line integral as I_gamma,a + log(q)*C(0) minus twistedPrime at chi inverse.
Use C(0)=E, log(q/pi)=log(q)-log(pi), and the existing real_digamma_eq at
sigma>0. This identifies the baseline with the unchanged gammaConstant and
gives WGPR-v1-02. Its complex equality and its gamma-integrability conclusion
have no Gauss, Fourier-inversion, counting or positivity premise.

The refreshed primitive_hasSum_contour_weight_source_bound supplies HasSum
on the original zero index, equal to the original arithmetic line plus both
applicable poles. It consumes heightCount_le_source_bound from
DirichletZeroCounting internally. WGPR-v1-03 substitutes WGPR-v1-02 into that
endpoint, yielding (1.1). Count-free here means there is no counting premise
at the public endpoint, NOT that the count proof has been kernel-verified.
Its imported SOURCE_PROOF_CANDIDATE status is retained.

For WGPR-v1-04, nonprincipality rules out q=1; conductor_inv supplies
primitivity of chi inverse and inv_eq_one supplies nonprincipality. Unfold
the existing primitiveArithmeticValue and use gammaParity_inverse. This is
the canonical physical value at the correct inverse character. For WGPR-v1-05,
use the literal level-one character, parity0, and its actual all-unit values
to expand the prime block, retaining both poles as in (1.2).

The preceding source-selected heights remain selected before f,A in their
maintained consumer. The final HasSum is unordered and uses absolute
convergence; it is not defined by one special height subsequence.

## 4. Comparison and quantitative consumer

The separate [resolvent module](../WeilGammaResolventEvaluation.lean) supplies
finite compensated gamma integrals and a full complex approximation bound

 |g_a(t)-g_(a,n)(t)|<=(a+|t|)/(4(n+1)).

Its written integrated consequence is

 |I_gamma,a-Gamma_(a,n)|<=B*(2a+1)/(12*pi*(n+1)).

This now approximates the explicitly identified original physical gamma term,
not an unnamed contour limit. No finite evaluation or transcendental rounding
certificate is inferred. The canonical full form additionally retains the
signed prime block and both zeta poles. B depends on the fixed test; varying
interpolation costs still require their own joint bounds.

The two gamma arguments share native Euler-Gamma convergence and Fourier
inversion. They are distinct written decompositions, NOT independent review
or two independently checked proofs. The direct compensated route consumes
concurrent source rather than copying its proofs.

## 5. Source map and exact evidence

Records: [01](weil_gamma_line_eq_physical.md),
[02](weil_full_line_eq_physical_arithmetic.md),
[03](primitive_hasSum_physical_arithmetic.md),
[04](primitive_hasSum_canonical_arithmetic.md),
[05](zeta_hasSum_physical_arithmetic.md).

Primary native sources at the base:
- CompensatedDigammaIntegral:fc8216804044e46a9da62e88d1fc1c7479789f4d;
- WeilGammaCompensatedInversion:ab18e9b34a34e4d99bdbac3d3233e9953a48cbad;
- WeilSourceHeightTail:c9226f7083e9df82b00a9f9bfb65fcfdbb39cde2;
- GammaEulerLimit:b04828358d697dd7c61ce5755374fc8e40379ff9.

Pinned Mathlib primary suppliers include product integration and Fubini by
Floris van Doorn and contributors, Integral/Prod.lean blob
7484a64e40beacdd472da61f858f02c8ffb62863; product-measure ae comparison,
Measure/Prod.lean blobdcda187671ab2b4ded4e301fb30ca0391eb41c3b.
Classical normalization comparison: NIST DLMF [5.9.16](https://dlmf.nist.gov/5.9.E16),
accessed2026-11-12. This is a local assembly of native mathematical sources,
not a new direct paper formalization or an upstream build transfer.

Elaboration, full dependency build, fresh kernel replay, transitive axiom
audit, printed-statement correspondence, independent analytical review,
numerical functional certification and repository-wide validation: **NOT_RUN**.
No Lean/Lake command was executed. Required canonical execution skill returned404
at Noe3a22e1022074ecc99d5cdeaabeb5dc919711a55b; no verified local skill/toolchain
was available. Dependent execution was stopped. Source-text/scalar checks and
publication observations are recorded in math#1801 and do not upgrade imports.

The historical previous run's absence of a formal count supplier is not reused:
the current actual-source counting consumer was inspected and composed. The
original all-test arithmetic lower-sign inequality and complete off-line-zero
negative-witness supplier remain unresolved. An explicit formula identifies the
form; it does not prove its positivity. No RH or primitive Dirichlet GRH claim.
