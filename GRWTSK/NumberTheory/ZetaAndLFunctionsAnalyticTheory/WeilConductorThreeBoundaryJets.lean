/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

Mathematical source: Connes--Consani--Moscovici,
"Zeta Spectral Triples", arXiv:2511.22755v1, (3.19)--(3.20).
Existing source input: WeilConductorThreeComplementTail and
WeilConductorThreeAnnulusSineEnclosure at grwtsk/math
403254f825950fcdc743fd3cd1043580b7689979.
Only the finite geometric telescope and rational budget statements below
are Lean proof-script candidates. The Fourier/Bochner/operator results
are written mathematical derivations, NOT checked Lean theorems.
AI-assisted mathematical drafting; INDEPENDENT_HUMAN_REVIEW_NOT_RUN.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeAnnulusSineEnclosure
import Mathlib.Tactic

/-!
# Boundary-jet augmented finite head for the literal conductor-three annulus

## Actual source and consuming inequality

Keep the ACTUAL parity-one `modThreeQuadratic` source, the finite-annulus
multiplier `b(xi) = 1_Dprime(xi) * V(xi) * (A(xi)-P_arith(xi)) * P(xi)^2`,
the original real odd admissible physical test supported in [-3,3],
and the physical norm E=||f||²_(L²(dt)). No new Weil source is defined.

The previous exact budget reduction shows that the following unproved sign
on ALL original admissible tests would finish the j=2 conductor-three stage:

     J_b(f) >= -(6/25) * E(f).                                  (A)

The old finite sine reduction required N=10^26 and head margin 1/250.
The NEW full-complement estimate below is a stronger unconditional
analytic finite reduction: it needs at most N+16 = 7000000016 finite
head directions, and only margin a=1/200000. No head sign is asserted.

## 1. Fourier source on the real odd physical Hilbert space

Set T=3, R=3500000000, B=int_0^R |b(xi)| dxi.
The earlier source-derived estimate is B <= 60*R = 210000000000.
On u=f restricted to (0,T) put v_xi(t)=sin(xi*t) and

    A_b = (2/pi)*int_0^R b(xi) |v_xi><v_xi| dxi.

By parity, Plancherel, and zero extension,

    J_b(f)=2*<u,A_b*u>,     E(f)=2*||u||².

For real even b with the stated compact support and |b| integrable, the
rank-one Bochner integral defines a bounded self-adjoint trace-class A_b.
No pointwise lower bound on b is needed. Let

    e_n(t)=sqrt(2/T)*sin(n*pi*t/T), omega_n=n*pi/T.

These form an orthonormal BASIS of L²(0,T); no boundary condition on the
test is inferred. For n>=1, at xi different from omega_n,

    <e_n,v_xi> = (-1)^n sqrt(2/T)*omega_n*sin(xi*T)/
                        (xi²-omega_n²)
               = (-1)^(n+1)*sqrt(2*T)/(pi*n)*sin(xi*T)/
                        (1-(xi/omega_n)²).                     (1)

At a removable point use the integral formula. All tail indices below
satisfy omega_n>2R, so there are NO tail poles.

## 2. Boundary jets: explicit sixteen additional vectors

Fix N=7000000000, m=16, and define the tail boundary vectors

    s_(N,k) = sum_(n>N) [(-1)^(n+1)*sqrt(2*T)/(pi*n)*
                         omega_n^(-2*k)] * e_n,
                     0<=k<m.                                  (2)

They are well-defined in L², since n^(-4k-2) is summable.
Let H_(N,m) be the span of e_1,...,e_N and these m tail vectors.
Its dimension is AT MOST N+m, with no omitted source direction.

For |xi|<=R and n>N, x_n=(xi/omega_n)^2 satisfies 0<=x_n<1/4:
pi>3, T=3, n>N, and R=N/2. The finite geometric identity

    1/(1-x) = sum_(k=0..m-1) x^k + x^m/(1-x)

then gives the EXACT vector remainder

    Q_N v_xi - sin(xi*T)*sum_(k<m) xi^(2*k)*s_(N,k)
      = sum_(n>N) [(-1)^(n+1)*sqrt(2*T)/(pi*n)*
                   sin(xi*T)*x_n^m/(1-x_n)]*e_n.                (3)

Thus the ORTHOGONAL projection Q_(N,m) onto H_(N,m)^perp satisfies

    ||Q_(N,m) v_xi|| <= eps_(N,m)
     = sqrt(2*T/(pi²*N)) * rho^(2*m)/(1-rho²),                 (4)

where rho=R*T/(pi*(N+1))<1/2.
The proof uses Bessel/Parseval and sum_(n>N)1/n² <=1/N;
it neither assumes positivity of b nor modifies the source.

A deliberately coarse rational bound avoids transcendental decimal claims.
Because pi>3, N=7*10^9, T=3,

    sqrt(2*T/(pi²*N)) < 1/100000,
    eps_(N,16) < 4/(3*100000*2^32) < 1/(3*10^14).             (5)

The last strict rational inequality is one of the Lean candidates below.

## 3. Entire infinite complement and mixed block are paid

Denote by P=P_(N,m) the orthogonal projection onto the finite augmented
head and Q=1-P. Since ||v_xi||<=sqrt(T), (4) and the signed Bochner
integral give for the ACTUAL annulus operator

    ||Q*A_b*Q|| <= (2/pi)*B*eps²,
    ||Q*A_b*P|| <= (2/pi)*B*sqrt(T)*eps.                        (6)

With B<=210000000000, pi>3, sqrt(3)<2, and (5),

    h := ||Q*A_b*Q|| < 1/1000,
    bmix := ||Q*A_b*P|| < 1/1000.                             (7)

These include EVERY discarded Fourier sine direction, all cross terms,
and the signed annulus multiplier. No sampled or truncated spectrum is
promoted to the whole-domain sign.

## 4. Exact finite acceptance with a small positive margin

Suppose a correctly source-enclosed finite head matrix (in its ACTUAL
L² Gram metric) proves

  <u,(A_b+6/25*I)u> >= (1/200000)*||u||²
                for EVERY u in H_(N,16).                      (8)

For arbitrary u=u_head+u_high, set x=||u_head||, y=||u_high||.
The exact source and (7)--(8) yield

 <u,(A_b+6/25*I)u>
   >= (1/200000)*x² - 2*(1/1000)*x*y
                      +(6/25-1/1000)*y² >= 0.

The final inequality uses the STRICT rational determinant guard

 (1/1000)^2 < (1/200000)*(6/25-1/1000).

Consequently (8) would prove (A) on every original admissible odd
function. The pre-existing paid budget would then give
PrimitiveStageLower at j=2, not all cofinal stages or Dirichlet GRH.

The basis s_(N,k) is NOT assumed orthonormal. In an explicit coordinate
certificate, the head inequality (8) is `M+cG >= aG`, where G is the
actual positive Gram matrix of the e_n and s_(N,k). A Euclidean positive
matrix in an unverified frame is not a valid substitute. The s_(N,k)
are linearly independent by an infinite-root polynomial argument, but
that observation is not needed to obtain the dimension upper bound
and the orthogonal head projection.

## 5. Comparison and hostile boundaries

The improvement is a finite-rank boundary-jet resummation, not an
unconditional source sign. It replaces the old high tail O(N^(-1/2))
with O((R*T/N)^(2m)*N^(-1/2)), after retaining m exact endpoint vectors.
At the resonant frequencies omega_n for n<=N, the low sine modes already
contain the response; (3) is used only where n>N and
|xi|<=R<omega_(N+1). At a negative point of b, the Fourier density
cannot be a delta mass for a compact physical test. Neither observation
alone proves a full sign. An unrelated finite positive compression
cannot replace the complete paid Schur allowance.

The null-shift dual in WeilConductorThreeAnnulusDual uses different
data (exactly vanishing long-translation moments); it is not claimed
independent analytical verification of the same unproved lower bound.
The geometric expansion, ordinary sine basis and Schur complement are
standard mathematics; theorem-level novelty and full external prior
comparison have NOT been assessed.

## Verification boundary

The Fourier parity identity, trace-ideal integration, countable Bessel
estimate, all operator domains, actual source B<=60R and the
identification of the finite head with an original source-enclosed
quadratic matrix are written arguments requiring independent checking.
The Lean declarations below prove ONLY finite algebra and rational
constants, subject to their own NOT_RUN compilation status. No source
sign, successful full matrix enclosure, RH or Dirichlet GRH is asserted.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeBoundaryJets

/-- Exact finite geometric telescope. No positivity, annulus spectrum,
or approximation assumption is used. -/
theorem finite_geometric_identity (x : ℝ) (m : ℕ) :
    (1 - x) * (∑ k ∈ Finset.range m, x ^ k) + x ^ m = 1 := by
  induction m with
  | zero => simp
  | succ m ih =>
    rw [Finset.sum_range_succ, pow_succ]
    calc
      (1 - x) * ((∑ k ∈ Finset.range m, x ^ k) + x ^ m) +
          x ^ m * x =
        (1 - x) * (∑ k ∈ Finset.range m, x ^ k) + x ^ m := by ring
      _ = 1 := ih

/-- Coarse, entirely rational envelope for sixteen boundary-jet terms
once the original Fourier Bessel and pi bounds are separately proved. -/
theorem jet_remainder_rational :
    (4 / (3 * 100000 * 2 ^ (32 : ℕ)) : ℚ) <
       (1 / (3 * 10 ^ (14 : ℕ)) : ℚ) := by
  norm_num

/-- The full high-block price under the written eps and source-B bounds.
This proves the numeric comparison, not the analytic operator estimate. -/
theorem high_price_rational :
    (2 / 3 : ℚ) * 210000000000 *
       (1 / (3 * 10 ^ (14 : ℕ)) : ℚ) ^ 2 < 1 / 1000 := by
  norm_num

/-- Every mixed block is paid using the Cauchy--Schwarz/Bochner
estimate and sqrt(3)<2 at the written analytic scope. -/
theorem mixed_price_rational :
    (2 / 3 : ℚ) * 210000000000 * 2 *
       (1 / (3 * 10 ^ (14 : ℕ)) : ℚ) < 1 / 1000 := by
  norm_num

/-- Explicit positive Schur determinant with a 1/200000 head margin.
No positive source head or finite passing sign is assumed to exist. -/
theorem improved_determinant :
    (1 / 1000 : ℚ) ^ 2 <
      (1 / 200000) * (6 / 25 - 1 / 1000) := by
  norm_num

/-- Signed two-block scalar completion for the NEW augmented head.
All original infinite-dimensional source and Gram comparisons must be
supplied separately before applying this theorem. -/
theorem improved_scalar_schur (x y : ℝ) :
    0 ≤ (1 / 200000 : ℝ) * x ^ 2
        - 2 * (1 / 1000) * x * y
        + ((6 / 25) - (1 / 1000)) * y ^ 2 := by
  apply ConductorThreeAnnulusSine.scalar_schur_nonnegative
  · norm_num
  · norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeBoundaryJets
