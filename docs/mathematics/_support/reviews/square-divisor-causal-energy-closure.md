# Three analytic routes: exact delay-energy closure and remaining cancellation

Local attribution: grwtsk contributors.

## 1. A direct causal transfer, stronger than a pointwise-summatory prerequisite

For n>=1 let lambda(n)=(-1)^Omega(n). Define F_mu and F_lambda with the
same original causal response

    r_n(u)=2 max(n^(-1/2)-exp(-u/2),0), u>=0,

and extend both waveforms by zero for u<0. Define
H_f(T)=integral_0^T |F_f(u)|² du, T>=0.
Every sum below is locally finite; the birth endpoint has zero response.

The prime-power Euler factors give BOTH exact coefficient identities

    mu(n)=sum_{d²|n}mu(d)lambda(n/d²),
    lambda(n)=sum_{d²|n}mu(n/d²).

For the second identity the prime-power sum of mu(p^(a-2b)) is 1 for
even a and -1 for odd a. Multiplicativity finishes the finite identity.
For the first identity, the square-divisor sum of mu(d) vanishes exactly
when n is not squarefree, and lambda(d²)=1. These identities include all
squareful-zero labels; they do not approximate the squarefree mask.

Crucially the ORIGINAL causal weights obey the exact scaling law

    r_{d²k}(u)=d^(-1) r_k(u-2log d).

The birth condition d²k<=exp u is precisely k<=exp(u-2log d), and the
positive-part formula has the same scaling. Finite regrouping therefore gives

    F_mu(u)=sum_{d<=exp(u/2)} mu(d)/d * F_lambda(u-2log d),       (1)
    F_lambda(u)=sum_{d<=exp(u/2)} 1/d * F_mu(u-2log d).          (2)

This is a transport of the signed waveform BEFORE squaring. Parity and all
residue classes can be inserted in the finite regrouping without deleting
any coefficient or mixed product. Compatible precision lifts must still be
interpreted through the same integer source, never substituted for real weights.

## 2. Uniform finite-energy operator bound and truncation

Minkowski's inequality on L²([0,T]), with zero extension, gives exactly

    sqrt(H_mu(T)) <=sum_{d<=exp(T/2)} 1/d *
                      sqrt(H_lambda(max(T-2log d,0))).        (3)

The same inequality holds with mu and lambda interchanged, by (2).
No correlation theorem, modulus restriction or sign assertion is used.
The constants are uniform in all residue presentations and full shift ranges,
because those presentations first reconstruct the same waveforms.

Suppose for a FIXED epsilon>0, C>=0, the independently justified supplier is

    H_lambda(S)<=C exp(epsilon S), for EVERY S>=0.

Then (3) and sum_{d>=1}d^(-1-epsilon)<=1+1/epsilon give

    H_mu(T)<=C*(1+1/epsilon)² exp(epsilon T), for EVERY T>=0.   (4)

More sharply the factor is zeta(1+epsilon)². If the sum in (1) is truncated
to d<=D, D an integer >=1, its error waveform R_D satisfies

    integral_0^T |R_D(u)|²du
        <= C exp(epsilon T) * D^(-2epsilon)/epsilon².          (5)

Indeed apply Minkowski to d>D and the integral-test bound
sum_{d>D}d^(-1-epsilon)<=D^(-epsilon)/epsilon. Equations (4),(5)
have no hidden shift/modulus/time-dependent constants. Their only supplier
is the displayed uniform Liouville ENERGY bound; it is not proved here.

Applying the same argument to (2) proves the equivalence

    [for every epsilon>0, H_mu(T)<=C_epsilon exp(epsilon T)]
      iff
    [for every epsilon>0, H_lambda(T)<=K_epsilon exp(epsilon T)].

Constants may depend on epsilon; that dependence is allowed in the target.
The transfer loses no exponent. Dyadic-time bounds extend to all T by
monotonicity of nonnegative cumulative energy and a bounded rounding gap.
Thus this is an analytic closure of the transfer, NOT a proof of its input.

## 3. Weighted infinite-energy version

For sigma>0 put ||f||_sigma²=integral_0^infinity exp(-sigma u)|f(u)|²du.
A causal delay by 2log d has norm multiplier d^(-sigma), in addition to
the coefficient d^(-1). Therefore (1),(2) define bounded operators with

    ||F_mu||_sigma <= zeta(1+sigma)||F_lambda||_sigma,
    ||F_lambda||_sigma <= zeta(1+sigma)||F_mu||_sigma.

If one norm is finite, summability of the delayed L² norms justifies the
infinite-series limit; local finiteness identifies it with the actual waveform.
This is not an exchange justified merely by a totalized integral.
Finiteness for EVERY sigma>0 is equivalent to all-positive-rate cumulative
energy: H(T)<=exp(sigma T)||f||_sigma² in one direction; in the other use
a cumulative bound at epsilon=sigma/2 and sum unit-time intervals.
The source-specific analytic acceptance and Lean proof are still unpaid.

## 4. Correlation route: exactly where growing uniformity is needed

Primary statement: OpenAI, ordinary two-point correlations, family 007,
https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/docs/007.md .
The fixed-affine Liouville result allows its implied constant to depend on
the two affine forms. The generic multiplicative-function statement requires
its stated uniform nonpretentiousness. Neither is imported here.

The existing square-divisor/CRT expansion yields affine pairs with slopes
lcm(d²,e²) and determinant lcm(d²,e²)*h when gcd(d,e)² divides h.
For d,e<=D and h<=N these slopes can reach D^4 and determinants D^4*N.
A finite maximum of fixed-form constants exists for each such finite box,
but supplies NO growth control for that maximum as D,N increase.

Summation by parts handles the original response weights only AFTER a
prefix estimate with appropriate uniform parameters is supplied. It cannot
convert an uncontrolled form-dependent constant into an absolute one.
Even a fixed logarithmic saving, separately summed over all shifts, need
not yield the required N^delta energy. The exact unresolved supplier remains
the complete signed aggregate with all four parity sectors and causal weights.

## 5. Spectral/Hilbert route: proportions versus pointwise exclusion

Primary sources:
- Anthropic zeta23 project, https://github.com/anthropics/formal-math/tree/main/zeta23
  (separate pinned project; root promotion or dependency migration not authorized).
- Youness Lamzouri, *A new proof that more than 2/3 of the zeros of the
  Riemann zeta function are simple and on the critical line*, arXiv:2609.02882v2,
  https://arxiv.org/abs/2609.02882v2, Theorem 1.1 and Proposition 2.1.

The published conclusions give proportions, not absence of every exceptional
zero. A finite exceptional set is compatible even with an asymptotic proportion
of one. Rank/trace averages cannot be replaced by positivity on every actual
test function without a new theorem. A closure route would need an exact
source-matched bound forcing EACH relevant integer defect below one at EVERY
height, or an independent theorem excluding every off-line zero. Neither is
supplied by the cited proportion result.

Lamzouri also explains a barrier to a naive kernel upgrade: a nonconstant
entire kernel cannot have nonnegative real part on the whole complex plane
(Section 2). Thus simply demanding universal off-line positivity from the same
entire kernel is not a viable unchanged retry. The alternative Hilbert-space
inequality keeps signed off-diagonal terms; it does not certify the GRWTSK
arithmetic energy or remove the source-to-zero comparison obligation.

## 6. Zero-free-region / contour route

OpenAI family 003 scope:
https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/docs/003.md .
The project states nonvanishing in Re(s)>7/8. This source statement is not a
fresh local kernel receipt and is not a quantitative bound for lambda sums.
For the Dirichlet series zeta(2s)/zeta(s), a Perron shift additionally needs
explicit reciprocal-zeta growth, truncation and horizontal-contour bounds.
Those inputs must be matched before claiming a Liouville exponent.

IF such a justified argument supplies |L(X)|<=C X^theta for theta>1/2,
the earlier exact Abel transfer yields energy exponent 2theta-1. Thus the
conditional theta=7/8+eta benchmark remains 3/4+2eta, not arbitrarily small.
The direct ENERGY transfer (4) is an alternative with a weaker-shaped input;
it does not produce that input from nonvanishing or from zero proportions.

## Evidence and remaining obligations

Equations (1)--(5) and the norm equivalence are mathematical derivations of
transport with full hypotheses. No external source is claimed to prove their
all-positive-rate input. The existing arithmetic cancellation target is open.
Compilation, expected-interface checking, fresh kernel replay and transitive
axiom auditing of any future source formalization: NOT_RUN. No native proof
job or new controller is dispatched. This document adds no Lean axiom,
assumed cancellation instance, dependency change or root import.
