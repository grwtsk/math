/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
ISOLATED SOURCE_PROOF_CANDIDATE, ORIGINAL Alpoge Lean v4.33.1 /
Mathlib 0df444a360eaa60ab8c11dca51a86af692955474.
Lean elaboration, kernel replay, transitive axioms: NOT_RUN.
-/
import GRWTSK.NumberTheory.AlpogeNativeSmoothedMertensTail
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics
import Mathlib.Tactic

/-!
# True native Level: 7/8 Chebyshev zero-free to integrated-tail lower

The independent published OAI 7/8 source has Lean 4.34.1 and is not
directly imported into this incompatible original v4.33.1 environment:
openai/math@4eaee87548250b2682affda7d05d947c05554bae,
lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean,
blob 46c67f4000906b1391a471d6e6396ac0da3c16a5.
It asserts actual zeta/Dirichlet L-function nonvanishing for Re(s)>7/8.

The quantitative transfer zero-free -> real Chebyshev x^beta from
the classical explicit formula is kept a separately named source
supplier; original Gm=-x*integratedTail with genuine L'/L centering
is another separate analytic supplier. Neither is discharged in Lean.
No Main, FinalTheorems, Alpoge final RH, Weil positivity, invented zero
data, or unreviewed cross-version trust transfer appears here.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory Filter

namespace GRWTSK.NumberTheory.AlpogeNativeSevenEighthsIntegratedTail
open Formalism Formalism.HC
open GRWTSK.NumberTheory.AlpogeNativeGmNormalization
open GRWTSK.NumberTheory.AlpogeNativeCenteredMertensAbel

/-- Literal native weighted real Chebyshev source, all true primitive
characters and original Level.wt, including the exceptional case. -/
def actualChebyshev (Λ : Level) (x : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
    (ArithmeticFunction.vonMangoldt n : ℝ) * signedPhase Λ n

def actualChebyshevError (Λ : Level) (x : ℝ) : ℝ :=
  actualChebyshev Λ x - x

def actualIntegratedTail (Λ : Level) (x : ℝ) : ℝ :=
  ∫ t : ℝ in Ioi x, actualChebyshevError Λ t / t ^ (2 : ℕ)

theorem actualChebyshev_nat (Λ : Level) (N : ℕ) :
    actualChebyshev Λ (N : ℝ) = nativeChebyshevPrefix Λ N := by
  simp [actualChebyshev, nativeChebyshevPrefix, Nat.floor_natCast]

/-- The exact published OAI theorem forms, restricted to the
nontrivial genuine PChar contents of Level.Nt; NOT locally proved. -/
def NativeSevenEighthsNonvanishing (Λ : Level) : Prop :=
  (∀ s : ℂ, (7 / 8 : ℝ) < s.re → riemannZeta s ≠ 0) ∧
  (∀ ψ ∈ Λ.Nt, ∀ s : ℂ, (7 / 8 : ℝ) < s.re →
    DirichletCharacter.LFunction ψ.χ s ≠ 0)

/-- A separately supplied external theorem of the exact public
Dirichlet type provides the genuine native nonprincipal restriction.
No direct source import or local proof admission is claimed. -/
theorem native_seven_eighths_of_external
    (Λ : Level)
    (hZ : ∀ s : ℂ, (7 / 8 : ℝ) < s.re → riemannZeta s ≠ 0)
    (hL : ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
      (s : ℂ), (7 / 8 : ℝ) < s.re →
      ¬(χ = 1 ∧ s = 1) →
      DirichletCharacter.LFunction χ s ≠ 0) :
    NativeSevenEighthsNonvanishing Λ := by
  refine ⟨hZ, ?_⟩
  intro ψ hψ s hs
  have hNontrivial := nontrivial_of_mem_Nt Λ ψ hψ
  exact hL ψ.N ψ.χ s hs (by
    intro hException
    exact hNontrivial hException.1)

/-- The classical explicit formula is needed for this quantitative
original Chebyshev statement, independent of final RH. It is NOT
asserted as a consequence of a mere source-code import. -/
def ChebyshevPowerSupplier (Λ : Level) (beta : ℝ) : Prop :=
  ∃ (K X : ℝ), 0 ≤ K ∧ 1 ≤ X ∧
    ∀ t ≥ X, |actualChebyshevError Λ t| ≤ K * t ^ beta

/-- Original complete L'/L normalization and absolute tail convergence.
Proved mathematically in the adjacent source; not yet in Lean. -/
def OriginalTailNormalization (Λ : Level) : Prop :=
  ∀ x : ℝ, 1 ≤ x →
    IntegrableOn (fun t : ℝ =>
      actualChebyshevError Λ t / t ^ (2 : ℕ)) (Ioi x) ∧
    Λ.Gm x = -x * actualIntegratedTail Λ x

/-- Integrate the GENUINE source discrepancy, with exact 1/(1-beta).
This does not infer the Chebyshev power bound itself. -/
theorem integrated_lower_of_normalized_power
    (Λ : Level) (beta K x : ℝ)
    (hb : beta < 1) (hx : 0 < x)
    (hIntegral : IntegrableOn
      (fun t : ℝ => actualChebyshevError Λ t / t ^ (2 : ℕ)) (Ioi x))
    (hNormalized : ∀ t ∈ Ioi x, -K * t ^ (beta - 2) ≤
      actualChebyshevError Λ t / t ^ (2 : ℕ)) :
    -(K / (1 - beta)) * x ^ (beta - 1) ≤
       actualIntegratedTail Λ x := by
  have hModel : IntegrableOn (fun t : ℝ => -K * t ^ (beta - 2)) (Ioi x) :=
    (integrableOn_Ioi_rpow_of_lt (by linarith : beta - 2 < -1) hx).const_mul (-K)
  have hMono := setIntegral_mono_on hModel hIntegral measurableSet_Ioi hNormalized
  have hEval :
      (∫ t : ℝ in Ioi x, -K * t ^ (beta - 2)) =
        -(K / (1 - beta)) * x ^ (beta - 1) := by
    rw [integral_const_mul,
      integral_Ioi_rpow_of_lt (by linarith : beta - 2 < -1) hx]
    have hden : beta - 1 ≠ 0 := by linarith
    field_simp
    ring
  rw [← hEval]
  exact hMono

/-- The input is the true original Chebyshev |R|<=K*t^beta,
not a synthetic prime-only spectral replacement. -/
theorem normalized_integrand_lower_of_true_power
    (Λ : Level) (beta K X x : ℝ)
    (hx : 0 < x) (hX : X ≤ x)
    (hBound : ∀ t ≥ X, |actualChebyshevError Λ t| ≤ K * t ^ beta) :
    ∀ t ∈ Ioi x, -K * t ^ (beta - 2) ≤
      actualChebyshevError Λ t / t ^ (2 : ℕ) := by
  intro t ht
  have htpos : 0 < t := hx.trans ht
  have hLo := (abs_le.mp (hBound t (hX.trans ht.le))).1
  have hPow : t ^ (beta - 2) = t ^ beta / t ^ (2 : ℕ) := by
    simpa only [Real.rpow_natCast] using Real.rpow_sub htpos beta (2 : ℝ)
  rw [hPow]
  have hDen : 0 ≤ t ^ (2 : ℕ) := by positivity
  have h := div_le_div_of_nonneg_right hLo hDen
  simpa only [neg_mul, neg_div, mul_div_assoc] using h

/-- Full eventual bound with UNIT coefficient at any theta>beta,
using real source power, true integral and an independent exponent
margin. Every hypothesis stays in the declaration. -/
theorem eventual_native_tail_lower_of_true_chebyshev
    (Λ : Level) (beta theta : ℝ)
    (hbetatheta : beta < theta) (htheta : theta < 1)
    (hPower : ChebyshevPowerSupplier Λ beta)
    (hTail : OriginalTailNormalization Λ) :
    ∃ Xtheta : ℝ, 1 ≤ Xtheta ∧ ∀ x ≥ Xtheta,
      -x ^ (theta - 1) ≤ actualIntegratedTail Λ x := by
  obtain ⟨K, X, -, hX, hR⟩ := hPower
  have hGap : 0 < theta - beta := by linarith
  have hBeta : beta < 1 := by linarith
  obtain ⟨T, hT⟩ := Filter.eventually_atTop.1
    ((tendsto_rpow_atTop hGap).eventually_ge_atTop
      (K / (1 - beta)))
  refine ⟨max 1 (max X T), le_max_left _ _, ?_⟩
  intro x hx
  have hOne : 1 ≤ x := (le_max_left _ _).trans hx
  have hXx : X ≤ x :=
    (le_max_left _ _).trans ((le_max_right _ _).trans hx)
  have hTx : T ≤ x :=
    (le_max_right _ _).trans ((le_max_right _ _).trans hx)
  have hpos : 0 < x := lt_of_lt_of_le zero_lt_one hOne
  have hNorm := normalized_integrand_lower_of_true_power
    Λ beta K X x hpos hXx hR
  have hLower := integrated_lower_of_normalized_power
    Λ beta K x hBeta hpos (hTail x hOne).1 hNorm
  have hPowerUpper : K / (1 - beta) ≤ x ^ (theta - beta) := hT x hTx
  have hNonneg : 0 ≤ x ^ (beta - 1) := Real.rpow_nonneg hpos.le _
  have hProduct := mul_le_mul_of_nonneg_right hPowerUpper hNonneg
  have hExponent : x ^ (theta - beta) * x ^ (beta - 1) =
      x ^ (theta - 1) := by
    rw [← Real.rpow_add hpos]
    congr 1
    ring
  rw [hExponent] at hProduct
  linarith


/-- The SOURCE-SPECIFIC analytic transfer from the independent published
7/8 nonvanishing theorem to the actual complete Level Chebyshev
error, using the classical truncated explicit formula and bounds on
the original zeta and Dirichlet logarithmic derivatives.
It is an EXPLICIT, UNPROVED-in-Lean supplier, not an axiom. -/
def OriginalExplicitFormulaPowerTransfer (Λ : Level) : Prop :=
  ∀ beta : ℝ, (7 / 8 : ℝ) < beta → beta < 1 →
    NativeSevenEighthsNonvanishing Λ →
      ChebyshevPowerSupplier Λ beta

/-- The exact below-one target is a genuine native Level statement,
for ALL original Levels (including exceptional characters), at ALL
theta strictly above the independent external 7/8 threshold.
The two external analytic interfaces remain visible as hypotheses:
7/8 nonvanishing AND the correct explicit-formula transfer. -/
theorem eventual_native_integrated_tail_of_external_seven_eighths
    (Λ : Level) (theta : ℝ)
    (h7 : (7 / 8 : ℝ) < theta) (htheta : theta < 1)
    (hZeroFree : NativeSevenEighthsNonvanishing Λ)
    (hExplicit : OriginalExplicitFormulaPowerTransfer Λ)
    (hTail : OriginalTailNormalization Λ) :
    ∃ Xtheta : ℝ, 1 ≤ Xtheta ∧ ∀ x ≥ Xtheta,
      -x ^ (theta - 1) ≤ actualIntegratedTail Λ x := by
  let beta : ℝ := ((7 / 8 : ℝ) + theta) / 2
  have hbeta7 : (7 / 8 : ℝ) < beta := by
    dsimp [beta]
    linarith
  have hbetatheta : beta < theta := by
    dsimp [beta]
    linarith
  have hbeta1 : beta < 1 := hbetatheta.trans htheta
  exact eventual_native_tail_lower_of_true_chebyshev
    Λ beta theta hbetatheta htheta
    (hExplicit beta hbeta7 hbeta1 hZeroFree) hTail

/-- The corresponding original intermediate Gm power upper bound,
without importing the external solution into the incompatible
original Mathlib, and with zero-free-to-Chebyshev kept open. -/
theorem eventual_native_gm_of_external_seven_eighths
    (Λ : Level) (theta : ℝ)
    (h7 : (7 / 8 : ℝ) < theta) (htheta : theta < 1)
    (hZeroFree : NativeSevenEighthsNonvanishing Λ)
    (hExplicit : OriginalExplicitFormulaPowerTransfer Λ)
    (hTail : OriginalTailNormalization Λ) :
    ∃ Xtheta : ℝ, 1 ≤ Xtheta ∧ ∀ x ≥ Xtheta,
      Λ.Gm x ≤ x ^ theta := by
  let beta : ℝ := ((7 / 8 : ℝ) + theta) / 2
  have hbeta7 : (7 / 8 : ℝ) < beta := by
    dsimp [beta]
    linarith
  have hbetatheta : beta < theta := by
    dsimp [beta]
    linarith
  have hbeta1 : beta < 1 := hbetatheta.trans htheta
  exact eventual_original_gm_upper_of_power
    Λ beta theta hbetatheta htheta
    (hExplicit beta hbeta7 hbeta1 hZeroFree) hTail

end GRWTSK.NumberTheory.AlpogeNativeSevenEighthsIntegratedTail
