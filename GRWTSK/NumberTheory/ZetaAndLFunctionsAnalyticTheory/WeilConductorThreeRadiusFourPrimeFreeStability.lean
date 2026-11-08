/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

Primary arithmetic normalization: Connes--Consani--Moscovici,
"Zeta Spectral Triples", arXiv:2511.22755v1, equations (3.19)--(3.20).
Source declarations reused WITHOUT altering the character or test:
  WeilDirichletStageChain.Admissible and PrimitiveStageLower,
  WeilConductorFrontier.primitiveArithmeticValue,
  CharacterWeilWindowBounds.twistedPrime,
  WeilConductorThreeRadiusFourInventory.inventory,
  WeilConductorThreeRadiusFourSixteenShells.SixteenShellSupport.
Source examined on grwtsk/math main 5adbab60a931994cdce3077c573c73311224fbe5.
The actual proof uses source-real and complex-odd L2 correlations, no
unjustified gamma form-domain projection. Written mathematics with
independent exact rational/integer checks; the Lean declarations
below retain their analytic premises instead of falsely proving them.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_HUMAN_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourSixteenShells
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourHighTail
import Mathlib.Tactic

/-!
# Physical-L2 robustness of the ACTUAL 458-atom Weil source around prime-free shells

## 1. Exact original target, source and newly opened class

Keep the ORIGINAL primitive nonprincipal character
  chi3=modThreeQuadratic (0,+1,-1), conductor3, gamma parity1.
For every REAL ODD compact C2 source-admissible f at radius4,
the native source is

 Q4(f)=c3 E(f)+Gamma1(f)-P4(f),
 E(f)=energy(liftReal f)=int_R f(t)^2dt,
 P4(f)=2 sum_(n=p^e<=2980,p!=3) w_n beta_n C_f(log n),
 w_n=log p/sqrt(n), beta_n=chi3(n),
 C_f(r)=int_R f(t)f(t+r)dt,
 Gamma1(f)=int_(r>0) kappa1(r)||tau_r f-f||_2^2 dr,
 kappa1(r)=exp(-3r/2)/(1-exp(-2r)),
 c3=log(3/pi)+psi(3/4)>-6/5.

There is no principal pole, no different L-function family, no
character-free unsigned replacement of the native prime source.

For ANY 16 shell placements delta_j in [0,10^(-6)], let S_delta
be the original symmetric 16-shell union from
WeilConductorThreeRadiusFourSixteenShells, with positive intervals
  [3+j/16+delta_j,3+j/16+delta_j+2^(-20)].
Write g=1_(S_delta) f and h=1_(S_delta^c) f.
These are physical L2, real odd, have DISJOINT supports a.e. and

                E(f)=G^2+H^2,
     G=||g||_2, H=||h||_2.                                  (1)

The hard cutoffs g,h need NOT be C2 or individually in the full
finite-gamma domain. The proof never applies a C2-specific Weil
formula or an infinite gamma form to either projection.

The first NEW sufficient all-input condition is

                     H <= G/52.                              (2)

Then this written theorem gives the ORIGINAL all-frequency sign

                     Q4(f) >= E(f)/16.                        (3)

Two stronger quantitative instances are also justified:
  H<=G/56  => Q4(f)>=E(f)/2,
  H<=G/64  => Q4(f)>=3E(f)/2.                                  (4)

This is a genuine PHYSICAL-L2 OPEN CONE around an infinite-dimensional
source-positive subspace, not a finite matrix or exact-support-only
claim. It includes original admissible tests with NONZERO support
outside S_delta. It is still NOT the universal
DirichletStageChain.PrimitiveStageLower chi3 hp hn 3.

## 2. Actual signed 458-prime-power source and the leakage price

The exact 31-gap original support calculation in SixteenShells
proves, for every actual source shift r_n=log(p^e),

                         C_g(r_n)=0.                         (5)

This statement is support-only and holds for any odd real or
complex L2 g supported on S_delta; no smoothness is required.

For real or complex L2, original antilinear-first Cauchy--Schwarz
and translation isometry give

  |C_f(r)-C_g(r)|
       <=2 G H + H^2                                      (6)

for EVERY real r. Expand f=g+h, retain BOTH cross terms and
the h-h correlation; do not use a derivative estimate or assume
independent character phases.

Every one of the original 458 unramified prime powers remains
in the original source. An independent exact integer/Fraction
enumeration of all 458 native (p,e,p^e) records, using upward
16-term atanh logs and integer lower sqrt floors on the 10^9 grid,
gave the TOTAL positive half-mass upper rational

    W4 <= 105305132271302/10^12 < 106.                     (7)

This is the actual source mass recorded also in
WeilConductorThreeRadiusFourHighTail, not a new source coefficient.
Its use here is ONLY as an absolute error price; the actual
beta_n in {-1,+1} is unchanged. Combining (5)--(7) gives

  -P4(f) >= -212*(2 G H + H^2).                             (8)

Under H<=G/d (d=52,56,64), the entire signed prime price is

  -P4(f)>= -212*(2/d+1/d^2) G^2.                            (9)

This is a complete residual to the genuine original prime sum,
not positivity imported from a magnetic graph edge.

## 3. Positive original gamma jump with NO projected gamma-domain claim

Let h0=2^(-20) and
  J=[h0, 1/16-h0-10^(-6)].
The exact support arithmetic in SixteenShells gives
  C_g(r)=0 for every r in J,
hence ||tau_r g-g||_2=sqrt(2)*G on this whole interval.
Translation isometric triangle inequality gives
  ||tau_r h-h||_2 <=2H.
Therefore for EVERY r in J and H<=G/d,

  ||tau_r f-f||_2
   >=sqrt(2)G-2H
   >=(7/5-2/d)G,                                         (10)

using the elementary strict rational guard (7/5)^2<2.
The last right-hand side is POSITIVE for all d>=52.
Thus squaring (10) is legitimate.

The ORIGINAL positive parity-one kernel and the exact finite
lower gamma bound from the 16-shell proof give

       2 int_J kappa1(r)dr >=
                    K0 :=290947153/28311552.              (11)

The bound (11) is obtained by integrating the literal kernel using
  1-exp(-2r)<=2r,
  exp(-3r/2)>=1-(3/2)r,
  log((1/16-h0-10^(-6))/h0)>15 log2>15*(56/81).
All other positive source gamma shifts are retained rather than
discarded from the bound with a negative error. Crucially, (11)
does NOT require Gamma(g) or Gamma(h) to be individually finite:
it only estimates the actual original Gamma(f).

Equations (10)--(11) give the source-correct all-input lower bound

   Gamma1(f)>=(K0/2)*(7/5-2/d)^2 *G^2.               (12)

## 3A. A GLOBAL all-input two-mass lower bound, not only a cone

The same argument has a useful form for EVERY original admissible
radius-four test f, with no leakage-ratio restriction at all.
Let G=||1_(S_delta)f||_2 and H=||1_(S_delta^c)f||_2.
The prime-source bound (8) is unconditional. For every r in the same
original gamma interval J, ordinary Hilbert triangle inequality gives

 ||tau_r f-f|| >= max(0,sqrt(2)*G-2H)
              >= max(0,(7/5)*G-2H).

The right side is NONNEGATIVE, so squaring is legitimate even when
H is arbitrarily large. As in (11), gamma[f]>=
 (K0/2)*max(0,(7/5)*G-2H)^2.
Using the original c3>-6/5 and E=G^2+H^2 gives the GLOBAL profile

 Q4(f)>= (K0/2)*max(0,(7/5)*G-2H)^2
             -(6/5)*(G^2+H^2)
             -212*(2*G*H+H^2).                            (P)

This estimate is for EVERY original radius-four f and EVERY allowed
shell placement delta, not a claim that its right side is nonnegative.
The three cones (3)--(4) are obtained by evaluating the POSITIVE
part in (P) under H<=G/d, using the exact rational guards below.

This global profile is a genuine source-faithful joint-mass estimate
suitable for a later multi-block decomposition. It is not a Schur
bound between the shell support and all other support, because the
positive gamma truncation does not determine the sign of all mixed
components. Its error grows with H and may be strongly negative;
no whole-edge positivity or density argument follows.

## 4. Fully paid constant and exact three-tier rational margin

The original conductor-parity constant c3>-6/5, and by (1)
  E(f)=G^2+H^2 <=(1+1/d^2)*G^2.

Combine (9),(12) and c3 E(f) >=-(6/5)E(f), obtaining
  Q4(f)>=
   [ (K0/2)*(7/5-2/d)^2
       -212*(2/d+1/d^2)
       -(6/5)*(1+1/d^2)] G^2.                          (13)

For each d and required floor v, the exact all-source acceptance
margin after additionally paying v E(f) is

  margin(d,v)= (K0/2)*(7/5-2/d)^2
        -212*(2/d+1/d^2)
        -(6/5+v)*(1+1/d^2).                            (14)

Independent EXACT rational arithmetic (standard Fraction and
separate V8 BigInt rationals) gives

  margin(52,1/16)=3202501993/106325606400>0,
  margin(56,1/2)=248865396433/1109812838400>0,
  margin(64,3/2)=40118654497/161061273600>0.         (15)

These positive margins are in units G^2. They prove (3)--(4),
including f=0, by exact physical mass return. No numerical frequency
sample, eigenvalue guess, unproved zero-free statement or omitted
correlation appears.

## 5. The exact consumer and hostile boundary

The source's native condition is measured in L2, not weighted norm.
For d=52, the equivalent squared condition is
  d^2 E(h)<=E(g).
Since the supports are disjoint, this implies the actual outside
mass fraction E(h)/E(f)<=1/(d^2+1)=1/2705, but NO restriction
on the original test's frequency, derivative, Fourier phase or
gamma-energy above the finite window J. This supplies a genuine
robustness statement for tests that differ from a prime-free
sixteen-shell test on a very small portion of physical L2 mass.

Hostile boundary: the denominator52 is not a universal threshold,
and a test with H>G/52 may still have positive Q4. The coarse
whole-inventory signed prime bound loses all cancellation and
cannot establish the full radius-four stage. Also, hard cutoff
projection onto S_delta need not preserve the closed gamma form:
the proof carefully avoids using a purported Gamma(g) or the
core/edge Schur inverse on g. A source argument that requires
finite Gamma(g) from Gamma(f)<infinity would be invalid without
additional trace/closure control. This independent short-jump
method avoids that particular false inference.

The actual full all-edge/source Schur target remains
   m11[v]>=<Bv,A0^(-1)Bv>
for EVERY finite-gamma edge v, with its complete core/edge
coupling. Results (3)--(4) are source-positive CONES, not a
dense family, an all-edge Loewner certificate, RH or Dirichlet GRH.
Other primitive-character sectors and zeta remain independent.

## 6. Exact mathematical vs formal assurance

The analytic argument uses only standard translation isometry,
physical Cauchy--Schwarz, nonnegative kernel truncation, the
previously proved prime-free support geometry, the exact signed
original coefficient inventory and classical digamma constants.
The finite ratio and half-mass arithmetic was independently
recomputed at exact integer/rational scope, but the infinite
Lebesgue support/correlation/gamma integrals and their comparison
to native Lean definitions have not been elaborated in Lean.

The Lean declarations below give the actual original carrier
and hard-cutoff types, the precise abstract three-tier scalar
return, and independently checkable exact rational margins. The
analytical source premises (full prime zero on g, physical
gamma lower and support/mass transfer) remain explicit in the
native consumer; there is no invented global stage-proof axiom.
No mathematical novelty over all prior work or independent
human theoretical review is claimed.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourPrimeFreeStability

open GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourSixteenShells
open GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
open GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation
open GRWTSK.NumberTheory.WeilQuadraticForm.CharacterWindow
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreePrimitiveGauss

/-- This is exactly the support described by the original published
sixteen-shell prime-free source: not a replacement Weil test class. -/
def shellRegion (delta : Fin 16 → ℝ) : Set ℝ :=
  {t | ∃ j : Fin 16,
    t ∈ Set.Icc (start delta j) (start delta j + shellWidth) ∨
    t ∈ Set.Icc (-(start delta j) - shellWidth) (-(start delta j))}

/-- Source-preserving L2 truncation, which is NOT asserted C2 or in
the finite-gamma form domain. The proof uses no Gamma(shellCore). -/
noncomputable def shellCore (delta : Fin 16 → ℝ)
    (f : ℝ → ℝ) (t : ℝ) : ℝ := by
  classical
  exact if t ∈ shellRegion delta then f t else 0

noncomputable def shellLeakage (delta : Fin 16 → ℝ)
    (f : ℝ → ℝ) (t : ℝ) : ℝ :=
  f t - shellCore delta f t

/-- Actual physical outside-L2 energy ratio, expressed with the
NATIVE `energy (liftReal ...)` rather than a substitute norm. -/
def SmallPhysicalLeakage (d : ℕ) (delta : Fin 16 → ℝ)
    (f : ℝ → ℝ) : Prop :=
  (d : ℝ)^2 * energy (liftReal (shellLeakage delta f)) ≤
    energy (liftReal (shellCore delta f))

/-- Original all-input source lower profile in the PHYSICAL
core/outside masses, including the positive-part gamma jump.
The mathematical support/gamma/primes maps are proved in the
written analysis above; this is their scalar source return. -/
theorem global_two_mass_profile_scalar
    (G H gamma signedPrime c : ℝ)
    (hc : -(6 / 5 : ℝ) ≤ c)
    (hgamma :
      ((290947153 / 28311552 : ℝ) / 2) *
          (max 0 ((7 / 5 : ℝ) * G - 2 * H)) ^ 2 ≤ gamma)
    (hprime : -(212 : ℝ) * (2 * G * H + H ^ 2) ≤ signedPrime) :
    ((290947153 / 28311552 : ℝ) / 2) *
        (max 0 ((7 / 5 : ℝ) * G - 2 * H)) ^ 2 -
      (6 / 5 : ℝ) * (G ^ 2 + H ^ 2) -
      212 * (2 * G * H + H ^ 2) ≤
        c * (G ^ 2 + H ^ 2) + gamma + signedPrime := by
  have hmass : 0 ≤ G ^ 2 + H ^ 2 :=
    add_nonneg (sq_nonneg _) (sq_nonneg _)
  have hcMul := mul_le_mul_of_nonneg_right hc hmass
  nlinarith

/-- The exact universal scalar consumer: a signed source must pay
ALL three inputs, and each physically nonnegative scale and bound.
No finite certificate format may invent the analytic input inequalities. -/
theorem scalar_source_floor (E G gamma signedPrime c gammaPrice
    primePrice scale floor : ℝ)
    (hE : 0 ≤ E) (hG : 0 ≤ G) (hFloor : 0 ≤ floor)
    (hCap : E ≤ scale * G)
    (hConst : -(6 / 5 : ℝ) ≤ c)
    (hGamma : gammaPrice * G ≤ gamma)
    (hPrime : -(primePrice * G) ≤ signedPrime)
    (hBudget :
      (floor + (6 / 5 : ℝ)) * scale + primePrice ≤ gammaPrice) :
    floor * E ≤ c * E + gamma + signedPrime := by
  have hC := mul_le_mul_of_nonneg_right hConst hE
  have hB := mul_le_mul_of_nonneg_right hBudget hG
  have hPositive : 0 ≤ floor + (6 / 5 : ℝ) := by linarith
  have hS := mul_le_mul_of_nonneg_left hCap hPositive
  nlinarith

/-- Total 458-atom physical half-mass upper grid rechecked at exact
rational scope (not an independently kernel-certified log identity). -/
theorem full_source_halfmass_rational_guard :
    (105305132271302 / 10^(12 : ℕ) : ℚ) < 106 := by
  norm_num

/-- Full three-tier source budgets. These are exact rational numerical
checks, not assertions that the analytic gamma/prime premises hold. -/
theorem robust_budget_52 :
    ((1 / 16 + 6 / 5 : ℚ) * (1 + 1 / 52^2) +
       212 * (2 / 52 + 1 / 52^2)) <
      ((290947153 / 28311552 : ℚ) / 2) * (7 / 5 - 2 / 52)^2 := by
  norm_num

theorem robust_budget_56 :
    ((1 / 2 + 6 / 5 : ℚ) * (1 + 1 / 56^2) +
       212 * (2 / 56 + 1 / 56^2)) <
      ((290947153 / 28311552 : ℚ) / 2) * (7 / 5 - 2 / 56)^2 := by
  norm_num

theorem robust_budget_64 :
    ((3 / 2 + 6 / 5 : ℚ) * (1 + 1 / 64^2) +
       212 * (2 / 64 + 1 / 64^2)) <
      ((290947153 / 28311552 : ℚ) / 2) * (7 / 5 - 2 / 64)^2 := by
  norm_num

/-- The original source and physical energy enter without changing
Dirichlet sectors. The actual L2 decomposition, gamma window and all
458 literal prime correlations are separate analytical premises, not
assertions that a hard cutoff preserves the finite-gamma domain. -/
theorem native_source_floor_52_of_exact_comparisons
    (delta : Fin 16 → ℝ) (f : ℝ → ℝ)
    (_hf : Admissible modThreeQuadratic 4 f)
    (_hPlacement : ∀ j, 0 ≤ delta j ∧
      delta j ≤ shellShiftAllowance)
    (hMass :
      energy (liftReal f) ≤
        (1 + 1 / (52 : ℝ)^2) * energy (liftReal (shellCore delta f)))
    (hGamma :
      (((290947153 / 28311552 : ℝ) / 2) *
        (7 / 5 - 2 / 52)^2) *
          energy (liftReal (shellCore delta f)) ≤
        ∫ r in Set.Ioi (0 : ℝ),
          gammaCorrectionDensity (gammaParity modThreeQuadratic)
            (liftReal f) r)
    (hPrime :
      -(212 * (2 / 52 + 1 / (52 : ℝ)^2) *
         energy (liftReal (shellCore delta f))) ≤
        -(twistedPrime 4 modThreeQuadratic
          (fun n => correlation (liftReal f) (Real.log (n : ℝ)))))
    (hConst :
      -(6 / 5 : ℝ) ≤
        gammaConstant 3 (gammaParity modThreeQuadratic)) :
    (1 / 16 : ℝ) * energy (liftReal f) ≤
      primitiveArithmeticValue modThreeQuadratic
        modThreeQuadratic_primitive modThreeQuadratic_nonprincipal
        4 (liftReal f) := by
  have hE : 0 ≤ energy (liftReal f) :=
    integral_nonneg (fun _ => sq_nonneg _)
  have hG : 0 ≤ energy (liftReal (shellCore delta f)) :=
    integral_nonneg (fun _ => sq_nonneg _)
  have hBudget :
      ((1 / 16 + 6 / 5 : ℝ) * (1 + 1 / (52 : ℝ)^2) +
       212 * (2 / 52 + 1 / (52 : ℝ)^2)) ≤
      ((290947153 / 28311552 : ℝ) / 2) * (7 / 5 - 2 / 52)^2 := by
    norm_num
  have hr := scalar_source_floor
    (energy (liftReal f)) (energy (liftReal (shellCore delta f)))
    (∫ r in Set.Ioi (0 : ℝ),
       gammaCorrectionDensity (gammaParity modThreeQuadratic)
         (liftReal f) r)
    (-(twistedPrime 4 modThreeQuadratic
       (fun n => correlation (liftReal f) (Real.log (n : ℝ)))))
    (gammaConstant 3 (gammaParity modThreeQuadratic))
    (((290947153 / 28311552 : ℝ) / 2) *
       (7 / 5 - 2 / 52)^2)
    (212 * (2 / 52 + 1 / (52 : ℝ)^2))
    (1 + 1 / (52 : ℝ)^2) (1 / 16)
    hE hG (by norm_num) hMass hConst hGamma hPrime hBudget
  unfold primitiveArithmeticValue
  nlinarith

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourPrimeFreeStability
