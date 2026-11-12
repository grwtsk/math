# Joint high-shift interference: all prime powers, original Weil source

Local author: grwtsk contributors. 2026-11-12, edition 1.
MSC2020: 11M26 (primary), 42A82, 47A12, 11M41.

Evidence: WRITTEN_ANALYTICAL_ARGUMENT with full support/Fubini/source return.
The companion WeilHighShiftInterference.lean formalizes only scalar
two-shift Gram and deficit algebra at SOURCE_PROOF_CANDIDATE status;
it does NOT contain a Lean proof of the infinite-dimensional
mixed-source translation or the all-high finite sum. Lean elaboration,
complete dependency build, fresh kernel replay, transitive axiom
audit, certified whole-form evaluation, independent review: NOT_RUN.
Novelty UNASSESSED. No RH, primitive Dirichlet GRH, or universal
sign/certificate-existence theorem.

## 1. Actual arithmetic source

Fix A>0, a positive conductor q, a primitive Dirichlet character chi
of conductor q, and a complex-valued source f∈L²(R) supported a.e. in
[-A,A]. Smooth compact tests are included. Use the literal canonical

  E(f)=int_R |f(x)|² dx,
  C_f(r)=int_R conjugate(f(x))*f(x+r) dx,
  I_A=LowSchur.activePrimePowers A
     ={n∈N: n>=2 and n<exp(2A)},
  w_n=LowSchur.primeWeight(n)=vonMangoldt(n)/sqrt(n)>=0.

The original signed prime form is not modified:

  S_chi,A(f)=2 sum_(n∈I_A) w_n
                Re(conjugate(chi(n))*C_f(log n)).           (1)

All prime powers, phases, nonunit zeros, and the strict cutoff remain.
At log n=2A, C_f(log n)=0 by the native measure-null endpoint.
Let H_A={n∈I_A: log n>=A}, L_A=I_A\H_A.
Every high lag satisfies A<=log n<2A. Define a_n=w_n*|chi(n)|>=0,
including a_n=0 for ramified or non-prime-power integers.
If H_A has zero or one positive-weight element the new joint budget
coincides with its previous independent high-lag bound.

## 2. Physical half-space and exact high-band identity (WHSI-v1-01)

Split the ACTUAL supported L² source into two almost-everywhere
disjoint zero-extended functions

  f_-(x)=1_[-A,0)(x)*f(x),
  f_+(x)=1_[0,A](x)*f(x),
  E(f)=||f_-||²+||f_+||².                             (2)

For r in [A,2A), the original correlation is literally

  C_f(r)=int_(-A)^0 conjugate(f_-(x))*f_+(x+r) dx.      (3)

This is not a change of inner-product convention. If x>0, x+r>A;
if x<0 and f(x) is supported, x+r>=0. The possible x=0 endpoint
is null. Integrability is genuine by L² Cauchy-Schwarz and
measure-preserving translation.

On the lower-half Hilbert space H_-=L²([-A,0]), define
V_r g(x)=g(x+r) for x∈[-A,0], with g supported in [0,A].
Thus ||V_r g||_(H_-)<=||g||_2.

Set complex beta_n=w_n*conjugate(chi(n)), so |beta_n|=a_n.
The ENTIRE signed high arithmetic source equals

  S_high(f)
    =2 Re <f_-, sum_(n∈H_A) beta_n V_(log n) f_+>_(H_-). (4)

The inner product is antilinear in the first variable.
No absolute value was taken on the sum and no original prime
phase was dropped.

## 3. Cross-shift overlap and the sharp finite-chain bound

For distinct high n,m let r=log n, s=log m, and
  d_nm=|r-s|>0, N_nm=ceil(A/d_nm)>=2,
  c_nm=cos(pi/(N_nm+1))∈[0,1).

For ANY g supported in [0,A], put h(x)=|g(x)|>=0, also supported
in [0,A]. The whole-line cross correlation of h is nonnegative.
Cauchy and extension of a nonnegative partial overlap yield

 |<V_r g,V_s g>_(H_-)|
   <=int_(-A)^0 |g(x+r)|*|g(x+s)| dx
   <=int_R h(y)*h(y+d_nm) dy
   =C_h(d_nm).                                           (5)

If r>s, substitute y=x+s; if r<s, substitute y=x+r.
All translated functions are L², so the products are
integrable before the integral is extended.

Apply the PRECEDING exact finite-chain theorem (written in
WeilFiniteChainPrimeBound.md) to the genuine h on a support
interval of WIDTH A, centered at A/2:

  C_h(d_nm)<=cos(pi/(ceil(A/d_nm)+1))*||h||²
             =c_nm*||g||².                              (6)

This is the sharp nilpotent numerical-radius estimate for
a shift truncated to [0,A], not an imported RH assumption.
The elementary finite-chain proof uses open Dirichlet edges,
the sine ground-state vector, every complex cross term, and
the exact null overlap at a support endpoint. It does not
require the nonnegative h to be differentiable.

In particular, if d_nm>=A/2 then N_nm=2, and
  |<V_r g,V_s g>| <= ||g||²/2.                     (7)

## 4. All-high joint Gram upper bound (WHSI-v1-02)

Let g=f_+. Expand the squared norm of the WHOLE high-prime
operator output, before estimating any term:

 ||sum_(n∈H_A)beta_n V_(log n) g||²
  =sum_(n∈H_A)|beta_n|²||V_(log n)g||²
   +2 sum_(n<m, n,m∈H_A)
      Re(conjugate(beta_n)*beta_m*
             <V_(log n)g,V_(log m)g>).

Every term is from the original finite signed arithmetic
source. Bound the diagonal using ||V_r g||<=||g|| and the
mixed pair using (5)--(6). Hence

 ||sum_n beta_n V_(log n)g||²
   <=[sum_n a_n²+2 sum_(n<m) a_n*a_m*c_nm]*||g||².      (8)

The quantity in square brackets is nonnegative. Define

  J_chi,A =
    sqrt(sum_(n∈H_A)a_n²+
       2sum_(n<m in H_A)a_n*a_m*c_nm).

Cauchy-Schwarz in (4) first gives the STRONGER balance-sensitive
mixed-support estimate

  |S_high(f)| <= 2*J_chi,A*||f_-||_2*||f_+||_2.         (9a)

The genuine Hilbert inequality
2||f_-||||f_+||<=||f_-||²+||f_+||² then yields

  |S_high(f)| <= J_chi,A*E(f).                          (9)

In particular, the entire high response is ZERO if f is supported
on only one half of the original window. A scalar prime-mass floor
does not see this vanishing. Estimate (9a) retains the exact
off-diagonal mixed coupling for any later Schur complement argument.

There is no pole neutrality, character averaging,
finite-mode reduction, positivity of completed zeros,
assumed RH/GRH or substitution of a positive graph form.

## 5. Explicit positive saving without evaluated cosine (WHSI-v1-03)

Set M_high=sum_(n∈H_A)a_n. By finite expansion,

 M_high²-J_chi,A² =
    2sum_(n<m in H_A)a_n*a_m*(1-c_nm).                 (10)

The trigonometric chord bound (Mathlib pinned lemma
Real.cos_le_one_sub_mul_cos_sq on |x|<=pi) gives

 c_nm <=1-2/(N_nm+1)²,
 so 1-c_nm>=2/(N_nm+1)².

Therefore the entirely explicit pairwise deficit satisfies

  M_high²-J_chi,A² >=
       4sum_(n<m in H_A)a_n*a_m/(N_nm+1)².            (11)

The radicand defining J is nonnegative by (8) or directly
from positive coefficients and c_nm>=0. Also J<=M_high
because every c_nm<=1. If M_high>0, divide (11) by
M_high+J<=2M_high to obtain

 M_high-J >=
    (2/M_high)sum_(n<m)a_n*a_m/(N_nm+1)².             (12)

The resulting source inequality is

 |S_high(f)| <=
    [M_high-(2/M_high)*
        sum_(n<m)a_n*a_m/(N_nm+1)²]*E(f).              (13)

This bound is strict relative to M_high E(f) whenever
at least two distinct high integers n,m have positive
weights a_n,a_m. It is true for all complex phases, all
positive conductors, and every original support window.
It is NOT uniform as the window grows: for fixed separation
d, N_nm=ceil(A/d) tends to infinity and the cosine deficit
tends to zero. Nor does (13) infer positivity of Q.

The preceding Lean SOURCE_PROOF_CANDIDATES
HighShiftInterference.pairBudget_le_sum,
HighShiftInterference.pairBudget_gap_lower and
HighShiftInterference.separated_pair_gain prove the two-term
scalar square-root/gap algebra only. Formulae (3)--(13) are
WRITTEN source proofs, not Lean declarations in that module.

## 6. Two separated high shifts and an actual small-window example

Let n≠m in H_A and a=w_n|chi(n)|, b=w_m|chi(m)|.
The two-term case of (9) gives

 |S_{n,m}(f)| <=sqrt(a²+b²+2ab*c_nm)*E(f).            (14)

If |log n-log m|>=A/2, then c_nm=1/2 and

 |S_{n,m}(f)| <=sqrt(a²+b²+ab)*E(f).                   (15)

Compared with the previous two independent sharp half-correlation
bounds (a+b)E(f), the positive saving is

 a+b-sqrt(a²+b²+ab)
   =ab/(a+b+sqrt(a²+b²+ab))
   >=ab/(2(a+b)) >0, if a,b>0.                        (16)

The last expression is encoded in Lean without division to
avoid a hidden a+b>0 premise.

Concrete source fixture: A=1, n=3, m=5. Both high logarithms
lie in [1,2), and d=log(5/3)>1/2, so c_35=1/2.
For a primitive character unramified at 3 and 5 (and for
the separate conductor-one zeta source), the magnitudes are
a=log(3)/sqrt(3), b=log(5)/sqrt(5).
The independent upper mass is about 1.354046616, while the
joint upper mass is about 1.173417368, a saving near 0.180629248
times E(f) for JUST these two original prime terms. The decimal
numbers are UNCERTIFIED checks, not an interval certificate.
All other active prime powers remain in S_chi,A.

The bound is not claimed sharp for the joint two-lag problem:
support clipping can lead to further loss. A single shift may
saturate its individual Fejer bound, but separate shifts need
not admit a common extremizing physical source.

## 7. Return to complete pole-inclusive Weil arithmetic (WHSI-v1-04)

Let L_A=I_A\H_A. For each low n, define
 d_n=cos(pi/(ceil(2A/log n)+1)); 0<=d_n<1,
 using only positive log n (n>=2). The prior exact
finite-path inequality gives

 S_low(f) <= M_low*E(f),
 M_low=2sum_(n∈L_A)w_n*|chi(n)|*d_n.                  (17)

Thus, for the SAME original signed prime response,

  S_chi,A(f) <= (M_low+J_chi,A)*E(f),                   (18)

and when M_high>0 the right side can be further reduced
by the explicit saving (12). No inventory, von Mangoldt
coefficient or character phase was removed.

For primitive nonprincipal q>1, the actual physical form
is, with the native parity a=gammaParity chi,

  Q_chi,A(f)=gammaConstant(q,a)*E(f)+
    int_0^infty K_a(r)*e_f(r)dr -S_chi,A(f),

so (18) returns directly to the unchanged canonical
primitiveArithmeticValue:

  Q_chi,A(f)>=
   [gammaConstant(q,a)-M_low-J_chi,A]*E(f)+Gamma_a(f). (19)

The form's integrability is genuine for the canonical
smooth tests, from the existing WeilGammaHeadIntegrability
and tail lemmas; this source-return identity is not an
assertion of a new totalized value.

Conductor-one zeta has a SEPARATE source identity

  Q_zeta,A(f)=P_zeta(f)+gammaConstant(1,0)*E(f)
                     +Gamma_0(f)-S_1,A(f),
  P_zeta(f)=M_+(f)*conjugate(M_-(f))
           +M_-(f)*conjugate(M_+(f)),
  M_±(f)=int_R e^(±t/2)*f(t)dt.

Both signed pole orientations remain and can be negative,
e.g. real odd tests. Applying the SAME prime bound gives

  Q_zeta,A(f)>=P_zeta(f)+
       [gammaConstant(1,0)-M_low-J_1,A]*E(f)+Gamma_0(f).(20)

No primitive nonprincipal theorem is specialized to chi=1.
The completed-L-function zero-sum return and Weil criterion
retain their independent formal verification obligations.

## 8. Hostile comparisons, provenance and first open premise

The source f=0 gives equality. A single active high prime
has no cross deficit. Two positive high weights with
distinct logarithms give a strict saving. If chi(n)=0,
a_n=0 and the ramified contribution correctly vanishes.
The source sharp finite-path bound applies to h=|f_+|
in L² and does not require a hard zero extension with
uncounted boundary jumps: only L² support is used.
At log n=2A the correlation vanishes and the strict
active inventory excludes that term exactly.

As d_nm->0 for fixed A, N_nm->infinity and the
cross deficit goes to zero; neither a uniform all-window
spectral gap nor universal sign follows. High frequencies
and exceptional negative directions are not excluded.
The sign of the COMPLETE form still depends on the
low-shift signed prime term and the unbounded gamma
relative cancellation; scalar mass floors can be negative.
The upper bound is a genuine but insufficient criterion,
not a positive replacement Hilbert structure.

Dated primary comparisons:
- U. Haagerup and P. de la Harpe, "The numerical radius
  of a nilpotent operator on a Hilbert space",
  Proc. AMS 115 (1992), 371--379, Theorem 1,
  DOI 10.1090/S0002-9939-1992-1072339-6.
- E. Bombieri, "Remarks on Weil's quadratic functional
  in the theory of prime numbers, I", Rendiconti
  Lincei 11 (2000), §§2--3 and its variational limits.
- Connes--Consani--Moscovici, "Zeta Spectral Triples",
  arXiv:2511.22755v1, equations (3.19)--(3.20),
  for actual signed prime, gamma and pole normalization.
- The canonical WeilFiniteChainPrimeBound.md (2026)
  and WeilPhysicalHalfCorrelation.lean at the inspected
  grwtsk/math main implement the finite-path and
  single high-lag bounds being combined here.
The general Gram expansion and Hilbert Cauchy are
classical; this source-local arithmetic consequence is
not asserted new. A comprehensive novelty search
or independent review has NOT been performed.

Canonical consumer map:
LowSchur.activePrimePowers, primeWeight;
SourcePrimeCorrelation.correlation, energy,
correlation_eq_zero_of_cutoff;
CharacterWindow.twistedPrime;
WeilPhysicalHalfCorrelation.norm_correlation_le_half_energy_of_support;
WeilFiniteChainPrimeBound.md §§2--5;
TwistedPrimeEnergyReturn.twistedPrime_eq_shift_ledger
and primitiveArithmeticValue_eq_twisted_shift_ledger;
GammaPhysicalReturn for two-pole source, and
HighShiftInterference.pairBudget... scalar declarations.

Inspected main: grwtsk/math@81e43f712fb5b763dd677a969a22edb926203b25.
Pinned Lean leanprover/lean4:v4.34.1;
mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
First formal obligation is to prove the half-space
L² source disintegration and finite all-high mixed
Gram estimate in Lean, then replay the pins.
First ARITHMETIC premise remains all-character,
all-window, all-test signed prime domination
relative to the genuine gamma and pole terms,
NOT a finite pairwise-mass bound. RH and primitive
Dirichlet GRH remain unproved.
