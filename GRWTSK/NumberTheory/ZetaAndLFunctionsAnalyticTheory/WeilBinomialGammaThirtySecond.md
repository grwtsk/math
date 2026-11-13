# Sharp binomial gamma-tail floor at the original A<=1/32 Weil window

Local attribution: grwtsk contributors; 2026-11-12. MSC2020 11M26 (primary),
11M41, 33B15. Status: complete WRITTEN analytical argument and Lean
SOURCE_PROOF_CANDIDATES in WeilBinomialGammaThirtySecond.lean. Elaboration,
full build, kernel replay, transitive axiom audit, independent review and
certified whole-form evaluation NOT_RUN. Novelty UNASSESSED. RH and primitive
Dirichlet GRH are NOT claimed.

## Exact target and original source

For EVERY 0<A<=1/32, EVERY primitive character chi of conductor q>=1,
and EVERY complex Cc-infinity test f supported [-A,A], the WRITTEN
unconditional conclusion is

 Q_chi,A(f) >= (1/16)*E(f), E(f)=int_R |f(t)|²dt.

For q>1, Q is the native primitiveArithmeticValue:
 c_chi*E(f)+Gamma_a(f)-S_chi,A(f),
 where c_chi=gammaConstant(q,gammaParity chi),
 Gamma_a=int_(r>0) parityKernel(a,r)*e_f(r)dr,
 e_f(r)=int_R |f(t+r)-f(t)|²dt,
 S_chi,A=2sum_(n in activePrimePowers A) primeWeight(n)*
             Re(conj(chi(n))*C_f(log n)).
Every von Mangoldt prime power, complex character phase and conductor
remains literal. At conductor one, the source is the analytically
continued Riemann zeta function with the additional SIGNED poles
 P_zeta=M_+conj(M_-)+M_-conj(M_+), M_±=int_R f(t)exp(±t/2)dt.
The conductor-one bound is WRITTEN, not a new Lean declaration;
the nonprincipal source theorem is a Lean candidate.

The canonical previous WRITTEN all-character theorem
WeilShortWindowCubicRefinement covers the SAME A<=1/32 with
a 1/21 lower coefficient. This argument strengthens that
coercivity constant to 1/16 (without enlarging the radius).
It also extends the newer 1/16 fixed-window bound A<=1/50.

## Direct exponential comparison, with its exact domain

For 0<=x<=12, the true Bernoulli inequality
 exp(-x/12)>=1-x/12>=0
and Real.exp_nat_mul give
 exp(-x)=(exp(-x/12))^12 >=(1-x/12)^12.             (1)
The restriction x<=12 is REQUIRED because the power is even.
This is the global source-level lower polynomial on precisely
the range used, not an unjustified alternating Taylor truncation.

The native ExactGammaTail has
 tailPrefix(a,20,2A)=sum_(j=0)^19 [2/b_j]*exp(-2*b_j*A),
 b_j=(a+2j)+1/2,
 tailMass(a,2A)>tailPrefix(a,20,2A),
with the full positive infinite remainder retained.

For a=0,1, 0<=j<20, b_j<=79/2. At 0<=A<=1/32,
 0<=2*b_j*A<=b_j/16<=79/32<12.
Thus exp(-2b_j*A)>=exp(-b_j/16)>=
  (1-b_j/192)^12.
Define the EXACT finite rational prefix
 B_a=sum_(j=0)^19 [2/b_j]*(1-b_j/192)^12.
The original tail obeys tailMass(a,2A)>=B_a.
The new Lean candidates binomialMinorant_le_exp_neg,
binomialPrefix_le_tailPrefix and binomialPrefix_le_tailMass
implement this return to the ORIGINAL gamma source.
There is no replacement gamma kernel or sampled test class.

## Rational coefficient certificates and full physical gamma

Exact Fraction arithmetic (20 terms, no rounded exponentials) shows
 B_0>45/8 and B_1>41/16.
The respective exact rational differences are positive;
their decimal values are approximately 0.01727955493515919
and 0.00219219252177163, reported only for orientation.
The two maintained source proof candidates
even_binomialPrefix_floor and odd_binomialPrefix_floor
encode the fixed rational inequalities.

The previous OptimizedShortWindow.gammaIntegral_ge_exact_tail_of_contDiff,
using genuine compact C1 integrability and the exact supported shift
tail, proves Gamma_a(f)>=tailMass(a,2A)*E(f).
Therefore for every original supported C1 complex f,
 Gamma_0(f)>=45E(f)/8 and Gamma_1(f)>=41E(f)/16.
Both full-source inequalities have direct Lean candidates in
this module; they neither assume a gamma sign certificate
nor hide the infinite tail.

## Complete original arithmetic return including zeta

The original integer inventory is empty:
 2A<=1/16<log2, exp(2A)<2,
so EVERY native prime-power contribution is EXACTLY zero.
The Lean candidate activePrimePowers_empty_thirtysecond proves
the literal strict-cutoff fact; primitiveArithmeticValue_eq_gamma_thirtysecond
returns to the unchanged source, without principal/nonprincipal confusion.

Native gammaConstant_lower_sharp gives c_even>=-11/2.
The exact odd parity shift by pi and pi>3 gives c_odd>=-5/2.
Thus the ORIGINAL primitive nonprincipal arithmetic form obeys
 even: Q>=(-11/2+45/8)E=E/8,
 odd:  Q>=(-5/2+41/16)E=E/16.
This is the direct Lean source candidate
primitiveArithmeticValue_ge_sixteenth_thirtysecond.

For conductor-one zeta, the complete two oriented pole products
satisfy the SOURCE identity
 P_zeta=2(|U|²-|V|²), with
 U=int f cosh(t/2), V=int f sinh(t/2).
The support-truncated sinh vector has exact squared L2 norm
sinh(A)-A. Hence
 P_zeta>=-2(sinh A-A)E.
The positive sinh Taylor series proves for A<=1,
 0<=sinh A-A<=A^3.
At A<=1/32 the penalty is at most 2/32^3=1/16384<1/16.
The zeta source has even parity and empty prime inventory, so
 Q_zeta>= (1/8-1/16384)E >=E/16.
The negative pole may be attained on odd tests and is NOT dropped,
squared away, or made an admissibility condition. The zeta bound
is a complete WRITTEN proof and remains to be formalized in Lean.

## Falsification and evidence boundary

At f=0 there is equality; no strict positive assumption on the zero
direction. The Bernoulli minorant is only claimed on x∈[0,12].
The largest actual x in the twenty-term source is 79/32.
The original prime cutoff is strict and unrounded.
The complete gamma integrals are genuine for compact supported C1
tests by GammaHeadIntegrability and ExactGammaTail.
The result makes no claim for larger support windows with active
prime powers. It proves neither RH nor primitive Dirichlet GRH.

Dated comparison: WeilShortWindowCubicRefinement,
WeilFiniteGammaPrefixFloor, and the native
WeilExactGammaTail, WeilOptimizedShortWindow, GammaData,
ShortWindow and ZetaPoleRankOneReturn. Primary references:
Bombieri, Remarks on Weil's quadratic functional, I (2000);
Connes--Consani--Moscovici, Zeta Spectral Triples
(arXiv:2511.22755v1), eqs (3.19)--(3.20).
No novelty or independent acceptance is asserted.

Inspected grwtsk/math/main 185e410ed1696ab43bd3ba7cc228a089f7b7f1ae.
Lean leanprover/lean4:v4.34.1; Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
All proof candidates must be elaborated and kernel checked at these pins.
First formal missing consumer: the complete conductor-one two-pole
arithmetic inequality in Lean, plus pinned builds/axiom audit.
First arithmetic missing premise: original all-scale signed Weil
positivity for every primitive character, all A and complex smooth f.
