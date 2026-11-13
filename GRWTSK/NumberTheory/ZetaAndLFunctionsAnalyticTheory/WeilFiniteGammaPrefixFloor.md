# Twelve exact native gamma-tail terms and fixed-window Weil positivity

Author: grwtsk contributors. 2026-11-12. Edition 1.
MSC2020: 11M26 (primary), 11M41, 33B15.

EVIDENCE: COMPLETE WRITTEN MATHEMATICAL PROOF.
The adjacent WeilFiniteGammaPrefixFloor.lean supplies source-bound Lean
SOURCE_PROOF_CANDIDATE declarations, including the full primitive
NONPRINCIPAL arithmetic inequality. The separate conductor-one zeta
two-pole consumer is WRITTEN, NOT a Lean declaration in this module.
Elaboration, complete dependency build, fresh kernel replay, transitive
axiom audit, certified numerical computation and independent review
NOT_RUN. Novelty UNASSESSED. No RH or primitive GRH claim.

## Exact source and honest comparison with existing prior work

Fix ANY primitive character chi of positive conductor q, ANY
0<A<=1/50, and ANY smooth compact supported complex f with support
in [-A,A]. The ORIGINAL source is
  E(f)=int_R |f(t)|²dt,
  C_f(r)=int_R conj(f(t))*f(t+r)dt,
  e_f(r)=int_R |f(t+r)-f(t)|²dt,
  Gamma_a(f)=int_0^infinity K_a(r)e_f(r)dr,
  K_a(r)=exp(-(a+1/2)r)/(1-exp(-2r)),
  S_chi,A(f)=2sum_(n in activePrimePowers A)
             primeWeight(n)*Re(conj(chi(n))*C_f(log n)),
  Q_chi,A(f)=gammaConstant(q,a)E(f)+Gamma_a(f)-S_chi,A(f)
for primitive NONPRINCIPAL q>1, a=gammaParity chi in {0,1}.
The conductor-one zeta source separately adds BOTH signed pole
orientations P_zeta=Mplus*conj(Mminus)+Mminus*conj(Mplus).

The complete WRITTEN theorem is
 Q_chi,A(f)>=(1/8)*E(f) for every primitive nonprincipal q>1,
 Q_zeta,A(f)>=(1/16)*E(f) for the actual conductor-one source.

This enlarges the recent A<=1/800 range by factor 16 at fixed
floor, but is NOT the broadest positive window already studied:
WeilShortWindowCubicRefinement.lean and
WeilShortWindowContinuumReview.lean have a WRITTEN A<=1/32
result at the weaker 1/21 floor. The present theorem improves the
coercivity constant on the overlapping A<=1/50 subwindow and
supplies a more direct finite-prefix-to-original-source return.
No novelty or independent review is asserted.

## Exact original gamma-tail recurrence and positive remainder

ExactGammaTail.tailMass_eq_prefix_add_remainder proves for all
a,n natural and R>0, with NO RH/GRH or regularity hypothesis:
  tailMass(a,R)=tailPrefix(a,n,R)+tailMass(a+2n,R),
  tailMass(a+2n,R)>0,
where
  tailMass(a,R)=2int_R^infinity K_a(r)dr,
  tailPrefix(a,n,R)=sum_(j=0)^(n-1)
       2exp(-((a+2j)+1/2)R)/(((a+2j)+1/2)).
For R=2A and d_j=2a+4j+1, this is
  tailPrefix(a,n,2A)=sum_j 4exp(-d_j A)/d_j.
Using the true global inequality exp(-x)>=1-x, each term satisfies
  4exp(-d_j A)/d_j >=4/d_j-4A.
Consequently
  tailMass(a,2A)>
     4sum_(j=0)^(n-1)1/(4j+2a+1)-4nA.           (1)

The source code defines affinePrefix with the literal native rate
(a+2j)+1/2, not a new kernel. Its affinePrefix_le_tailPrefix and
affinePrefix_le_tailMass prove the algebra (1).
The source theorem originalGamma_ge_affinePrefix applies the
previous genuine compact C1 gamma head/tail theorem:
  Gamma_a(f)>=tailMass(a,2A)E(f).
The source's energy is nonnegative. Thus the complete physical
gamma integral is bounded below by the SAME finite affine prefix,
without an added harch or assumed positivity hypothesis.

## Exact 12-term rational certificates, no floating error

At n=12 the right side in (1) decreases with A and is minimal
over 0<A<=1/50 at A=1/50. Exact rational simplification gives:

Even parity a=0:
  4sum_(j=0)^11 1/(4j+1)-48/50
    =64362711368/11229433215
    >45/8,
with exact positive difference
  9577196269/89835465720.

Odd parity a=1:
  4sum_(j=0)^11 1/(4j+3)-48/50
    =48683047863224/18498959203725
    >21/8,
with exact positive difference
  986239627567/147991673629800.

These are exact rational identities/inequalities, not rounded
transcendental estimates. Their numerical decimals are not
needed. The candidate Lean source includes concrete finite-sum
rational proofs by norm_num plus full-gamma consumers
even_originalGamma_floor and odd_originalGamma_floor.

Therefore for every such original f:
  Gamma_0(f)>=(45/8)E(f), Gamma_1(f)>=(21/8)E(f).

## Return to original primitive arithmetic

Since 2A<=1/25<log 2, the EXACT native activePrimePowers A
inventory is empty under its strict n<exp(2A) rule. It includes
all prime powers; none was selectively dropped. Therefore
S_chi,A(f)=0 for every character phase.

The existing GammaData.gammaConstant_lower_sharp gives
even parity c_chi>=-11/2. The exact native odd-parity
shift by pi and pi>3 gives odd c_chi>=-5/2.
Thus on the unchanged primitive NONPRINCIPAL source:
 even Q_chi,A(f)>=(-11/2+45/8)E=E/8;
 odd  Q_chi,A(f)>=(-5/2+21/8)E=E/8.
The source candidate primitiveArithmeticValue_ge_eighth_fiftieth
states that exact all-primitive-nonprincipal C1 test consequence,
with pointwise support and genuine integrability carried by
the earlier OptimizedShortWindow gamma theorem. Smooth compact
tests are included.

## Separate conductor-one zeta with both real signed poles

The ORIGINAL zeta pole expression is
  P_zeta(f)=Mplus*conj(Mminus)+Mminus*conj(Mplus)
           =2(|U|²-|V|²),
  U=int_R f(t)cosh(t/2)dt,
  V=int_R f(t)sinh(t/2)dt.
The previous source rank-one pole theorem and Cauchy on
[-A,A] give
  P_zeta(f)>=-2(sinh A-A)E(f).
For 0<=A<=1,
  sinh A-A=sum_(j>=1)A^(2j+1)/(2j+1)!
           <=A³(sinh 1-1)<A³.
At A<=1/50, 2A³<=1/62500<1/16.
Combining the original even gamma, c_zeta>=-11/2,
empty prime inventory and the SIGNED pole lower bound:
  Q_zeta,A(f)>=(1/8-2A³)E(f)>=(1/16)E(f).
This is a WRITTEN conductor-one theorem; it cannot be
instantiated by a primitive nonprincipal consumer and is NOT
yet formally elaborated in this module. In particular, real
odd tests may have negative pole contribution, which is paid,
not projected away.

## Limits, prior art, verification and next obligation

The proof does not extend to arbitrary A because prime powers
become active when exp(2A)>2. No cancellation across different
prime powers is supplied in this window. A positive finite
prefix does not imply RH or GRH or finite off-line zeros.
The exact positive remainder tailMass(a+24,2A) is retained.
The source f=0 gives equality; high modulation and complex
phases remain admitted. The physical C1 support is essential
for gamma integrability, and the zero extension has its
true boundary trace.

Compare the prior WeilShortWindowCubicRefinement at A<=1/32,
and the canonical ExactGammaTail, OptimizedShortWindow,
GammaData and ZetaPoleRankOneReturn. Classical primary
arithmetic references: Bombieri, Remarks on Weil's quadratic
functional I (2000), Rend. Lincei 11, and Connes--Consani--
Moscovici, Zeta Spectral Triples, arXiv:2511.22755v1,
eqs (3.19)--(3.20).

Maintained source: GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/
WeilFiniteGammaPrefixFloor.lean, namespace
GRWTSK.NumberTheory.WeilQuadraticForm.FiniteGammaPrefixFloor.
Individual declaration provenance is adjacent.
Inspected math/main 52fbea2005046447a2a164a3becd6a75ae22df41;
Lean leanprover/lean4:v4.34.1;
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
No root imports or pinned dependencies changed.
Elaboration/build/kernel replay/transitive axiom audit NOT_RUN;
certified whole-form numerical evaluation NOT_RUN;
independent mathematical review NOT_RUN; novelty UNASSESSED.

FIRST FORMAL obligation: check the exact-pin Lean source, verify
the finite-sum arithmetic proofs and source gamma identity,
then formalize separate conductor-one signed pole consumer.
FIRST ARITHMETIC obligation: the full pole-inclusive Weil
signed prime-power domination at arbitrary windows is OPEN.
