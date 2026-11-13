/- 
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineProjection
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PrimitiveDirichletCriticalLine
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.QuadraticCertificateCore
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic

/-!
# Cofinal subexponential Weil budgets versus off-critical zero amplification

Source: grwtsk/math's literal zetaSineMatrix and primitivePairSineMatrix,
WeilOddRootProjection.lean Sections B--E, and the supplied
odd-weil-lower-growth-amplification-of-a-hypothetical-off-line-zero.md,
Sections 2--7 (Noeaaeue 07-GLOBAL-RH-GRH-ROUTES.md, 2026-11-06).
The root consumers are the existing Mathlib RiemannHypothesis and project
DirichletCriticalLine/DirichletGRH; they are NOT redefined.

The finite matrix entries are EXACT original arithmetic sine compressions, not
invented positive matrices. Zeta retains both signed pole moments and every
active prime power. The primitive nonprincipal character source retains its
conductor, gamma parity and real conjugate-pair prime coefficients.

The theorems prove the scalar subexponential/exponential incompatibility, then
return it to these actual matrices and root predicates. They DO NOT prove the
source-specific signed lower bound on unbounded windows, nor the analytical
implication from a hypothetical off-critical root to normalized exponentially
negative vectors in the native finite sine matrices. Those are explicit,
separately quantified hypotheses, not axioms or hidden declarations.

The terminal all-Dirichlet-GRH theorem also retains an explicit principal
primitive sector supplier; primitive-to-imprimitive reduction is the existing
dirichletGRH_iff_primitive theorem, not an assumed new Euler identity.

Source status: MANUAL_LEAN_SOURCE_CANDIDATE. No Lean/Lake executable or verified
Noe proof-automation skill was available. Lean elaboration, native dependency
build, fresh kernel replay, transitive axiom audit and independent mathematical
review: NOT_RUN. No proof of RH or Dirichlet GRH is claimed.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.CofinalSubexponential

open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.NumberTheory.Conditional

/-- The explicit eventual form of log(1+B_j) / T_j -> 0 from above,
where T_j -> +infinity and B_j >= 0. This is the exact upper-rate input
needed by the growth contradiction; it does not assert a Weil-form bound. -/
structure LogSublinearUpperBudget (T B : ℕ → ℝ) : Prop where
  cofinal : ∀ R : ℝ, ∃ J : ℕ, ∀ j : ℕ, J ≤ j → R ≤ T j
  nonneg : ∀ j : ℕ, 0 ≤ B j
  logUpper : ∀ ε : ℝ, 0 < ε → ∃ J : ℕ,
    ∀ j : ℕ, J ≤ j → Real.log (1 + B j) ≤ ε * T j

/-- Every fixed positive exponential eventually dominates a sublinear-log
budget, with its arbitrary positive prefactor retained. -/
theorem eventually_budget_lt_exponential {T B : ℕ → ℝ}
    (h : LogSublinearUpperBudget T B) (a c : ℝ)
    (ha : 0 < a) (hc : 0 < c) :
    ∃ J : ℕ, ∀ j : ℕ, J ≤ j → B j < c * Real.exp (a * T j) := by
  obtain ⟨Jsmall, hsmall⟩ := h.logUpper (a / 2) (by positivity)
  obtain ⟨Jlarge, hlarge⟩ := h.cofinal ((2 * |Real.log c|) / a + 1)
  refine ⟨max Jsmall Jlarge, ?_⟩
  intro j hj
  have hjSmall : Jsmall ≤ j := (le_max_left _ _).trans hj
  have hjLarge : Jlarge ≤ j := (le_max_right _ _).trans hj
  have hsize := hlarge j hjLarge
  have hquotient : (2 * |Real.log c|) / a < T j := by linarith
  have hscale : 2 * |Real.log c| < a * T j :=
    (div_lt_iff₀ ha).mp hquotient
  have hupper := hsmall j hjSmall
  have habs : -Real.log c ≤ |Real.log c| := neg_le_abs _
  have hlog : Real.log (1 + B j) < Real.log c + a * T j := by
    nlinarith
  have hpos : 0 < 1 + B j := by linarith [h.nonneg j]
  have hexp : Real.exp (Real.log (1 + B j)) <
      Real.exp (Real.log c + a * T j) := Real.exp_strictMono hlog
  have hbound : 1 + B j < c * Real.exp (a * T j) := by
    simpa only [Real.exp_log hpos, Real.exp_add, Real.exp_log hc] using hexp
  linarith

/-- One source-parameterized family of the existing finite sine matrices. -/
abbrev SineMatrixFamily (M : ℕ → ℕ) : Type :=
  (j : ℕ) → Matrix (Fin (M j)) (Fin (M j)) ℝ

/-- A uniform lower bound on EVERY vector in EVERY indicated native matrix.
A positive compression or a single favorable eigenvector is not this premise. -/
def SineMatrixLowerBound (M : ℕ → ℕ)
    (A : SineMatrixFamily M) (B : ℕ → ℝ) : Prop :=
  ∀ (j : ℕ) (x : Fin (M j) → ℝ),
    -(B j) * (∑ i : Fin (M j), x i ^ 2) ≤ quadratic (A j) x

/-- An off-line orbit's purported NEGATIVE return must use an actual
normalized source vector on every sufficiently large stage. Existence of such
vectors is an analytic input, not a consequence of finite matrix definitions. -/
def ExpandingNegativeSineWitness (T : ℕ → ℝ) (M : ℕ → ℕ)
    (A : SineMatrixFamily M) : Prop :=
  ∃ a : ℝ, 0 < a ∧ ∃ c : ℝ, 0 < c ∧ ∃ J : ℕ,
    ∀ (j : ℕ), J ≤ j → ∃ x : Fin (M j) → ℝ,
      (∑ i : Fin (M j), x i ^ 2) = 1 ∧
        quadratic (A j) x ≤ -(c * Real.exp (a * T j))

/-- A cofinal sublinear-log lower budget excludes persistent exponential
negative Rayleigh values, including every intermediate matrix direction. -/
theorem no_expanding_negative_sine_witness {T B : ℕ → ℝ}
    {M : ℕ → ℕ} {A : SineMatrixFamily M}
    (hbudget : LogSublinearUpperBudget T B)
    (hlower : SineMatrixLowerBound M A B) :
    ¬ ExpandingNegativeSineWitness T M A := by
  rintro ⟨a, ha, c, hc, J, hwitness⟩
  obtain ⟨K, hsmall⟩ := eventually_budget_lt_exponential hbudget a c ha hc
  let j := max J K
  have hjJ : J ≤ j := le_max_left J K
  have hjK : K ≤ j := le_max_right J K
  obtain ⟨x, hunit, hnegative⟩ := hwitness j hjJ
  have hfloor : -(B j) ≤ quadratic (A j) x := by
    simpa only [hunit, mul_one] using hlower j x
  have hsmall' := hsmall j hjK
  linarith

/-- The original zeta matrix contains its NEGATIVE odd pole and the exact
prime-power and gamma entries; no pole-free surrogate is used. -/
def zetaSineFamily (T : ℕ → ℝ) (M : ℕ → ℕ) :
    SineMatrixFamily M :=
  fun j => zetaSineMatrix (T j) (M j)

/-- Original primitive paired-character matrix; real part is formed only
AFTER combining the two actual completed character formulas. -/
def primitivePairedSineFamily {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hprimitive : χ.IsPrimitive)
    (hnonprincipal : χ ≠ 1) (T : ℕ → ℝ) (M : ℕ → ℕ) :
    SineMatrixFamily M :=
  fun j => primitivePairSineMatrix χ hprimitive hnonprincipal (T j) (M j)

/-- CONDITIONAL RH consumer. hoffline is the still-unproved analytic
zero-orbit-to-actual-finite-sine witness return. hlower is the still-unproved
all-window arithmetic lower bound. The concluding RH predicate is Mathlib's. -/
theorem rh_of_cofinal_odd_sine_budget
    (T : ℕ → ℝ) (M : ℕ → ℕ) (B : ℕ → ℝ)
    (hbudget : LogSublinearUpperBudget T B)
    (hlower : SineMatrixLowerBound M (zetaSineFamily T M) B)
    (hoffline : ∀ s : ℂ, s ∈ rightCriticalStrip → riemannZeta s = 0 →
      ExpandingNegativeSineWitness T M (zetaSineFamily T M)) :
    _root_.RiemannHypothesis := by
  apply (rh_iff_nonzero_rightStrip).2
  intro s hs hz
  exact (no_expanding_negative_sine_witness hbudget hlower)
    (hoffline s hs hz)

/-- CONDITIONAL primitive nonprincipal Dirichlet sector consumer. The
existing native DirichletCriticalLine is the target, with BOTH components
of the off-critical strip retained and without same-character reflection. -/
theorem primitive_critical_line_of_cofinal_paired_sine_budget
    {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hprimitive : χ.IsPrimitive)
    (hnonprincipal : χ ≠ 1)
    (T : ℕ → ℝ) (M : ℕ → ℕ) (B : ℕ → ℝ)
    (hbudget : LogSublinearUpperBudget T B)
    (hlower : SineMatrixLowerBound M
      (primitivePairedSineFamily χ hprimitive hnonprincipal T M) B)
    (hoffline : ∀ s : ℂ, s ∈ offCriticalStrip → χ.LFunction s = 0 →
      ExpandingNegativeSineWitness T M
        (primitivePairedSineFamily χ hprimitive hnonprincipal T M)) :
    DirichletCriticalLine χ := by
  apply (critical_line_iff_nonzero_offStrip χ).2
  intro s hs hz
  exact (no_expanding_negative_sine_witness hbudget hlower)
    (hoffline s hs hz)

/-- Explicit all-sector assembly using the pre-existing primitive reduction.
The principal primitive case is NOT fed into the nonprincipal matrix (which
has no zeta pole). It must instead come from the genuine zeta comparison.
Neither sector supplier is constructed by this theorem. -/
theorem grh_of_primitive_cofinal_sine_budgets
    (hprincipal : ∀ (q : ℕ) [NeZero q]
      (χ : DirichletCharacter ℂ q), χ.IsPrimitive → χ = 1 →
        DirichletCriticalLine χ)
    (hnonprincipal : ∀ (q : ℕ) [NeZero q]
      (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1),
        ∃ (T : ℕ → ℝ) (M : ℕ → ℕ) (B : ℕ → ℝ),
          LogSublinearUpperBudget T B ∧
          SineMatrixLowerBound M (primitivePairedSineFamily χ hp hn T M) B ∧
          (∀ s : ℂ, s ∈ offCriticalStrip → χ.LFunction s = 0 →
            ExpandingNegativeSineWitness T M
              (primitivePairedSineFamily χ hp hn T M))) :
    DirichletGRH := by
  apply (dirichletGRH_iff_primitive).2
  intro q hq χ hp
  by_cases hn : χ = 1
  · exact hprincipal q χ hp hn
  · obtain ⟨T, M, B, hb, hl, hw⟩ := hnonprincipal q χ hp hn
    exact primitive_critical_line_of_cofinal_paired_sine_budget
      χ hp hn T M B hb hl hw

end GRWTSK.NumberTheory.WeilQuadraticForm.CofinalSubexponential
