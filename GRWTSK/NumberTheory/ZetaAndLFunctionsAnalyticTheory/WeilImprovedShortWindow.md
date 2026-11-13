# Improved uniform prime-free Weil positivity, complete physical source

Byline: grwtsk contributors. Edition 1, 2026-11-12.
MSC2020: 11M26 (primary), 11M41, 33B15.
Evidence: COMPLETE WRITTEN ANALYTICAL PROOF. The accompanying Lean
SOURCE_PROOF_CANDIDATE supplies the literal parity-kernel lower barrier,
the conductor constant floor, exact logarithmic comparison and original
prime-inventory elimination/primitive arithmetic return. The complete
interval-integral coercivity theorem is WRITTEN, NOT yet a Lean declaration.
Lean elaboration, complete dependency build, fresh kernel replay, axiom
audit, independent analytical review, certified numerical computation:
NOT_RUN. Novelty UNASSESSED; no RH or primitive Dirichlet GRH claim.

## Exact target, all quantifiers, and source

Fix EVERY primitive character chi of conductor q>=1 (q=1 handled
SEPARATELY as Riemann zeta), its physical parity a in {0,1},
EVERY support radius 0<A<=1/3500, and EVERY complex smooth compact
test f supported [-A,A]. The genuine canonical source quantities are

 E(f)=integral_R |f(t)|² dt,
 C_f(r)=integral_R conj(f(t))*f(t+r) dt,
 e_f(r)=integral_R |f(t+r)-f(t)|² dt,
 K_a(r)=exp(-(a+1/2)*r)/(1-exp(-2*r)), r>0,
 Gamma_a(f)=integral_0^infinity K_a(r)e_f(r)dr,
 c_chi=gammaConstant(q,a).

These are genuine integrals. GammaHeadIntegrability proves integrability
at the origin for compact smooth tests, and ExactGammaTail handles infinity.
The literal von Mangoldt inventory contains all n>=2 under the strict
n<exp(2A) cutoff with primeWeight(n)=Lambda(n)/sqrt(n).
For primitive nonprincipal q>1 the original form is
 Q_chi,A(f)=c_chi E(f)+Gamma_a(f)-S_chi,A(f),
 S_chi,A(f)=2sum_(n active)primeWeight(n)
               Re(conj(chi(n))*C_f(log n)).
Conductor one additionally retains BOTH signed pole orientations
 P_zeta=M_+conj(M_-)+M_-conj(M_+),
 M_±=integral_R f(t)*exp(±t/2)dt,
 Q_zeta,A=c_1,0 E+Gamma_0-S_1,A+P_zeta.
No positive surrogate, alternate completed function, or pole-neutral
test restriction is introduced.

**Uniform mathematical theorem (IWS-v1-A, WRITTEN):**
  Q_chi,A(f) >= (1/16)*E(f)
for EVERY primitive character and every such A,f, with conductor-one
zeta separately and exactly treated. For q>1 the stronger bound is
  Q_chi,A(f) >= (1/8)*E(f).

This improves the previous WRITTEN all-primitive support bound
A<=2^(-22), coercivity 3/2, from the canonical
WeilUniformShortWindowCoercivity.lean. The new support radius
1/3500 is (2^22)/3500 ~=1198.37 times larger, at a smaller floor.
Neither result extends automatically to larger windows.

## Every original prime power vanishes

For A<=1/3500, 2A<=1/1750<log 2. The native
activePrimePowers(A) inventory is EMPTY, not just its first
prime. Its full twistedPrime expression vanishes even
for arbitrary complex χ phases. This reuses the exact
ShortWindow.activePrimePowers_empty_of_exp_le_two and
twistedPrime_zero_of_exp_le_two. The new
ImprovedShortWindow.primeInventory_empty_shortWindow and
primitiveArithmeticValue_eq_gamma_shortWindow preserve the
original primitive nonprincipal arithmetic definition.
The q=1 principal source is not instantiated there.

## Sharper actual parity-kernel barrier and interval integral

For a<=1 put b=a+1/2<=3/2. For 0<r<=1/4,
 exp(-b*r)>=1-b*r>=1-(3/2)*r>=5/8>0,
 0<1-exp(-2*r)<=2*r.
Thus the LITERAL kernel satisfies

 K_a(r) >= [1-(3/2)*r]/(2r)
        =1/(2r)-3/4.                               (1)

Both comparison directions are justified by positivity of the
numerator and denominator. The two new Lean source candidates
parityKernel_lower_small and
parityKernel_ge_inverse_minus_three_quarters state (1)
without introducing a new kernel or parity.

The actual supported-source translation energy equals exactly
 e_f(r)=2E(f) for every r>=2A,
including at r=2A where any overlap is measure-null. This is
the existing exact gamma-tail source return, not an assumed
positive lower form. Because the ORIGINAL gamma integrand
is nonnegative, keeping only 2A<=r<=1/4 gives

 Gamma_a(f)
  >=2E(f)*integral_(2A)^(1/4) K_a(r)dr
  >=E(f)*integral_(2A)^(1/4)[1/r-3/2]dr
  =[log(1/(8A))-3/8+3A]*E(f).                      (2)

All integrals are finite because A>0. No singular terms are
separately integrated at r=0. The nonnegative discarded gamma
head and tail retain their correct signs.

## Exact rational logarithm and conductor estimate

For A<=1/3500, 1/(8A)>=875/2. The elementary exp series gives
 exp(1)<11/4: first four terms sum 8/3, and for n>=4 the
factorial is at least 24*4^(n-4), so its tail is <=1/18.
Thus exp(1)<=49/18<11/4. Consequently

 exp(6)=(exp 1)^6<(11/4)^6=1771561/4096<875/2,
 with exact positive gap 20439/4096.

Therefore log(1/(8A))>=log(875/2)>6, so (2) implies

 Gamma_a(f)>=(45/8)*E(f).                          (3)

The pinned Mathlib Real.exp_one_lt_d9 supplies a stronger
bound than exp 1<11/4. The Lean candidate
shortWindow_log_floor reuses it with exact rational arithmetic.
There is no approximate numerical constant.

The existing GammaData.gammaConstant_lower_sharp proves
 log(q)-11/2<=gammaConstant(q,a) for q>=1 and a<=1.
As log q>=0, the exact floor c_chi>=-11/2 follows.
The new gammaConstant_global_floor consumes this actual
source declaration, not a new digamma postulate.

## Primitive nonprincipal return

The signed source prime term is exactly zero in this
window. Combining (3) and the conductor lower bound gives

 Q_chi,A(f)
   >=(-11/2+45/8)*E(f)
   =(1/8)*E(f), q>1 primitive.                      (4)

This covers all primitive conductors, both parities, all
complex test phases, all original von Mangoldt terms
(which are absent by strict inventory), and every A in
the stated interval. There is no sign hypothesis.

## Separate conductor-one zeta and both signed poles

The exact signed source pole decomposition is
 P_zeta(f)=2(|U(f)|²-|V(f)|²),
 U(f)=integral_R f(t)cosh(t/2)dt,
 V(f)=integral_R f(t)sinh(t/2)dt.
The complete two-orientation source is retained, including
a possibly negative odd-direction contribution.

Cauchy--Schwarz on the actual support-truncated sinh vector gives
 P_zeta(f)>=-2(sinh A-A)*E(f).
For 0<=A<=1 the positive Taylor series yields
 sinh A-A=sum_(j>=1)A^(2j+1)/(2j+1)!
       <=A³*(sinh 1-1)<A³.
The last strict bound follows from sinh1<exp1/2<11/8<2.
For A<=1/3500,
 2(sinh A-A)<=2A³<=2/(3500³)<1/16.
Using (3), c_1,0>=-11/2, and the separate
conductor-one zero prime sum:

 Q_zeta,A(f)>=(1/8-1/16)*E(f)=(1/16)*E(f).        (5)

Real odd smooth tests, real zeros, multiple zeros and the
negative pole direction remain in the original domain.
No simplicity, no pole neutralization, and no nonprincipal
q=1 instantiation is used.

## Verification boundary and first remaining obligation

The proof is a fixed-window local positivity theorem,
not an all-window Weil criterion. It does not establish
RH, primitive Dirichlet GRH, or finiteness of off-line zeros.
When A increases enough to activate n=2, the prime-power
cancellation obligation returns unchanged; positivity
does not propagate monotonically to larger support.

Hostile checks: f=0 gives equality; r=2A has only
measure-zero endpoint overlap; the small-r kernel
bound is used ONLY for r<=1/4. No hard zero extension
of an unaccounted boundary jump is allowed. Pole signs
are paid in (5). The strict cutoff is exact.

Primary provenance: maintained gammaConstant_lower_sharp
in WeilGammaData, source nonprincipal arithmetic in
WeilConductorFrontier, prime emptiness in
WeilUniformShortWindowCoercivity, exact translation tails in
WeilExactGammaTail, gamma head in WeilGammaHeadIntegrability,
and the native zeta two-pole source in WeilZetaPoleRankOneReturn.
Primary literature: Bombieri, Remarks on Weil's quadratic
functional, I, Rend. Lincei 11 (2000), variational Weil form;
Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1, (3.19)-(3.20), signed source.
No independent review or novelty claim.

Inspected math/main 89670e58d1b0eb4414e24dcd4f72f32aced2dfd8;
Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
No imports or dependency pins changed. Individual
IWS-v1-01..06 source provenance is adjacent.

FIRST FORMAL gap: elaborate the new source with complete import closure,
then integrate (1) against the exact supported translation energy,
formalize (2)-(5) and audit the full transitive axiom set.
All these last steps are WRITTEN mathematics, not a new compiled
Lean declaration. FIRST ARITHMETIC gap: establish the original
signed pole-inclusive Weil inequality at EVERY support window
and primitive character after prime powers activate.
