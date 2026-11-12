# Sharp finite-chain correlation bound and phase-exact Weil prime ledger

Local author: grwtsk contributors. Date: 2026-11-12. Edition 1.
MSC2020: 11M26 (primary), 47A12, 42A82, 11M41.
Source: WeilTwistedPrimeEnergyReturn.lean.
Evidence: complete WRITTEN analytic argument for the all-shift path bound,
its sharpness, the phase/mass return, and the sufficient sign criterion.
Lean SOURCE_PROOF_CANDIDATE covers the exact twisted L2 phase energy
identity and its literal primitiveArithmeticValue consumer only. The
all-shift trigonometric path spectral bound, its L2 disintegration,
sharpness and full sign criterion are not new Lean declarations.
Elaboration, full dependency build, fresh kernel replay, transitive
axiom audit, certified numerical evaluation and independent review:
NOT_RUN. Originality UNASSESSED; no novelty asserted.

## 1. Unchanged source, existing half overlap and literature

Fix A>0 and f in L2(R;C), with f(t)=0 for almost every t
outside [-A,A]. Use the native antilinear-first correlation
 C_f(r) = integral_R conjugate(f(t))*f(t+r)dt,
 E(f)=integral_R |f(t)|^2dt.
The native prime inventory I_A=LowSchur.activePrimePowers A
is the finite set of integers n>=2 satisfying n<exp(2A).
The actual nonnegative weights w_n=LowSchur.primeWeight n
include Lambda(n)/sqrt(n) for all prime powers.
For Dirichlet character chi modulo q>=1 use precisely
 S_chi,A(f)=2 sum_(n in I_A) w_n
       Re(conjugate(chi(n))*C_f(log n)).
Character values on nonunits are zero; the imaginary phases
at unramified prime powers remain part of the source.

Existing WeilPhysicalHalfCorrelation.lean, at the inspected main,
proves |C_f(r)|<=E(f)/2 for r>=A. The present sharper finite-path
bound genuinely extends it to 0<r<A; do not duplicate the
half-overlap theorem. Existing WeilCharacterSensitivePrimeFloor
bounds the prime expression by a character-sensitive mass
M_chi(A)=2 sum_(n in I_A)w_n|chi(n)|.

Primary prior-art theorem: Uffe Haagerup and Pierre de la Harpe,
"The numerical radius of a nilpotent operator on a Hilbert space",
Proceedings of the American Mathematical Society 115 (1992), no.2,
371--379, Theorem 1 and Proposition 1,
DOI 10.1090/S0002-9939-1992-1072339-6.
It proves w(T)<=||T|| cos(pi/(N+1)) when T^N=0 and shows sharpness
for the N-dimensional shift. Its paper also cites Fejer's
trigonometric coefficient inequality. The present application to
the ACTUAL truncated translation on [-A,A], with its strict
prime inventory and phase convention, is a source-local
consequence of that classical theorem. No novelty claim.

## 2. Sharp all-positive-shift correlation theorem (WFCP-v1-A, WRITTEN)

For r>0 set N=ceil(2A/r), a positive natural number. Then

 |C_f(r)| <= cos(pi/(N+1))*E(f).                          (2.1)

The proof works for every complex L2 source and is exact at the
support boundary. For a.e. x in [0,r) define
 a_k(x)=f(-A+x+k*r), 0<=k<N, and a_N(x)=0.
The arithmetic inequality (N-1)r<2A<=Nr gives that every
support point is covered by one of these N shifted strips,
and any product with an additional strip is zero a.e.
If 2A/r is integer, the possible terminal point at x=0 is
Lebesgue-null; it does NOT create an extra nonzero site.
Translation invariance, finite additivity and Tonelli
for the squared norms imply

 E(f)=int_0^r sum_(k=0)^(N-1)|a_k(x)|² dx,
 C_f(r)=int_0^r sum_(k=0)^(N-2)conj(a_k(x))*a_(k+1)(x)dx. (2.2)

The mixed products are L1 by L2 Cauchy and the finite sum is
legitimate. There is no periodic wraparound or unaccounted
zero-extension boundary jump.

For N>=2 set theta=pi/(N+1), b_k=sin((k+1)*theta),
k=0,...,N-1, with b_(-1)=b_N=0. All interior b_k are positive,
and b_(k-1)+b_(k+1)=2*cos(theta)*b_k.
For any complex vector a of length N the algebraic
ground-state decomposition reads

 cos(theta)*sum_(k=0)^(N-1)|a_k|²
   -Re(sum_(k=0)^(N-2)conj(a_k)*a_(k+1))
 = (1/2)*sum_(k=0)^(N-2)b_k*b_(k+1)*
      |a_k/b_k-a_(k+1)/b_(k+1)|² >=0.               (2.3)

This retains all complex cross terms and requires no
orthogonality hypothesis. Replace a_k by exp(i*k*phi)*a_k;
its norm is unchanged and its adjacent pairing is multiplied
by exp(i*phi). Choose phi making the pairing real and
nonnegative. This proves
 |sum conj(a_k)*a_(k+1)| <= cos(theta)*sum|a_k|².
For N=1 the adjacent sum is empty and cos(pi/2)=0.
Apply the finite inequality in (2.2) and integrate.

Equivalent operator derivation: let P_A be the orthogonal
projection onto L2([-A,A]) via zero extension and T_r
translation by r. The compression P_A*T_r*P_A has norm
at most 1, and its Nth power vanishes a.e., because
N*r>=2A. Haagerup--de la Harpe, Theorem 1, therefore
gives the same numerical-radius constant. The first
proof does not depend on importing this external operator
theorem and identifies the actual source correlation.

## 3. Sharpness on the original smooth complex test domain

For fixed A,r choose
 d=min(r,2A-(N-1)*r)>0.
Take a nonzero C_c^infinity bump psi supported in (0,d).
Define f(t)=sum_(k=0)^(N-1) b_k*exp(i*k*phi)*
                         psi(t+A-k*r).
The N supports are disjoint and remain strictly inside
(-A,A). The function is a genuine C_c^infinity complex test,
not a jumping Galerkin zero extension.
Since the b_k are the positive sine eigenvector,
 sum_(k=0)^(N-2)b_k*b_(k+1)
    =cos(theta)*sum_(k=0)^(N-1)b_k².
Direct whole-line integration therefore gives
 C_f(r)=exp(i*phi)*cos(theta)*E(f).
Equality holds in (2.1). When N=1 both sides vanish.

This sharpness is for one prescribed lag. There is NO
claim that one fixed f simultaneously saturates all
different prime-power lags. The incompatibility of such
simultaneous extremizers is the cancellation still needed
for all-window positivity.

## 4. Original phase-twisted energy identity (WFCP-v1-B)

For any complex z (including z=0), r in R and L2 f set
 D_z(r,f)=int_R |f(t+r)-z*f(t)|² dt.
Both the translation square and cross correlation are
actually integrable. Expanding the TRUE complex norm and
using translation invariance proves

 D_z(r,f)=(1+|z|²)E(f)
             -2Re(conjugate(z)*C_f(r)).               (4.1)

The two public Lean SOURCE_PROOF_CANDIDATE consumers are
 TwistedPrimeEnergyReturn.twistedShiftEnergy_eq_correlation
 and TwistedPrimeEnergyReturn.twistedPrime_eq_shift_ledger.
An additional public consumer returns to the exact native
 primitiveArithmeticValue for primitive nonprincipal chi.

For z=chi(n) the ORIGINAL prime sum is therefore
 S_chi,A(f)=sum_(n in I_A) w_n*
     [(1+|chi(n)|²)E(f)-D_(chi(n))(log n,f)].         (4.2)

There is no new conjectural positivity form and no phase
projection. If chi(n)=0, then D_0(r,f)=E(f), and the two
mass terms cancel exactly. If |chi(n)|=1, D is a nonnegative
twisted difference with the SAME sign as the original
source after the explicit negative mass is paid.

The original arithmetic value in the primitive nonprincipal
sector is exactly

 Q_chi,A(f) = c_chi E(f)+Gamma_a(f)-S_chi,A(f)
  = [c_chi-sum_(n in I_A)w_n(1+|chi(n)|²)]E(f)
    +Gamma_a(f)+sum_(n in I_A)w_nD_(chi(n))(log n,f). (4.3)

The second equality is pure source arithmetic; it does
NOT discard the potentially negative mass bracket.
Gamma_a(f)=int_0^infinity K_a(r)e_f(r)dr is the literal
physical gamma term, with its genuine integrability
hypotheses retained. The Lean primitive consumer proves
the uncollected equal form, avoiding rounded baselines.

For conductor-one zeta, q=1, a=0, chi(n)=1 and ADD the
two original pole orientations:
 P_zeta(f)=M_+(f)*conj(M_-(f))+M_-(f)*conj(M_+(f)),
 M_±(f)=int_R f(t)exp(±t/2)dt.
No primitive nonprincipal consumer is instantiated
at chi=1. The phase ledger for chi=1 remains valid as
an identity for the prime term alone, and P_zeta is
added explicitly to the complete arithmetic form.

## 5. Strictly improved character-sensitive upper mass (WFCP-v1-C)

For any primitive character chi and any canonical complex
smooth source supported in [-A,A], define

 M_path(chi,A)=2 sum_(n in I_A)
   w_n*|chi(n)|*cos(pi/(ceil(2A/log n)+1)).               (5.1)

All n in I_A satisfy n>=2 and log n>0, so the quotient is
defined. The n=exp(2A) boundary is excluded by the
source inventory and its correlation is zero anyway.
Every von Mangoldt power stays in the same finite sum.

Since Re(conj(chi(n))*C_f(log n))
<=|chi(n)|*|C_f(log n)|, the sharp one-lag theorem gives

 S_chi,A(f) <= M_path(chi,A)*E(f).                       (5.2)

Every cosine factor lies in [0,1); hence
 0<=M_path(chi,A)<=characterPrimeMass(chi,A)
                     <=LowSchur.primeMass(A).
The first inequality is strict if some ACTIVE n has
w_n*|chi(n)|>0. This is an unconditional improvement
for every fixed support window, not a uniform
fixed-character bound as A tends to infinity.

For log n in [A,2A), the factor is 1/2, recovering the
existing PhysicalHalfCorrelation theorem exactly.
For 2A/3<=log n<A it is sqrt(2)/2. As A/log n
grows, the factor tends to 1; these separate-lag
upper bounds still do not retain cross-prime
cancellation across different n.

Original-form lower consequence:
  Q_chi,A(f)>=
    P_chi(f)+[c_chi-M_path(chi,A)]*E(f)+Gamma_a(f).        (5.3)

For primitive q>1, P_chi=0. Since Gamma_a>=0, the
explicit finite arithmetic condition
   c_chi >= M_path(chi,A)
would imply all-test positivity at that one conductor
and one window. This condition is NOT proved for every
q,A; the asymptotic growth of prime mass makes the
termwise criterion insufficient at growing windows.

For zeta the exact TWO cross-pole terms may be negative.
Writing U=int f(t)cosh(t/2)dt and
V=int f(t)sinh(t/2)dt gives
 P_zeta(f)=2*(|U|²-|V|²).
Direct physical support Cauchy and
 int_[-A,A]sinh(t/2)²dt=sinh(A)-A imply
 P_zeta(f)>=-2*(sinh(A)-A)*E(f).
Therefore the exact zeta-source bound is
 Q_zeta,A(f)>=[c_zeta-M_path(1,A)
                 -2*(sinh(A)-A)]*E(f)+Gamma_0(f).
This is only a sufficient stage bound and not RH.
The negative pole eigenvalue is already source-treated
in WeilOddPoleSharpSupportCauchy; do not present it
as a new independent proof.

## 6. Falsification and remaining frontiers

Zero tests give zero on both sides. If r>=2A,
N=1, C_f(r)=0; equality of support cutoff gives zero
a.e., including the singleton boundary. For A<=r<2A
N=2, recovering the sharp factor 1/2. For r in
[2A/3,A), N=3 and sqrt(2)/2; unshifted naive
half-energy would be false for the sine-chain fixture.
Complex phases must remain arbitrary; replacing chi by
its real part before the correlation would reverse
the signed source for certain phases.
If chi(n)=0, the exact ledger cancels both mass and
shift-energy, so ramified terms cannot be counted as
negative arithmetic weight.

The one-lag sine-chain fixture need not maximize several
incommensurate logarithmic shifts simultaneously.
The all-test sign cannot follow by independently
maximizing every prime contribution and then asking
gamma to pay the resulting exponentially growing
mass. No fixed-window finite matrix, certificate
checker, zero strip, ordinate projection, spectral
analogy or near-zero quadrature supplies that
missing cross-prime cancellation.

First formal obligation: exact-pin elaboration of the
phase-twisted source equality, then genuinely formalize
the nilpotent truncated-shift/numerical-radius theorem
and return it to the native active prime inventory.
The H1 Sobolev identity from WeilH1SourceContinuity.md
also remains written rather than a kernel-checked
Lean declaration. First arithmetic obligation:
all-character, all-window, all-test lower sign
for the ORIGINAL pole-inclusive physical Weil form,
including the separate conductor-one zeta source.
No RH, primitive Dirichlet GRH or off-line-zero
finiteness is asserted.
