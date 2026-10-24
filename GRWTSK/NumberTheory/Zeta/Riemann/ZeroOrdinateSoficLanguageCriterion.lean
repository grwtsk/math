/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
No rational/algebraic-to-sofic theorem or non-sofic zeta trace is proved.
-/
import GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover
import GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry
import Mathlib

/-!
# Actual zeta-zero ordinate and exact sofic factor-language criteria

This supplies the exact *zeta-specific* predicates missing from the
previous type-agnostic GRH/sofic logical interface:
  source point z : C
  nontrivial zero: NontrivialZetaZero z
  ordinate gamma: z.im
  critical line: z.re = 1/2
  sofic property: exact finite labeled graph for ALL finite factors of
    a chosen infinite symbolic trace, not a mere accepted path.

A real arithmetic model is required to identify "rational" with the
image of Q in R and "algebraic" with the root of a nonzero Q-polynomial.
Its correctness proofs and the concrete symbolic/source map remain
supplier fields. No fake arithmetic predicates are substituted.

Irrationality follows WITHOUT a critical-line assumption from
  rational ordinate -> exact sofic language,
  plus a genuinely independent non-soficity theorem.
Conditional critical-line placement (as a consequence of GRH if
actually supplied) enables the stronger
  algebraic ordinate on line -> exact sofic language
and hence transcendence. GRH alone yields no arithmetic conclusion.

The 7/8 -> 3/4 program is kept independent. Any analytic refinement
theorem needs valid zero-free estimates at ALL stages, not merely a
vanishing overhead ratio or any finite symbolic presentation.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion

open GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic
open GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover
open GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover

universe u v

/-- The actual arithmetic notion "rational real" with no invented fields. -/
def RationalReal (gamma : ℝ) : Prop :=
  ∃ q : ℚ, (q : ℝ) = gamma

/-- A real algebraic number is the root of a nonzero Q-polynomial.
The polynomial is transported to R before evaluation. -/
def AlgebraicReal (gamma : ℝ) : Prop :=
  ∃ p : Polynomial ℚ, p ≠ 0 ∧
    (p.map (algebraMap ℚ ℝ)).eval gamma = 0

/-- A genuine arithmetic adapter identifies the old abstract predicates
with the explicit rational and algebraic definitions, rather than
silently calling an unrelated property "algebraic." -/
structure CorrectRealArithmetic where
  arithmetic : HeightArithmetic ℝ
  rational_iff : ∀ gamma, arithmetic.rational gamma ↔ RationalReal gamma
  algebraic_iff : ∀ gamma, arithmetic.algebraic gamma ↔ AlgebraicReal gamma

/-- Exact source predicate for the nontrivial Riemann zeta zeros. -/
def ActualZetaZero (z : ℂ) : Prop := NontrivialZetaZero z

/-- The complex ordinate readout, independent of the real-part location. -/
def zetaHeight (z : ℂ) : ℝ := z.im

/-- Zeta-critical-line placement is the RH component of GRH, not all of GRH. -/
def ZetaCriticalPlacement : Prop :=
  GRHFor ActualZetaZero (fun z : ℂ => z.re = (1 : ℝ) / 2)

/-- Independent arithmetic and non-soficity suppliers for a SPECIFIED trace.
The first two fields contain full exact-language presentations, not merely
finite-state collisions or one accepted path. No constructors are supplied. -/
structure ZetaSoficSuppliers (trace : ℂ → ℕ → Bool) where
  rationalPresentation :
    ∀ z, ActualZetaZero z → RationalReal (zetaHeight z) →
      IsSoficTrace (trace z)
  algebraicOnLinePresentation :
    ∀ z, ActualZetaZero z → z.re = (1 : ℝ) / 2 →
      AlgebraicReal (zetaHeight z) → IsSoficTrace (trace z)
  nonsoficActualZero :
    ∀ z, ActualZetaZero z → ¬ IsSoficTrace (trace z)

/-- The irrationality statement uses ONLY rational presentation and
non-soficity. It does not assume GRH or critical-line placement. -/
theorem zeta_zero_ordinate_irrational_without_GRH
    (M : CorrectRealArithmetic)
    (trace : ℂ → ℕ → Bool)
    (rationalPresentation :
      ∀ z, ActualZetaZero z → RationalReal (zetaHeight z) →
        IsSoficTrace (trace z))
    (nonsofic : ∀ z, ActualZetaZero z → ¬ IsSoficTrace (trace z)) :
    ∀ z, ActualZetaZero z → ¬ RationalReal (zetaHeight z) := by
  intro z hz hRat
  exact nonsofic z hz (rationalPresentation z hz hRat)

/-- The stronger algebraic-height implication is required independently
on the critical line; no transcendence inference is derived from GRH alone. -/
theorem zeta_zero_ordinate_transcendental_on_line
    (trace : ℂ → ℕ → Bool)
    (algebraicOnLinePresentation :
      ∀ z, ActualZetaZero z → z.re = (1 : ℝ) / 2 →
        AlgebraicReal (zetaHeight z) → IsSoficTrace (trace z))
    (nonsofic : ∀ z, ActualZetaZero z → ¬ IsSoficTrace (trace z))
    (z : ℂ) (hz : ActualZetaZero z)
    (hline : z.re = (1 : ℝ) / 2) :
    ¬ AlgebraicReal (zetaHeight z) := by
  intro hAlg
  exact nonsofic z hz (algebraicOnLinePresentation z hz hline hAlg)

/-- The demanded arithmetic split, with all three independent suppliers
visible in the theorem type. Critical-line placement uses the exact
zeta component of GRH, not a surrogate proof of full GRH. -/
theorem actual_zeta_zero_irrational_and_conditional_transcendental
    (trace : ℂ → ℕ → Bool)
    (S : ZetaSoficSuppliers trace)
    (hCritical : ZetaCriticalPlacement) :
    ∀ z, ActualZetaZero z →
      (¬ RationalReal (zetaHeight z)) ∧
      (z.re = (1 : ℝ) / 2) ∧
      (¬ AlgebraicReal (zetaHeight z)) := by
  intro z hz
  have hRat : ¬ RationalReal (zetaHeight z) := by
    intro h
    exact S.nonsoficActualZero z hz (S.rationalPresentation z hz h)
  have hline : z.re = (1 : ℝ) / 2 := hCritical z hz
  have hAlg : ¬ AlgebraicReal (zetaHeight z) := by
    intro h
    exact S.nonsoficActualZero z hz
      (S.algebraicOnLinePresentation z hz hline h)
  exact ⟨hRat, hline, hAlg⟩

/-- When a proposed genuine process cover supplies the actual trace,
its symbolic trace is a candidate observable; this theorem still
requires genuine rational/algebraic language and non-soficity
supplier proofs. The process cover itself does NOT supply them. -/
theorem ordinate_split_for_dynamic_spectral_cover
    {Obs : Type u} {State : Type v} {Spectral : Type*}
    [Fintype State] [AddCommGroup Spectral] [Module ℂ Spectral]
    (C : DynamicSpectralCover ℂ Obs State Bool Spectral)
    (S : ZetaSoficSuppliers C.labelTrace)
    (hCritical : ZetaCriticalPlacement) :
    ∀ z, ActualZetaZero z →
      (¬ RationalReal (zetaHeight z)) ∧
      (z.re = (1 : ℝ) / 2) ∧
      (¬ AlgebraicReal (zetaHeight z)) :=
  actual_zeta_zero_irrational_and_conditional_transcendental
    C.labelTrace S hCritical

/-- Actual stagewise analytic premises, seeded at 7/8 and cofinal toward
3/4, retain a separate dynamic refinement. The existence of this
structure is a large, UNPROVED zero-free-stage supplier. -/
structure DynamicThreeQuarterSoficProgram
    {Obs : Type u} {State : Type v} {Spectral : Type*}
    [Fintype State] [AddCommGroup Spectral] [Module ℂ Spectral] where
  analytic : ThreeQuarterRefinement ℂ
  analyticIsZeta : analytic.isZero = ActualZetaZero
  analyticRealPart : ∀ z, analytic.realPart z = z.re
  process : DynamicSpectralCover ℂ Obs State Bool Spectral

/-- Asymptotically free accounting is not used to infer stagewise bounds:
the three-quarter exclusion is CONDITIONAL on the complete analytic
scheme.stageZeroFree field. The remaining boundary is strict. -/
theorem DynamicThreeQuarterSoficProgram.zeroFree_strict_threeQuarters
    {Obs : Type u} {State : Type v} {Spectral : Type*}
    [Fintype State] [AddCommGroup Spectral] [Module ℂ Spectral]
    (P : DynamicThreeQuarterSoficProgram
      (Obs := Obs) (State := State) (Spectral := Spectral)) :
    ∀ z : ℂ, (3 : ℝ) / 4 < z.re → ¬ ActualZetaZero z := by
  intro z hz
  have h := P.analytic.limit_zeroFree z
  rw [P.analyticRealPart z, P.analyticIsZeta] at h
  exact h hz

end GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion
