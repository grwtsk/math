/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Source baseline: grwtsk/math c779a67fa824da8f9b75384f7d61c46baeb2ce1f.
Actual consumer: DirichletStageChain.PrimitiveStageLower chi3 hp hn 3.
Written analytic proof and exact finite scalar declarations are separated.
The radius-four target sign is not an axiom, instance or interface field.
Primary mechanisms: digamma difference series (DLMF5.9.16), physical
Plancherel, original weighted signed-edge expansion and source-word
telescoping in WeilConductorThreeAntiNearCycle. Closed semibounded forms
and their self-adjoint spectral semigroups are used at their standard
full-domain hypotheses, explicitly checked below.
Primary functional-analysis reference: T. Kato, Perturbation Theory for
Linear Operators, reprint of the1980 edition, VI.2 Theorems2.1 and2.6,
pp322--323 (self-adjoint representation and identical lower bound).
Source inspected: https://webhomes.maths.ed.ac.uk/~v1ranick/papers/kato1.pdf.
-/
import Mathlib.Tactic

/-!
# A genuine radius-four joint gamma and signed-source estimate

## Original source and exact target

Keep chi3=modThreeQuadratic, residue values(0,1,-1), conductor3,
primitive nonprincipal, gamma parity1. For EVERY original
DirichletStageChain.Admissible chi3 4 f the requested statement is

 Q4(f)>=-E(f)/8,
 Q4(f)=c3 E(f)+Gamma1(f)-Pchi,4(f),
 c3=log(3/pi)+psi(3/4), E=integral|f|^2dt,
 Pchi,4=2 sum_(n=p^e<=2980,p!=3) log(p)/sqrt(n)*chi3(n) C_f(log n).

There are ALL458 native atoms. No radius-three93-atom source is
substituted. The actual physical source C_f(r)=integral conj(f(t))f(t+r)dt
uses its real part for complex f. All norms below are physical L2(dt).
Gamma1 is the original parity-one jump-energy integral. Its multiplier,
with F(xi)=integral f(t)exp(i xi t)dt and measure dxi/(2pi), is

 g(xi)=Re psi(3/4+i xi/2)-psi(3/4).

The source-return identities here hold on the ENTIRE finite-Gamma domain,
not only an H1, bounded-frequency or finite sine subclass. The requested
full target sign remains unproved; the exact residual is displayed below.

## 1. A full-domain gamma price for the actual anti-return

Use the EXISTING actual arithmetic word with
 N=100004958529, M=N+1=100004958530, d=log(N/M), |d|<10^-11.
Both factorizations and chi3(N/M)=-1 are retained in AntiNearCycle;
their15 signed prime steps are all present in the radius-four inventory.

We prove, for every complex finite-Gamma physical input f,

 Gamma1(f)>=6||f(.+d)-f||_2^2.                               (1)

The positive digamma difference series is
 g(xi)=sum_(j>=0) 2xi^2/[a_j(a_j^2+xi^2)], a_j=3/2+2j.
It converges locally uniformly and gives the exact lower bound
 g(xi)>=(4/3)*xi^2/(9/4+xi^2).
Also c3<0: use psi(3/4)=-EulerGamma+pi/2-3log2,
EulerGamma>=0, pi<22/7, log2>693/1000 and log(3/pi)<0.
Hence g=A-c3>=A, and the source Binet inequality gives
 g(xi)>=log|xi|-3/4 for |xi|>=100.

The translation multiplier q_d=|exp(i d xi)-1|^2 satisfies
 q_d<=min(10^-22 xi^2,4). Split ALL real frequencies:

 * |xi|<=10^8: 6q_d<=6*10^-22 xi^2 <=g(xi), by the first series
   term and the exact rational guard at (10^8)^2 below.
 * 10^8<=|xi|<=10^11: q_d<=1, whereas
   g>=8log10-3/4>6, since log10>23/10.
 * |xi|>=10^11: q_d<=4, whereas
   g>=11log10-3/4>24.

Evenness covers both signs and xi=0 gives zero on both sides.
Integrating against |F|^2/(2pi), using the actual Plancherel translation
identity, proves (1) including the ENTIRE unobserved frequency tail.
Finite Gamma guarantees integrability; no derivative bound was inserted.

## 2. Use the genuine458-atom Schur instance and actual source word

The separately constructed full radius-four Schur instance has
 Tstar=400001/100000, all458 native nonzero atoms,4096 physical cells,
positive heights normalized by10^6, minimum225108/10^6>1/5 and
maximum1. Every complete row gives V_h<=W=58. All actual arrays,
upward log/sqrt prices, row errors and readback data are retained by
WeilConductorThreeRadiusFourHighFilter and its source-bound payload.
That is a constructed instance, not an assumed signed-source gap.

Let H=L2([-Tstar,Tstar],dt;Complex), zero-extend f, set u=f/h,
and put w_n=log(p)/sqrt(n), r_n=log n. All integrals exist because
h and1/h are bounded. For EVERY native atom define

 D_n=w_n integral_(t,t+r_n inside physical window)
             h(t)h(t+r_n)|u(t+r_n)-chi3(n)u(t)|^2dt>=0.

Expanding squares and translating gives the SOURCE-EXACT law
 sum D_n=integral V_h |f|^2dt-Pchi,4(f).
Consequently S=58E-Pchi,4>=sum D_n>=0, with the original signed
prime source retained. There is no norm replacement by the h measure.

Reuse the15-step word and the NINE actual rotation/reflection cores
in AntiNearCycle. Their exact prefix extrema give complete coverage
of [-T,T] for every T>=3, hence Tstar. All vertices of every core
path stay inside the SAME physical window. The larger inventory
adds nonnegative D_n; none of its arithmetic source terms is deleted.
The word multiplicities satisfy sum_p multiplicity(p)^2=21 and every
path weight w_p>=39/100. For a normalized weight m<=h<=1 the exact
path telescoping and grouped Cauchy--Schwarz give for EACH core

 S>=c*||u(.+sigma*d)+u||_core^2, c=13m^2/700.

Allocate each physical point to the first core covering it, giving
disjoint subsets A_k. At a selected point, the original physical
variables satisfy
 u(t+sigma*d)+u(t)
   =[1/h(t+sigma*d)+1/h(t)]f(t)
        +[f(t+sigma*d)-f(t)]/h(t+sigma*d).
The first coefficient is at least2. The inequality
 |a+b|^2>=|a|^2/2-|b|^2 therefore gives
 |u(t+sigma*d)+u(t)|^2
       >=2|f(t)|^2-m^(-2)|f(t+sigma*d)-f(t)|^2.
The positive- and negative-shift selected errors each cost at most
||tau_d f-f||^2 by translation. Summing the NINE core inequalities
and using disjoint coverage yields

 S>=(13m^2/3150)E-(13/3150)||tau_d f-f||^2.

Combining with (1), then inserting the GENUINE m=1/5 instance, proves

 58E-Pchi,4+(13/18900)Gamma1 >= (13/78750)E.                 (2)

This is a complete joint arithmetic/gamma inequality on the entire
finite-Gamma physical carrier. It does not erase a translation error,
assume an arithmetic sign, or import the desired stage as a premise.

## 2A. A further joint gain using genuinely NEW409 and419 atoms

This independent local calculation uses two of the365 atoms absent
at radius3, not merely the old word. Let a=log409, b=log419 and
rho=b-a=log(1+10/409)<10/409<1/40. These are actual prime atoms with
chi3(409)=+1 and chi3(419)=-1; their native weights exceed2/7 because
log409>6 and sqrt419<21 (and the corresponding easier comparisons).

For every finite-Gamma physical f, put
 Dplus=||tau_a f-f||^2, Dminus=||tau_b f+f||^2,
 Drho=||tau_rho f-f||^2.
The SAME exact positive series proves the STRONGER full-domain law
 Gamma1>=Drho for EVERY |rho|<=1/40 on ALL frequencies.
For |xi|<=40 its first term is at least
 (16/19227)xi^2>(1/1600)xi^2>=q_rho.
For |xi|>=40 monotonicity of each positive series term and the first48
terms at40 give g(xi)>=g_48(40)>4>=q_rho. A wholly rational guard is
 g_48(40)=sum_(j=0)^47 3200/[a_j(a_j^2+1600)]>4.
Its down-rounded millionth-grid numerators are
 [1331460,567086,356888,257610,199285,160635,132998,112186,
  95925,82869,72172,63268,55767,49385,43912,39188,35089,
  31515,28385,25634,23209,21064,19162,17469,15961,14612,
  13404,12319,11343,10462,9667,8947,8294,7700,7160,6667,
  6217,5805,5428,5082,4763,4470,4200,3950,3720,3506,3309,3125],
whose sum4002272 exceeds4000000; each term's integer inequality is
checked without approximating the gamma tail. The omitted infinitely
many gamma terms are nonnegative, so no tail is missing.

Complete exact48-term data, downward errors and the independent Binet
guards are retained in grwtsk/noeaaeue:
 .cache/chi3-radius-four-20261107/gamma_small_shift_guards.json,
 SHA256561587740cfc38622acfe282682b30b8adf444cdeb769790c09caca78fd17e95;
 checker replay_gamma_small_shift.py,
 SHA256260cfab6381ba67271a5af6e56905b9e9dc8052b01e04cfaa4ab4e485d468e70.
Complete generation, independent replay and canonical readback PASS;
these are exact finite rational guards, separate from the analytical
full-frequency proof and from Lean scalar checking.

A separate analytical check uses the actual Binet bound at xi40:
EulerGamma>=H7-log8 and psi(3/4)=-EulerGamma-3log2+pi/2 imply
 psi(3/4)<=-363/140+pi/2<-143/140.
Then Re psi(3/4+20i)>=log20-3/3200-1/360, log20>599/200,
so g(40)>808963/201600>4. This shares the gamma source but uses
its Binet representation instead of a48-term lower sum.

Exact expansion and translation unitarity give
 Dplus+Dminus=4E+2Re(C_f(b)-C_f(a))
             >=4E-2sqrt(E*Drho).
The weighted defects are >=(2/7)(Dplus+Dminus). Hence BOTH

 Gamma1+w409 Dplus+w419 Dminus >=(5/7)Gamma1+(6/7)E,
 Gamma1+w409 Dplus+w419 Dminus >=(3/7)Gamma1+E.              (2A)

For the first, subtract its right side after the preceding lower bound;
the remainder is at least(2/7)(Gamma1+E-2sqrt(E*Drho)), which is
nonnegative by Gamma1>=Drho. For the second the remainder is at least
 (1/7)(4Gamma1+E-4sqrt(E*Drho))
 >=(1/7)(2sqrt(Drho)-sqrt(E))^2>=0.
These prove genuine signed-phase/gamma gains for the actual NEW
atoms on the entire original physical form domain, without any
derivative, finite-mode or sampled-frequency premise. Their arithmetic
return keeps the onsite price, in particular
 Gamma1-P_(409,419)>=(3/7)Gamma1+[1-2(w409+w419)]E.
No source positivity is inferred by dropping that negative onsite
term or by ignoring the other456 signed atoms. This provides another
concrete investigated connection, but it does not establish (5).

## 3. Genuine closed-form spectral heat and exact arithmetic return

Set epsilon=13/18900 and delta=13/78750. Define the ACTUAL form
 b(f)=58E-Pchi,4+epsilon Gamma1 on
 D={f in H: integral g|F|^2/(2pi)<infinity}.
This is an explicit dense domain: C_c^infinity inside the interval
is dense in H and belongs to D by its Fourier decay. Gamma1 is a
closed nonnegative form: Fourier transform/zero extension is an
isometry and multiplication by sqrt(g) is a closed operator.
Pchi,4 is a bounded self-adjoint operator by the constructed physical
Schur bound. Thus b is a closed semibounded form with b>=delta E.

The first representation theorem therefore supplies a unique
self-adjoint operator B with form domain D and lower spectral bound
delta. No unknown self-adjoint extension or source sign is a field of
an assumed interface. For clarity the resolvent is constructed by
Riesz/Lax--Milgram on the form Hilbert space: for lambda>0,
 b(v,R_lambda f)+lambda<v,R_lambda f>=<v,f> for every v in D.
Closedness, density and coercivity give a unique bounded R_lambda,
self-adjointness and the resolvent identity. Its associated operator
is the stated B. The self-adjoint spectral theorem gives the genuine
strongly continuous semigroup S_t=exp(-tB), S_0=I,
S_(t+s)=S_t S_s, with

 ||S_t||_(H->H)<=exp(-delta*t), for EVERY t>=0.               (3)

This is PHYSICAL spectral heat. It is not branch-coverage heat or
an entrywise-positive Markov kernel. It has a justified entire time
domain, not finite passing sample times. Conversely (3), differentiated
at0 on Dom B and then closed in form norm, returns exactly (2).

The exact original-source recovery is

 Q4(f)=b(f)+(18887/18900)Gamma1(f)+(c3-58)E(f).               (4)

The required j=3 sign is therefore STILL the concrete joint gap

 b(f)+(18887/18900)Gamma1(f)>=(58-c3-1/8)E(f)                 (5)

for EVERY original admissible radius-four f. Bound (2) alone supplies
only delta on the left; it does not pay the displayed onsite deficit.
Neither (3) nor positive coverage is silently promoted to (5).
This identifies the exact failed meeting point of this attempted proof.

A hostile boundary prevents a gamma-only shortcut for(5). The real
odd finite-Gamma H1 function f(t)=sin(pi*t/4) on[-4,4], zero outside,
has ||f'||^2/E=(pi/4)^2. The translation estimate and positive kernel
series give
 Gamma1/E<=(pi/4)^2 integral_0^infinity r^2*k(r)dr
 <=(11/14)^2*(16/27+16/343+2/49)<1/2.
Indeed the first two integrated exponential terms are16/27,16/343,
and monotone integral comparison bounds the whole remaining series
by2/49. Odd smooth compact inputs supported in[-4,4] approximate this
function in H1: even mollification followed by support-shrinking
dilation gives such inputs and H1 convergence. The same translation
estimate makes Gamma1 continuous in H1, so actual ORIGINAL admissible
C2 tests retain the strict upper bound1/2. Thus a proposed huge uniform
Gamma1/E lower bound cannot pay(5); the signed b/Gamma coupling is
essential. This is a comparison witness, not a counterexample to j3.

## 4. Lossless data, evidence, comparison and original targets

For the physical Hilbert/form/operator/semigroup types, preserve ALL
finite representable proof data: binding contexts, H and D, zero
extension, physical/Fourier normalization, chi3 sector/parity, source
revision/declarations,458 exact atoms,4096 heights/prices/rows, all
error enclosures,15 signed word occurrences and9 actual core extrema,
infinite digamma/spectral/form laws, delta/epsilon, proofs and evidence
statuses. Infinite objects are retained as their precise source syntax
and bound variables; no finite numerical recipe proves an unproved
analytic domain or tail statement. Those laws are proved above.

Finite tagged dependent records have the existing lossless constructor/
length decoding instance. Structural induction proves
decode(encode x)=some x, and on encoder image decodeImage(encode x)=x.
Actual finite arrays are retained in the companion payload, not
replaced by digests or discarded historical Gram factors. This written
syntax instance is separate from a Lean implementation of all syntax
datatypes or a codec for arbitrary semantic L2 functions.

Coverage remains the distinct exhaustive natural-code interface with
pi_n=2^(-n-1), full tail2^(-J), Kx=(x+(sum x)pi)/2 on l1 and exact
source return x=2Kx-(sum Kx)pi. Full signed readouts require their own
absolute/directional tail and inverse-error allowance. The actual
spectral heat (3) has its different source recovery (2),(4),(5).

The proof shares the existing arithmetic word/cores and source with
AntiNearCycle, but replaces its H1 derivative premise by the proved
FULL Gamma-domain law (1). Ordinary magnetic graph positivity and
Cheeger inequalities are related mechanisms, not coercions from a
finite graph to this continuum source. The complete operator/domain
and onsite return (4) are indispensable. Worldwide novelty and human
independent review are NOT_ASSESSED/NOT_RUN.

No numerical evidence is used for (1) or the path law. Source arrays
are exact finite computation; finite Lean scalars below have their
separate recorded status. The analytical argument is WRITTEN, not a
kernel proof. Stage j=3, RH and full DirichletGRH remain unproved here.
If (5) is proved, it supplies exactly PrimitiveStageLower chi3 hp hn 3;
the existing source-chain consumer still needs separate zeta/RH and
ALL other primitive/cofinal stages. No other character sector is
silently supplied by this real odd conductor-three argument.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourGammaReturn

theorem small_frequency_guard :
    (6 / 10^22 : ℚ) <= (4/3)/(9/4+(10^8)^2) := by norm_num

theorem middle_frequency_guard : (6 : ℚ) < 8*(23/10)-3/4 := by norm_num

theorem outer_frequency_guard : (24 : ℚ) < 11*(23/10)-3/4 := by norm_num

theorem gamma_constant_negative_guard : (22/7 : ℚ)/2-3*(693/1000)<0 := by norm_num

theorem genuine_weight_floor : (1/5 : ℚ) < 225108/1000000 := by norm_num

theorem instantiated_word_gap : (13 : ℚ)*(1/5)^2/3150=13/78750 := by norm_num

theorem gamma_absorption_price : (13/3150 : ℚ)/6=13/18900 := by norm_num

theorem remaining_gamma_coefficient : (1 : ℚ)-13/18900=18887/18900 := by norm_num

theorem new_pair_character_data :
    Nat.Prime 409 ∧ Nat.Prime 419 ∧ 409 % 3=1 ∧ 419 % 3=2 := by norm_num

theorem new_pair_gamma_small_guard : (1/1600 : ℚ)<16/19227 := by norm_num

def gamma48At40 : ℚ :=
  ∑ j ∈ Finset.range 48,
    3200 / ((3/2 + 2*(j : ℚ))*((3/2 + 2*(j : ℚ))^2+1600))

theorem new_pair_gamma_large_guard : (4 : ℚ) < gamma48At40 := by
  norm_num [gamma48At40, Finset.sum_range_succ]

theorem new_pair_gamma_binet_guard :
    (4 : ℚ)<599/200+143/140-3/3200-1/360 := by norm_num

theorem new_pair_shift_guard : (10/409 : ℚ)<1/40 := by norm_num

theorem gamma_only_obstruction_margin :
    (11/14 : ℚ)^2*(16/27+16/343+2/49)<1/2 := by norm_num

theorem scalar_joint_return (E G P c3 : ℝ)
    (hjoint : (13/78750)*E <= 58*E-P+(13/18900)*G) :
    (c3-58+13/78750)*E+(18887/18900)*G <= c3*E+G-P := by
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourGammaReturn
