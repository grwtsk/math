# Complete same-prime-power joint Weil estimate: KMS Toeplitz source return

Local author: grwtsk contributors. Edition 1, 2026-11-12.
MSC2020: 11M26 (primary), 15A18, 47A12, 11M41.

Evidence: WRITTEN_ANALYTICAL_PROOF of the complete finite-prime power
cluster inequality, its sharp smooth equality source, its fixed-shell
quantitative saving and its return to the original physical Weil
arithmetic form. Accompanying WeilPrimePowerCluster.lean contains FOUR
source-proof candidate declarations for the complex three-site algebra;
the physical L2 disintegration, character gauge, p-adic prime-power
grouping, strict source cutoff and full arithmetic sign consumer are
WRITTEN, not new Lean declarations. Elaboration, complete dependency
build, fresh kernel replay, transitive axiom audit, certified numerical
whole-form evaluation and independent analytical review: NOT_RUN.
Originality: UNASSESSED. No RH, primitive GRH or universal sign claim.

## 1. Original arithmetic object and precise quantifiers

Fix A>0, q>=1, a primitive Dirichlet character chi modulo q and
f in C_c^infinity((-A,A);C), with zero extension to all R.
The original antilinear-first source correlation, native support,
and Lebesgue energy are

  C_f(r)=integral_R conjugate(f(x))*f(x+r) dx,
  E(f)=integral_R |f(x)|² dx.

The canonical finite activePrimePowers(A) comprises ALL integers
n>=2 under the strict cutoff n<exp(2A). Its primeWeight(n) is
vonMangoldt(n)/sqrt(n), not a prime-only weight. The original signed
response is, unchanged,

  S_chi,A(f)=2 sum_(n in activePrimePowers(A)) primeWeight(n)*
                     Re(conjugate(chi(n))*C_f(log n)).       (1.1)

Each n=p^k has vonMangoldt(p^k)=log p for prime p and k>=1.
Every active n not a prime power has weight zero.
At n=exp(2A), the correlation vanishes by the existing null-support
endpoint theorem; no numerical or rounded cutoff decision is made.

For each prime p, set
  r=log p>0,  t=p^(-1/2) in (0,1),
  N=ceil(2A/r)>=1.
Then kr<2A if and only if 1<=k<=N-1. Its ENTIRE prime-power
contribution to (1.1) is

  S_chi,p,A(f)
   =2 log p sum_(k=1)^(N-1)
       t^k Re(conjugate(chi(p)^k)*C_f(kr)).                (1.2)

For p dividing q, chi(p)=0 and chi(p)^k=0, so S_chi,p,A=0.
For p not dividing q, z=chi(p) has |z|=1, including complex phases.

## 2. Exact finite-chain identity for all powers of ONE prime

For almost every x in [0,r), define finite source fibers

  a_j(x)=f(-A+x+jr),  j=0,...,N-1.                     (2.1)

The length 2A is at most Nr and exceeds (N-1)r. All later
sites vanish almost everywhere, including when 2A=Nr:
a potential endpoint site is a null set. Disjoint interval
decomposition and genuine L2 integrability give

  E(f)=integral_0^r sum_(j=0)^(N-1)|a_j(x)|² dx,
  C_f(kr)=integral_0^r sum_(j=0)^(N-1-k)
                         conjugate(a_j(x))*a_(j+k)(x) dx
                  for 1<=k<N.                         (2.2)

Each mixed term is in L1 by Cauchy--Schwarz of translated
L2 sources. All sums are finite, so Fubini is valid.
No periodic identification or jumping zero extension is used.

For p not dividing q define b_j(x)=conjugate(z)^j*a_j(x).
Since |z|=1, its mass is unchanged, and the character
factor cancels EXACTLY at each power:

  conjugate(z)^k*conjugate(a_j)*a_(j+k)
            =conjugate(b_j)*b_(j+k).                     (2.3)

Let K_N(t) be the REAL Hermitian Toeplitz matrix
  K_N(t)_(ij)=t^|i-j|, 0<=i,j<N.
Then (1.2), (2.2), and (2.3) yield the exact source equality

  S_chi,p,A(f)
    =(log p)*integral_0^r b(x)^*(K_N(t)-I)b(x) dx.       (2.4)

The off-diagonal factor 2 and ALL powers k=1,...,N-1 are
present. The diagonal I is subtracted, not an invented
positive prime mass. Equation (2.4) does not replace the
actual Weil response; it EVALUATES one source-defined prime
cluster, and the sum of clusters returns exactly to (1.1).

By the finite-dimensional Hermitian spectral theorem,

  S_chi,p,A(f) <= (log p)*
                   (lambda_max(K_N(t))-1)*E(f).          (2.5)

This holds for every complex source f and every phase z;
no RH-dependent spectral assertion is used. N=1 gives K_1=I
and S_chi,p,A=0.

The Toeplitz matrix is the classical Kac--Murdock--Szego
matrix. It has a tridiagonal inverse for 0<t<1.
The polynomial-in-nilpotent-shift viewpoint is covered
by Badea--Cassier's constrained von Neumann inequalities;
the earlier Haagerup--de la Harpe 1992 theorem gives its
single-shift numerical radius. These are prior-art
analogues/suppliers, not proof of arithmetic sign.

## 3. Sharpness in the ORIGINAL smooth test class

For fixed p,A with N>=2, choose
  d=min(r,2A-(N-1)r)>0
and any nonzero smooth compact bump psi supported in (0,d).
For an eigenvector v of K_N(t) for lambda_max,
define
  f(u)=sum_(j=0)^(N-1) z^j*v_j*psi(u+A-jr).               (3.1)
The N translated supports are disjoint, strictly inside
(-A,A), and f is a canonical smooth compact complex test.
For this f, a_j(x)=z^j*v_j*psi(x) a.e. and the gauge
b_j(x)=v_j*psi(x). Thus

  E(f)=||psi||²_2*sum_j|v_j|²,
  S_chi,p,A(f)=(log p)*(lambda_max(K_N(t))-1)*E(f).

The bound (2.5) is sharp even on smooth tests for any
PRESCRIBED individual prime. These one-prime extremizers
do not in general maximize other prime clusters.

## 4. Exact three-site prime and square evaluation

In the shell
  2A/3 < log p < A,                                  (4.1)
one has 2 < 2A/log p < 3, N=3 and ONLY p,p² active
from that prime. Their gauge-normalized matrix is

  A_3(t)=K_3(t)-I =
   [ 0    t    t²
     t    0    t
     t²   t    0 ].

Its eigenvalues are
  -t²,
  (t²-t*sqrt(t²+8))/2,
  (t²+t*sqrt(t²+8))/2.

The largest one is
  lambda_3(t)=(t²+t*sqrt(t²+8))/2.                   (4.2)

Define beta(t)=(sqrt(t²+8)-t)/2>0, so
lambda_3=t*beta+t² and lambda_3*beta=2t.
For ALL complex a,b,c, direct norm expansion gives the
complete sharp sum-of-squares identity

 lambda_3*(|a|²+|b|²+|c|²)
 -2t*Re(conjugate(a)*b+conjugate(b)*c)
 -2t²*Re(conjugate(a)*c)
 =
 (lambda_3/2)*(|beta*a-b|²+|beta*c-b|²)
 +t²*|a-c|² >=0.                                  (4.3)

No real-vector restriction, eigenvector simplicity
assumption or cross-term omission is made.
Equality holds for (a,b,c)=(1,beta,1).
The SOURCE_BOUND finite-dimensional Lean candidates
in WeilPrimePowerCluster.lean are
PrimePowerCluster.threeSite_square_identity,
PrimePowerCluster.threeSite_response_le,
PrimePowerCluster.tripleTop_relations and
PrimePowerCluster.tripleResponse_le_top.
The entire L2 path integral (2.4) is not formally
discharged by those four finite algebra declarations.

## 5. Uniform strictly positive saving against separate lag maxima

The prior all-positive-lag inequality gives for p and p²,
in shell (4.1), the separate bound

 S_chi,p,A(f)
   <= log p*(sqrt(2)*t+t²)*E(f).                     (5.1)

For every prime p>=2, 0<t<=1/sqrt(2). The elementary
concavity estimate

 sqrt(8+t²)-2*sqrt(2)
   =t²/(sqrt(8+t²)+2*sqrt(2))
   <=t²/(4*sqrt(2))

therefore implies

 lambda_3(t)
 <=sqrt(2)*t+t²/2+t³/(8*sqrt(2))
 <=sqrt(2)*t+9*t²/16.                              (5.2)

Combining (2.5) and (5.2), obtain the genuine
SOURCE-EXACT unconditional inequality

 S_chi,p,A(f) <= log p*(sqrt(2/p)+9/(16p))*E(f),       (5.3)

with a savings of AT LEAST

 7*log p/(16p)*E(f)                                  (5.4)

compared with (5.1). For p dividing q all source
terms vanish; (5.3) still holds as an upper bound but
does not assert a strictly positive saving of a
nonzero source contribution. This saving is not
uniform over expanding A since the shell moves.

For every N, decomposing K_N(t)-I as
 sum_(k=1)^(N-1) t^k*(S_N^k+(S_N^*)^k)
and applying the sharp one-shift numerical-radius
bound to each k yields
lambda_max(K_N(t))-1
 <=2 sum_(k=1)^(N-1)
  t^k cos(pi/(ceil(N/k)+1)).
Because ceil(2A/(k*r))=ceil(N/k), this is EXACTLY
the formerly summed independent-lag majorant.
So the new primewise KMS bound is never worse.
For N=3 its strict quantitative gain is (5.4).
The general inequality is only a bound, not a
claim of a uniformly positive gap in every p or A.

## 6. All-character arithmetic return, including zeta

Define the finite aggregate M_cluster(chi,A) by
summing log p*(lambda_max(K_N(p^-1/2))-1) over
primes p<exp(2A) not dividing q, with
N=ceil(2A/log p). The prime grouping of (1.1)
and (2.5) gives

 S_chi,A(f) <= M_cluster(chi,A)*E(f).                (6.1)

The entire ORIGINAL primitive NONPRINCIPAL form has
 Q_chi,A(f)=c_chi*E(f)+Gamma_a(f)-S_chi,A(f),
so
 Q_chi,A(f)>=(c_chi-M_cluster(chi,A))*E(f)+Gamma_a(f).
The existing gamma integrability must be retained.
The finite aggregate is a sharpened sufficient
threshold, not a proof that c_chi>=M_cluster
for every q,A; such an inference would be false
as a uniform strategy for growing windows.

Conductor-one zeta remains a separate source:
 Q_zeta,A(f)=P_zeta(f)+c_zeta*E(f)
                 +Gamma_0(f)-S_1,A(f),
where BOTH signed pole orientations remain

 P_zeta(f)=M_+(f)*conjugate(M_-(f))
           +M_-(f)*conjugate(M_+(f)),
 M_±(f)=integral_R exp(±u/2)*f(u) du.
Thus (6.1) gives its exact lower return
 Q_zeta,A(f)>=P_zeta(f)
                 +(c_zeta-M_cluster(1,A))*E(f)
                 +Gamma_0(f).
No pole-neutral restriction or replacement by
|M_+|²+|M_-|² is used. A separate elementary
support Cauchy bound P_zeta(f)>=
-2*(sinh(A)-A)*E(f) can be appended if desired,
without changing the pole identity.

## 7. Falsification, dependencies, evidence

Zero tests vanish identically. N=1 means no active
power. N=2 recovers the one-lag cos(pi/3)=1/2
bound. N=3 includes BOTH complex p and p²
couplings. The endpoint kr=2A is null-support
and excluded by the strict inventory. For ramified
p, chi(p)=0 and every power cancels.
Conductor-one has both signed poles; real odd f
can make them negative.

The local maximizing eigenvector for one p need
not maximize another p': the collection of logs
is not jointly commensurate, and replacing the
whole prime sum by sum of independent single-p
extrema still loses cross-prime arithmetic
cancellation. N(p,A) grows with A, and the
individual KMS upper bound approaches the
unrestricted Poisson-symbol bound at fixed p.
Therefore (6.1) alone cannot prove all-window
positivity, RH, primitive Dirichlet GRH or finite
off-line zeros. No spectral operator constructed
from a positive substitute has been confused
with the completed L function.

Dated prior art:
- Kac, Murdock, Szego, classical symmetric
  Toeplitz matrices with entries t^|i-j|;
  contemporary equation/factorization
  Higham, Electron. J. Linear Algebra 40
  (2024), sec.8.2.
- U. Haagerup, P. de la Harpe,
  The numerical radius of a nilpotent operator
  on a Hilbert space, Proc. AMS 115 (1992)
  pp.371-379, Theorem 1 and Proposition 1,
  DOI 10.1090/S0002-9939-1992-1072339-6.
- C. Badea, G. Cassier, Constrained von
  Neumann Inequalities, Adv. Math. (2002),
  comparison for polynomial functions of
  nilpotent contractions.
- Connes--Consani--Moscovici, Zeta Spectral
  Triples, arXiv:2511.22755v1, (3.19)--(3.20),
  for the original signed prime, gamma and
  pole conventions.
No assertion of a literature-wide novelty search.

Native source names: LowSchur.activePrimePowers,
LowSchur.primeWeight; SourcePrimeCorrelation.correlation,
energy, correlation_eq_zero_of_cutoff;
CharacterWindow.twistedPrime;
TwistedPrimeEnergyReturn.twistedPrime_eq_shift_ledger,
primitiveArithmeticValue_eq_twisted_shift_ledger;
GammaPhysicalReturn for the two-pole zeta return.
No root import or pin change.

Verification: written derivation and exact symbolic
three-site algebra; no Lean elaboration or fresh
kernel replay was executed. First formal
obligation: prove the L2 fiber disintegration
and original chi(p)^k gauge in Lean, then
consume the finite matrix bound in the
native arithmetic prime inventory.
First arithmetic obligation: joint control
ACROSS distinct primes and the full positive
gamma versus signed prime/pole inequality
at every conductor and every window.
