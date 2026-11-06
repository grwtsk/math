/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CharacterEulerSource
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CoreApproximationCertificates

/-!
# Region certificates with a derived, actual Euler source supplier

The previous CharacterPatch type required a separate Hurwitz source-comparison
bound. The constructor below derives it for every residue class. Finite cutoff,
radius, analytic inverse, whole-boundary variation and strict numerical margin
remain inputs. Additive convergence alone cannot supply those strict margins.

The output is the existing source-indexed Boundary.Certificate and Cover.Patch.
Every-core/every-character coverage would imply GRH by the existing theorem;
that family is NOT constructed here. The only universal base covers constructed
below are the geometrically EMPTY cores n<=2. They are not a zero computation
and do not extend the separate zeta height-six results to arbitrary characters.

Primary proof: complete Euler remainder, character norm/class count, complete
boundary variation and the existing maximum-modulus residual test. At an actual
source zero the unit residual is exactly one, regardless of approximation.
AI-assisted source; compilation, kernel, axiom audit and review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Set Metric
open scoped BigOperators

namespace GRWTSK.NumberTheory.Conditional.CharacterEulerCertificates

open GRWTSK.Analysis.Division

/-- Finite-model and geometry data only: no source equality or zero-free premise. -/
structure Patch (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N) where
  region : Set ℂ
  open_region : IsOpen region
  bounded : Bornology.IsBounded region
  contained : closure region ⊆ offCriticalStrip
  cutoff : ℕ
  radius : ℝ
  radius_nonnegative : 0 ≤ radius
  boundary_radius : ∀ z ∈ frontier region, ‖z‖ ≤ radius
  inverse : ℂ → ℂ
  inverse_regular : DiffContOnCl ℂ inverse region
  samples : Finset ℂ
  sampleBudget : ℝ
  variationBudget : ℝ
  inverseBudget : ℝ
  inverse_nonnegative : 0 ≤ inverseBudget
  sample_bound : ∀ z ∈ samples,
    ‖residual (CharacterEuler.model χ cutoff z) (inverse z) 1‖ ≤ sampleBudget
  variation : ∀ z ∈ frontier region, ∃ w ∈ samples,
    ‖residual (CharacterEuler.model χ cutoff z) (inverse z) 1 -
      residual (CharacterEuler.model χ cutoff w) (inverse w) 1‖ ≤ variationBudget
  inverse_bound : ∀ z ∈ frontier region, ‖inverse z‖ ≤ inverseBudget
  strict : sampleBudget + variationBudget +
    ((N : ℝ) * CubicApproximation.radiusBudget radius cutoff) * inverseBudget < 1

namespace Patch

variable {N : ℕ} [NeZero N] {χ : DirichletCharacter ℂ N}

theorem weighted_bound (p : Patch N χ) :
    CharacterApproximation.weightedError χ
      (fun _ => CubicApproximation.radiusBudget p.radius p.cutoff) ≤
        (N : ℝ) * CubicApproximation.radiusBudget p.radius p.cutoff := by
  have hB := CubicApproximation.radiusBudget_nonneg p.radius_nonnegative p.cutoff
  unfold CharacterApproximation.weightedError
  calc
    _ ≤ ∑ _j : ZMod N, CubicApproximation.radiusBudget p.radius p.cutoff := by
      apply Finset.sum_le_sum
      intro j hj
      exact (mul_le_mul_of_nonneg_right (χ.norm_le_one j) hB).trans_eq (one_mul _)
    _ = _ := by simp [ZMod.card, nsmul_eq_mul]

/-- The exact source supplier composes with the existing certificate interface. -/
def toCharacterPatch (p : Patch N χ) : ModelCertificates.CharacterPatch N χ where
  region := p.region
  open_region := p.open_region
  bounded := p.bounded
  contained := p.contained
  model := CharacterEuler.component p.cutoff
  componentError := fun _ => CubicApproximation.radiusBudget p.radius p.cutoff
  component_bound := by
    intro s hs j
    have strip := p.contained (frontier_subset_closure hs)
    exact CharacterEuler.component_bound p.cutoff j s strip.1.le
      (strip_ne_one strip.2.1) (p.boundary_radius s hs)
  factorBudget := 1
  factor_bound := by
    intro s hs
    exact CharacterEuler.modulus_factor_le_one s
      (p.contained (frontier_subset_closure hs)).1.le
  inverse := p.inverse
  inverse_regular := p.inverse_regular
  samples := p.samples
  sampleBudget := p.sampleBudget
  variationBudget := p.variationBudget
  inverseBudget := p.inverseBudget
  sample_bound := p.sample_bound
  variation := p.variation
  inverse_bound := p.inverse_bound
  strict := by
    simp only [one_mul]
    exact (add_le_add_left
      (mul_le_mul_of_nonneg_right p.weighted_bound p.inverse_nonnegative)
      (p.sampleBudget + p.variationBudget)).trans_lt p.strict

def certificate (p : Patch N χ) : Boundary.Certificate χ.LFunction p.region :=
  p.toCharacterPatch.certificate

def toPatch (p : Patch N χ) : Cover.Patch χ.LFunction offCriticalStrip :=
  p.toCharacterPatch.toPatch

@[simp] theorem toPatch_region (p : Patch N χ) : p.toPatch.region = p.region := rfl

end Patch

/-- The all-core strict margins and coverage remain actual premises, not installed axioms. -/
theorem grh_of_covered_patches
    (family : ∀ (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N), ℕ → Finset (Patch N χ))
    (covers : ∀ (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N) (n : ℕ),
      ∀ s ∈ offCore n, ∃ p ∈ family N χ n, s ∈ p.region) : DirichletGRH := by
  classical
  apply grh_iff_finite_core_certificates.mpr
  intro N hN χ n
  refine ⟨(family N χ n).image Patch.toPatch, ?_⟩
  intro s hs
  obtain ⟨p, hp, inside⟩ := covers N χ n s hs
  exact ⟨p.toPatch, Finset.mem_image.mpr ⟨p, hp, rfl⟩, inside⟩

theorem offCore_empty_of_le_two (n : ℕ) (small : n ≤ 2) : offCore n = ∅ := by
  apply Set.eq_empty_iff_forall_notMem.mpr
  intro s hs
  have nsmall : (n : ℝ) ≤ 2 := by exact_mod_cast small
  have lower : (1 / 3 : ℝ) ≤ coreGap n := by
    unfold coreGap
    apply (div_le_div_iff₀ (by norm_num : (0 : ℝ) < 3)
      (by positivity : (0 : ℝ) < (n : ℝ) + 1)).mpr
    linarith
  have upper : |s.re - (1 / 2 : ℝ)| ≤ (1 / 2 : ℝ) - coreGap n := by
    apply abs_le.mpr
    constructor <;> linarith [hs.2.1, hs.2.2.1]
  linarith [hs.2.2.2]

/-- An actual universal cover of an EMPTY base core, with that limitation in its type. -/
theorem empty_base_core_certificate {N : ℕ} [NeZero N]
    (χ : DirichletCharacter ℂ N) (n : ℕ) (small : n ≤ 2) :
    Cover.FiniteCover χ.LFunction offCriticalStrip (offCore n) := by
  refine ⟨∅, ?_⟩
  intro s hs
  rw [offCore_empty_of_le_two n small] at hs
  exact False.elim hs

end GRWTSK.NumberTheory.Conditional.CharacterEulerCertificates
