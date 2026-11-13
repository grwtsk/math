/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilCofinalSubexponentialBridge
import Mathlib.Tactic

/-!
# Adaptive finite-sine witnesses and quantitative Weil growth obstruction

This source repairs a quantifier mismatch in the application of the prior
WeilCofinalSubexponentialBridge: a hypothetical off-line zero may determine
the necessary finite-sine cutoff M AFTER the zero, support window and error
margin have been fixed. A lower bound for one preselected sequence M_j is not
automatically a bound for these root-dependent cutoffs.

The source-side all-mode lower bound below quantifies over EVERY dimension M.
The amplified witness instead existentially selects M at each sufficiently
large support stage. Both consume the SAME literal zetaSineMatrix or
primitivePairSineMatrix from WeilOddSineProjection. This retains every active
prime power, the true gamma/parity/conductor data, and both signed zeta poles.

A quantitative rate sigma >= 0 is also admitted. Assuming a source budget
log(1+B_j) <= (sigma+epsilon)*T_j eventually for every epsilon>0, an orbit
with displacement b=|Re(s)-1/2| would contradict the budget if it produces
native finite-sine negative witnesses at every exponent 0<a<2*b.
The proved real-variable conclusion is 2*b <= sigma. Sigma=0 yields the
existing literal RH/DirichletCriticalLine conditional consumers.

IMPORTANT: Neither the all-mode arithmetic lower bound nor the analytical
off-line-zero-to-sine witness supplier is constructed here. These are explicit
hypotheses. No replacement RH or Dirichlet-GRH predicate is introduced.
The principal primitive Dirichlet sector retains its separate actual-source
consumer; the existing primitive-character reduction is imported unchanged.

Primary analytical source: Noeaaeue 07-GLOBAL-RH-GRH-ROUTES.md, src.lower-growth,
Sections 2--7 (2026-11-05); original completed Weil source CCM,
Zeta Spectral Triples, arXiv:2511.22755v1, (3.19)--(3.20).
Comparison: WeilOddRootProjection.lean, Section C (compact cutoff and
arbitrary sufficiently large sine dimension), and the earlier fixed-M bridge.

ASSURANCE: manual Lean SOURCE_PROOF_CANDIDATE, not compiled or kernel checked.
Lean elaboration, fresh kernel replay, transitive axiom audit, independent
mathematical review: NOT_RUN. No RH or Dirichlet-GRH proof is claimed.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.AdaptiveSineGrowth

open GRWTSK.NumberTheory.WeilQuadraticForm.CofinalSubexponential
open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.NumberTheory.Conditional

/-- Every finite sine cutoff of the same original arithmetic source is
retained. Do not confuse this with a single favorable compression. -/
abbrev AllModeSineFamily : Type :=
  (t : ℝ) → (M : ℕ) → Matrix (Fin M) (Fin M) ℝ

/-- The necessary all-dimension arithmetic premise. All modes use the
same support value T_j and the same budget B_j. -/
def NativeAllModeLower (A : AllModeSineFamily) (T B : ℕ → ℝ) : Prop :=
  ∀ (j M : ℕ) (x : Fin M → ℝ),
    -(B j) * (∑ i : Fin M, x i ^ 2) ≤ quadratic (A (T j) M) x

/-- A negative normalized vector may need its own finite dimension at each
large stage. Both the matrix and the norm use that SAME dimension. -/
def AdaptiveExponentialWitness (A : AllModeSineFamily)
    (T : ℕ → ℝ) (a c : ℝ) : Prop :=
  ∃ J : ℕ, ∀ (j : ℕ), J ≤ j →
    ∃ (M : ℕ) (x : Fin M → ℝ),
      (∑ i : Fin M, x i ^ 2) = 1 ∧
        quadratic (A (T j) M) x ≤ -(c * Real.exp (a * T j))

/-- The exact analytic supplier required from an off-critical zero of
displacement b. The rate a must be strictly below 2*b; c and M may depend
on the zero and on a. No such witness is asserted to exist here. -/
def AmplifiesBelowDoubleDisplacement (A : AllModeSineFamily)
    (T : ℕ → ℝ) (b : ℝ) : Prop :=
  ∀ a : ℝ, 0 < a → a < 2 * b →
    ∃ c : ℝ, 0 < c ∧ AdaptiveExponentialWitness A T a c

/-- All-mode positivity restricts to the earlier fixed-dimension interface.
The converse is not asserted, since the selected sequence may omit modes. -/
theorem all_mode_returns_fixed_cutoffs {A : AllModeSineFamily}
    {T B : ℕ → ℝ} (h : NativeAllModeLower A T B)
    (M : ℕ → ℕ) :
    SineMatrixLowerBound M (fun j => A (T j) (M j)) B := by
  intro j x
  exact h j (M j) x

/-- Asymptotic upper growth rate. Its log estimate is a UNIVERSAL budget
hypothesis, not a statement about a preselected arithmetic eigenvector. -/
structure LogRateUpperBudget (T B : ℕ → ℝ) (sigma : ℝ) : Prop where
  cofinal : ∀ R : ℝ, ∃ J : ℕ,
    ∀ j : ℕ, J ≤ j → R ≤ T j
  nonneg : ∀ j : ℕ, 0 ≤ B j
  rate_nonneg : 0 ≤ sigma
  upper : ∀ epsilon : ℝ, 0 < epsilon → ∃ J : ℕ,
    ∀ j : ℕ, J ≤ j →
      Real.log (1 + B j) ≤ (sigma + epsilon) * T j

/-- The old sublinear-log condition is exactly the rate-zero instance of
this upper-rate formulation. No new Weil inequality is inferred. -/
theorem zero_rate_of_sublinear {T B : ℕ → ℝ}
    (h : LogSublinearUpperBudget T B) :
    LogRateUpperBudget T B 0 := by
  refine ⟨h.cofinal, h.nonneg, le_rfl, ?_⟩
  intro epsilon hepsilon
  simpa only [zero_add] using h.logUpper epsilon hepsilon

/-- A strictly faster exponential eventually exceeds any budget whose
upper logarithmic rate is sigma. Both rate and prefactor are explicit. -/
theorem eventual_dominance_above_rate {T B : ℕ → ℝ}
    {sigma : ℝ} (h : LogRateUpperBudget T B sigma)
    (a c : ℝ) (ha : sigma < a) (hc : 0 < c) :
    ∃ J : ℕ, ∀ j : ℕ, J ≤ j →
      B j < c * Real.exp (a * T j) := by
  let epsilon : ℝ := (a - sigma) / 2
  have hepsilon : 0 < epsilon := by
    dsimp [epsilon]
    linarith
  obtain ⟨Jsmall, hsmall⟩ := h.upper epsilon hepsilon
  obtain ⟨Jlarge, hlarge⟩ :=
    h.cofinal ((2 * |Real.log c|) / (a - sigma) + 1)
  refine ⟨max Jsmall Jlarge, ?_⟩
  intro j hj
  have hjSmall : Jsmall ≤ j := (le_max_left _ _).trans hj
  have hjLarge : Jlarge ≤ j := (le_max_right _ _).trans hj
  have hsize := hlarge j hjLarge
  have hquot : (2 * |Real.log c|) / (a - sigma) < T j := by
    linarith
  have hscale : 2 * |Real.log c| < (a - sigma) * T j :=
    (div_lt_iff₀ (sub_pos.mpr ha)).mp hquot
  have hlogUpper := hsmall j hjSmall
  have habs : -Real.log c ≤ |Real.log c| := neg_le_abs _
  have hlog : Real.log (1 + B j) < Real.log c + a * T j := by
    dsimp [epsilon] at hlogUpper
    nlinarith
  have hpos : 0 < 1 + B j := by linarith [h.nonneg j]
  have hexp : Real.exp (Real.log (1 + B j)) <
      Real.exp (Real.log c + a * T j) :=
    Real.exp_strictMono hlog
  have hbefore : 1 + B j < c * Real.exp (a * T j) := by
    simpa only [Real.exp_log hpos, Real.exp_add, Real.exp_log hc]
      using hexp
  linarith

/-- An ALL-M lower bound rules out a root-dependent choice of M_j once the
negative exponent exceeds the upper logarithmic rate of the budget. -/
theorem no_adaptive_witness_above_rate
    {A : AllModeSineFamily} {T B : ℕ → ℝ} {sigma a c : ℝ}
    (hbudget : LogRateUpperBudget T B sigma)
    (hlower : NativeAllModeLower A T B)
    (ha : sigma < a) (hc : 0 < c) :
    ¬ AdaptiveExponentialWitness A T a c := by
  rintro ⟨J, hwitness⟩
  obtain ⟨K, hsmall⟩ := eventual_dominance_above_rate hbudget a c ha hc
  let j : ℕ := max J K
  obtain ⟨M, x, hunit, hnegative⟩ := hwitness j (le_max_left J K)
  have hfloor : -(B j) ≤ quadratic (A (T j) M) x := by
    simpa only [hunit, mul_one] using hlower j M x
  have hbudgetBound := hsmall j (le_max_right J K)
  linarith

/-- Quantitative contrapositive. A nonzero displacement b>0 whose full
analytic witness rates reach every exponent below 2*b is bounded by the
logarithmic arithmetic rate: 2*b <= sigma. -/
theorem displacement_le_budget_rate
    {A : AllModeSineFamily} {T B : ℕ → ℝ} {sigma b : ℝ}
    (hbudget : LogRateUpperBudget T B sigma)
    (hlower : NativeAllModeLower A T B) (hb : 0 < b)
    (hamplifies : AmplifiesBelowDoubleDisplacement A T b) :
    2 * b ≤ sigma := by
  by_contra hfailure
  have hfast : sigma < 2 * b := lt_of_not_ge hfailure
  let a : ℝ := (sigma + 2 * b) / 2
  have ha : 0 < a := by
    dsimp [a]
    linarith [hbudget.rate_nonneg]
  have hσa : sigma < a := by
    dsimp [a]
    linarith
  have ha2b : a < 2 * b := by
    dsimp [a]
    linarith
  obtain ⟨c, hc, hwitness⟩ := hamplifies a ha ha2b
  exact (no_adaptive_witness_above_rate hbudget hlower hσa hc) hwitness

/-- The literal zeta matrix carries both signed pole orientations, all
active prime powers and the original gamma factor. -/
def zetaAllModes : AllModeSineFamily :=
  fun t M => zetaSineMatrix t M

/-- The literal PRIMITIVE NONPRINCIPAL conjugate-pair matrix carries
character phases via pairedPrimeWeight, gamma parity and true conductor. -/
def pairedAllModes {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (hprimitive : chi.IsPrimitive)
    (hnonprincipal : chi ≠ 1) : AllModeSineFamily :=
  fun t M => primitivePairSineMatrix chi hprimitive hnonprincipal t M

/-- For zeta, the hypothetical zero itself has displacement Re(s)-1/2
on the right critical half-strip; a global rate sigma therefore excludes
zeros to the right of Re(s)=(1+sigma)/2. -/
theorem zeta_offline_displacement_band
    (T B : ℕ → ℝ) (sigma : ℝ)
    (hbudget : LogRateUpperBudget T B sigma)
    (hlower : NativeAllModeLower zetaAllModes T B)
    (hoffline : ∀ s : ℂ, s ∈ rightCriticalStrip →
      riemannZeta s = 0 →
      AmplifiesBelowDoubleDisplacement zetaAllModes T
        (s.re - (1 / 2 : ℝ))) :
    ∀ s : ℂ, s ∈ rightCriticalStrip →
      riemannZeta s = 0 →
      2 * (s.re - (1 / 2 : ℝ)) ≤ sigma := by
  intro s hs hz
  have hb : 0 < s.re - (1 / 2 : ℝ) := sub_pos.mpr hs.1
  exact displacement_le_budget_rate hbudget hlower hb (hoffline s hs hz)

/-- In the sigma=0 case the original zeta RH predicate follows, provided
the two explicit arithmetic/analytic supplier hypotheses are available. -/
theorem rh_of_adaptive_all_mode_sublinear_budget
    (T B : ℕ → ℝ)
    (hbudget : LogSublinearUpperBudget T B)
    (hlower : NativeAllModeLower zetaAllModes T B)
    (hoffline : ∀ s : ℂ, s ∈ rightCriticalStrip →
      riemannZeta s = 0 →
      AmplifiesBelowDoubleDisplacement zetaAllModes T
        (s.re - (1 / 2 : ℝ))) :
    _root_.RiemannHypothesis := by
  apply (rh_iff_nonzero_rightStrip).2
  intro s hs hz
  have hb : 0 < s.re - (1 / 2 : ℝ) := sub_pos.mpr hs.1
  have hband := zeta_offline_displacement_band T B 0
    (zero_rate_of_sublinear hbudget) hlower hoffline s hs hz
  linarith

/-- Primitive Dirichlet zeros are treated on BOTH sides, without an
unjustified same-character reflection. No zeta pole is inserted. -/
theorem primitive_offline_displacement_band
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T B : ℕ → ℝ) (sigma : ℝ)
    (hbudget : LogRateUpperBudget T B sigma)
    (hlower : NativeAllModeLower (pairedAllModes chi hp hn) T B)
    (hoffline : ∀ s : ℂ, s ∈ offCriticalStrip →
      chi.LFunction s = 0 →
      AmplifiesBelowDoubleDisplacement (pairedAllModes chi hp hn) T
        |s.re - (1 / 2 : ℝ)|) :
    ∀ s : ℂ, s ∈ offCriticalStrip →
      chi.LFunction s = 0 →
      2 * |s.re - (1 / 2 : ℝ)| ≤ sigma := by
  intro s hs hz
  have hb : 0 < |s.re - (1 / 2 : ℝ)| :=
    abs_pos.mpr (sub_ne_zero.mpr hs.2.2)
  exact displacement_le_budget_rate hbudget hlower hb (hoffline s hs hz)

/-- A sublinear-log all-mode budget excludes both off-critical components
for the original primitive nonprincipal L-function. -/
theorem primitive_critical_line_of_adaptive_all_mode_budget
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T B : ℕ → ℝ)
    (hbudget : LogSublinearUpperBudget T B)
    (hlower : NativeAllModeLower (pairedAllModes chi hp hn) T B)
    (hoffline : ∀ s : ℂ, s ∈ offCriticalStrip →
      chi.LFunction s = 0 →
      AmplifiesBelowDoubleDisplacement (pairedAllModes chi hp hn) T
        |s.re - (1 / 2 : ℝ)|) :
    DirichletCriticalLine chi := by
  apply (critical_line_iff_nonzero_offStrip chi).2
  intro s hs hz
  have hb : 0 < |s.re - (1 / 2 : ℝ)| :=
    abs_pos.mpr (sub_ne_zero.mpr hs.2.2)
  have hband := primitive_offline_displacement_band
    chi hp hn T B 0 (zero_rate_of_sublinear hbudget)
    hlower hoffline s hs hz
  linarith

/-- All-sector assembly via the repository's real inducing-character theorem.
The primitive PRINCIPAL case remains an explicitly required separate source
consumer; the nonprincipal pair is not passed to the pole-inclusive zeta
source by renaming its phases. No all-sector premise is constructed here. -/
theorem dirichlet_grh_of_adaptive_all_mode_budgets
    (hprincipal : ∀ (q : ℕ) [NeZero q]
      (chi : DirichletCharacter ℂ q), chi.IsPrimitive → chi = 1 →
        DirichletCriticalLine chi)
    (hnonprincipal : ∀ (q : ℕ) [NeZero q]
      (chi : DirichletCharacter ℂ q)
      (hp : chi.IsPrimitive) (hn : chi ≠ 1),
        ∃ (T B : ℕ → ℝ),
          LogSublinearUpperBudget T B ∧
          NativeAllModeLower (pairedAllModes chi hp hn) T B ∧
          (∀ s : ℂ, s ∈ offCriticalStrip →
            chi.LFunction s = 0 →
            AmplifiesBelowDoubleDisplacement (pairedAllModes chi hp hn) T
              |s.re - (1 / 2 : ℝ)|)) :
    DirichletGRH := by
  apply (dirichletGRH_iff_primitive).2
  intro q hq chi hp
  by_cases hprincipalChi : chi = 1
  · exact hprincipal q chi hp hprincipalChi
  · obtain ⟨T, B, hb, hl, hw⟩ :=
      hnonprincipal q chi hp hprincipalChi
    exact primitive_critical_line_of_adaptive_all_mode_budget
      chi hp hprincipalChi T B hb hl hw

end GRWTSK.NumberTheory.WeilQuadraticForm.AdaptiveSineGrowth
