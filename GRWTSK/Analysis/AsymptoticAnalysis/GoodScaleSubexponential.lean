/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.AsymptoticAnalysis.PolynomialSubexponential

/-!
# Subexponential bounds from affinely frequent good scales

The good scales concern the same outer variable as the target function.
Cofinality alone is not the hypothesis: the next good scale must have an
explicit affine upper bound. No entropy-decrement or arithmetic estimate
is asserted. SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

open GRWTSK.RiemannHypothesis.CCC

/-- Every sufficiently large time is followed by a good time with controlled overshoot. -/
def AffineFrequent (G : Set ℝ) : Prop :=
  ∃ a b T₀ : ℝ, 1 ≤ a ∧ 0 ≤ b ∧ 0 ≤ T₀ ∧
    ∀ T : ℝ, T₀ ≤ T → ∃ S : ℝ, S ∈ G ∧ T ≤ S ∧ S ≤ a * T + b

/-- Rate-dependent constants and starting times, on the unchanged good-scale set. -/
def SubexponentialOn (f : ℝ → ℝ) (G : Set ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ C T₁ : ℝ, 0 ≤ C ∧ 0 ≤ T₁ ∧
    ∀ T : ℝ, T ∈ G → T₁ ≤ T → f T ≤ C * Real.exp (ε * T)

theorem on_of_global {f : ℝ → ℝ} (hf : SubexponentialUpper f) (G : Set ℝ) :
    SubexponentialOn f G := by
  intro ε hε
  obtain ⟨C, hC, hb⟩ := hf ε hε
  exact ⟨C, 0, hC, le_rfl, fun T _ hT => hb T hT⟩

/-- Adding a globally controlled error preserves the exact good scales. -/
theorem add_global {f g : ℝ → ℝ} {G : Set ℝ}
    (hf : SubexponentialOn f G) (hg : SubexponentialUpper g) :
    SubexponentialOn (fun T => f T + g T) G := by
  intro ε hε
  obtain ⟨C, T₁, hC, hT₁, hfC⟩ := hf ε hε
  obtain ⟨D, hD, hgD⟩ := hg ε hε
  refine ⟨C + D, T₁, add_nonneg hC hD, hT₁, ?_⟩
  intro T hG hT
  simpa only [add_mul] using add_le_add (hfC T hG hT) (hgD T (hT₁.trans hT))

/-- Monotonicity fills the gaps; the bounded initial segment is absorbed explicitly. -/
theorem global_of_monotoneOn {f : ℝ → ℝ} {G : Set ℝ}
    (hmono : MonotoneOn f (Set.Ici 0))
    (hcover : AffineFrequent G) (hgood : SubexponentialOn f G) :
    SubexponentialUpper f := by
  obtain ⟨a, b, T₀, ha, hb, hT₀, hcover⟩ := hcover
  have haPos : 0 < a := lt_of_lt_of_le zero_lt_one ha
  intro ε hε
  let δ : ℝ := ε / a
  have hδ : 0 < δ := div_pos hε haPos
  have hδa : δ * a = ε := by
    dsimp [δ]
    exact div_mul_cancel₀ ε haPos.ne'
  obtain ⟨C, T₁, hC, hT₁, hbound⟩ := hgood δ hδ
  let R : ℝ := max T₀ T₁
  have hR : 0 ≤ R := hT₀.trans (le_max_left _ _)
  have hR₀ : T₀ ≤ R := le_max_left _ _
  have hR₁ : T₁ ≤ R := le_max_right _ _
  let D : ℝ := max 0 (f R) + C * Real.exp (δ * b)
  have hD : 0 ≤ D :=
    add_nonneg (le_max_left _ _) (mul_nonneg hC (Real.exp_pos _).le)
  refine ⟨D, hD, ?_⟩
  intro T hT
  by_cases hlarge : R ≤ T
  · obtain ⟨S, hSG, hTS, hS⟩ := hcover T (hR₀.trans hlarge)
    have hS₁ : T₁ ≤ S := hR₁.trans (hlarge.trans hTS)
    have hexp : Real.exp (δ * S) ≤
        Real.exp (δ * b) * Real.exp (ε * T) := by
      calc
        Real.exp (δ * S) ≤ Real.exp (δ * (a * T + b)) :=
          Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left hS hδ.le)
        _ = Real.exp (δ * b) * Real.exp (ε * T) := by
          have hscale : δ * (a * T + b) = δ * b + ε * T := by
            calc
              δ * (a * T + b) = δ * b + (δ * a) * T := by ring
              _ = δ * b + ε * T := by rw [hδa]
          rw [hscale, Real.exp_add]
    have hCD : C * Real.exp (δ * b) ≤ D := by
      dsimp [D]
      exact le_add_of_nonneg_left (le_max_left _ _)
    calc
      f T ≤ f S := hmono hT (hT.trans hTS) hTS
      _ ≤ C * Real.exp (δ * S) := hbound S hSG hS₁
      _ ≤ C * (Real.exp (δ * b) * Real.exp (ε * T)) :=
        mul_le_mul_of_nonneg_left hexp hC
      _ = (C * Real.exp (δ * b)) * Real.exp (ε * T) := by ring
      _ ≤ D * Real.exp (ε * T) :=
        mul_le_mul_of_nonneg_right hCD (Real.exp_pos _).le
  · have hTR : T ≤ R := (lt_of_not_ge hlarge).le
    have hExp : (1 : ℝ) ≤ Real.exp (ε * T) := by
      simpa using Real.exp_le_exp.mpr (mul_nonneg hε.le hT)
    have hmaxD : max 0 (f R) ≤ D := by
      dsimp [D]
      exact le_add_of_nonneg_right (mul_nonneg hC (Real.exp_pos _).le)
    calc
      f T ≤ f R := hmono hT hR hTR
      _ ≤ max 0 (f R) := le_max_right _ _
      _ ≤ D := hmaxD
      _ ≤ D * Real.exp (ε * T) := le_mul_of_one_le_right hD hExp

/-- An equivalence of growth obligations, not an arithmetic witness. -/
theorem global_iff_on {f : ℝ → ℝ} {G : Set ℝ}
    (hmono : MonotoneOn f (Set.Ici 0)) (hcover : AffineFrequent G) :
    SubexponentialUpper f ↔ SubexponentialOn f G :=
  ⟨fun h => on_of_global h G, global_of_monotoneOn hmono hcover⟩

/-- The full half-line is an elementary coverage fixture. -/
theorem affineFrequent_nonnegative : AffineFrequent (Set.Ici 0) := by
  refine ⟨1, 0, 0, le_rfl, le_rfl, le_rfl, ?_⟩
  intro T hT
  exact ⟨T, hT, le_rfl, by simp⟩

/-- A single checked height cannot supply the required coverage. -/
theorem not_affineFrequent_singleton_zero : ¬ AffineFrequent ({0} : Set ℝ) := by
  rintro ⟨a, b, T₀, ha, hb, hT₀, hcover⟩
  obtain ⟨S, hS, hTS, hupper⟩ := hcover (max T₀ 1) (le_max_left _ _)
  have hzero : S = 0 := Set.mem_singleton_iff.mp hS
  have hone : (1 : ℝ) ≤ max T₀ 1 := le_max_right _ _
  linarith

end GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
