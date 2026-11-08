/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Actual source inspected: grwtsk/math
4649ee9cf0e0c296fe7005afe33f7d3a3b4093c4.
Canonical live Noe skills: grwtsk/noeaaeue
f5f7ce839a084acd1232223f33e5ede6da3187fe.
WRITTEN_ANALYTIC_PROOF_COMPLETE_FOR_THE_SPECIFIED_ENTIRE_DD_TAIL.
The historical core floor and smooth-direction estimates retain their recorded
computer-assisted evidence; no historical discarded Gram factors reconstructed.
FINITE_LEAN_COMPILATION_PASS / FINITE_AXIOM_AUDIT_PASS:13 declarations only.
UNIVERSAL_COMPLEMENT / ORIGINAL_j3_STAGE / RH / DIRICHLET_GRH: OPEN.
Continuum operator formalization, separate fresh kernel replay, independent
human review and worldwide novelty assessment: NOT_RUN / NOT_ASSESSED.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourInventory
import Mathlib.Tactic

/-!
# Paying the actual mixed debt on an entire infinite edge tail

## 1. The consumer and the proper subspace proved here

The original target is still
`DirichletStageChain.PrimitiveStageLower modThreeQuadratic
 modThreeQuadratic_primitive modThreeQuadratic_nonprincipal 3`:
Q4(f)>=-E(f)/8 for EVERY original real odd compact C2 radius-four
Admissible test, with physical L2 and original parity-one finite gamma.
The present consumer is the EXACT paid complement in SharpEdgeSmoothDirection:

 s[w]>=|<t,w>|^2/a for EVERY finite-gamma w orthogonal to v*,             (1)
 s[v]=m11[v]-<Bv,A0^(-1)Bv>, a=s[v*]>3/40,
 v*(3+s)=4sin(pi*s)^3/sqrt5, 0<s<1,
 t=(I-v* tensor v*)S v*, S the actual operator associated to s.

Every inner product is ANTILINEAR in its first entry. All norms below
are physical unweighted Lebesgue dt. H0=L2((0,3),dt;Complex),
H1=L2((3,4),dt;Complex). Identify H1 with L2((0,1),ds) by translation,
a unitary for this exact physical norm. The original odd extension O4 has
E(O4u)=2||u||^2 and the shifted form is m=Q4(O4u)/2+||u||^2/8.

Let e_n(s)=sqrt2 sin(n*pi*s), n>=1, the COMPLETE physical DD basis on(0,1).
Set N=2^349000, L_N=span(e_1,...,e_(N-1)), and H_N=L_N^perp.
This notation H_N denotes a closed physical subspace, NOT the DN Laplacian.
Since v*=(3e_1-e_3)/sqrt10, H_N is contained in v*perp.
The NEW proved result is

 d[w]:=s[w]-|<t,w>|^2/a >=100||w||^2,
 EVERY w in H_N with finite ORIGINAL edge gamma.                        (2)

This pays the ACTUAL rank-one mixed debt, without a finite approximation to t.
It treats the WHOLE infinite unobserved tail, not finitely many passing modes.
It does NOT prove(1) on L_N intersect v*perp, or remove that head's coupling
to H_N. The numerical size of N is retained; it is not called a practical
completed finite computation.

## 2. Actual source, inherited justified inputs and all458 atoms

Put k(r)=exp(-3r/2)/(1-exp(-2r)), a_j=3/2+2j, j>=0,
Gamma(f)=integral_(r>0)k(r)||f(.+r)-f||^2dr,
c3=log(3/pi)+psi(3/4), c0=c3+1/8. The actual character is chi3=(0,1,-1),
primitive nonprincipal modulo3, conductor3 and gamma parity1, with NO pole.
The exact source is

 Q4(f)=c3 E(f)+Gamma(f)
       -2sum_(n=p^e<=2980,p!=3) [log p/sqrt n]chi3(n) Re C_f(log n).

Every one of the458 native triples(p,e,n) is retained:428 prime atoms and
30 higher powers,93 old core atoms and365 new reflected edge atoms. Their
entire exponent tail is excluded by2^12>2980 and the true support cutoff
2980<exp8<2981. It is not a93-atom substitute or a fictitious collection
of independent prime-power phases. Geometry-zero native entries remain tagged
as such in the complete source inventory and in its exact coding below.

Use the ACTUAL blocks from RadiusFourEdgeSchur:
 m[u0+v]=m00[u0]+2Re<u0,Bv>+m11[v],
 B=B_gamma+sum_native458 w_n beta_n(R_log n-S_log n),
 B_gamma(x,y)=-k(y-x)+k(y+x), w_n=log p/sqrt n, beta_n=chi3(n).
The R and S masks are exactly those of EdgeSchur, on0<x<3<y<4.
The recorded radius-three source proof and its full form-domain density
return give the associated core A0>=3I/40 and ||A0^(-1)||<=40/3.
This is an inherited WRITTEN COMPUTER-ASSISTED input, not a new kernel proof.
GammaComparison(16), from all458 atoms' actual mixed geometry, gives ||B||<70.
SharpEdgeSmoothDirection proves the ACTUAL htrue=A0^(-1)Bv* satisfies
||htrue||<9/10, proves a>3/40, and proves v* is in Dom(S).
None of these inputs assumes the universal radius-four sign or RH/GRH.

Let G be the ordinary zero-extension gamma operator on the translated(0,1).
Localized(7), including ALL reflected source terms, is the exact identity

 m11=G+c0 I+P2+Hfar+Hnew,                                               (3)
 P2[w]=2(log2/sqrt2)Re C_w(log2),
 Hfar(s,r)=k(6+s+r),
 Hnew=the complete365-atom SIGNED reflected prime operator.

Here ||P2||<=sqrt2 log2<1, Hfar>=0 and ||Hfar||<1/1000, and
||Hnew||<44 on the WHOLE physical edge carrier. The last bound is
Localized's complete365-window source norm proof, not narrow-support
orthogonality extended to broad vectors. The positive full gamma rank sum
for Hfar has entire trace tail, j>=J, at most
exp(-6a_J)/[2a_J(1-exp(-12))]. Also -6/5<c3<0, so |c0|<6/5.
The lower conductor constant proof is the exact psi/Euler/log computation
in Localized; the upper follows from psi(3/4)<psi(1)=-EulerGamma<0
and3<pi. These facts keep their recorded analytical evidence.

Since Hfar is bounded, the actual edge domain Dedge equals D(G^(1/2)).
No H1 derivative premise is imposed on a general finite-gamma vector.

## 3. A complete source bound for t, without sampling its entries

With angular F(xi)=integral f(s)exp(i*xi*s)ds and Plancherel measure
dxi/(2pi), the exact ordinary gamma multiplier is

 g(xi)=sum_(j>=0)2xi^2/[a_j(a_j^2+xi^2)].                                (4)

Tonelli and Plancherel justify this on the full finite-gamma form domain.
It is the positive digamma difference series; compare the actual integral
https://dlmf.nist.gov/5.9.E16 and the native derivation in SharpEdgeLocal(4).
For EVERY real xi, the elementary inequality2a_j|xi|<=a_j^2+xi^2 gives
 2xi^2/[a_j(a_j^2+xi^2)]<=|xi|/a_j^2.
All terms are nonnegative, so the same inequality survives summing ALL j.
For decreasing f(x)=(3/2+2x)^(-2), f(j)<=integral_(j-1)^j f(x)dx,
j>=1. Therefore the ENTIRE series satisfies

 sum_(j>=0)a_j^(-2)<=4/9+integral_0^infinity(3/2+2x)^(-2)dx
                         =4/9+1/3=7/9<1,
                       0<=g(xi)<=|xi|.                                  (5)

The ordinary extension of v* is H1: its endpoint zeros have order3.
Its exact derivative norm is ||v*'||=3pi/sqrt5<5. Equation(5) implies
g*F(v*) is L2 and its norm is at most ||v*'||. Compression to(0,1)
is a contraction, so v* lies in Dom(G) and ||Gv*||<5. Combining(3)
and the TRUE physical norm ||v*||=1 gives

 ||m11 v*||<5+6/5+1+1/1000+44=51201/1000.
 ||S v*||<=||m11 v*||+||B* htrue||
         <51201/1000+70*(9/10)<115.

The projection defining t is a physical contraction, hence

       ||t||<115,  |<t,w>|^2/a <=(40/3)115^2||w||^2, ALL w in H1.         (6)

This is the actual t from(1), with no approximate resolvent, entrywise
numerical data or unpriced source residual. It uses the completed directional
trial only for its already proved htrue norm. It does NOT reuse its gamma
energy as an independently spendable positive square.

## 4. DD spectral comparison pays the entire high tail

Let G_odd,1 denote Gamma(O1w)/2 for the odd extension around0. Splitting
the same-side and reflected correlations in each exponential component gives
the EXACT form identity
 G_odd,1=G+Hnear, Hnear(s,r)=k(s+r), 0<=Hnear<=(pi/2)I.
GammaComparison(9), from the true Robin/DD resolvent kernels, gives
 G_odd,1=phi(H_DD)-Cplus, 0<=Cplus<=(pi/2)I,
 phi(lambda)=sum_(j>=0)2lambda/[a_j(a_j^2+lambda)].
Consequently

                G=phi(H_DD)-Cplus-Hnear >=phi(H_DD)-pi I.                (7)

Both physical boundary operators are bounded on ALL L2, by the complete
Carleman kernel comparison k(s+r)<=1/[2(s+r)]. Thus these are closed form
and operator identities on their COMMON domains, not finite-matrix analogies.
In particular Dedge=D(phi(H_DD)^(1/2)). The full DD form is
sum_(n>=1)g(n*pi)|<e_n,w>|^2. The two nonnegative infinite sums over j,n
are interchanged by Tonelli; the entire spectral tail stays in this equality.

For w in Dedge intersect H_N, every coefficient n<N vanishes. The positive
series(4) makes g monotone on[0,infinity), so the ENTIRE remaining sum is
at least g(N*pi)||w||^2. No assertion identifies these DD vectors with
actual A0 or S eigenvectors. For k>=100, the native Binet/digamma estimate
used in GammaComparison(14) and SharpEdgeLocal gives
 c3+g(k)>=log k-3/4. It retains c3 rather than subtracting it a second time.
Here k=N*pi>N and N>100, so(3),(7), Hfar>=0, and the full source bounds
give, for EVERY finite-gamma w in H_N,

 m11[w]>= [log N-5/8-pi-1-44]||w||^2,
 s[w]>= [log N-5/8-pi-45-(40/3)70^2]||w||^2.

Subtract the SAME actual mixed debt using(6), just once:

 d[w]>= [log N-5/8-pi-45-(40/3)(70^2+115^2)]||w||^2.                     (8)

The rational lower log2>693/1000 and pi<22/7 now suffice. With N=2^349000,
log N>349000*(693/1000)=241857 and the coefficient in(8) is STRICTLY larger
than the exact rational

 349000*(693/1000)-5/8-22/7-45-(40/3)(70^2+115^2)
                         =23783/168>100.                               (9)

Equations(6)--(9) prove(2), including w=0 with equality0. All n>=N and all
gamma j>=0 are treated; the proof does not rely on enumerating a finite
passing subset or computing any dimension-N matrix.

## 5. Genuine restricted source heat and the original arithmetic return

The form d on v*perp is closed semibounded: s is G plus bounded native
operators and B*A0^(-1)B, and the paid rank-one term is bounded since a>0.
Its restriction d_N to H_N is densely defined, closed and positive by(2).
Density follows from finite DD tail sums, each of which has finite gamma.
Closedness follows from form convergence and closed physical H_N; bounded
perturbations give equivalent form norms. The representation operator D_N
is therefore genuine selfadjoint source heat, with

 D_N>=100I, ||exp(-u D_N)||<=exp(-100u), ALL u>=0,
 d_N[w]=||D_N^(1/2)w||^2.                                               (10)

This is a form RESTRICTION. H_N is NOT asserted invariant or reducing for
the full D, S, or original source operator. The full spectral theorem,
including all spectral tails, proves(10). The actual inverse-time tail is
integral_T^infinity ||exp(-u D_N/2)z||^2du
 <=exp(-100T)||z||^2/100 for EVERY z in H_N.

There is also a genuine source result with every core direction and the
already paid v* direction retained. Let
 K=H0 direct-sum (Complex*v* direct-sum H_N),
 u=u0+c v*+w, u0 in D3, w in Dedge intersect H_N,
 x=u0+A0^(-1)B(c v*+w), z=c+<t,w>/a.
The TWO exact Schur completions, with the native normalizations, give

 m[u]=m00[x]+a|z|^2+d[w]
     >=(3/40)||x||^2+(3/40)|z|^2+100||w||^2.                            (11)

From ||A0^(-1)B||<(40/3)70<1000 and ||t||/a<115/(3/40)<1600,
the physical triangle-square and Cauchy--Schwarz inequalities give

 ||u||^2=||u0||^2+|c|^2+||w||^2
 <=2||x||^2+2000001(|c|^2+||w||^2)
 <=2||x||^2+4000002|z|^2+2000001*5120001||w||^2.                         (12)

All constants are checked below; multiplying(12) by10^(-12) is bounded
term by term by(11). The original closed source form restricted to closed K
is densely defined and closed for the same form-limit reason as above.
It therefore has an ACTUAL selfadjoint operator M_K, with

 M_K>=10^(-12)I, ||exp(-u M_K)||<=exp(-u*10^(-12)), ALL u>=0,
 Q4(O4u)>=(-1/8+10^(-12))E(O4u), u in D3+Complex*v*+(Dedge intersect H_N). (13)

The return uses Q4(O4u)=2m[u]-E(O4u)/8 and E(O4u)=2||u||^2 EXACTLY.
It applies to every ORIGINAL admissible test lying in this specified space,
not every original admissible test. Actual inverse-time tails for M_K are
<=10^12 exp(-T*10^(-12))||z||^2. No reference-coverage weight proves(13).

## 6. Remaining finite head, actual coupling, and exact RH/GRH return

Let F_N=L_N intersect v*perp. This is dimension N-2, and
v*perp=F_N orthogonal-sum H_N. Relative to this decomposition, d has an
actual finite head A_N, positive infinite block D_N, and bounded mixed C_N.
The mixed block is bounded because d differs from the DD diagonal form
phi(H_DD) by bounded Cplus,Hnear,native terms,B*A0^(-1)B and the paid rank-one
term; the DD diagonal has no cross block. The whole original assertion(1)
is now equivalent to the precise STILL OPEN finite-head inequality

 A_N >= C_N* D_N^(-1) C_N on EVERY vector of F_N.                        (14)

Here C_N maps F_N to H_N, so the adjoint in(14) maps H_N back to F_N.
The exact physical identity, for every f in F_N and w in Dedge intersect H_N,
is
 d[f+w]=d_N[w+D_N^(-1)C_N f]
          +<f,(A_N-C_N*D_N^(-1)C_N)f>.
The genuine inverse maps ALL H_N into Dom(D_N), so no domain premise on
C_N f or omitted physical mode is hidden. The law is full quadratic
completion with the GENUINE whole-tail
inverse D_N^(-1), whose heat law is(10). This is not a finite truncated
inverse and its finite head has NOT been evaluated or certified here.
Positive(2) does not supply(14), and no localization or frame identity
silently deletes C_N. The huge finite dimension is stated rather than
presented as a completed finite certificate. It also proves that the negative
index of d is at most N-2: any negative subspace of larger dimension would
meet H_N nontrivially, contradicting(2). This is not positivity.

There is a useful UNIVERSAL bound on the whole complement, without assuming
its unproved head sign. Let Pi_head,Pi_tail be the PHYSICAL orthogonal
projections of v*perp onto F_N,H_N. The actual bounded-perturbation estimate
on the WHOLE vector is
 d >= phi(H_DD)+c0 I-pi I-45I-(40/3)(70^2+115^2)I.
On the high DD coordinates use(8)--(9); on the low ones use g>=0 and
c0>-6/5+1/8. Since
 -6/5+1/8-22/7-45-(40/3)(70^2+115^2)>-242000,
EVERY w in Dedge intersect v*perp satisfies

 d[w]>=100||Pi_tail w||^2-242000||Pi_head w||^2.                         (15)

This prices every cross term ONCE through the full bounded source operator;
it does not add separate diagonal form inequalities. It controls the complete
unobserved tail by a finite physical observation debit, whose sign remains
unproved in(14). DD projections preserve the whole gamma domain by(7).

Equation(15) supplies an explicit genuine heat interface on the WHOLE
complement type while preserving its finite arithmetic debit. Let D be the
actual selfadjoint operator associated to d on v*perp. Then D>=-242000I,
so ||exp(-uD)||<=exp(242000u), EVERY u>=0. Define the ACTUAL bounded
finite-rank perturbation
 D_lift=D+242100 Pi_head.
It has the same operator/form domains as D. Equation(15) and
242100-242000=100 prove D_lift>=100I, hence
 ||exp(-uD_lift)||<=exp(-100u), EVERY u>=0,
 d[w]=||D_lift^(1/2)w||^2-242100||Pi_head w||^2.
This exact source-return law retains the negative finite observation term.
Contractivity of the lifted heat does NOT prove native D>=0 or pay(14).
Its entire inverse-time tail is <=exp(-100T)||z||^2/100 for every z in
v*perp, by the same nonnegative spectral integral as(10).

If(14) is proved, its exact completion closes(1). Then the actual rank-one
completion in SmoothDirection closes s[v]>=0 for EVERY finite-gamma edge v.
Finally m[u0+v]=m00[u0+A0^(-1)Bv]+s[v]>=0 gives the original j=3 bound
Q4>=-E/8 for every original radius-four Admissible input.
These implications are proved, but(14) is OPEN and hence that stage is OPEN.

RH is the separate Mathlib RiemannHypothesis with its zeta pole-inclusive
source; no pole-free chi3 calculation replaces it. The exact GRH target is
`GRWTSK.NumberTheory.Conditional.DirichletGRH`: ALL complex Dirichlet characters
modulo EVERY positive integer, principal and imprimitive included, with all
open-strip zeros on Re(s)=1/2. Native
DirichletStageChain.dirichletGRH_of_source_chains still requires RH AND
PrimitiveNegativeWitness AND SmallConductorStages for EVERY primitive
nonprincipal character, both parities and genuinely complex sectors.
Neither those AND premises nor even the entire chi3 j=3 stage are claimed.

## 7. Typed coverage, lossless data and assurance

The used types are the actual physical H0/H1 and their gamma form domains;
the complete DD indexed basis and its closed head/tail subspaces; the true
closed source forms/operators A0,m11,S,d,D_N,M_K; actual bounded source maps
B,P2,Hnear,Hfar,Hnew and rank-one projection/debt; all finite native triples;
and finite exact rational/source/proof syntax. Domains, binders, norms,
source character/conductor/parity, quantifiers, all approximation and entire
error laws, dependency identities and evidence levels are part of each
type's retained dependent source description, not absent defaults.

Each type has the common exhaustive finite-DESCRIPTION coverage interface:
enumerate finite typed syntax including its validity/status and bound semantic
variables, with pi_j=2^(-j-1), j>=0. The entire unobserved description tail
j>=J is2^(-J). On ell1, Kx=(x+(sum x)pi)/2 has exact inverse
x=2Kx-(sum Kx)pi. This reference heat/coverage only covers proof descriptions;
it neither finitely encodes every arbitrary Hilbert vector nor proves a sign.
Actual spectral heat is constructed specifically in(10),(13); the unchanged
actual A0 heat has norm<=exp(-3u/40) and its inverse tail after T is
<=(40/3)exp(-3T/40). Bounded maps, bases, source syntax and finite inventories
need COVERAGE, not an assumed positive arithmetic Euler certificate.

Representable data use exact finite tagged records with all context retained.
Constructor/length recursion proves decode(encode(x))=x on the encoder image.
The actual Lean instance below codes the full458-triple native list, exact
constants, source identities and status fields together. Arbitrary semantic
functions, the actual t, infinite spectra and true inverses are exact bound
expressions/proof laws, not silently finite arrays. Their open analytical
obligations stay explicit. No finite recipe is claimed to prove(14).

The primary argument is source-exact gamma spectral dominance with the actual
rank-one debt bounded in physical norm. Its hostile comparison is the native
failure of free gamma absorption and the actual negative localization cross
budget; neither shortcut is used here. The independent full-line multiplier
estimate(5) supplies the action estimate for v*, while the DD resolvent
identity(7) supplies the all-vector lower bound; they meet the same physical
normalization and share the inherited core floor. No independent second
proof of its historical computer-assisted computation is claimed.

The analytical proofs above are WRITTEN. The Lean declarations below check
only displayed finite scalar, inventory and exact codec propositions. They
do not formalize the continuum theorem(2), the spectral theorem or Binet
source comparison. Compilation, axiom audit, separate fresh kernel replay,
human review and novelty assessment are separately recorded; no finite passing
case is promoted to a universal arithmetic theorem.
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeSharpEdgeComplementTail

def cutoffExponent : ℕ := 349000

def cutoff : ℕ := 2 ^ cutoffExponent

theorem complete_gamma_series_price :
    (4 / 9 + 1 / 3 : ℚ) = 7 / 9 ∧ (7 / 9 : ℚ) < 1 := by
  norm_num

theorem vstar_derivative_price : (3 * (22 / 7) / 2 : ℚ) < 5 := by
  norm_num

theorem complete_actual_t_price :
    (5 + 6 / 5 + 1 + 1 / 1000 + 44 : ℚ) = 51201 / 1000 ∧
      (51201 / 1000 + 70 * (9 / 10) : ℚ) < 115 := by
  norm_num

theorem actual_mixed_debt_price :
    (115 / (3 / 40) : ℚ) < 1600 ∧ (40 / 3 * 70 : ℚ) < 1000 := by
  norm_num

def entireTailMargin : ℚ :=
  (cutoffExponent : ℚ) * (693 / 1000) - 5 / 8 - 22 / 7 - 45 -
    (40 / 3) * (70 ^ 2 + 115 ^ 2)

theorem entire_paid_tail_margin :
    entireTailMargin = 23783 / 168 ∧ (100 : ℚ) < entireTailMargin := by
  norm_num [entireTailMargin, cutoffExponent]

theorem universal_head_debit_price :
    (-242000 : ℚ) < -6 / 5 + 1 / 8 - 22 / 7 - 45 -
      (40 / 3) * (70 ^ 2 + 115 ^ 2) := by
  norm_num

theorem lifted_whole_complement_price : (242100 - 242000 : ℚ) = 100 := by
  norm_num

theorem physical_source_split_prices :
    (2 * 1000 ^ 2 + 1 : ℚ) = 2000001 ∧
      (2 * 1600 ^ 2 + 1 : ℚ) = 5120001 ∧
      (2 * 2000001 : ℚ) = 4000002 := by
  norm_num

def restrictedSourceGap : ℚ := 1 / 10 ^ 12

theorem actual_restricted_source_heat_prices :
    0 < restrictedSourceGap ∧
      restrictedSourceGap * 2 < 3 / 40 ∧
      restrictedSourceGap * 4000002 < 3 / 40 ∧
      restrictedSourceGap * (2000001 * 5120001) < 100 := by
  norm_num [restrictedSourceGap]

theorem exact_restricted_arithmetic_return :
    (restrictedSourceGap - 1 / 8 : ℚ) = -(124999999999 / 1000000000000) := by
  norm_num [restrictedSourceGap]

abbrev ProofData := List String × (List (ℕ × ℕ × ℕ) × List ℚ)

local instance : Encodable Char :=
  Encodable.ofLeftInverse Char.toNat Char.ofNat Char.ofNat_toNat

local instance : Encodable String :=
  Encodable.ofLeftInverse String.toList String.ofList
    (fun _ => String.ofList_toList)

noncomputable def proofDataCoding : ProofData ≃ Set.range (Encodable.encode (α := ProofData)) :=
  Equiv.ofInjective _ Encodable.encode_injective

theorem proofDataCoding_roundtrip (x : ProofData) :
    proofDataCoding.symm (proofDataCoding x) = x :=
  proofDataCoding.symm_apply_apply x

def complementTailPacket : ProofData :=
  (["grwtsk/math", "4649ee9cf0e0c296fe7005afe33f7d3a3b4093c4",
    "grwtsk/noeaaeue", "f5f7ce839a084acd1232223f33e5ede6da3187fe",
    "radiusFour.sharpEdgeSchur.paidComplement;chi3-parity1-conductor3;native458",
    "ALL-finite-original-gamma-DD-tail;n>=N=2^349000;physical-L2-dt",
    "ACTUAL-t=Q*S*vstar;a=s[vstar];no-free-gamma-absorption;no-diagonal-addition",
    "Nminus2-dimensional-head-and-actual-coupling-OPEN;original-j3-RH-GRH-OPEN",
    "WRITTEN-analytic-tail-proof;continuum-kernel-NOT_RUN;human-review-NOT_RUN"],
   (ConductorThreeRadiusFourInventory.inventory 2980,
    [3, 4, 2980, 458, 428, 30, 93, 365, 349000, 693 / 1000, 22 / 7,
     3 / 40, 40 / 3, 70, 9 / 10, 6 / 5, 1 / 1000, 44, 5,
     51201 / 1000, 115, 7 / 9, 5 / 8, 45, 23783 / 168, 100, 242000, 242100,
     1000, 1600, 2000001, 5120001, 4000002, 1 / 10 ^ 12]))

theorem packet_retains_all_native_atoms : complementTailPacket.2.1.length = 458 := by
  change (ConductorThreeRadiusFourInventory.inventory 2980).length = 458
  exact ConductorThreeRadiusFourInventory.native_atom_count

theorem complementTailPacket_decode_encode :
    Encodable.decode (Encodable.encode complementTailPacket) = some complementTailPacket :=
  Encodable.encodek complementTailPacket

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeSharpEdgeComplementTail
