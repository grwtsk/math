/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Source: grwtsk/math@6ca46642074b551f160985d128ec7a5bacccad86.
Original arithmetic convention: Connes--Consani--Moscovici,
"Zeta Spectral Triples", arXiv:2511.22755v1 (3.19)--(3.20).
Source-specific annulus and errors: WeilConductorThreeComplementTail.
Primary analytic argument and constants are WRITTEN; their continuum
Fourier, Bochner and spectral statements have NOT been elaborated in Lean.
Finite scalar Schur and rational inequalities below are Lean candidates.
Independent human review NOT_RUN; LEAN_COMPILATION_NOT_RUN;
FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeAnnulusDual
import Mathlib.Tactic

/-!
# Full odd-annulus sign from an explicitly paid finite sine head

This is a second, independent CONSUMER for the missing conductor-three
annulus sign. It retains exactly the signed multiplier
  b(xi) = 1_Dprime(xi) * V(xi) * (A(xi)-P_arith(xi)) * P(xi)^2,
not a replacement Euler source, and retains the physical odd norm.
The original `modThreeQuadratic`, conductor and gamma parity are unchanged.
No passing head matrix is supplied; this is a finite ACCEPTANCE theorem at
written analytic scope, not a proof of the stage sign or Dirichlet GRH.

Statements below about the missing head describe this module's original
403254f8 source scope. A subsequent independently assembled packet proof
in WeilConductorThreeFiniteAnnulus is audited at WRITTEN COMPUTER-ASSISTED
scope; EndpointTail section 4A gives its bounded-operator density return
to this head. No fresh kernel proof of that analytic return is claimed.

## 1. Exact restriction to the physical odd Hilbert carrier

Let T=3, R=3500000000. The actual b is a REAL EVEN L1 function supported in
[-R,R]. Set B = integral_0^R |b(xi)| dxi. The original note gives
|A(xi)|<23 for |xi|<=R (monotone digamma, low-range bound and Binet).
The literal 93-prime-power HALF-mass <181/5 only gives
|P_arith(xi)|<362/5, because the original prime symbol includes a factor
of two. It does not justify the earlier pointwise bound <181/5.
Instead the independent complete cosine-moment argument in
WeilConductorThreePrimeMoment proves integral_0^R |P_arith|<7R:
all 93 upward square prices sum to 19675/1000<20, and the exact
log-frequency separation pays every cross term. The multipliers
1_Dprime, V and P² lie in [0,1], whence the INTEGRATED bound is

       B < 30*R < 60*R = 210000000000.                        (1)

Thus the conservative B<=60R used below is retained, without the
unsupported pointwise inference. The continuum moment and gamma
arguments are written proofs; only the finite inventory and scalar
guards have their separately recorded Lean evidence. The Fourier and
operator comparison below has not been rechecked in Lean.

For a complex odd f supported in [-T,T], put u=f restricted to (0,T).
Then E(f)=2||u||² and

  F_f(xi)=-2*i*integral_0^T u(t)*sin(xi*t) dt.

By evenness of b and Fubini,

  J_b(f) = integral_R b(xi)|F_f(xi)|² dxi/(2*pi)
         = 2 * <u, A_b u>,

  A_b=(2/pi)*integral_0^R b(xi) |v_xi><v_xi| dxi,
  v_xi(t)=sin(xi*t), t in (0,T).                             (2)

The integral is Bochner in the trace ideal: the norm of the rank-one
integrand is |b(xi)|*||v_xi||² and ||v_xi||²<=T. Therefore A_b is a
bounded self-adjoint TRACE-CLASS operator with

                    ||A_b||_trace <= (2*T/pi)*B.               (3)

This is a genuine source/metric return: no even sector, physical pole,
or artificial sine boundary condition has been substituted. The sine
basis below is complete in L2(0,T), even for functions not vanishing
at the boundary; it is an observation basis, NOT a domain restriction.

## 2. Exact sine analysis and an entire-complement bound

Let omega_n=pi*n/T and e_n(t)=sqrt(2/T)*sin(omega_n*t), n>=1.
The literal overlap is

  <e_n,v_xi> = sqrt(2/T)*(-1)^n*omega_n*sin(xi*T)/
                                    (xi²-omega_n²),           (4)

with the removable values at xi=omega_n given by sqrt(2/T)*T/2.
This follows from 2sin(a)sin(b)=cos(a-b)-cos(a+b) and exact integration;
it is not a sampled numerical formula.

Let P_N project onto e_1,...,e_N and Q_N=I-P_N. If
omega_(N+1)>=2R, then for every 0<=xi<=R and n>N,

  |<e_n,v_xi>|² <= (32*T/(9*pi²))*n^(-2).

Because sum_(n>N) n^(-2)<=1/N, Parseval gives

  ||Q_N v_xi||² <= 32*T/(9*pi²*N) =: D_N².                   (5)

The signed Bochner integral and ||v_xi||<=sqrt(T) now give the
COMPLETE infinite high block and entire mixed-head bounds

  ||Q_N A_b Q_N|| <= (2/pi)*B*D_N²
                  = 64*T*B/(9*pi³*N) =: h_N,                (6)

  ||Q_N A_b P_N|| <= (2/pi)*B*sqrt(T)*D_N
                  = 8*sqrt(2)*T*B/(3*pi²*sqrt(N)) =: b_N.  (7)

No intermediate row or exterior mode is omitted. These inequalities
require no assumed sign of b and are valid on the whole L2 odd carrier.

The finite matrix for the retained head is exactly

  M_mn = (2/pi)*integral_0^R b(xi)
                    <e_m,v_xi>*<e_n,v_xi> dxi, m,n<=N.       (8)

It remains a SIGNED matrix. A finite quadrature must enclose every
entry of (8) with its source, interval and rounding error before
any acceptance may be claimed.

## 3. Complete Schur consumer: a finite sign with a paid tail

Write c=6/25. Suppose c>h_N and the REAL finite head satisfies

  M_N+c*I >= a*I, a>=0,       a*(c-h_N)>=b_N².              (9)

For arbitrary u=u_head+u_high, with x=||u_head||, y=||u_high||,
(6)--(9) and the Hermitian mixed-term estimate imply

  <u,(A_b+c*I)u> >= a*x² - 2*b_N*x*y + (c-h_N)*y² >=0.

The last inequality is the exact scalar square completion implemented
below. By (2), this proves the missing relaxed annulus bound for EVERY
original compact odd test, provided the source b and (9) are genuinely
certified. The conclusion then consumes the paid rational budget of
WeilConductorThreeAnnulusDual to give the original conductor-three j=2
stage. The remaining cofinal zeta/character sectors are independent.

## 4. An explicit (very large) rational finite acceptance threshold

One legitimate, conservative dimension is N=10^26, far beyond 2RT/pi.
Use R=3500000000, T=3, B<=60R, pi>3 and sqrt(2)<3/2.
Equations (6)--(7) then imply

  h_N < 7/4218750000000000 < 1/1000,
  b_N < 7/250.

The following RATIONAL finite sign would therefore be sufficient:

         M_(10^26) + (6/25) I >= (1/250) I.                 (10)

Indeed (1/250)*(6/25-1/1000) = 239/250000 >
(7/250)^2=49/62500. The `explicit_rational_determinant` theorem
and scalar Schur lemma below certify that algebra.

The dimension is intentionally enormous and not advertised as a feasible
numerical computation. Neither (10) nor any improved head sign is known.
A whole-complement endpoint-jet lifting argument is now provided in
WeilConductorThreeEndpointTail. It proves the smaller observation-space
tail for N=7000000000,m=14, while still requiring its actual signed head.
A much smaller practical bound would need genuinely directional
source-specific residual estimates or the null-shift dual of the
previous module. A positive sampled compression is not (10).

Hostile boundary: if b has a narrow negative trough, a pointwise
negative b(xi_0) does NOT imply a negative operator Rayleigh quotient,
because the physical Fourier transform is support-limited. Conversely,
a positive matrix on only a few sine modes cannot control the
unobserved high block; (6)--(9) explicitly charge that missing part.

The calculation is an application of standard Fourier sine expansion,
trace-class rank-one integration and Schur completion, not a claim of
theorem-level novelty. Source equivalence, Fourier/trace ideal
elaboration, entry certification and the ultimate stage sign are
separate open tasks.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeAnnulusSine

/-- Elementary two-block Schur square completion. The high block and
mixed constants must first be obtained for the ACTUAL annulus operator. -/
theorem scalar_schur_nonnegative
    (a b c x y : ℝ) (hc : 0 < c) (hdet : b ^ 2 ≤ a * c) :
    0 ≤ a * x ^ 2 - 2 * b * x * y + c * y ^ 2 := by
  have hsq : 0 ≤ (c * y - b * x) ^ 2 := sq_nonneg _
  have hrest : 0 ≤ (a * c - b ^ 2) * x ^ 2 :=
    mul_nonneg (sub_nonneg.mpr hdet) (sq_nonneg _)
  have hid :
      c * (a * x ^ 2 - 2 * b * x * y + c * y ^ 2) =
        (c * y - b * x) ^ 2 + (a * c - b ^ 2) * x ^ 2 := by
    ring
  have hproduct : 0 ≤ c * (a * x ^ 2 - 2 * b * x * y + c * y ^ 2) := by
    rw [hid]
    linarith
  by_contra hn
  have hneg : a * x ^ 2 - 2 * b * x * y + c * y ^ 2 < 0 := lt_of_not_ge hn
  have hnegprod :
      c * (a * x ^ 2 - 2 * b * x * y + c * y ^ 2) < 0 :=
    mul_neg_of_pos_of_neg hc hneg
  linarith

/-- Exact rational guard for the conservative, source-specific
N=10^26 head acceptance threshold. -/
theorem explicit_rational_determinant :
    (7 / 250 : ℚ) ^ 2 <
      (1 / 250) * ((6 / 25) - (1 / 1000)) := by
  norm_num

/-- The same guard over real scalars. This does not assert that a
source-observed head matrix has the displayed lower bound. -/
theorem conservative_scalar_head_high (x y : ℝ) :
    0 ≤ (1 / 250 : ℝ) * x ^ 2 -
      2 * (7 / 250) * x * y +
      ((6 / 25) - (1 / 1000)) * y ^ 2 := by
  apply scalar_schur_nonnegative
  · norm_num
  · norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeAnnulusSine
