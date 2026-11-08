/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Initial source: grwtsk/math 12e3471d075669ca7ff09c41b8df7e5ab64f18fc.
Current tree inspected: 445401c9714cafb94ff619d71be0195f017ac4bc.
The consumed EdgeSchur file is unchanged between these two commits:
SHA256 5ad8bd0e1708a3daa3801408d8ebbcc45033a83d49584bce7ac181fc86ec9a7f.
Canonical live Noe skills read at 7376f433ae7573f7c02d47facb799337de6e0215:
proof-automation, structural-intelligence and typed-port-routing.
WRITTEN_FULL_DOMAIN_GAMMA_COMPARISON_AND_FRAME_FACTORIZATION.
The actual sharp arithmetic edge Schur inequality remains OPEN.
FINITE_SCALAR_LEAN_ELABORATION_PASS / UNIVERSAL_FORMALIZATION_NOT_RUN /
FRESH_ENVIRONMENT_KERNEL_REPLAY_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
INDEPENDENT_HUMAN_REVIEW_NOT_RUN / WORLDWIDE_NOVELTY_NOT_ASSESSED.
-/
import Mathlib.Tactic

/-!
# Actual odd gamma, Robin comparison and the directional core inverse

## 1. Consumer, exact source, carriers and evidence

The consumer is the EXISTING inequality (17) of
WeilConductorThreeRadiusFourEdgeSchur:

 m11[v] >= <Bv,A0^(-1)Bv>
 for EVERY v in L2((3,4),dt;Complex) with Gamma(O_4v)<infinity. (E)

The actual A0, B, m11, physical odd extension O_T and gamma form below
are those constructed there. Their final return is the ORIGINAL
DirichletStageChain.PrimitiveStageLower modThreeQuadratic
  modThreeQuadratic_primitive modThreeQuadratic_nonprincipal 3,
on EVERY original Admissible chi3 4 f. Branches remain obl.stage and
cert.all-small-conductor-stages. No new RH or GRH predicate is substituted.

The character is the real primitive nonprincipal conductor-three chi3,
values (0,1,-1), gamma parity ONE, with ALL458 native prime powers through
the original cutoff exp(8). There is no principal pole in this sector.
The core retains its actual 93-atom source because all365 added shifts
vanish on a radius-three input; the actual B and m11 keep the required
added mixed and edge terms. This is the proved degree separation in
EdgeSchur, not a deletion of those source terms from the full target.

For T>0 use H_T=L2((0,T),dt;Complex) with its a.e. quotient, physical norm
and antilinear-first inner product. O_Tu is its odd zero extension and
E(O_Tu)=2||u||^2. Set

 k(r)=exp(-3r/2)/(1-exp(-2r)), r>0,
 G_T[u]=Gamma(O_Tu)/2,
 D(G_T)={u in H_T:Gamma(O_Tu)<infinity}.

This is the original parity-one kernel, normalization and form domain.
With Fourier F(xi)=integral f(t)exp(i*xi*t)dt and measure dxi/(2*pi),

 g(xi)=sum_(j>=0) 2xi^2/[a_j(a_j^2+xi^2)], a_j=3/2+2j,
 G_T[u]=(1/2) integral g(xi)|F_(O_Tu)(xi)|^2 dxi/(2*pi).    (1)

The gamma identity follows from the positive exponential expansion
k=sum_j exp(-a_jr), Tonelli, translation Plancherel and elementary
exponential integration. Its compact-frequency tail is bounded by a
constant times sum_j a_j^(-3). Every j>=0 and the whole frequency axis
remain included. DLMF 5.9.16 is the equivalent digamma difference identity.

The pure-gamma comparison and square below are unconditional written
analysis. The later A0 coercivity additionally consumes ONLY the recorded
written computer-assisted core bound Q3>=-E/20, at its original evidence
level, transported to the whole finite-gamma core by EdgeSchur section5.
It does not become a kernel result through this comparison.

## 2. Construct every Robin component from its actual Green kernel

Fix a>0. On H_T let H_N be -d^2/dx^2 with Dirichlet value at0 and
Neumann derivative atT; H_D has Dirichlet values at both ends.
Let H_a have Dirichlet value at0 and Robin law u'(T)+a*u(T)=0.
Their associated nonnegative closed second-order forms are

 h_N[z]=integral_0^T |z'|^2, D(h_N)={z in H1(0,T):z(0)=0},
 h_a[z]=h_N[z]+a|z(T)|^2, D(h_a)=D(h_N),
 h_D[z]=integral_0^T |z'|^2, D(h_D)=H1_0(0,T).

These H1 domains construct AUXILIARY resolvents. The original gamma
input u is still arbitrary physical L2 with finite gamma; no H1
or endpoint trace condition on that input is inferred.

The literal kernel

 K_a(x,y)=exp(-a|x-y|)-exp(-a(x+y))

vanishes at x=0, has derivative jump -2a at x=y, and obeys
partial_x K_a(T,y)+a*K_a(T,y)=0. Thus for EVERY L2 input z,
K_a z belongs to H2, satisfies the actual boundary laws, and solves

 (H_a+a^2)K_a z=2a*z.

Uniqueness follows by testing the homogeneous equation against its
solution: h_a[w]+a^2||w||^2=0 forces w=0. Equivalently the coercive
form gives existence by Riesz/Lax--Milgram. Hence the genuine operator
identity, not an assumed interface field, is

                K_a=2a(H_a+a^2)^(-1).                       (2)

Splitting the actual odd correlation into same-side and cross-origin
pieces shows that the a-component of G_T on ALL L2 is

 G_(T,a)=(2/a)I-K_a
        =(2/a)I-2a(H_a+a^2)^(-1).                           (3)

The factor is for Gamma(O_Tu)/2 and the physical half-interval norm.
It can also be checked directly from
2 integral_0^infty exp(-ar)(1-cos(xi*r))dr.

The form order h_N<=h_a<=h_D uses the actual form-domain inclusion,
including the smaller domain of h_D. Its resolvent consequence is

 (H_D+a^2)^(-1)<=(H_a+a^2)^(-1)<=(H_N+a^2)^(-1).            (4)

A direct proof uses
<z,(H+s)^(-1)z>=sup_w[2Re<z,w>-h[w]-s||w||^2],
where the supremum is over the actual form domain and s>0.
Thus (4) is valid for these unbounded operators, not a finite matrix analogy.

## 3. Complete spectral comparison and explicit bounded boundary terms

Put
 phi(lambda)=sum_(j>=0)2lambda/[a_j(a_j^2+lambda)], lambda>=0.
For fixed lambda the positive series converges and phi(xi^2)=g(xi).
Subtracting the resolvents in (4) from (2/a_j)I and summing ALL positive
components proves, initially in the extended nonnegative sense,

             phi(H_N) <= G_T <= phi(H_D).                    (5)

Here these are closed quadratic forms with their respective domains.
The explicit complete physical bases are

 e_n^N(x)=sqrt(2/T)sin((n+1/2)pi*x/T), n>=0,
 e_n^D(x)=sqrt(2/T)sin((n+1)pi*x/T), n>=0.

Each is an observation basis for ALL L2(0,T); it imposes no trace law
on an arbitrary input. The spectral form phi(H_N) is exactly
sum_n g((n+1/2)pi/T)|<e_n^N,u>|^2, with its entire unobserved tail.
Tonelli justifies interchanging the TWO nonnegative infinite sums over
j and n. The corresponding identity holds for phi(H_D).

There is a stronger, explicit bounded comparison. The ordinary Green
resolvents satisfy

 R_N(x,y)=sinh(a min(x,y))*cosh(a(T-max(x,y)))/(a cosh(aT)),
 R_D(x,y)=sinh(a min(x,y))*sinh(a(T-max(x,y)))/(a sinh(aT)),
 R_a(x,y)=sinh(a min(x,y))*exp(-a max(x,y))/a.

These are (H_N+a^2)^(-1), (H_D+a^2)^(-1), (H_a+a^2)^(-1).
The same boundary/jump calculation as above proves each formula.
Their exact differences give the POSITIVE rank-one kernels

 C_(minus,j)(x,y)=4q_j*sinh(a_jx)sinh(a_jy)/(1+q_j),
 C_(plus,j)(x,y)=4q_j*sinh(a_jx)sinh(a_jy)/(1-q_j),
 q_j=exp(-2a_jT),

and the exact bounded-component identities

 G_(T,a_j)=phi_j(H_N)+C_(minus,j)
         =phi_j(H_D)-C_(plus,j).                            (6)

For A=T-x>0,B=T-y>0 the two kernels equal
exp(-a_j(A+B))*(1-exp(-2a_jx))*(1-exp(-2a_jy)), divided by
1+q_j for C_minus and by 1-q_j for C_plus.
Both lie between zero and exp(-a_j(A+B)). For the plus denominator
1-q_j, use exp(-2a_jx),exp(-2a_jy)>=q_j and
(1-q_j)^2<=1-q_j. For denominator1+q_j the bound is immediate.
Consequently EACH entire boundary kernel sum is majorized by

 sum_j exp(-a_j(A+B))=k(A+B)<=1/[2(A+B)].                   (7)

The final inequality is k(r)=exp(-r/2)/(2sinh r)<=1/(2r).
The actual Carleman operator1/(A+B) on L2(0,infinity) has norm<=pi:
with omega(A)=A^(-1/2), substitution B=A*t^2 gives
integral_0^infinity omega(B)/(A+B)dB=pi*omega(A), and weighted
Cauchy--Schwarz gives the physical Schur bound. Restriction to (0,T)
retains the bound. Thus the full countable rank-one sums construct
genuine bounded positive self-adjoint operators with

                  0<=C_minus,C_plus<=(pi/2)I.               (8)

For completeness, finite positive partial sums have this uniform norm
bound and hence a strong positive-operator limit. Their kernels converge
pointwise off the boundary; the Carleman majorant is integrable against
|u(x)v(y)| for every pair of L2 inputs, identifying that limit with (7).
No finite cutoff is treated as the complete boundary operator.

Taking limits in (6) now proves the genuine full form identities

 G_T=phi(H_N)+C_minus=phi(H_D)-C_plus.                       (9)

ALL THREE form domains coincide. Indeed the differences of finite
partial quadratic sums are bounded by (pi/2)||u||^2, so finiteness of
any one complete sum is equivalent to finiteness of the other two.
The form norms are equivalent with precisely these bounded physical
L2 errors, not a replacement of the physical norm. Associated operator
domains also coincide, by bounded perturbation; this can be checked
directly by testing the form identity against every form-domain vector.
Their operators obey (9) on this common operator domain.

This yields a complete, explicitly constructed gamma boundary adapter,
including the ENTIRE domain and all j>=0. It is more than a finite
passing spectral comparison.

## 4. The actual central/edge gamma is one positive frame square

Take T=3 and edge length1. For original v in H1=L2((3,4),dt), let
w(s)=v(T+s),0<s<1. This is a physical isometry, not a character-sector
or norm change. Define the bounded frame maps into ell2(N;Complex)

 (Uu)_j=integral_0^T U_j(x)u(x)dx,
 U_j(x)=2exp(-a_jT)sinh(a_jx)/sqrt(1+q_j),
 (Vw)_j=integral_0^1 V_j(s)w(s)ds,
 V_j(s)=sqrt(1+q_j)exp(-a_js).

Real frame functions make these linear maps under the antilinear-first
inner-product convention. Equation (6) gives C_minus=U*U and
||U||^2<=pi/2. The second frame has literal Gram kernel

 (V*V)(s,t)=k(s+t)+k(2T+s+t).

Its first part is bounded by the same half-Carleman operator. The
second is positive trace class with the COMPLETE trace
sum_j q_j*(1-exp(-2a_j))/(2a_j)=integral_0^1 k(2T+2s)ds.
At T=3 this is <=k(6)<1/1000: exp1>8/3, exp12>2, and
2/(8/3)^9<1/1000 prove this with an entire exponential tail.
Thus V is genuinely bounded with ||V||^2<=pi/2+1/1000.

The ACTUAL gamma mixed block from EdgeSchur is

 B_gamma(x,T+s)=-k(T+s-x)+k(T+s+x)=-sum_j U_j(x)V_j(s),
                         B_gamma=-U*V.                     (10)

Let G_even,1[w] be ONE HALF of the SAME parity-one gamma of the
EVEN zero extension of w from (0,1). Here even describes the TEST
reflection only: the kernel remains k(r)=exp(-3r/2)/(1-exp(-2r)).
It is not the parity-zero Dirichlet gamma or a different character.
This even-test form is closed by the same weighted Fourier transform
and closed even-supported subspace construction as (1).
Its a-component is the positive operator

 (2/a)I-exp(-a|s-t|)-exp(-a(s+t)).

The true odd edge component has instead
(2/a)I-exp(-a|s-t|)+q_j exp(-a(s+t)).
Subtracting V_j*V_j gives exactly the preceding even component.
Combining this with (6) and (10), for each j and then summing ALL
nonnegative terms, proves

 G_4[u+v]=phi(H_N,3)[u]+G_even,1[w]+||Uu-Vw||_ell2^2.       (11)

Every term has the ORIGINAL physical normalization. Both frame maps
are bounded, so the square is finite for ALL L2 u,w. Consequently
the entire finite-gamma domain splits EXACTLY as

 D(G_4)=D(phi(H_N,3)) orthogonal-sum D(G_even,1).

This independently constructs sharp-cut form-domain preservation.
It neither calls an indicator C2 nor assumes original H1 regularity.

## 5. Actual core source, compact resolvent and a proved spectral tail

Let D0=phi(H_N,3), c0=c3+1/8, and let P3 be the ACTUAL normalized
odd core prime operator. Its 93 source terms and physical Schur bound
give ||P3||<=W3=10567/500. The absolute Schur argument applies to
|u| for both signs, so this is an operator norm, not only one Rayleigh
observation. The original primitive constant is
c3=log(3/pi)+psi(3/4).

By the exact source identity and (9), the actual A0 of EdgeSchur is

                A0=D0+U*U+c0 I-P3.                         (12)

All additional terms are constructed bounded self-adjoint operators.
In particular Dom(A0)=Dom(D0), and their form domains coincide.
The recorded radius-three source bound gives A0>=alpha I,
alpha=3/40, at its inherited written computer-assisted scope.
No RH or radius-four edge sign is used to construct this inverse.

The diagonal eigenvalues g((n+1/2)pi/3) tend to infinity. The embedding
of the D0 form domain into physical L2 is compact: for a form-bounded
family its squared coefficient tail after N is at most its D0 energy
divided by g((N+1/2)pi/3), which tends to zero. Finite heads are
finite-dimensional. Bounded perturbation in (12) gives the same compact
form embedding for A0. More directly A0^(-1) maps a bounded L2 set
to a form-bounded set, by A0>=alpha and (12), so A0^(-1) is compact.
Thus A0 has actual eigenvalues lambda_1<=lambda_2<=... tending to
infinity, repeated with their multiplicities.

Let L_N be the first N DN observation vectors, and
k_N=(N+1/2)pi/3. For every actual form vector orthogonal to L_N,
the full diagonal comparison, positive U*U and signed source bound imply

 m00[u]>= [g(k_N)+c3+1/8-W3]||u||^2.                       (13)

This is an actual high-DN-SUBSPACE form bound. The DN projection is
NOT the actual A0 eigenprojection. The following dimension argument
is the required bridge: if lambda_(N+1) were smaller than (13)'s
constant, the span of the first N+1 ACTUAL eigenvectors would meet
L_N^perp nontrivially. A nonzero vector in that intersection has
Rayleigh quotient at most lambda_(N+1), contradicting (13).
Therefore the actual minmax conclusion is

 lambda_(N+1)>=g(k_N)+c3+1/8-W3
              >=log(k_N)-W3-5/8
              >log N-21759/1000, N>=100.                   (14)

Here g+c3=A and the original Binet bound A(xi)>=log|xi|-3/4
is used only on |xi|>=100. Pi>3 ensures k_N>N. This retains the
actual c3 rather than losing it twice in a gamma/prime norm bound.
For N=2^32 and log2>693/1000, (14) gives
lambda_(N+1)>417/1000>alpha.

NOW let E_N be the projection onto the first N ACTUAL A0 eigenvectors.
Spectral calculus, NOT identification with L_N, proves the complete
infinite inverse-tail law

 0<=A0^(-1)-E_N A0^(-1)E_N<=(1000/417)(I-E_N),
          ||A0^(-1)-E_N A0^(-1)E_N||<=1000/417, N=2^32.   (15)

For any original edge v, substitute z=Bv to pay its ENTIRE omitted
actual spectral tail. The sharper intermediate price is
|| (I-E_N)Bv||^2/lambda_(N+1). Neither (15) nor the dimension
argument supplies the unknown finite directional core coordinates.

One additional exact source improvement is available: the mixed
prime geometry gives sums of upward half-price numerators
1097972977 for the21 same-side atoms, and5679921703 for the193
reflected atoms, at price grid10^8. All458 source entries were
retained when selecting these geometrically active subsets.
Together with ||B_gamma||<=pi/2 this gives

 ||B||<6777894680/10^8+11/7<70.                             (16)

This improves the coarse214 used for the complete time-tail price;
it is still only a bound, not the sharp edge inequality.

## 6. Return to the requested sign and the remaining quantitative gap

The actual shifted edge form, with p11 the actual signed edge prime
readout, is

 m11[v]=G_even,1[w]+||Vw||^2+c0||v||^2-p11[v],
 B=-U*V+B_prime.

The gamma in this square and in an ordinary-edge local lower bound is
SHARED. Here is the exact accounting law. Let G_ord[w] be the SAME
parity-one gamma of the single zero extension from (0,1), with its
ordinary physical mass ||w||^2, and define the bounded positive forms

 H_near(s,t)=k(s+t), H_far(s,t)=k(6+s+t).

Their actual identities are
 G_even,1=G_ord-H_near, V*V=H_near+H_far,
 G_edge=G_ord+H_far.
For example let L[w]=G_ord[w]+c0||w||^2-p11,atom2[w] be the actual
local edge leaf including its n=2 arithmetic term. Reusing that leaf
inside the square decomposition leaves

 D0[u]+L[w]+||Uu-Vw||^2-H_near[w]
 +c0||u||^2-p00[u]-p11,new[w]+2Re<u,B_prime v>.              (17)

Thus a lower bound such as L>=||w||^2/10 and the positive square are
NOT independent gamma allowances. Dropping the square leaves the
explicit NEGATIVE H_near price; it must still be paid or coupled to
the core. H_near has norm at most pi/2, not zero. Equivalently one
may keep the original G_edge=G_ord+H_far form and its actual mixed
gamma, without counting the ordinary gamma a second time. Equation
(17) is an exact original-source join, not an arithmetic sign.

Equations (10)--(12) therefore return (E) to PRECISELY the same
physical form and ALL458 arithmetic terms. The entire gamma part of
the assembled source is paid by (11); its arithmetic remainder is

 c0(||u||^2+||v||^2)-p00[u]-p11[v]
                      +2Re<u,B_prime v>.

Its signs are not controlled by the positive frame square alone.
In particular A0-U*U=D0+c0 I-P3 has not been proved nonnegative.
One may NOT infer U A0^(-1)U*<=I by discarding that actual signed
remainder. The remaining directional edge law (E) is still OPEN.
The N=2^32 bound is quantitatively far too coarse to establish it,
and a finite DN head cannot represent the actual spectral E_N
without the domain and minmax bridge already supplied.

If (E) is eventually proved, the existing EdgeSchur square completion
uses the genuine form-domain vector A0^(-1)Bv and gives m>=0, hence
the original chi3 stage j=3. The independent zeta/RH source and every
other required primitive/cofinal sector still have their own obligations.
The precisely specified GRH family remains all complex Dirichlet
characters modulo every positive integer, zeros in0<Re(s)<1.

## 7. Heat, exhaustive indexing and lossless representable proof data

The auxiliary DN gamma has an explicit strong physical semigroup,
with coefficients exp[-t*g(k_n)] on its full orthonormal basis,
for EVERY t>=0. The DD and Robin auxiliary forms likewise have their
genuine positive self-adjoint spectral heat on their full physical
carriers. The maps U,V are bounded frame maps; their typed-description
coverage interface does not assert a frame-generated arithmetic heat.
The even-test reference gamma and the bounded positive C_minus,C_plus
also have genuine spectral contraction semigroups from the constructed
closed forms and operators above.
The actual G_T and A0 are self-adjoint realizations
of their closed forms. Actual core heat T0(t)=exp(-tA0) satisfies
||T0(t)||<=exp(-alpha t). On Dom(A0) its precise recovery law is
-lim_(t down0)(T0(t)u-u)/t=A0u. Subtracting I/8 returns the
original arithmetic core operator; its full Q3 value on O_3u is
twice the associated physical form.
For every z in H0,
<z,A0^(-1)z>=integral_0^infinity ||T0(t/2)z||^2dt.
The entire time tail after L is <=alpha^(-1)exp(-alpha L)||z||^2.
For the SAME actual C400 of EdgeSchur, (16) gives a sharper complete
directional time-tail law, valid for EVERY physical edge v in L2:

 0<=<Bv,A0^(-1)Bv>-C400[v]
   <=(40/3)*70^2*exp(-30)||v||^2
   <=10^(-8)||v||^2.

The entire unobserved time interval (400,infinity) is integrated.
The exact exponential guard uses exp1>65/24>27/10 and
(40/3)*70^2 <10^(-8)*(27/10)^30. No extra form-domain hypothesis
is imposed on Bv, and no sampled heat time proves this result.
Consequently the original edge consumer may use the sufficient
allowance C400[v]+10^(-8)||v||^2 in place of its earlier10^(-7)
allowance. The still unproved uniform arithmetic edge sign remains
the other required premise.
These are spectral/norm consequences. Form order DOES NOT imply
an unstated operator order between exp(-tG_T) and exp(-t phi(H_N)):
the exponential is not operator monotone. The proven gamma transport
is (2)--(12) and the positive-resolvent order (4).

Every gamma index j>=0, every observation index n>=0 and every
boundary-frame component is exhaustively indexed. Positive-component
Tonelli, bounded Carleman/frame laws and (14)--(15) justify their
COMPLETE unobserved tails. Finite partial frame sums are not declared
operator-norm approximations; a full boundary kernel remains present.
The actual eigenprojection and the DN projection retain distinct types.

Representable finite data retain the exact source/character, T, source
bindings and domain declarations, Fourier normalization, all formulas
with their bound j,n variables, finite scalar guards, W3 and alpha,
the full458-atom source-payload identity, degree masks, all approximation
errors, dependencies and separate assurance fields. Reuse the existing
dependent finite-description codec of WeilDirichletCompactFilterReturn.
For canonical finite integer/string/list/dictionary syntax, exact integer
JSON parsing and structural induction prove decode(encode x)=x.
No arbitrary semantic L2 function or infinite spectrum is finitely encoded.
The infinite spectral/kernel laws are the explicit mathematical proofs
above, not conclusions inferred from a finite recipe.

Exact scalar/source proof data and their complete roundtrip are retained
locally in grwtsk/noeaaeue:
 .cache/chi3-sharp-edge-gamma-comparison-20261107/complete_scalar_source_guards.json
SHA256 8dd127497e4ad007b586a59398b2dba10ae5cd1bf96e81998de903f6488ad8df;
checker replay_scalar_parameters.py
SHA256 539f6eb2a8f45d481f07be7b9f14a42d62f811d9c45ea5fc2047aaa2cf8c95e3.
It binds the complete retained458-atom/error payload, not a new prime
recipe or a deletion of the unobserved source. No remote availability,
Noe execution job, commit or publication is asserted by this module.

Description coverage remains the separate exact natural-code interface:
weight2^(-n-1), invalid/status entries retained, complete tail2^(-J),
and its existing inverse/source-recovery laws. It supplies coverage,
not (E), a prime sign, the actual spectral projection, or a Markov
interpretation of the physical semigroup.

Nearest methods are elementary Green resolvents, Robin form ordering,
Carleman/Schur testing, positive frames, closed forms and the minmax
dimension argument. Worldwide novelty is NOT_ASSESSED. Pure-gamma
laws are written proofs; core-source conclusions inherit the recorded
computer-assisted radius-three input. Lean scalars below are separate
from universal integral/domain/operator formalization and kernel replay.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeSharpEdgeGammaComparison

def nativeCorePrimeBound : ℚ := 10567 / 500
def actualCoreFloor : ℚ := 3 / 40
def logarithmicSourceOffset : ℚ := nativeCorePrimeBound + 5 / 8
def spectralTailFloor32 : ℚ := 32 * (693 / 1000) - logarithmicSourceOffset

theorem logarithmicSourceOffset_exact :
    logarithmicSourceOffset = 21759 / 1000 := by
  norm_num [logarithmicSourceOffset, nativeCorePrimeBound]

theorem actual_spectral_tail_scalar :
    spectralTailFloor32 = 417 / 1000 ∧
      actualCoreFloor < spectralTailFloor32 ∧
      1 / spectralTailFloor32 = 1000 / 417 := by
  norm_num [spectralTailFloor32, logarithmicSourceOffset,
    nativeCorePrimeBound, actualCoreFloor]

theorem entire_far_frame_trace_guard :
    (2 : ℚ) / (8 / 3) ^ 9 < 1 / 1000 := by
  norm_num

theorem complete_mixed_source_guard :
    (1097972977 + 5679921703 : ℚ) / 10 ^ 8 + 11 / 7 < 70 := by
  norm_num

theorem entire_directional_time_tail_guard :
    (40 / 3 : ℚ) * 70 ^ 2 < (1 / 10 ^ 8) * (27 / 10) ^ 30 := by
  norm_num

/-- Scalar boundary factors, after the actual Green identities have been proved. -/
theorem minus_boundary_factor
    (q s t : ℝ) (hq : 0 ≤ q)
    (hs0 : 0 ≤ s) (hs1 : s ≤ 1)
    (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    0 ≤ (1-s)*(1-t)/(1+q) ∧ (1-s)*(1-t)/(1+q) ≤ 1 := by
  have hd : 0 < 1+q := by linarith
  have hprod0 : 0 ≤ (1-s)*(1-t) :=
    mul_nonneg (by linarith) (by linarith)
  have hprod1 : (1-s)*(1-t) ≤ 1 := by
    calc
      (1-s)*(1-t) ≤ 1*(1-t) :=
        mul_le_mul_of_nonneg_right (by linarith) (by linarith)
      _ ≤ 1 := by linarith
  constructor
  · exact div_nonneg hprod0 (le_of_lt hd)
  · apply (div_le_iff₀ hd).2
    linarith

theorem plus_boundary_factor
    (q s t : ℝ) (hq0 : 0 ≤ q) (hq1 : q < 1)
    (hqs : q ≤ s) (hqt : q ≤ t)
    (hs1 : s ≤ 1) (ht1 : t ≤ 1) :
    0 ≤ (1-s)*(1-t)/(1-q) ∧ (1-s)*(1-t)/(1-q) ≤ 1 := by
  have hd : 0 < 1-q := by linarith
  have hprod0 : 0 ≤ (1-s)*(1-t) :=
    mul_nonneg (by linarith) (by linarith)
  have hprod : (1-s)*(1-t) ≤ (1-q)*(1-q) := by
    exact mul_le_mul (by linarith) (by linarith)
      (by linarith) (by linarith)
  have hsquare : (1-q)*(1-q) ≤ 1-q := by
    nlinarith [mul_nonneg hq0 (le_of_lt hd)]
  constructor
  · exact div_nonneg hprod0 (le_of_lt hd)
  · apply (div_le_iff₀ hd).2
    linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeSharpEdgeGammaComparison
