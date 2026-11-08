/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

Analytic normalization: Connes--Consani--Moscovici,
"Zeta Spectral Triples", arXiv:2511.22755v1, (3.19)--(3.20).
Source is the genuine chi3 primitive nonprincipal parity-one
Dirichlet form at radius T=4, with all 458 original unramified
prime powers, the original gamma jump, physical Lebesgue L2
and the original DirichletStageChain.Admissible test type.
Inspected grwtsk/math@562d19601f702335d4400d15e44851dd5d228f0e.
Key source inputs: WeilConductorThreeRadiusFourHighFilter
(complete 4096-row physical weighted Schur certificate),
WeilConductorThreeRadiusFourSixteenShells (exact all-prime
zero-correlation geometry), WeilConductorThreeRadiusFourPrimeFreeStability
(previous full all-input two-mass source profile).
Written analytic source proof; finite rational arithmetic independently
replayed in Python Fraction and V8 BigInt. The native Fourier/operator
and real-integral comparisons are not elaborated as Lean theorems here.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_HUMAN_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourPrimeFreeStability
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourHighFilter
import Mathlib.Tactic

/-!
# True signed Schur improvement of the chi3 radius-four prime-free L2 cones

## Exact original problem and key new connection

The ORIGINAL source target remains
 DirichletStageChain.PrimitiveStageLower modThreeQuadratic
    modThreeQuadratic_primitive modThreeQuadratic_nonprincipal 3,
for EVERY original REAL ODD compact C2 admissible f supported [-4,4],
with the actual physical Lebesgue L2 energy E(f).
There is no principal pole in primitive nonprincipal chi3.

For each of the allowed sixteen movable symmetric prime-free shells
S_delta of WeilConductorThreeRadiusFourSixteenShells, set
 g=1_(S_delta)f, h=1_(S_delta^c)f,
 G=||g||_2, H=||h||_2, E(f)=G^2+H^2.

The hard projections g,h may NOT be C2 or separately in the complete
finite-gamma form domain. The proof uses ONLY their physical L2
norms and finite signed prime correlations, and lower-bounds the
COMPLETE original gamma source directly on the smooth f. It
never applies a gamma integral or a C2-only identity to g or h.

The NEW all-input source lower profile is

 Q_chi3,4(f) >= K0 * max(0,G^2-2GH)
               -(6/5)*(G^2+H^2)
               -58*(2GH+H^2),                           (P58)

  K0=290947153/28311552.

This is an unconditional WRITTEN mathematical inequality
on every ORIGINAL Admissible f, using the recorded physical
4096-cell Schur certificate at its written/source-exact evidence scope.
It can be negative; it is not the original stage-three theorem.

Unlike the earlier source profile (P212), the new error bound
58 comes from the COMPLETE SIGNED PRIME OPERATOR on the
physical interval, not just from the total positive coefficient
half-mass. The gamma term uses direct autocorrelation, avoiding
the earlier sqrt(2)-triangle lower-price loss.

## 1. Full signed prime operator norm from the actual 4096-row source

Write w_n=log p/sqrt(p^e)>0 and beta_n=chi3(p^e) in {-1,+1}
for EVERY one of the 458 actual unramified prime powers n<=2980.
On the PHYSICAL carrier H=L2([-4,4],dt;C), with zero extension,
let τ_r be translation and P the physical support projection.
The ORIGINAL prime form is the quadratic form of the bounded
self-adjoint operator

    T4 = P * sum_n [w_n beta_n(τ_(log n)+τ_(-log n))] * P.

For every u in H, with the original complex correlation convention,
     <u,T4 u> = 2 sum_n w_n beta_n Re C_u(log n),
which is exactly the native `CharacterWindow.twistedPrime 4 chi3`
correlation, or the Fourier integral of the source P4 multiplier.
No independent character phases or altered Fourier normalization.

The source's already published 4096-cell positive step Schur weight
at Tstar=400001/100000>4 satisfies ALL rows for ALL 458 actual atoms,
with the EXACT recorded max

  max(row / (10^8 * height))
    =18053610188579/312600000000 < 58.

The pointwise weighted inequality, summed over all translated
physical cells and reflected boundary entries, proves the
ABSOLUTE quadratic estimate

    |<u,T4 u>| <= 58 ||u||^2                      (1)

for EVERY complex physical u supported in [-4,4].
The original HighFilter note displays the upper-side form,
but its proof explicitly bounds EACH signed summand by the
absolute overlap before the Schur step. Thus the SAME row
certificate proves the lower side, without a new finite search.
Since T4 is bounded self-adjoint, its operator norm is at most58;
equivalently apply the weighted Schur test directly to the
bilinear form to obtain

    |<u,T4 v>| <= 58||u||||v||.                  (2)

This is a genuine source/metric comparison: the auxiliary
step weights are a Schur *certificate*, not a new weighted
output norm. The strict original support T=4 is contained in
the Tstar carrier and has the SAME 458 active chi3 atoms; next
nonzero atom2999 is not silently introduced.

For the exact prime-free shell projection g the published
SixteenShells geometry gives

    <g,T4 g> = 0,                               (3)

for ALL g supported there, whether or not its cutoffs are
smooth. Polarizing f=g+h and using (2) gives

    |<f,T4 f>| <= 58(2GH+H^2).                  (4)

The negative signed source prime term is therefore bounded
below by the negative right side of (4), not by 212 times
the cross residual as in the earlier PrimeFreeStability.

## 2. Original full gamma: use correlation rather than norm triangle

The ORIGINAL real/complex parity-one gamma source satisfies
    Gamma1(f) = int_(r>0) kappa1(r)
                 [2E(f)-2 Re C_f(r)] dr,
    kappa1(r)=exp(-3r/2)/(1-exp(-2r))>0.

On the exact common interval
  J=[2^-20,1/16-2^-20-10^-6],
the shell support gives C_g(r)=0. Each complete correlation
difference is

  C_f(r)-C_g(r)= C(g,h;r)+C(h,g;r)+C_h(r),

with every mixed term bounded by GH and the h-h term by H^2,
by physical Cauchy--Schwarz and translation isometry.
Consequently, for EVERY r in J,

    2E(f)-2 Re C_f(r)
      >=2(G^2+H^2)-2(2GH+H^2)
      =2(G^2-2GH).                               (5)

The original jump norm is also nonnegative. Hence the
uniform source-correct lower bound is

  ||τ_r f-f||^2 >=2 max(0,G^2-2GH).          (6)

The exact source gamma integral already proved in SixteenShells,
with the ENTIRE kernel tail and geometric logarithm price, has

  2 int_J kappa1(r) dr >=
     K0=290947153/28311552.                     (7)

Combining (6),(7) gives for the COMPLETE gamma on f

    Gamma1(f) >= K0 max(0,G^2-2GH).               (8)

No `Gamma1(g)`, `Gamma1(h)`, graph heat, arbitrary
test regularity or source-changing covariance is used.
For any small leakage H<=G/d with d>2, the max in (8)
is at least (1-2/d)G^2.

## 3. Complete global signed source and five exact positive cones

The actual parity-one conductor constant obeys
     c3=log(3/pi)+psi(3/4)>-6/5
by the original digamma/Euler-gamma comparison.
From the NATIVE identity Q4(f)=c3 E+Gamma1(f)-<f,T4 f>,
(4) and (8) give precisely (P58) above.

For 0<H<=G/d with d>=3, E<= (1+1/d^2)G^2.
The signed prime penalty in (4) is then at most
58(2/d+1/d^2)G^2, and the original gamma lower
price is at least K0(1-2/d)G^2. Therefore

 Q4(f) - v E(f) >=
 [ K0(1-2/d) -58(2/d+1/d^2)
   -(6/5+v)(1+1/d^2)] G^2.                       (9)

The EXACT rational bracket in (9), for each supplied (d,v),
is strictly positive as independently recomputed:

  d=16, v=1/16:  280908563/1132462080;
  d=17, v=1/2:   920492773/2727346176;
  d=19, v=3/2:   11317444351/51102351360;
  d=20, v=2:     75466729/786432000;
  d=23, v=3:     109556465/4992270336.

All are positive in units G^2. For f=0 the weak
non-strict inequalities hold automatically.
For nonzero f satisfying these ratios, the inequalities
are strict. The statement is uniform over ALL original
Admissible f and ALL permitted prime-free shell placements.
The d=16 bound significantly improves the earlier d=52
certificate for v=1/16, without a new Euler source.

## 4. Hostile comparison, trust and remaining real consumer

This is NOT a claim that all 458 prime coefficients are positive,
nor that one can project the gamma domain onto S_delta. In the
outside-dominant case H/G large, (P58) is frequently negative.
A high-frequency hostile input on the complement need not be
controlled by any of these positive cones. The source's exact
necessary-and-sufficient edge/core Schur sign remains

  m11[v] >= <Bv,A0^(-1)Bv> for EVERY finite-gamma
  v in the full edge carrier L2(3,4).

No gamma-positive shell statement, physical row certificate
or outside-mass cone implies this full quantifier. The true
StageThreeTarget for all radius-four admissible functions,
the other primitive-character cofinal stages and the separate
zeta/RH branch all remain OPEN.

Comparison to the earlier two-mass profile:
- Same literal original chi3 Dirichlet character, 458 atoms,
  parity-one gamma, original compact C2 test and physical dt.
- Stronger prime cross control: source-bound operator norm58,
  versus global half-mass price2W4<212.
- Stronger gamma control: direct correlation (5), rather than
  ||τf-f|| >= sqrt(2)G-2H.
- Independent mathematical inputs: exact 4096-row Schur data,
  exact shell support gaps, and native real gamma kernel.
  Each is distinguished from the unresolved full-source sign.
The methodological tools are the standard Schur test and
polarization/Cauchy--Schwarz, not claimed novel general theorems.

All finite rational comparisons above are inspectable and
have independent Python/V8 BigInt replays; the native
bounded operator, complete real Fourier source identity and
gamma comparisons are WRITTEN, not newly Lean-kernel verified.
Finite proof data must retain all 458 original tags, complete
4096 Schur rows and upward price errors, 31 shell window gaps,
explicit source revisions, exact original carrier and these
analytic status boundaries. An archived row hash alone does not
constitute a fresh replay or an all-test proof.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourSignedSchurRobustness

open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreePrimitiveGauss
open GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
open GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourSixteenShells

/-- The ACTUAL 4096-source-row rational Schur constant; the
full row/witness premise is the recorded source certificate. -/
theorem actual_source_row_strict :
    (18053610188579 / 312600000000 : ℚ) < 58 := by
  norm_num

/-- Exact normalized original gamma interval coefficient. -/
def K0 : ℚ := 290947153 / 28311552

/-- A signed source comparison at arbitrary G,H, using the
nonnegative ORIGINAL gamma correlation, not a hard-cutoff
finite-gamma assertion. The required Fourier/source premises
remain explicit in the consumer. -/
theorem global_signed_two_mass_scalar
    (G H gamma signedPrime c : ℝ)
    (hc : -(6 / 5 : ℝ) ≤ c)
    (hGamma :
      ((290947153 / 28311552 : ℝ) *
        max 0 (G^2 - 2 * G * H)) ≤ gamma)
    (hPrime :
      -(58 : ℝ) * (2 * G * H + H^2) ≤ signedPrime) :
    (290947153 / 28311552 : ℝ) *
        max 0 (G^2 - 2 * G * H) -
      (6 / 5 : ℝ) * (G^2 + H^2) -
      58 * (2 * G * H + H^2) ≤
        c * (G^2 + H^2) + gamma + signedPrime := by
  have hMass : 0 ≤ G^2 + H^2 :=
    add_nonneg (sq_nonneg _) (sq_nonneg _)
  have hcMul := mul_le_mul_of_nonneg_right hc hMass
  linarith

/-- Exact rational criterion for the complete signed-plus-gamma
original-source cost in the physical shell-core/outside norm. -/
def ratioMargin (d : ℚ) (v : ℚ) : ℚ :=
    K0 * (1 - 2/d) -
    58 * (2/d + 1/d^2) -
    (6/5 + v) * (1 + 1/d^2)

theorem ratio_16_margin :
    ratioMargin 16 (1/16) = 280908563/1132462080 ∧
      0 < ratioMargin 16 (1/16) := by
  norm_num [ratioMargin, K0]

theorem ratio_17_margin :
    ratioMargin 17 (1/2) = 920492773/2727346176 ∧
      0 < ratioMargin 17 (1/2) := by
  norm_num [ratioMargin, K0]

theorem ratio_19_margin :
    ratioMargin 19 (3/2) = 11317444351/51102351360 ∧
      0 < ratioMargin 19 (3/2) := by
  norm_num [ratioMargin, K0]

theorem ratio_20_margin :
    ratioMargin 20 2 = 75466729/786432000 ∧
      0 < ratioMargin 20 2 := by
  norm_num [ratioMargin, K0]

theorem ratio_23_margin :
    ratioMargin 23 3 = 109556465/4992270336 ∧
      0 < ratioMargin 23 3 := by
  norm_num [ratioMargin, K0]

/-- Source-valued conditional return in the ORIGINAL native
`primitiveArithmeticValue`, without a new positivity predicate.
The source-level comparison of hard L2 shell projection,
norm58 signed operator, gamma integral and g/h mass accounting
is written above; none is smuggled into Lean without premises. -/
theorem native_stage_three_leakage_16_of_source_bounds
    (delta : Fin 16 → ℝ) (f : ℝ → ℝ)
    (_hf : Admissible modThreeQuadratic 4 f)
    (_hPlacement : ∀ j, 0 ≤ delta j ∧
      delta j ≤ shellShiftAllowance)
    (E G H gamma signedPrime c : ℝ)
    (hG : 0 ≤ G) (hH : 0 ≤ H)
    (hLeakage : 16 * H ≤ G)
    (hE : E = G^2 + H^2)
    (hSource : primitiveArithmeticValue modThreeQuadratic
       modThreeQuadratic_primitive modThreeQuadratic_nonprincipal
       4 (liftReal f) = c * E + gamma + signedPrime)
    (hc : -(6 / 5 : ℝ) ≤ c)
    (hGamma :
       (290947153 / 28311552 : ℝ) *
          (G^2 - 2*G*H) ≤ gamma)
    (hPrime :
       -(58 : ℝ)*(2*G*H + H^2) ≤ signedPrime) :
    (1 / 16 : ℝ) * E ≤
      primitiveArithmeticValue modThreeQuadratic
        modThreeQuadratic_primitive modThreeQuadratic_nonprincipal
        4 (liftReal f) := by
  have hGH : 16 * (G*H) ≤ G^2 := by
    nlinarith [mul_le_mul_of_nonneg_left hLeakage hG]
  have hHH : 256 * H^2 ≤ G^2 := by
    have hLo : 0 ≤ G - 16 * H := by linarith
    have hHi : 0 ≤ G + 16 * H := by linarith
    nlinarith [mul_nonneg hLo hHi]
  have hGE : 0 ≤ G^2 := sq_nonneg _
  have hsourceBudget :
      (1 / 16 + 6 / 5 : ℝ) * (1 + 1 / 256) +
        58 * (2 / 16 + 1 / 256) ≤
      (290947153 / 28311552 : ℝ) * (1 - 2 / 16) := by
    norm_num
  have hGammaPrice :
      ((290947153 / 28311552 : ℝ) * (1 - 2 / 16)) * G^2 ≤ gamma := by
    have hKpos : 0 ≤ (290947153 / 28311552 : ℝ) := by norm_num
    nlinarith
  have hPrimePrice :
      -(58 * (2 / 16 + 1 / 256) : ℝ) * G^2 ≤ signedPrime := by
    nlinarith
  have hMassCap : E ≤ (1 + 1 / 256 : ℝ) * G^2 := by
    rw [hE]
    nlinarith
  have hFloor := ConductorThreeRadiusFourPrimeFreeStability.scalar_source_floor
    E (G^2) gamma signedPrime c
    ((290947153 / 28311552 : ℝ) * (1 - 2 / 16))
    (58 * (2 / 16 + 1 / 256) : ℝ)
    (1 + 1 / 256) (1 / 16)
    (by rw [hE]; positivity) hGE (by norm_num) hMassCap
    hc hGammaPrice hPrimePrice hsourceBudget
  rw [hSource]
  exact hFloor

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourSignedSchurRobustness
