# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KQHBootstrap.Variant3085bd2efd4072e2dcef85d9756a138dbf02f6c139c40eefc5b908daa5201e3b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5c2548cdd66e09bcb4632267ab1d9bbdb10f7fd` · SHA-256 `3085bd2efd4072e2dcef85d9756a138dbf02f6c139c40eefc5b908daa5201e3b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Order.ConditionallyCompleteLattice.Basic
import Mathlib.Tactic

/-!
# Finite-horizon closing inequalities

The supremum is taken over every real scale in a closed interval. Local boundedness and the
uniform closing inequality are separate hypotheses. In particular, this module does not
provide the closing inequality for the prime-power discrepancy.

Research direction, selection, corrections and evaluation: grwtsk contributors.
Proof construction: OpenAI Codex, task RH16-KQH-20261007.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.KQHBootstrap

def closingRoot (C₀ C₁ : ℝ) : ℝ :=
  (C₁ + Real.sqrt (C₁ ^ 2 + 4 * C₀)) / 2

def closingBound (C₀ C₁ : ℝ) : ℝ := closingRoot C₀ C₁ ^ 2

theorem closingRoot_nonneg {C₀ C₁ : ℝ} (hC₁ : 0 ≤ C₁) :
    0 ≤ closingRoot C₀ C₁ := by
  unfold closingRoot
  positivity

theorem closingRoot_ge_coefficient {C₀ C₁ : ℝ} (hC₀ : 0 ≤ C₀) (hC₁ : 0 ≤ C₁) :
    C₁ ≤ closingRoot C₀ C₁ := by
  have hs := Real.sq_sqrt (show 0 ≤ C₁ ^ 2 + 4 * C₀ by positivity)
  have hn := Real.sqrt_nonneg (C₁ ^ 2 + 4 * C₀)
  unfold closingRoot
  nlinarith

theorem closingRoot_equation {C₀ C₁ : ℝ} (hC₀ : 0 ≤ C₀) :
    closingRoot C₀ C₁ ^ 2 = C₀ + C₁ * closingRoot C₀ C₁ := by
  have hs := Real.sq_sqrt (show 0 ≤ C₁ ^ 2 + 4 * C₀ by positivity)
  unfold closingRoot
  nlinarith

/-- The explicit positive quadratic root closes the square-root inequality. -/
theorem le_closingBound_of_sqrt_inequality {K C₀ C₁ : ℝ}
    (hK : 0 ≤ K) (hC₀ : 0 ≤ C₀) (hC₁ : 0 ≤ C₁)
    (hclose : K ≤ C₀ + C₁ * Real.sqrt K) :
    K ≤ closingBound C₀ C₁ := by
  have hx := Real.sqrt_nonneg K
  have hx₂ := Real.sq_sqrt hK
  have hr := closingRoot_nonneg (C₀ := C₀) hC₁
  have hr₁ := closingRoot_ge_coefficient hC₀ hC₁
  have hr₂ := closingRoot_equation (C₁ := C₁) hC₀
  have hxr : Real.sqrt K ≤ closingRoot C₀ C₁ := by
    by_contra h
    have hlt := lt_of_not_ge h
    have hp : 0 < (Real.sqrt K - closingRoot C₀ C₁) *
        (Real.sqrt K + closingRoot C₀ C₁ - C₁) := by
      apply mul_pos
      · linarith
      · linarith
    nlinarith
  unfold closingBound
  nlinarith

def finiteHorizon (U : ℝ → ℝ) (R T : ℝ) : ℝ :=
  max 0 (sSup (U '' Set.Icc R T))

theorem finiteHorizon_nonneg (U : ℝ → ℝ) (R T : ℝ) :
    0 ≤ finiteHorizon U R T := le_max_left _ _

/-- Boundedness is needed before using the real conditional supremum as an upper bound. -/
theorem value_le_finiteHorizon {U : ℝ → ℝ} {R T A : ℝ}
    (hbounded : BddAbove (U '' Set.Icc R T)) (hRA : R ≤ A) (hAT : A ≤ T) :
    U A ≤ finiteHorizon U R T := by
  apply (le_csSup hbounded ?_).trans (le_max_right _ _)
  exact Set.mem_image_of_mem U ⟨hRA, hAT⟩

/-- A finite-range upper supplier establishes boundedness without a continuity assumption. -/
theorem image_bddAbove_of_upper_bound {U : ℝ → ℝ} {R T F : ℝ}
    (hF : ∀ A : ℝ, R ≤ A → A ≤ T → U A ≤ F) :
    BddAbove (U '' Set.Icc R T) := by
  refine ⟨F, ?_⟩
  rintro y ⟨A, hA, rfl⟩
  exact hF A hA.1 hA.2

/-- Choosing the horizon equal to the queried scale preserves the all-real quantifier. -/
theorem uniform_cap_of_finite_horizon_sqrt {U : ℝ → ℝ} {R C₀ C₁ : ℝ}
    (hC₀ : 0 ≤ C₀) (hC₁ : 0 ≤ C₁)
    (hbounded : ∀ T : ℝ, R ≤ T → BddAbove (U '' Set.Icc R T))
    (hclose : ∀ T : ℝ, R ≤ T →
      finiteHorizon U R T ≤ C₀ + C₁ * Real.sqrt (finiteHorizon U R T)) :
    ∀ A : ℝ, R ≤ A → U A ≤ closingBound C₀ C₁ := by
  intro A hA
  exact (value_le_finiteHorizon (hbounded A hA) hA le_rfl).trans
    (le_closingBound_of_sqrt_inequality (finiteHorizon_nonneg U R A) hC₀ hC₁
      (hclose A hA))

/-- A strict affine contraction is another valid closing inequality. -/
theorem le_of_affine_contraction {K C θ : ℝ} (hθ : θ < 1)
    (hclose : K ≤ C + θ * K) : K ≤ C / (1 - θ) := by
  apply (le_div_iff₀ (by linarith : 0 < 1 - θ)).mpr
  nlinarith

theorem uniform_cap_of_finite_horizon_contraction {U : ℝ → ℝ} {R C θ : ℝ}
    (hθ : θ < 1)
    (hbounded : ∀ T : ℝ, R ≤ T → BddAbove (U '' Set.Icc R T))
    (hclose : ∀ T : ℝ, R ≤ T → finiteHorizon U R T ≤ C + θ * finiteHorizon U R T) :
    ∀ A : ℝ, R ≤ A → U A ≤ C / (1 - θ) := by
  intro A hA
  exact (value_le_finiteHorizon (hbounded A hA) hA le_rfl).trans
    (le_of_affine_contraction hθ (hclose A hA))

end FormalResearch.RiemannHypothesis.KQHBootstrap
```
