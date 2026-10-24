/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical comparison: Levent Alpöge and Ralph Furman,
"More than two thirds of the zeta zeros are simple and on the critical line",
arXiv:2608.13637 (2026), Section 3, positive-index and rank–trace
inertia bounds. Formal source authored by Claude (Anthropic),
https://github.com/anthropics/formal-math/blob/e1a4e6508154ea59f030480661590a9fe3018011/zeta23/Zeta23/LinAlg/Inertia.lean,
blob 0d1de40376288d80e4938f69d81479c62835bf16.
This module is new GRWTSK mathematics, not a copy of the upstream
formalization or an import of its results. No zero-density or RH claim.
-/
import GRWTSK.Algebra.LinearAlgebra.TwoThirdsCongruenceInertia
import Mathlib.Tactic

/-!
# Signed two-thirds inertia: unavoidable relative comparison defect

The existing local real-congruence theorem bounds the dimension of
subspaces on which the compressed signed quadratic form Bᵀ J B is
strictly positive. Here the finite Hodge energy supplies an exact
coercivity scale.

For a *separately fixed* source quadratic consumer q and its complete
absolute comparison error E, the main theorem is the obstruction

  dim(W) > number of positive coordinates in J
    → (uniform source coercivity μ and relative error bound δ)
    → μ ≤ δ.

The positive-index capacity cannot be exceeded with a comparison
error smaller than the source's own quadratic positivity margin.
The result is NOT a new positivity assumption: it is a no-go theorem
for inaccurate spectral/Weil comparisons. The signed form is not
defined from q or from a positive Gram matrix.

A second theorem gives the dual bound for genuinely negative
subspaces. The complete finite-basis, analytic zero-divisor,
explicit-formula, asymptotic count and growing limit remain missing.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.TwoThirdsSignedMarginObstruction

open scoped BigOperators
open GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat
open GRWTSK.Algebra.LinearAlgebra.SignedOrientationBridge
open GRWTSK.Algebra.LinearAlgebra.TwoThirdsCongruenceInertia

noncomputable section

variable {ι : Type*} [Fintype ι]

/-- Exact complement of the *same* GRWTSK signed orientation:
switching each Boolean sign negates the quadratic form. -/
theorem signedEnergy_complementMask_eq_neg
    (mask : ι → Bool) (x : ι → ℝ) :
    signedEnergy (complementMask mask) x = - signedEnergy mask x := by
  calc
    signedEnergy (complementMask mask) x =
        ∑ i, -(fundamentalSymmetry mask x i * x i) := by
      unfold signedEnergy dot
      apply Finset.sum_congr rfl
      intro i _
      rw [fundamentalSymmetry_apply, fundamentalSymmetry_apply]
      cases h : mask i <;> simp [complementMask, h] <;> ring
    _ = - signedEnergy mask x := by
      simp [signedEnergy, dot]

/-- The *negative* inertia of an arbitrary rectangular signed
congruence is bounded by the number of complementary directions.
No orthogonal diagonalization or invertibility of B is required. -/
theorem negative_subspace_finrank_le_complementMask
    {κ : Type*} [Fintype κ]
    (mask : ι → Bool) (B : Matrix ι κ ℝ)
    (W : Submodule ℝ (κ → ℝ))
    (hnegative : ∀ x : κ → ℝ, x ∈ W → x ≠ 0 →
      signedEnergy mask (B *ᵥ x) < 0) :
    Module.finrank ℝ W ≤
      Fintype.card (PositiveCoordinates (complementMask mask)) := by
  apply positive_subspace_finrank_le_mask (complementMask mask) B W
  intro x hx hxne
  rw [signedEnergy_complementMask_eq_neg]
  exact neg_pos.mpr (hnegative x hx hxne)

/-- Strict excess dimension forces an actual nonzero vector in W
with *nonpositive* compressed signed energy. This is a bounded
inertia obstruction, not an analytic zero-side witness. -/
theorem excess_dimension_has_nonpositive_signed_vector
    {κ : Type*} [Fintype κ]
    (mask : ι → Bool) (B : Matrix ι κ ℝ)
    (W : Submodule ℝ (κ → ℝ))
    (hexcess :
      Fintype.card (PositiveCoordinates mask) < Module.finrank ℝ W) :
    ∃ x : κ → ℝ, x ∈ W ∧ x ≠ 0 ∧
      signedEnergy mask (B *ᵥ x) ≤ 0 := by
  classical
  by_contra hnone
  have hall :
      ∀ x : κ → ℝ, x ∈ W → x ≠ 0 →
        0 < signedEnergy mask (B *ᵥ x) := by
    intro x hx hxne
    by_contra hnot
    exact hnone ⟨x, hx, hxne, le_of_not_gt hnot⟩
  have hdim := positive_subspace_finrank_le_mask mask B W hall
  exact (not_le.mpr hexcess) hdim

/-- If a proposed source pairing is compared to the *signed*
congruence with absolute error E, an excess-dimensional subspace
contains a nonzero direction with source value at most E.
No sign or positivity of the source is assumed. -/
theorem excess_dimension_has_source_error_witness
    {κ : Type*} [Fintype κ]
    (mask : ι → Bool) (B : Matrix ι κ ℝ)
    (source error : (κ → ℝ) → ℝ)
    (hcomparison : ∀ x : κ → ℝ,
      |source x - signedEnergy mask (B *ᵥ x)| ≤ error x)
    (W : Submodule ℝ (κ → ℝ))
    (hexcess :
      Fintype.card (PositiveCoordinates mask) < Module.finrank ℝ W) :
    ∃ x : κ → ℝ, x ∈ W ∧ x ≠ 0 ∧ source x ≤ error x := by
  obtain ⟨x, hx, hxne, hnonpos⟩ :=
    excess_dimension_has_nonpositive_signed_vector mask B W hexcess
  refine ⟨x, hx, hxne, ?_⟩
  have hupper := (abs_le.mp (hcomparison x)).2
  linarith

/-- The existing finite positive energy is strictly positive at any
nonzero finite coordinate vector. This provides an actual common
relative-error scale, rather than an unverified positive norm label. -/
private theorem positiveEnergy_pos_of_ne_zero
    {κ : Type*} [Fintype κ] (x : κ → ℝ) (hx : x ≠ 0) :
    0 < positiveEnergy x := by
  have hn : 0 ≤ positiveEnergy x := positiveEnergy_nonneg x
  have hz : positiveEnergy x ≠ 0 := by
    intro hzero
    apply hx
    exact (dot_self_eq_zero_iff x).mp (by simpa [positiveEnergy] using hzero)
  exact lt_of_le_of_ne hn (Ne.symm hz)

/-- Quantitative robustness of signed inertia under an independently
supplied source-to-congruence comparison.

Assume source(x) ≥ μ·positiveEnergy(x) for every x in W;
assume the complete comparison error is ≤ δ·positiveEnergy(x)
for every x in W; and assume δ < μ. Then W fits in the positive
inertia capacity of the chosen actual sign mask. -/
theorem strict_relative_error_preserves_positive_index_bound
    {κ : Type*} [Fintype κ]
    (mask : ι → Bool) (B : Matrix ι κ ℝ)
    (source error : (κ → ℝ) → ℝ)
    (hcomparison : ∀ x : κ → ℝ,
      |source x - signedEnergy mask (B *ᵥ x)| ≤ error x)
    (W : Submodule ℝ (κ → ℝ))
    (μ δ : ℝ) (hgap : δ < μ)
    (hsource : ∀ x : κ → ℝ, x ∈ W →
      μ * positiveEnergy x ≤ source x)
    (herror : ∀ x : κ → ℝ, x ∈ W →
      error x ≤ δ * positiveEnergy x) :
    Module.finrank ℝ W ≤ Fintype.card (PositiveCoordinates mask) := by
  apply source_signed_inertia_le_mask_of_strict_margin
    mask B source error hcomparison W
  intro x hx hxne
  have hE : 0 < positiveEnergy x := positiveEnergy_pos_of_ne_zero x hxne
  have hμ := hsource x hx
  have hδ := herror x hx
  have hstrict : δ * positiveEnergy x < μ * positiveEnergy x :=
    mul_lt_mul_of_pos_right hgap hE
  linarith

/-- Strongest obstruction: when the proposed positive source
subspace has dimension *larger* than the sign-mask capacity,
its complete relative comparison defect δ must be at least the
source coercivity constant μ. This is a necessary condition,
not a construction of a signed Weil or spectral source. -/
theorem excess_dimension_forces_relative_error_at_least_margin
    {κ : Type*} [Fintype κ]
    (mask : ι → Bool) (B : Matrix ι κ ℝ)
    (source error : (κ → ℝ) → ℝ)
    (hcomparison : ∀ x : κ → ℝ,
      |source x - signedEnergy mask (B *ᵥ x)| ≤ error x)
    (W : Submodule ℝ (κ → ℝ))
    (hexcess :
      Fintype.card (PositiveCoordinates mask) < Module.finrank ℝ W)
    (μ δ : ℝ)
    (hsource : ∀ x : κ → ℝ, x ∈ W →
      μ * positiveEnergy x ≤ source x)
    (herror : ∀ x : κ → ℝ, x ∈ W →
      error x ≤ δ * positiveEnergy x) :
    μ ≤ δ := by
  by_contra hbad
  have hstrict : δ < μ := lt_of_not_ge hbad
  have hbound := strict_relative_error_preserves_positive_index_bound
    mask B source error hcomparison W μ δ hstrict hsource herror
  exact (not_le.mpr hexcess) hbound

/-- Dual result for negative source directions, using the complementary
mask and the exact same absolute error. Negative inertia cannot be
bounded by the *positive* count without exchanging the sign mask. -/
theorem strict_relative_error_preserves_negative_index_bound
    {κ : Type*} [Fintype κ]
    (mask : ι → Bool) (B : Matrix ι κ ℝ)
    (source error : (κ → ℝ) → ℝ)
    (hcomparison : ∀ x : κ → ℝ,
      |source x - signedEnergy mask (B *ᵥ x)| ≤ error x)
    (W : Submodule ℝ (κ → ℝ))
    (μ δ : ℝ) (hgap : δ < μ)
    (hsource : ∀ x : κ → ℝ, x ∈ W →
      μ * positiveEnergy x ≤ -source x)
    (herror : ∀ x : κ → ℝ, x ∈ W →
      error x ≤ δ * positiveEnergy x) :
    Module.finrank ℝ W ≤
      Fintype.card (PositiveCoordinates (complementMask mask)) := by
  have hcomp : ∀ x : κ → ℝ,
      |(-source x) -
        signedEnergy (complementMask mask) (B *ᵥ x)| ≤ error x := by
    intro x
    have heq :
        (-source x) -
          signedEnergy (complementMask mask) (B *ᵥ x) =
        -(source x - signedEnergy mask (B *ᵥ x)) := by
      rw [signedEnergy_complementMask_eq_neg]
      ring
    rw [heq, abs_neg]
    exact hcomparison x
  exact strict_relative_error_preserves_positive_index_bound
    (complementMask mask) B (fun x => -source x) error
    hcomp W μ δ hgap hsource herror

end

end GRWTSK.Algebra.LinearAlgebra.TwoThirdsSignedMarginObstruction
