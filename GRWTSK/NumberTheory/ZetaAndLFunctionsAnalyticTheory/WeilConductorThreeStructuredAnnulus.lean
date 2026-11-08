/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

Mathematical primary source: Connes--Consani--Moscovici,
"Zeta Spectral Triples", arXiv:2511.22755v1, (3.19)--(3.20).
Existing exact target: WeilConductorThreeComplementTail, plus
WeilConductorThreeBoundaryJets at grwtsk/math
6260801741228ab6dcee1a5f84b87395a5d961b5.
AI-assisted source drafting; independent human review NOT_RUN.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeBoundaryJets
import Mathlib.Tactic

/-!
# Signed Toeplitz--Hankel kernel and evaluable boundary-jet Gram

## Source and precise consumer

This is an exact structural refinement of the SAME conductor-three
finite-annulus operator `A_b` of WeilConductorThreeAnnulusSineEnclosure.
Its real even signed symbol is the literal `b(xi)=1_Dprime(xi)*
V(xi)*(A(xi)-P_arith(xi))*P(xi)^2`, supported in [-R,R],
R=3500000000. The real odd physical test has support [-3,3].
The source has all 93 original unramified prime-power coefficients
and the parity-one conductor-three gamma factor; none is replaced.

Let T=3, B=int_0^R |b(xi)| dxi <= 60R as in the WRITTEN source.
Put v_xi(t)=sin(xi*t) on L²(0,T) and

  A_b=(2/pi)*int_0^R b(xi)|v_xi><v_xi| dxi.

The exact scalar trigonometric identity

  cos(xi*(t-s))-cos(xi*(t+s))
    =2*sin(xi*t)*sin(xi*s)                                    (1)

turns A_b into the signed integral kernel

  K_b(t,s)=C_b(t-s)-C_b(t+s),
  C_b(z)=(1/pi)*int_0^R b(xi)*cos(xi*z)dxi.                   (2)

This is Toeplitz MINUS Hankel, with all signs retained. In particular
C_b is real, even, bounded by B/pi and continuous; K_b is real symmetric
and its integral operator is the same self-adjoint trace-class A_b.
Finite quadrature versions of (1)--(2) are formalized below for
ARBITRARY SIGNED weights, not just positive samples.

One computational implication: evaluating the signed original head
via a physical grid can exploit displacement kernels C_b(t-s) and
C_b(t+s), rather than storing a dense unrelated Gram observation.
A grid by itself is still not the whole-domain lower bound; all
quadrature, Gram and projection errors must be paid.

## Explicit Gram of the sixteen high-frequency boundary directions

Use the EXACT boundary vectors s_(N,k) from
WeilConductorThreeBoundaryJets, N=7000000000, 0<=k<16,

  s_(N,k) = sum_(n>N) (-1)^(n+1)*sqrt(2*T)/(pi*n)
                     *(T/(pi*n))^(2k) e_n.

Their Gram entries have an absolutely convergent expression

  <s_(N,k),s_(N,l)> =
    (2*T/pi²)*(T/pi)^(2*(k+l)) *
          S_(2*(k+l)+2)(N),                                  (3)

  S_q(N) = sum_(n>N) n^(-q), q>=2.

For any integer q>1, elementary monotone integration gives the
COMPLETE rational-power tail enclosure

  1/[(q-1)*(N+1)^(q-1)] <= S_q(N)
                     <= 1/[(q-1)*N^(q-1)].                   (4)

Therefore Gram entries have explicit enclosures after paying the
chosen pi approximation; one does not need to sum billions of
terms to observe the sixteen-by-sixteen jet Gram block. Their mutual
orthogonality to e_1,...,e_N is exact.

For finite coefficients a_k, if sum a_k s_(N,k)=0 then for every
integer n>N,

  sum_(k<16) a_k*(T/(pi*n))^(2k)=0.

The left side is a polynomial in n^(-2) with infinitely many distinct
roots; it is zero identically. Thus every a_k=0. The augmented
Gram is positive definite, though the vectors are not normalized.
This is a written algebraic argument, not a completed Lean theorem.

## Fast convergent boundary-source moments

For |xi|<=R and each 0<=k<16, define
  g_k(xi)=<s_(N,k),v_xi>.
Use the same strictly subcritical geometric series in the prior
module and exchange absolutely convergent sums:

  g_k(xi) = sin(xi*T)*(2*T/pi²)*(T/pi)^(2k)
             *sum_(j>=0) (xi*T/pi)^(2j)
                           *S_(2*(k+j)+2)(N).                (5)

For the truncation to 0<=j<J, its complete error obeys

  |err_(k,J)(xi)| <=
   (2*T/pi²)*(T/pi)^(2k)*S_(2k+2)(N)
       *rho^(2J)/(1-rho²),   rho=R*T/(pi*(N+1))<1/2.         (6)

The omitted sin(xi*T) factor has absolute value <=1. All
terms in (5) are nonnegative before multiplying by sin(xi*T).
Formula (6) is uniform on the ENTIRE annulus, including frequencies
at band endpoints. It is not a sign estimate for b.

In the mixed basis {e_1,...,e_N,s_(N,0),...,s_(N,15)},
the source matrix has the exact signed Bochner representation

  M_ij=(2/pi)*int_0^R b(xi)*g_i(xi)*g_j(xi) dxi,            (7)

where g_i=<basis_i,v_xi> and g_(N+k)=g_k from (5).
The Gram entries use (3), and source quadrature bounds must use
(6). The current research does NOT supply certified quadrature
of (7) nor the finite Loewner sign
    M+(6/25)G >= (1/200000)G.

These identities give a concrete computable shape to the consumer in
WeilConductorThreeBoundaryJets, not a passing arithmetic certificate.
Any finite approximate matrix without complete observation errors,
the Gram metric and the infinite residual is insufficient.

## Mathematical comparison and scope

The Toeplitz-minus-Hankel formula is the odd-reflection restriction
of an even Fourier multiplier: its *minus* Hankel sign is forced by
oddness, not a conjectured positivity. It neither means that b is
nonnegative pointwise nor identifies A_b with the full original
gamma-plus-prime Weil source outside the specified annulus. The
boundary Gram and moment expansions reduce computation but do not
establish the needed signed eigenvalue inequality. All cited
Fourier/Bochner exchanges and infinite series bounds are written
analytic proofs, not newly compiled Lean operator theorems.

The proof-script declarations below isolate the exact finite
trigonometric and signed-sum kernel laws. They require no positivity
of the weights. Independent analytical and Lean checking remain NOT_RUN.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeStructuredAnnulus

/-- Exact odd-reflection sign: the difference of Toeplitz and Hankel
cosine kernels is TWICE the sine rank-one kernel. -/
theorem cosine_difference_is_sine_product (x y : ℝ) :
    Real.cos (x - y) - Real.cos (x + y) =
      2 * Real.sin x * Real.sin y := by
  rw [Real.cos_sub, Real.cos_add]
  ring

/-- A finite signed quadrature of the source kernel retains exactly
the same Toeplitz-minus-Hankel identity. No positivity of `weight`
is assumed or needed. -/
theorem signed_toeplitz_hankel_kernel
    {ι : Type*} (s : Finset ι) (weight freq : ι → ℝ)
    (t u : ℝ) :
    (∑ i ∈ s, weight i *
        (Real.cos (freq i * (t - u)) -
         Real.cos (freq i * (t + u)))) =
      2 * (∑ i ∈ s, weight i *
        Real.sin (freq i * t) * Real.sin (freq i * u)) := by
  calc
    _ = ∑ i ∈ s, 2 * (weight i *
          Real.sin (freq i * t) * Real.sin (freq i * u)) := by
      apply Finset.sum_congr rfl
      intro i hi
      have hcos : Real.cos (freq i * (t - u)) -
          Real.cos (freq i * (t + u)) =
          2 * Real.sin (freq i * t) * Real.sin (freq i * u) := by
        rw [mul_sub, mul_add]
        exact cosine_difference_is_sine_product (freq i * t) (freq i * u)
      rw [hcos]
      ring
    _ = 2 * (∑ i ∈ s, weight i *
          Real.sin (freq i * t) * Real.sin (freq i * u)) := by
      rw [Finset.mul_sum]

/-- Scalar linearity at the exact signed level: the source matrix must
keep negative weights and does not become positive by quadrature. -/
theorem signed_rank_one_quadratic_identity
    {ι : Type*} (s : Finset ι) (weight : ι → ℝ)
    (value : ι → ℝ) :
    (∑ i ∈ s, weight i * value i ^ 2) =
      ∑ i ∈ s, weight i * (value i * value i) := by
  apply Finset.sum_congr rfl
  intro i hi
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeStructuredAnnulus
