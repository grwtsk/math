/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

Actual arithmetic source: Connes--Consani--Moscovici, "Zeta Spectral
Triples", arXiv:2511.22755v1, equations (3.19)--(3.20),
and ORIGINAL primitive odd character chi3 modulo 3 at T=4.
Source interfaces: WeilDirichletStageChain, WeilConductorFrontier,
WeilConductorThreeRadiusFourInventory, and
WeilConductorThreeRadiusFourEdgeSchur. Also compare
WeilConductorThreeRadiusFourMovingCollar and TwoShell.
A complete exact finite exp-cell manifest is stored under
documentation/mathematics/_verification/targets/
chi3-radius-four-sixteen-primefree-shells-20261107.json.
Direct math source inspected: grwtsk/math@5adbab60a931994cdce3077c573c73311224fbe5.
AI-assisted written analytic proof; 31 actual rational exponential
cell brackets independently replayed with Python Fraction and
JavaScript BigInt fractions. Native Lean source ANALYTIC proof is
NOT_RUN; fresh kernel, transitive axiom and human review NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourMovingCollar
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourInventory
import Mathlib.Tactic

/-!
# Sixteen movable prime-free odd shells and an original full-Weil floor

## 1. The genuine source, original all-test quantifier on a subspace

Let h=2^(-20), epsilon=10^(-6), and let
  a_j=3+j/16+delta_j, j=0,...,15, 0<=delta_j<=epsilon.
Let I_j=[a_j,a_j+h] and S_delta=union_j(I_j union (-I_j)).
All sixteen positive intervals are DISJOINT, contained in (0,4),
and their reflections disjoint on the negative half.

The written mathematical theorem is: for every choice of ALL sixteen
delta_j in this box and EVERY ORIGINAL real odd
  DirichletStageChain.Admissible modThreeQuadratic 4 f
with supp(f) subset S_delta,

  Q_chi3,4(f) >= 9*E(f),     E=energy(liftReal f).            (A)

The SOURCE is precisely
  Q_chi3,4(f)=c3 E(f) + Gamma_1(f)
             -2 sum_(n=p^e<=2980,p!=3)
                  [log p/sqrt(n)] chi3(n) C_f(log n),
  C_f(r)=int_R f(t)f(t+r)dt,
  Gamma_1=int_(r>0) exp(-3r/2)/(1-exp(-2r))
                    *||f(.+r)-f||_2^2 dr,
  c3=log(3/pi)+psi(3/4)>-6/5.

There are exactly 458 original unramified prime powers at T=4.
The result is a TRUE infinite-dimensional all-input statement
on the specified source support class, not positivity for every
Admissible chi3 4 f. It also holds on the original COMPLEX odd
finite-gamma physical L2 form domain with this support, using Re C_f.

## 2. Same-side arithmetic interactions vanish for every shell placement

For u=f|_(0,4), same-side correlations between I_i and I_j
have positive shift r in the interval
  [|i-j|/16 - (h+epsilon), |i-j|/16 + (h+epsilon)],
i≠j; within one I_j, 0<=r<=h.

The maximum same-side shift is 15/16+h+epsilon<1.
Among ALL positive integer prime powers, the only possible
logarithmic shift in (0,1) is log2, since log3>1.
Exact rational logarithm bounds retained from the native source are

  11/16+h+epsilon < 56/81 < log2
             < 7/10 < 12/16-h-epsilon.               (1)

Thus log2 lies between the neighborhoods of grid distances
11/16 and 12/16. All other k/16 are farther away.
Consequently every original same-side prime-power correlation
is EXACTLY ZERO, for all real/complex L2 inputs on this support.

## 3. Cross-origin arithmetic interactions also vanish: 31 exact cells

Odd reflection changes the cross-origin sign, but the more useful
fact here is that the source has no cross-origin coefficient at all.
For a positive-positive pair (i,j), its reflected shift interval is

 [a_i+a_j, a_i+a_j+2h]
 subset [6+(i+j)/16,6+(i+j)/16+2h+2epsilon].           (2)

Only the 31 sums k=i+j, 0<=k<=30, can occur.
We now exclude EVERY INTEGER, not merely every prime power, from (2).

For each k, let x_k=6+k/16 and let m_k be the exact integer in the
static manifest's 31-entry list:
 [403,429,457,486,518,551,586,624,665,708,753,802,854,
  909,967,1030,1096,1167,1242,1322,1408,1498,1595,1698,
  1808,1924,2048,2180,2321,2471,2630].

The following exact RATIONAL inequalities were independently
verified for EVERY k=0,...,30:

  m_k+1/100 < S40(x_k),
  (S40(x_k)+R40(x_k))/(1-2h) < m_k+99/100,              (3)

where
  S40(x)=sum_(j=0)^40 x^j/j!,
  R40(x)=[x^41/41!]/[1-x/42].
Since 0<x_k<8<42, the positive exponential Taylor series gives
S40(x_k)<=exp(x_k)<=S40(x_k)+R40(x_k).
Also exp(2h)<=1/(1-2h), since 0<2h<1.
Thus for the UNPERTURBED interval
  m_k+1/100 < exp(x_k) <= exp(x_k+2h)<m_k+99/100.

For arbitrary 0<=delta_i,delta_j<=epsilon, the maximal
additional shift is 2epsilon. Since exp(2epsilon)<=1/(1-2epsilon),
the upper bound remains STRICTLY below m_k+1:
  (m_k+99/100)/(1-2epsilon)<m_k+1
because ALL m_k<=2630 and
  (2630+99/100)/(1-2/10^6)<2631.                  (4)

The lower bound is unchanged because all delta_j are nonnegative.
Hence (2) exponentiates to a subset of the NONINTEGER real interval
  (m_k,m_k+1), with no integer n at all.

Therefore EVERY source correlation C_f(log n), n an actual
prime-power integer, has zero overlap, and the complete original
458-atom prime term is EXACTLY ZERO:
  CharacterWindow.twistedPrime 4 chi3
    (fun n => SourcePrimeCorrelation.correlation (liftReal f) (log n))
  =0.                                                     (5)

This is stronger than an upper signed coefficient sum or a finite
observed Loewner matrix; it is a literal physical-support identity
for ALL functions in the infinite-dimensional source subspace.

## 4. The complete original gamma source gives a strong floor

The shell separation is at least
  d_min=1/16-epsilon-h.
For all positive shifts in
  h <= r <= 1/16-h-epsilon,
there are NO same-side overlaps, while opposite-origin overlaps
require r>=6. Consequently C_f(r)=0 and
  ||f(.+r)-f||²=2E(f)
throughout that ENTIRE gamma interval. All other gamma jumps
remain nonnegative.

Use 1-exp(-2r)<=2r and exp(-3r/2)>=1-(3/2)r:
  Gamma_1(f)/E(f) >=
    log((1/16-h-epsilon)/h)
         - (3/2)(1/16-epsilon-2h).                     (6)
This also holds at E=0 in the form of a non-strict inequality.

The exact positional guard
  (1/16-h-epsilon)/h > 2^15
and the positive atanh two-term bound
  log2>56/81
imply the completely RATIONAL lower price

  Gamma_1(f) >=
    [15*(56/81)-(3/2)(1/16-2h)]*E(f)
  = [290947153/28311552]*E(f).                        (7)

Together with c3>-6/5 and the EXACT vanishing of EVERY prime
correlation (5), the native source gives

 Q_chi3,4(f) >=
   [290947153/28311552-6/5]*E(f)
 = [1284866453/141557760]*E(f)
 >9*E(f).                                              (8)

This is independent of RH, of any spectral zero hypothesis, of
finite smoothness ratios, of the radius-three packet computations
and of the signed gamma/edge Schur target.

## 5. The actual shifted edge block and limits

On the original real/complex odd finite-gamma edge form carrier,
write u=f|_(0,4), q4[u]=Q4(O4u)/2 and
m11[u]=q4[u]+||u||²/8. Since E(O4u)=2||u||²,
the all-function 16-shell result (8) gives

      m11[u] >= (9+1/8)||u||² = (73/8)||u||²,        (9)

on each of this OPEN family of 16-shell support subspaces.
The 16 support intervals lie in the true edge carrier (3,4).
No replacement weighted metric is used.

The very large diagonal margin does NOT control the operator
B to the physical core (0,3), nor does it pay mixing between
arbitrary functions supported OUTSIDE these intervals. In
particular the exact original radius-four necessary/sufficient
Schur obligation
   m11[v] >= <Bv,A0^(-1)Bv>
for EVERY finite-gamma v in L2(3,4)
is OPEN. Neither 16 shells nor 31 frequency cells form a
dense/cofinal family of physical L2 functions. The native
PrimitiveStageLower j=3, RH and Dirichlet GRH are not proved.

Mathematical comparison: ordinary support correlation geometry,
exact rational exponential Taylor brackets, the true parity-one
gamma kernel, and the original conductor term. No independent
prime-phase freedom or new Euler source. The integer-avoidance
mechanism is genuinely different from the prior two-shell proof
that used one certified logarithmic prime-power gap. Standard
analysis is not claimed to be new prior art. Each strict rational
bracket is independently replayable from the manifest, but has
not been elaborated into a theorem about Real.exp in Lean.
No source/analytic or kernel assurance is promoted from that fact.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourSixteenShells

open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreePrimitiveGauss
open GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
open GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation
open GRWTSK.NumberTheory.WeilQuadraticForm.CharacterWindow

def shellWidth : ℝ := 1 / (2 ^ (20 : ℕ) : ℝ)
def shellShiftAllowance : ℝ := 1 / 1000000
def start (delta : Fin 16 → ℝ) (j : Fin 16) : ℝ :=
  3 + (j.val : ℝ) / 16 + delta j

/-- Actual ORIGINAL finite-gamma physical test support; it does not
replace the native Admissible source/domain hypotheses. -/
def SixteenShellSupport (delta : Fin 16 → ℝ) (f : ℝ → ℝ) : Prop :=
  (∀ j, 0 ≤ delta j ∧ delta j ≤ shellShiftAllowance) ∧
  (∀ t, (¬ ∃ j : Fin 16,
    t ∈ Set.Icc (start delta j) (start delta j + shellWidth) ∨
    t ∈ Set.Icc (-(start delta j) - shellWidth) (-(start delta j))) →
      f t = 0)

/-- These are the complete floor numbers in all 31 physical
cross-origin logarithmic windows, not a list of only primes. -/
def expCellFloors : List ℕ :=
  [403, 429, 457, 486, 518, 551, 586, 624,
   665, 708, 753, 802, 854, 909, 967, 1030,
   1096, 1167, 1242, 1322, 1408, 1498, 1595, 1698,
   1808, 1924, 2048, 2180, 2321, 2471, 2630]

theorem exp_cells_complete : expCellFloors.length = 31 := by decide
theorem exp_cell_largest_floor :
    expCellFloors.getLast? = some 2630 := by decide

/-- EXACT rational guard making the 31 independently checked
unperturbed exponential integer gaps stable under all sixteen
independent nonnegative shell translations. -/
theorem perturbation_rational_guard :
    (2630 + 99 / 100 : ℚ) / (1 - 2 / 1000000) < 2631 := by
  norm_num

/-- The only possible same-side original prime logarithm below one is
log 2. These two rational gaps exclude it uniformly in shell shifts. -/
theorem same_side_rational_guards :
    (11 / 16 : ℚ) + 1 / (2 ^ (20 : ℕ)) + 1 / 1000000 < 56 / 81 ∧
      (7 / 10 : ℚ) < 12 / 16 - 1 / (2 ^ (20 : ℕ)) - 1 / 1000000 ∧
      (15 / 16 : ℚ) + 1 / (2 ^ (20 : ℕ)) + 1 / 1000000 < 1 := by
  norm_num

/-- The gamma overlap-free interval has a positive log ratio large
enough to reuse the strict 15*log2 minorant for every placement. -/
theorem gamma_window_ratio_guard :
    (2 ^ (15 : ℕ) : ℚ) <
      ((1 / 16 : ℚ) - 1 / (2 ^ (20 : ℕ)) - 1 / 1000000) /
        (1 / (2 ^ (20 : ℕ))) := by
  norm_num

def rationalGammaFloor : ℚ :=
  15 * (56 / 81) -
    (3 / 2) * ((1 / 16) - 2 / (2 ^ (20 : ℕ)))

theorem rational_gamma_floor_exact :
    rationalGammaFloor = 290947153 / 28311552 := by
  norm_num [rationalGammaFloor]

theorem complete_original_source_margin :
    (9 : ℚ) <
      rationalGammaFloor - 6 / 5 := by
  norm_num [rationalGammaFloor]

/-- The desired ORIGINAL source floor, conditional on the explicit
analytical support/gamma/constant comparisons. The prime-term
premise is literally the native twistedPrime 4 chi3 correlation,
not a new positive edge or synthetic source form.
The full geometric proof of that premise appears above; it has
not been kernel formalized. -/
theorem native_floor_of_exact_source_comparisons
    (delta : Fin 16 → ℝ) (f : ℝ → ℝ)
    (_hf : Admissible modThreeQuadratic 4 f)
    (_hSupport : SixteenShellSupport delta f)
    (hMass : 0 ≤ energy (liftReal f))
    (hPrimeZero :
      twistedPrime 4 modThreeQuadratic
        (fun n => correlation (liftReal f) (Real.log (n : ℝ))) = 0)
    (hGamma :
      (290947153 / 28311552 : ℝ) * energy (liftReal f) ≤
        ∫ r in Set.Ioi (0 : ℝ),
          gammaCorrectionDensity (gammaParity modThreeQuadratic)
            (liftReal f) r)
    (hConstant :
      -(6 / 5 : ℝ) ≤ gammaConstant 3 (gammaParity modThreeQuadratic)) :
    (9 : ℝ) * energy (liftReal f) ≤
      primitiveArithmeticValue modThreeQuadratic
        modThreeQuadratic_primitive modThreeQuadratic_nonprincipal
        4 (liftReal f) := by
  have hc := mul_le_mul_of_nonneg_right hConstant hMass
  have hmargin :
      (9 : ℝ) ≤ (290947153 / 28311552 : ℝ) - 6 / 5 := by
    norm_num
  have hp := mul_le_mul_of_nonneg_right hmargin hMass
  unfold primitiveArithmeticValue
  rw [hPrimeZero]
  nlinarith

/-- The exact half-line physical norm return for the original shifted
edge form: E(Ou)=2||u||², q4[u]=Q4(Ou)/2 and m11=q4+||u||²/8.
This has no bearing on the unproved core/edge mixed Schur sign. -/
theorem shifted_edge_sixteen_shell_margin (normSquared q : ℝ)
    (hQ : (9 : ℝ) * (2 * normSquared) ≤ 2 * q) :
    (73 / 8 : ℝ) * normSquared ≤
      q + (1 / 8) * normSquared := by
  nlinarith

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourSixteenShells
