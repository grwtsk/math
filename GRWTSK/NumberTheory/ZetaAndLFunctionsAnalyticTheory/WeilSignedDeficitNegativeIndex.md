# Exact signed Fourier deficit: finite negative index of the full Weil form

Local attribution: grwtsk contributors. Edition 1, 2026-11-12.
MSC2020: 11M26 (primary), 11M41, 46E35, 42A38.

EVIDENCE. Complete WRITTEN mathematical argument for the exact
full-source dimension bound, including all complex Dirichlet phases,
all von Mangoldt prime powers, true archimedean gamma, and both
conductor-one zeta pole orientations. The companion
WeilSignedDeficitNegativeIndex.lean contains THREE
SOURCE_PROOF_CANDIDATE declarations: the original source deficit,
its source-exact vanishing outside the prescribed cutoff, and a
genuine continuous-integral finite-family Bessel/trace inequality.
The Fourier/Plancherel and negative-subspace-to-integral transfers
in this note are WRITTEN, NOT Lean declarations.
Lean elaboration, complete dependency build, fresh kernel replay,
transitive axiom audit, certified whole-form numerical evaluation,
and independent analytical review NOT_RUN. Novelty UNASSESSED.
No proof of RH, primitive Dirichlet GRH, all-window Weil positivity,
or global finiteness of off-critical-line zeros is claimed.

## 1. Source and quantifiers (WSDI-A)

Fix A>0. Let chi be a primitive Dirichlet character of conductor
q>=1, with parity a=gammaParity chi. For q>1 chi is nonprincipal;
q=1 is the conductor-one Riemann zeta source and is treated
separately. Define
  b=a+1/2,  c_chi=gammaConstant(q,a),
  K_a(r)=exp(-b*r)/(1-exp(-2*r)), r>0,
  E(f)=integral_R |f(t)|²dt,
  C_f(r)=integral_R conjugate(f(t))*f(t+r)dt.
Every test f belongs to C_c^infinity(R;C) with support in [-A,A].
No off-line zero location, simplicity, or RH/GRH assumption.

The original finite activePrimePowers(A) consists of all
integers n>=2 with n<exp(2A); primeWeight(n) is the actual
Lambda(n)/sqrt(n). It includes ALL powers of all primes and
zero-weight non-prime-powers. Character values vanish at
ramified terms, and retain complex phases elsewhere.
The ORIGINAL signed prime response is
  S_chi,A(f)=2sum_(n in activePrimePowers(A))
       primeWeight(n)*Re(conjugate(chi(n))*C_f(log n)).
There is no absolute-value replacement in its definition.
The original gamma correction is
  Gamma_a(f)=integral_0^infinity K_a(r)
                       ||f(.+r)-f||²_2 dr.
For q>1 the native physical form is
  Q_chi,A(f)=c_chi E(f)+Gamma_a(f)-S_chi,A(f).
The original conductor-one zeta form is
  Q_zeta,A(f)=P_zeta(f)+c_1,0 E(f)+Gamma_0(f)-S_1,A(f),
  P_zeta(f)=M_+(f)*conjugate(M_-(f))
           +M_-(f)*conjugate(M_+(f)),
  M_±(f)=integral_R exp(±t/2)*f(t)dt.
The pole orientations are genuinely signed complex pairings,
NOT |M_+|²+|M_-|² or a pole-neutral restriction.

Use the exact angular-minus Fourier transform
  F_f(xi)=integral_R f(t)*exp(-i*xi*t)dt,
  E(f)=(1/(2pi))*integral_R |F_f(xi)|²dxi.
The source Fourier multiplier from WeilFullFrequencyTail is
  m_chi,A(xi)=c_chi+periodicMultiplier(a,xi)
    -2sum_(n in activePrimePowers(A))primeWeight(n)
       Re(conjugate(chi(n))*exp(i*xi*log n)).             (1)
For complex characters m(xi) is real but need not be even.
The WRITTEN physical source return is
  Q_chi,A(f)=(1/(2pi))*integral_R m_chi,A(xi)|F_f(xi)|²dxi
for q>1, with the separate P_zeta added for q=1.
This follows from genuine Plancherel, the exact complex
correlation identity and Tonelli of the compensated
nonnegative gamma multiplier. It does not rely on treating
a nonintegrable totalized series as a convergent integral.

## 2. Exact signed deficit and its integrability (WSDI-B)

Fix arbitrary eta>0 and set
  d_chi,A,eta(xi)=max(eta-m_chi,A(xi),0),
  tau_chi,A(eta)=(A/pi)*integral_R d_chi,A,eta(xi)dxi. (2)
The positive part is formed AFTER assembling the complete
signed symbol (1). Thus conductor, parity, character phases,
all powers, and gamma cancellation are retained in d.
This is NOT the scalar characterPrimeMass majorant.

Let
  M=characterPrimeMass(chi,A)
   =2sum_original primeWeight(n)*|chi(n)|>=0,
  T=b*exp(M+|c_chi|+eta).
The previous source-bound fullFrequencySymbol_ge_of_highCutoff
gives m_chi,A(xi)>=eta for |xi|>=T. Hence d vanishes
outside [-T,T]. Its continuity follows because the original
finite prime exponential sum is continuous and the gamma
multiplier is continuous by dominated convergence in
  2int_0^infinity K_a(r)*(1-cos(xi*r))dr:
on each bounded xi range the numerator is O(r²) near zero,
and K_a decays exponentially at infinity.
Thus d is a nonnegative CONTINUOUS, compactly supported,
genuinely integrable real function. No unknown-sign
outer integral is totalized.

The conservative explicit bound is
  0<=d(xi)<=eta+|c_chi|+M,
so
  0<=tau_chi,A(eta)
    <=(2A*T/pi)*(eta+|c_chi|+M)<infinity.             (3)
The more informative tau in (2) retains the complete
arithmetic signed cancellation and may be much smaller
than (3). No empirical positivity of tau is asserted.

## 3. Weighted Bessel trace, original supported tests (WSDI-C)

Let f_1,...,f_N be ANY orthonormal family in L²(R;C)
with each member supported a.e. in [-A,A]. The Fourier
functionals at a fixed real frequency xi are
  F_fj(xi)=<1_[-A,A](t)*exp(i*xi*t),f_j>_L²
with the native antilinear-first inner product.
The literal test vector in this pairing has L² norm² 2A.
Bessel's inequality, for EVERY real xi, gives
  sum_(j=1)^N |F_fj(xi)|²<=2A.                       (4)
No spectral approximation or RH hypothesis enters.

Multiply (4) by the NONNEGATIVE actual deficit d(xi),
integrate, and divide by 2pi. The genuine integral estimate is
  sum_(j=1)^N (1/(2pi))int_R
         d(xi)|F_fj(xi)|²dxi
       <=tau_chi,A(eta).                              (5)
Every individual integral is finite since d is bounded and
compactly supported and F_fj is in L².
This is the exact continuous-integral consumer of the finite
family weighted trace lemma in the adjacent Lean module.
Its source Bessel and Plancherel steps are WRITTEN, not
elaborated Lean theorems in this change.

## 4. Finite negative index for every primitive q>1 (WSDI-D)

Define ind_-(Q_chi,A) as the supremum of complex dimensions
of linear subspaces V of the ORIGINAL supported smooth test
space on which Q_chi,A(f)<0 for every nonzero f in V.
This is the full complex test class, not a real/even/odd
restriction, not a fixed Galerkin grid, and not the zero
ordinate projection.

For every supported f, the exact Fourier identity gives
  eta*E(f)-Q_chi,A(f)
  =(1/(2pi))int_R (eta-m_chi,A(xi))*|F_f(xi)|²dxi
  <=(1/(2pi))int_R d_chi,A,eta(xi)|F_f(xi)|²dxi.   (6)
If Q_chi,A(f)<=0, the latter is >=eta*E(f).
For any N-dimensional negative subspace choose an orthonormal
basis f_1,...,f_N by complex Gram-Schmidt, which preserves
smoothness and compact support. Each basis vector satisfies
E(f_j)=1, Q(f_j)<0. Sum (6) over j and use (5):
  N*eta <=tau_chi,A(eta).
Therefore
  ind_-(Q_chi,A)<=tau_chi,A(eta)/eta<infinity.        (7)
No completeness or compact-resolvent theorem is needed;
the same argument applies to every finite-dimensional
negative subspace, excluding an infinite negative index.

Also apply Bessel with one vector (or direct pointwise
|F_f(xi)|²<=2A*E(f)) to (6), for ANY smooth source f:
  Q_chi,A(f)>=[eta-tau_chi,A(eta)]*E(f).              (8)
Thus tau_chi,A(eta)<=eta is a sufficient condition
for fixed-character, fixed-window all-test nonnegativity,
including null directions. The inequality tau<=eta is
NOT established for all q,A; no RH/GRH conclusion follows.

Combining (3) and (7) gives the entirely explicit, though
coarse, universal fixed-window negative-index bound
  ind_- <= [2A*b*exp(M+|c|+eta)/(pi*eta)]*
                         (eta+|c|+M).                 (9)
It keeps all q,A,eta dependencies visible. Fixed A
finite index does NOT imply global finiteness of off-line
zeros, because neither A nor character is uniformly bounded.

## 5. Exactly one negative zeta pole direction (WSDI-E)

For conductor-one zeta, let
  U(f)=int_[-A,A] cosh(t/2)*f(t)dt,
  V(f)=int_[-A,A] sinh(t/2)*f(t)dt.
Then M_+=U+V, M_-=U-V, and pure complex algebra gives
  P_zeta(f)=2|U(f)|²-2|V(f)|².                    (10)
This is an exact return to both signed original pole
orientations. It is not a positive square decomposition:
the V direction enters with negative sign.

Let W be any N-dimensional negative-definite subspace of
the original zeta smooth supported tests. Its intersection
W_0=W∩ker V has dimension >=N-1, since V is one complex
linear functional. On W_0, P_zeta=2|U|²>=0; therefore the
nonpole original zeta-frequency integral is strictly negative
on every nonzero W_0 vector, because
  Q_nonpole=Q_zeta-P_zeta<0.
Apply (7) to the actual q=1, a=0 signed Fourier symbol,
not by invoking a primitive nonprincipal character theorem.
It follows that
  ind_-(Q_zeta,A)<=1+tau_1,A(eta)/eta.               (11)

There is a second trace budget retaining negative pole
coupling for arbitrary vectors. The squared norm of its
ACTUAL supported negative-pole vector is
  ||1_[-A,A]*sinh(t/2)||²
    =int_[-A,A](cosh(t)-1)/2 dt
    =sinh(A)-A>=0.
For an orthonormal family f_j, Bessel on this real
vector gives sum_j|V(f_j)|²<=sinh(A)-A.
For every zeta negative direction, (6) with (10) yields
  eta*E(f)<=
      (1/(2pi))int d_1,A,eta(xi)|F_f(xi)|²dxi
      +2|V(f)|².
Summing over an orthonormal negative family gives
  ind_-(Q_zeta,A)
    <=[tau_1,A(eta)+2(sinh(A)-A)]/eta.              (12)
The BEST of (11) and (12) may be used. Neither estimate
asserts the zeta form's negative index actually equals
one or any other number.

For every individual smooth supported test, Cauchy on V
further gives the original-form lower floor
  Q_zeta,A(f)>=[eta-tau_1,A(eta)
                    -2(sinh(A)-A)]*E(f).              (13)
If the bracket is >=0 for some explicit A,eta,
all-test positivity follows at THAT window. No
universal parameter choice is claimed.

## 6. Falsification and exact limitations

- The original Q can have null directions; (7) bounds
  STRICTLY negative subspaces, and (8) allows equality.
- Complex chi makes m(xi) asymmetric under xi->-xi.
  Never project the signed sum onto ordinates or average
  phases before applying the actual deficit.
- All n in activePrimePowers are preserved; zero character
  values and non-prime powers contribute zero.
- Zeta pole moments are actual conjugated products with
  both orientations. Real odd f can make P_zeta negative.
- The one-dimensional negative pole allowance does not
  assume a zero-free strip, kernel simplification, or
  eigenvalue simplicity.
- Source support is essential to the factor 2A in Bessel:
  replacing it by a periodic or weighted carrier alters (4).
- The finite family has arbitrary complex coefficients
  and all cross terms. Gram-Schmidt occurs ONLY on the
  genuine negative test subspace, not on unverified
  numerical eigenvectors.
- eta, the full frequency deficit, and T all depend on
  q and A; neither the index bound nor a fixed-window
  all-test criterion transfers to all windows without
  further proof.
- A finite rank Gram check, certified interval evaluator,
  or soundness-only theorem is not universal sign existence.
  No high-frequency positivity statement discharges the
  remaining bounded-frequency arithmetic negativity.

## 7. Comparison with primary literature and source dependency

Bombieri, "Remarks on Weil's quadratic functional in the theory
of prime numbers, I", Rendiconti Lincei 11 (2000), pp.183--233,
notably the introduction pp.183--185 and the variational/negative
eigenvalue discussion later. Bombieri already proves minimum
attainment properties and studies negative eigenvalues in fixed
support spaces. The present explicit positive-deficit Bessel
trace estimate is presented as an elementary source-local
quantitative consequence, NOT as a new negative-index
principle or proof of absence of negative eigenvalues.
The supplied edition was examined, including scanned p.184.
Further comparison: Connes--Consani--Moscovici, Zeta Spectral
Triples, arXiv:2511.22755v1, (3.19)--(3.20), and
Suzuki, Weil's quadratic form via the screw function,
arXiv:2606.09096v3. No exhaustive novelty search or
independent mathematical review was performed.

Source consumers:
- GRWTSK.NumberTheory.WeilQuadraticForm.FullFrequencyTail.
  fullFrequencySymbol and fullFrequencySymbol_ge_of_highCutoff
  (SOURCE_PROOF_CANDIDATES, not reverified);
- LowSchur.activePrimePowers and primeWeight;
- CharacterWindow.twistedPrime;
- SourcePrimeCorrelation.correlation and energy;
- GammaData.gammaConstant and parityKernel;
- GammaPhysicalReturn primitive/zeta source identities;
- SignedDeficitNegativeIndex.frequencyDeficit,
  frequencyDeficit_eq_zero_of_highCutoff, and
  finite_family_weighted_trace_bound in the new Lean
  SOURCE_PROOF_CANDIDATE.

The new Lean finite-family theorem proves the integral
summation/trace algebra from explicit nonnegative weight,
integrability and pointwise Bessel inputs. The main
Plancherel and source-multiplier identification, Bessel
from actual supported Fourier vectors, and zeta codim-one
kernel return remain WRITTEN: no assumption is silently
declared proved in Lean.

Inspected grwtsk/math main
83f3cdac0bb22ad41c745710d29cf79a1f1ec4de.
Lean leanprover/lean4:v4.34.1;
mathlib d13f23b723b8a846827a245b89c10fc7d3f11612;
root imports and dependencies unchanged.

First FORMAL obligation: build the exact current import
closure at those pins; discharge genuine whole-line
Fourier/Plancherel and Bessel source statements in Lean,
then source-identify the two signed zeta poles and
negative-index theorem without importing RH.
First ARITHMETIC obligation: for every q primitive, A
and every smooth complex f, prove the original all-test
nonnegative signed Weil form. An explicit bound on the
NUMBER of possible negative directions is not a proof
that the number is zero. No RH or GRH proof is claimed.
