/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

Actual source: Connes--Consani--Moscovici, "Zeta Spectral Triples",
arXiv:2511.22755v1, (3.19)--(3.20).
Existing declarations: PrimeOrbitWeightedWeilBridge, ConductorThreeComplementTail,
ConductorThreePrimeMoment, ConductorThreeFiniteAnnulus, and
ConductorThreeAnnulusSineEnclosure. Source inspected on grwtsk/math main
89fc0fade2c9c3b8a5d49d0aa217ab9443a98adc.
AI-assisted formal proof-script drafting; independent review NOT_RUN.
Lean compilation, fresh kernel and transitive axiom audits NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeFiniteAnnulus
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimeOrbitWeightedWeilBridge
import Mathlib.Tactic

/-!
# Conductor-three odd magnetic edges and two genuine finite Loewner returns

The source is the EXISTING chi3 character (0,1,-1), gamma parity one,
physical Hilbert norm dt, and all 93 unramified prime powers up to 403.
The target is the original literal `criticalAnnulus` and native
`finiteAnnulusValue`, without changing its Fourier convention, high
filter, three deleted bands, or quantifier over compact odd tests.

## 1. Odd edges, rather than an invented positive Weil operator

For beta=chi3(n) in {-1,1} and real half-line coordinates x,y,
the real paired edge `pairedEdge beta x y` equals
  x²+y²-2 beta x*y = (x-beta*y)².
Odd extension across zero changes the second endpoint to -y:
  pairedEdge beta x (-y) = x²+y²+2 beta x*y = (x+beta*y)².
Both energies are positive. The CROSS-ORIGIN sign is therefore the
OPPOSITE of the same-side sign. Keeping just positive edges and
discarding their diagonal is not source preserving: for every prime
power, the signed original source is the difference between the
endpoint diagonal mass and the magnetic edge energy. This does not
establish the missing global spectral half-gap.

For f real odd and supported on [-T,T], with u=f|_(0,T), the original
correlation for 0<r<2T is exactly

 C_f(r)=2*int_0^max(T-r,0) u(x)u(x+r)dx
      -int_max(0,r-T)^min(r,T) u(x)u(r-x)dx.                 (1)

The first integral is the SAME-SIDE edge; the second is the reflected
CROSS-ORIGIN edge with its negative sign. It is obtained by splitting
the source integral into negative-negative, negative-positive, and
positive-positive intervals, then changing variables. The original
prime term is 2*sum_{n=p^e<=403} (log p)/sqrt(n)*chi3(n) C_f(log n).
Equation (1) is a written whole-line Lebesgue identity, not a newly
claimed Lean integration proof. Zero-extension killing at the
boundary stays in the positive squared-edge representation.

The finite algebra below uses the repository's ACTUAL `pairedEdge`
definition, not a replacement positivity predicate.

## 2. A NEW actual low-head Loewner bound, independent of packet signs

On the odd physical H=L²(0,3), let
  v_xi(t)=sin(xi*t),
  A_b=(2/pi)*int_0^R b(xi)|v_xi><v_xi| dxi,
  b=1_criticalAnnulus * sourceMultiplier * spectralFilter²,
  R=3500000000.
The previous exact odd Fourier return is J_b(f)=2<u,A_b u>,
E(f)=2||u||².

The source gives |A_gamma(xi)|<23 on the annulus and the COMPLETE
prime half-mass sum w_n<181/5, with the factor TWO in primeSymbol.
Thus |P_arith(xi)|<362/5, and |b(xi)|<23+362/5<96.
The 93-atom half-mass was also independently checked with rational
atanh logarithm bounds and integer lower square roots; the exact
algorithm used 14 terms after binary range reduction and 10^9
square-root scale. These source enclosures are finite arithmetic
inputs at the stated evidence scope, not an unproved spectral sign.

The exact sine overlap, for omega_n=pi*n/3 and
e_n(t)=sqrt(2/3)*sin(omega_n*t), is
  <e_n,v_xi>=sqrt(2/3)*(-1)^n*omega_n*sin(3*xi)/
                                            (xi²-omega_n²).

The ORIGINAL annulus has b=0 when |xi|<=10000. For 1<=n<=3000,
pi<22/7 gives omega_n <(22/21)n <=22000/7=(11/35)*10000.
In particular 1-(omega_n/xi)²>9/10 throughout |xi|>=10000.
Hence (by |sin|<=1) for M=3000,

 ||P_M A_b P_M|| <= (2/3)*96*(2/3)*(22/21)^2*(10/9)^2
                  *[sum_{n=1}^M n²]/[3*(10000)^3]
                  = 4358178242 / 25116328125 < 71/400.       (2)

The inequality is the signed Bochner/trace-ideal bound
  ||P_M A_b P_M|| <=(2/pi)*int |b|*||P_M v_xi||²;
the complete high-frequency integration uses
  int_(10000)^infinity xi^(-4) dxi=1/(3*10000^3).
No positive b or numeric finite-head eigenvectors are assumed.
The whole source uses the exact factor 2 in the prime symbol.

Therefore the ACTUAL 3000-by-3000 principal odd sine block satisfies

  P_3000 (A_b + 6/25 I) P_3000 >= (1/16) P_3000.            (3)

This is a mathematically proved physical-source low-block inequality
conditional only on the stated gamma, prime-inventory, and Fourier
inputs, NOT a sign for the whole 7-billion-plus-jet head. In
particular the mixed block and the remaining 3,000..7,000,000,016
coordinates cannot be discarded. The original full-family packet
certificate in ConductorThreeFiniteAnnulus is a DIFFERENT physical
Legendre packet construction with its own written computer-assisted
assurance and un-replayed multi-million-packet data.

## 3. Independent replay of one ACTUAL stored 48x48 packet

The existing static source-backed manifest is
 documentation/mathematics/_verification/targets/
 chi3-radius-three-physical-packet-20261107.json,
 blob 7a65994a3868cc5c456ebf127ca0765547e6f0ed.
At center 300081451003/1000, radius 5, the stored integer midpoint
matrix M has denominator 2^96. Put
 B_ij=10^11*M_ij + (i=j ? 2^96 : 0).
A NEW exact BigInt Bareiss replay of this ACTUAL 48x48 matrix found:
- all 48 principal pivots strictly positive;
- 0 non-exact integer divisions;
- all 48 pivots identical to the archived integers;
- exact symmetry of the 48x48 stored matrix.

Thus the stored midpoint matrix satisfies the ACTUAL finite Loewner
inequality M/2^96 >= -10^-11 I, with a legitimate Euclidean Gram
because the packet's complete Legendre physical basis is orthonormal.
The manifest's exact rational entrywise bound e has e<10^-12, so the
TRUE packet matrix H satisfies

  H >= -(10^-11+48e) I > -(1/5000000000) I.                  (4)

This independent replay checks the static INTEGER Loewner arithmetic,
not the 96-bit Gauss/source-enclosure construction that supplies e,
not every 5,848,049 reported packet, and not Lean/kernel acceptance.
The original reported whole-family positive packet sign and completed
radius-three stage remain at WRITTEN COMPUTER-ASSISTED scope until the
full retained data are replayed and independently reviewed.

## 4. Correct odd restriction and phase-sensitive mirrored heads

The physical packet basis is complete on the full complex interval.
The computed head is a full-carrier Loewner inequality and can
therefore be restricted to ANY subspace, including odd test functions.
However, after center modulation g(t)=exp(-i*c*t)f(t), an odd f
becomes TWISTED odd:
  g(-t)=-exp(2*i*c*t)*g(t).
Therefore simply keeping odd Legendre indices after modulation
WOULD NOT be source faithful. One must restrict the full packet
operator through the actual modulated embedding, or keep the stronger
full packet inequality (the existing packet proof does the latter).

Under source-frequency reflection xi -> -xi the real spherical-Bessel
head coefficients acquire D_nn=(-1)^n. Hence the mirrored packet
matrix is D H D. Such a diagonal sign conjugation preserves every
Loewner floor. The general finite algebraic transport is formalized
below, retaining the physical Gram metric; neither mirrored copies
nor an odd subspace require independent numerical signs once a
FULL-carrier head is proved.

## Scope

This module adds exact signed odd-edge and finite Loewner transport
algebra plus (2)--(4) at their explicitly distinguished analytic,
independent exact-computation, and conditional source-interval levels.
It does NOT claim the entire augmented-head Loewner inequality,
replay the 5.8-million packet run, prove RH/Dirichlet-GRH, or upgrade
the earlier full-family analytical verification statuses. Nearest
methodological prior art is ordinary sine Fourier truncation,
Toeplitz/Hankel odd reflection, signed magnetic-graph squares,
Sylvester/Bareiss positivity, and Loewner congruence: no theorem-level
novelty or complete independent paper comparison is claimed.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeOddEdgeLoewner

open GRWTSK.NumberTheory.WeilQuadraticForm.PrimeOrbitWeightedWeilBridge

theorem same_side_edge (beta x y : ℝ) :
    pairedEdge beta x y = x^2 + y^2 - 2*beta*x*y := by
  simp [pairedEdge]
  ring

theorem cross_origin_odd_edge (beta x y : ℝ) :
    pairedEdge beta x (-y) = x^2 + y^2 + 2*beta*x*y := by
  simp [pairedEdge]
  ring

/-- The true reflected endpoint changes the sign of the cross term.
The character phase remains the same chi3(n), not its absolute value. -/
theorem cross_origin_edge_nonneg (beta x y : ℝ)
    (hlo : -1 <= beta) (hhi : beta <= 1) :
    0 <= pairedEdge beta x (-y) := by
  exact pairedEdge_nonneg hlo hhi x (-y)

/-- A real unitary character phase produces a perfect square. -/
theorem cross_edge_square (beta x y : ℝ) (hbeta : beta^2=1) :
    pairedEdge beta x (-y) = (x+beta*y)^2 := by
  rw [cross_origin_odd_edge]
  calc
    x^2 + y^2 + 2*beta*x*y =
        x^2 + beta^2*y^2 + 2*beta*x*y := by rw [hbeta]
    _ = (x+beta*y)^2 := by ring

/-- Same-side and cross-origin source contributions are DIFFERENT.
Each signed arithmetic contribution is onsite mass minus the appropriate
nonnegative odd magnetic-edge square. -/
theorem signed_cross_reconstruction (beta w x y : ℝ)
    (hbeta : beta^2=1) :
    w*(x^2+y^2)-w*(x+beta*y)^2 = -2*w*beta*x*y := by
  calc
    w*(x^2+y^2)-w*(x+beta*y)^2 =
      w*(x^2+y^2-(x+beta*y)^2) := by ring
    _ = -2*w*beta*x*y := by
      have hsq : (x+beta*y)^2 = x^2+beta^2*y^2+2*beta*x*y := by ring
      rw [hsq,hbeta]
      ring

/-- Exact rational upper bound for the literal first 3000 odd sine modes.
Its Fourier/source comparison is the separate written proof above. -/
def lowOddHeadCost : ℚ :=
  (2/3)*96*(2/3)*(22/21)^2*(10/9)^2*
    (3000*3001*6001/6)/(3*10000^3)

theorem lowOddHeadCost_exact :
    lowOddHeadCost = 4358178242 / 25116328125 := by
  norm_num [lowOddHeadCost]

theorem lowOddHead_gap :
    lowOddHeadCost < 71/400 ∧
      1/16 < (6/25 : ℚ)-lowOddHeadCost := by
  constructor <;> norm_num [lowOddHeadCost]

/-- Even a much looser entrywise packet enclosure completes the
independently replayed rational SPD midpoint sign. The genuine error
is specified by the original JSON certificate, not synthesized here. -/
theorem static_packet_floor_guard :
    (1/10^11 : ℚ) + 48*(1/10^12) < 1/5000000000 := by
  norm_num

/-- Loewner positivity on the genuine full packet head restricts to
ANY linear image, including a phase-twisted odd sector. It does not
assume that a center-demodulated odd function is plain odd. -/
theorem full_head_to_restricted_head
    {ι κ : Type*} [Fintype ι] [Fintype κ]
    (A : ι → ι → ℝ) (B : κ → ι → ℝ) (sigma : ℝ)
    (hfull : ∀ y : ι → ℝ,
      -(sigma)*(∑ i, y i ^ 2) <=
        ∑ i, y i * (∑ j, A i j * y j))
    (x : κ → ℝ) :
    -(sigma)*(∑ i : ι, (∑ j : κ, B j i * x j)^2) <=
      ∑ i : ι, (∑ k : κ, B k i * x k)*
        (∑ j : ι, A i j * (∑ k : κ, B k j * x k)) := by
  exact hfull (fun i => ∑ j : κ, B j i * x j)

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeOddEdgeLoewner
