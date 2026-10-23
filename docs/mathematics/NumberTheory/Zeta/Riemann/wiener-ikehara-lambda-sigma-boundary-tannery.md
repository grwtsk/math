# Wiener–Ikehara: actual von Mangoldt sigma-downarrow-one Fourier tsum

**Trust:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
**Mathematics owner:** grwtsk/math main, no branch/worktree.
**Execution and proof-custody owner:** grwtsk/noeaaeue.

## Primary maintained mathematical source

AlexKontorovich/PrimeNumberTheoremAnd commit
127b50e33f6033e2147921167a117af96d9ba4ea,
PrimeNumberTheoremAnd/Wiener.lean blob
59fd5069a7eca51a8bc5005b5c43e31a5cbb38ac.

The maintained declaration limiting_fourier_lim1 (around lines
985–1030) uses the true pinned dominated-convergence theorem
tendsto_tsum_of_dominated_convergence for the sigma↓1 arithmetic
Fourier-weighted series.

Maintained upstream Lean: v4.35.0.
Local Lean: v4.33.0; Mathlib pin:
db584cd6d46c92f209a44c0f1c829460d327499d.
No cross-version theorem is treated as an accepted imported proof.

## Exact new mathematical source

Pure source:
GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean.

Hostile and consuming controls:
GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean.

For a genuine Schwartz map g:S(R,C), a real scale T>=1 and
the pinned complexified von Mangoldt coefficients Lambda_C(n), the
source authors a theorem establishing

    lim_(sigma ↓ 1)
      tsum_n LSeries.term(Lambda_C,sigma,n)
             * Fourier(g)(log(n/T)/(2*pi))
    =
      tsum_n (if n=0 then 0 else Lambda_C(n)/n)
             * Fourier(g)(log(n/T)/(2*pi)).

The limit filter is nhdsGT(1), i.e. approaches from sigma>1.
Both the n=0 boundary and the n=1 coefficient remain exact.
This is NOT the unweighted LSeries Lambda_C at s=1: that
Dirichlet series need not converge there.

The Fourier character is exp(-2*pi*i*t*xi). The Fourier frequency
is POSITIVE xi(n,T)=log(n/T)/(2*pi), as in the original PNT source.

## Genuine pointwise and dominated-convergence proof

For every natural n, the source proves convergence of the actual
LSeries.term(Lambda_C,sigma,n) to term(Lambda_C,1,n).
At n=0 this follows from the source's zero-term definition. At n>0,
complex-power continuity for (n:Complex)^sigma gives the limit.

Pinned Mathlib's norm_term_le_of_re_le_re shows that sigma>=1 gives

    |term(Lambda_C,sigma,n)| <= |term(Lambda_C,1,n)|.

The source proves actual Schwartz Fourier decay by applying
SchwartzMap.decay at orders (0,0) and (2,0) to Fourier(g). Thus
there is one C_g>=0, independent of n, sigma, T, with

    |Fourier(g)(u)| <= C_g/(1+u^2).

A separate exact normalization theorem shows

    |term(Lambda_C,1,n)|/[1+xi(n,T)^2]
      = K_T(n),

where the genuine zero-safe Chebyshev Fourier kernel is

    K_T(0)=0,
    K_T(n)=Lambda(n)/n/[1+(log(n/T)/(2*pi))^2], n>0.

Hence for all sigma>=1 and all n,

    |term(Lambda_C,sigma,n)*Fourier(g)(xi(n,T))|
       <= C_g*K_T(n).

The preceding SOURCE-DRAFT module
WienerIkeharaLambdaLogKernelUniformBound.lean proves in authored
Lean text that K_T is summable for T>=1, with

    tsum_n K_T(n) <= (log4+4)*(1+2*pi^2).

The new source uses THAT theorem as an actual proof term, rather
than adding an equivalent premise, to get the summable majorant
C_g*K_T(n). It then invokes pinned Mathlib
tendsto_tsum_of_dominated_convergence with actual pointwise limit
and uniform-in-sigma norm domination. The principal new theorem is
wienerSigmaFourier_tendsto_boundary, with an explicit zero-safe
boundary coefficient.

The source also authors a stronger bound for all T>=1, sigma>=1:

    Summable(n ↦ |term(Lambda_C,sigma,n)*Fourier(g)(xi(n,T))|)
    AND
    tsum_n |term(Lambda_C,sigma,n)*Fourier(g)(xi(n,T))|
       <= C_g*(log4+4)*(1+2*pi^2).

The test-dependent constant is constructed from Schwartz decay;
it is independent of scale T and sigma.

## Exact unresolved next analytic supplier

This is the arithmetic sigma-limit stage, not the full
limiting_cor_schwartz.

The remaining source theorem still requires:
1. actual pinned Lean --wfail/trust0 replay of this module and all
   imported finite-Abel, first Fourier and uniform kernel sources,
   with complete generated types and transitive axiom closure;
2. independent audit of the second pole Fourier and q=1
   closed-boundary integral/Riemann–Lebesgue modules;
3. source-exact combination of first/second finite-sigma identities
   with G(s)=LSeries(Lambda_C,s)-1/(s-1), justified at sigma>1;
4. a QUANTITATIVE Schwartz/W21 seminorm controlling the Fourier
   Cauchy constant C_g, not merely an existence proof for each g;
5. compact smooth truncations g_R converging in precisely that
   controlling seminorm, implying C_(g-g_R)->0;
6. uniform-in-T discarded-tail bounds and genuine completion of
   limiting_cor_schwartz.

Boundary continuity of G on Re(s)>=1 alone is insufficient for
whole-line Schwartz boundary integrability without further
vertical-growth estimates. The separately unverified downstream
smooth-to-interval PR #965 cannot supply this analytic result.

## Verification and epistemic boundary

No Lean/Lake execution, warning-as-error job, --trust=0 replay, or
axiom audit was performed in this authored increment. The older
human-reported 19-header Fourier/Mellin acceptance at math commit
a9d81821f5044b1dedcf56523ab491f0ee04dcc8 does NOT certify the
new dominated-convergence theorem or its source-draft dependencies.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
No RH, PNT, Chowla, Goldbach, or revival of the previously rejected
fixed quadratic integer-psi capacity is claimed.
