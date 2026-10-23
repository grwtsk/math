# Wiener–Ikehara actual von Mangoldt logarithmic-kernel bridge

**State:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
**Repository:** grwtsk/math, authored directly on main.
**Effectful verification:** only under grwtsk/noeaaeue custody.
**Parent:** existing finite Abel majorization in
GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaFiniteAbelMajorization.lean,
blob 4d7ea3d031cca1345fccd1850ec65cf6f785fa92.
**Maintained upstream:** AlexKontorovich/PrimeNumberTheoremAnd at
127b50e33f6033e2147921167a117af96d9ba4ea,
PrimeNumberTheoremAnd/Wiener.lean blob
59fd5069a7eca51a8bc5005b5c43e31a5cbb38ac,
especially bound_sum_log' (~1642).

## Actual mathematical suppliers now authored

New pure mathematical module:

    GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean

Controls:

    GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelFiniteBridgeControls.lean

### 1. Literal von Mangoldt -> Chebyshev prefix

Define a(k)=ArithmeticFunction.vonMangoldt(k+1). The source proves
for ALL natural N including N=0,

    sum_(0<=k<N) a(k) = Chebyshev.psi (N:Real).

This is an actual finite index equality: pinned
Chebyshev.psi_eq_sum_Icc identifies psi with the inclusive von
Mangoldt sum from 0 through N, Lambda(0)=0, and the Ioc/Ico
shift turns n=1..N into the range N with index k+1.

Consequently the source consumes pinned Mathlib's
Chebyshev.psi_le_const_mul_self, deriving

    forall N, sum_(k<N) Lambda(k+1) <= (log 4+4)*N.

The coefficient C=log4+4 is fixed once and independent of N,
the Fourier scale, or the distribution of prime powers. The
source never infers an invalid pointwise Lambda(n)<=C estimate.

### 2. Genuine positivity and monotonicity of the logarithmic weight

Put c=2*pi, and let

    D(v) = exp(v) * [1+(v/c)^2].

The new Lean proof authors an explicit derivative via HasDerivAt
product/quotient rules:

    D'(v)
       = exp(v) * [1+(v/c)^2+2*v/c^2]
       = exp(v) * [c^2+v^2+2*v]/c^2.

The numerator equals (v+1)^2+(c^2-1), strictly positive because
c=2*pi>1. Thus D is STRICTLY increasing for all v∈Real,
including the negative logarithmic half-line.

For every T>0 and x>0,

    W_T(x)
      = 1/[x * (1+(log(x/T)/c)^2)]
      = T^(-1) * D(log(x/T))^(-1).

The map x↦log(x/T) is increasing; D is strictly increasing and
positive; taking the reciprocal reverses the order.
Therefore W_T is positive and NONINCREASING on (0,infinity).
This is a true combined weight estimate. It avoids the false
claim that the squared logarithm itself is monotone on all
positive x.

The controls include the scale-normalization check

    W_T(T)=1/T

and fix c literally as 2*pi, ruling out accidental
Fourier-angle changes.

### 3. Genuine actual-Lambda finite Abel consequence

For any positive real T and all natural N, the source
instantiates the previous generic Abel summation theorem with
the ACTUAL shifted von Mangoldt coefficients and monotone
weights w(k)=W_T(k+1), giving

    sum_(k<N) Lambda(k+1)*W_T(k+1)
       <= (log4+4) * sum_(k<N) W_T(k+1).

Every coefficient, prefix bound, positivity and decreasingness
hypothesis is now sourced to a concrete proof declaration.
There is NO free field asserting a target-equivalent inequality
or a historical Fourier lemma.

This is precisely the finite arithmetic part of the maintained
Wiener proof's bound_sum_log'. It is not by itself an infinite
series theorem.

## Exact remaining analytic step: the uniform integral test

For T>=1 we still need to prove in LOCAL Lean

    sum_(n>=1) W_T(n) <= 1+2*pi^2

and actual convergence of that series. A direct route using
pinned Mathlib is:

1. Prove W_T is integrable on the half-line (1,infinity),
   by logarithmic substitution and the standard Cauchy kernel.
2. Use the pinned theorem AntitoneOn.tsum_le_integral (possibly
   shifted by one) or its finite integral-test version, together
   with the monotonicity now proved, to obtain

       sum_(n>=1) W_T(n)
          <= W_T(1)+integral_(1,infinity) W_T(x)dx.

3. Bound W_T(1)<=1 for T>=1 (in fact T>0 suffices).
4. Evaluate the integral exactly using u=log(x/T)/(2*pi):

       integral_(1,infinity) W_T(x)dx
          = 2*pi * [pi/2-arctan(-log(T)/(2*pi))]
          <= 2*pi^2,

   since arctan(z)>=-pi/2 for every real z.

Pinned useful sources:
- Mathlib/MeasureTheory/Integral/IntegralEqImproper.lean:
  integral_comp_log_Ioi and integral_comp_mul_left_Ioi;
- Mathlib/Analysis/SpecialFunctions/ImproperIntegrals.lean:
  integral_Ioi_inv_one_add_sq;
- Mathlib/Analysis/SumIntegralComparisons.lean:
  AntitoneOn.tsum_le_integral and integral-test lemmas.

The actual derivative/shifted Chebyshev/finite Abel arguments are
authored in the present source, but the above improper integral
comparison has NOT yet been proved in Lean. No structure field or
axiom asserts it; therefore the exact infinite inequality

    sum'_n Lambda(n)/n
       / [1+(log(n/T)/(2*pi))^2]
        <= (log4+4)*(1+2*pi^2)

remains formally OPEN.

## Relationship with Fourier and independent verification

The first genuine finite-sigma Fourier/Fubini source and
second Fourier pole source are maintained as separately replayable
drafts. The earlier Mellin/Fourier identity source was independently
repaired and checked at math commit
a9d81821f5044b1dedcf56523ab491f0ee04dcc8
according to the human's exact --wfail/trust0 receipt. This
increment does not change that accepted predecessor.

This arithmetic route does not rely on arbitrary global vertical
growth of the closed-half-plane pole-subtracted auxiliary G.
Such growth cannot be inferred merely from continuity on compact
rectangles. The new finite Abel result is what can ultimately
control sigma-downarrow-one arithmetic Fourier series uniformly
in T, together with the full integral bound above.

The smooth-to-interval source in PR #965 remains independently
unverified and cannot supply this arithmetic domination or
the missing limiting_cor_schwartz proof.

No Lean/Lake command or kernel audit ran for this new source.
No unconditional PNT, Riemann hypothesis, Chowla or Goldbach
result is claimed.

**Next substantive obligation:** complete the 1+2*pi^2 infinite
integral-test bound and derive the genuinely summable uniform
Lambda Fourier kernel estimate, then use it in the
sigma↓1 Fourier-series dominated-convergence argument.
