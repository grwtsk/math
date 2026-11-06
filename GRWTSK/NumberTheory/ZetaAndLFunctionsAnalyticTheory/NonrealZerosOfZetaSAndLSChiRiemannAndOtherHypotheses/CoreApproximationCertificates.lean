/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ResidualCriteria
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CubicLowHeightCertificate
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CharacterApproximationBounds

/-!
# Finite analytic-model certificates and the remaining universal obligations

Each zeta patch fixes the actual finite cubic approximation, all-boundary tail,
finite samples, variation allowance, inverse size and strict total budget.
The conversion to the existing certificate type proves source nonvanishing;
no target reciprocal or RH proposition occurs among its fields.

The supplied low-height patch certifies rightCore 3; cores 0,1,2 are empty.
The explicit remaining RH obligation is every n>3, not a finite sampled range.
For Dirichlet GRH, every positive modulus, every character and every off-line
core remain quantified. Component shifted-Hurwitz error witnesses and successful
strict gaps are not fabricated. A bounded dataset is not a family constructor.

Primary argument: source-return estimates feed the existing maximum-modulus
certificate, finite images retain coverage, and the already proved all-core
criteria return the original statements. These are verification consumers;
they do not prove that all remaining universal witnesses exist.
Compilation, fresh kernel checking, transitive axiom audit and independent
review: NOT_RUN. No novelty or unconditional RH/GRH claim.
-/

set_option autoImplicit false
noncomputable section
open Set

namespace GRWTSK.NumberTheory.Conditional.ModelCertificates

open GRWTSK.Analysis.Division
open GRWTSK.RiemannHypothesis.FiniteCubicZetaApproximation

/-- Concrete zeta model data; the complete analytic tail is fixed, not user-defined. -/
structure CubicPatch where
  region : Set ℂ
  open_region : IsOpen region
  bounded : Bornology.IsBounded region
  contained : closure region ⊆ rightCriticalStrip
  radius : ℝ
  radius_bound : ∀ z ∈ closure region, ‖z‖ ≤ radius
  cutoffIndex : ℕ
  inverse : ℂ → ℂ
  inverse_regular : DiffContOnCl ℂ inverse region
  samples : Finset ℂ
  sampleBudget : ℝ
  variationBudget : ℝ
  inverseBudget : ℝ
  sample_bound : ∀ w ∈ samples,
    ‖residual (approximation cutoffIndex w) (inverse w) 1‖ ≤ sampleBudget
  variation : ∀ z ∈ frontier region, ∃ w ∈ samples,
    ‖residual (approximation cutoffIndex z) (inverse z) 1 -
      residual (approximation cutoffIndex w) (inverse w) 1‖ ≤ variationBudget
  inverse_bound : ∀ z ∈ frontier region, ‖inverse z‖ ≤ inverseBudget
  strict : sampleBudget + variationBudget +
    CubicApproximation.radiusBudget radius cutoffIndex * inverseBudget < 1

namespace CubicPatch

def certificate (p : CubicPatch) : Boundary.Certificate riemannZeta p.region :=
  Approximation.boundaryOfSampledModel riemannZeta (approximation p.cutoffIndex)
    p.inverse p.region p.samples
    (differentiableOn_zeta_rightStrip.mono p.contained).diffContOnCl
    p.inverse_regular p.sample_bound p.variation (by
      intro z hz
      have strip := p.contained (frontier_subset_closure hz)
      exact CubicApproximation.source_error_on_radius p.cutoffIndex z
        (by linarith [strip.1]) (strip_ne_one strip.2)
        (p.radius_bound z (frontier_subset_closure hz))) p.inverse_bound p.strict

def toPatch (p : CubicPatch) : Cover.Patch riemannZeta rightCriticalStrip where
  region := p.region
  open_region := p.open_region
  bounded := p.bounded
  contained := p.contained
  certificate := p.certificate

end CubicPatch

/-- Correct finite covers require an actual patch for each point of each core. -/
theorem rh_of_cubic_families (family : ℕ → Finset CubicPatch)
    (coverage : ∀ n, ∀ s ∈ rightCore n, ∃ p ∈ family n, s ∈ p.region) :
    _root_.RiemannHypothesis := by
  classical
  apply rh_iff_finite_core_certificates.mpr
  intro n
  refine ⟨(family n).image CubicPatch.toPatch, ?_⟩
  intro s hs
  obtain ⟨p, hp, inside⟩ := coverage n s hs
  exact ⟨p.toPatch, Finset.mem_image.mpr ⟨p, hp, rfl⟩, inside⟩

/-- The first three core definitions are empty by their incompatible real-part cuts. -/
theorem small_core_empty (n : ℕ) (small : n < 3) : rightCore n = ∅ := by
  have cases : n = 0 ∨ n = 1 ∨ n = 2 := by omega
  rcases cases with rfl | rfl | rfl
  all_goals
    apply Set.eq_empty_iff_forall_notMem.mpr
    intro s hs
    have lower := hs.2.1
    have upper := hs.2.2
    norm_num [coreGap] at lower upper
    linarith

/-- No unproved nonvanishing premise is used for this supplied finite seed range. -/
theorem first_four_core_certificates (n : ℕ) (small : n ≤ 3) :
    Cover.FiniteCover riemannZeta rightCriticalStrip (rightCore n) := by
  by_cases equal : n = 3
  · subst n
    exact CubicSeed.third_core_finite_certificate
  · have empty := small_core_empty n (by omega)
    refine ⟨∅, ?_⟩
    intro s hs
    rw [empty] at hs
    exact False.elim hs

/-- The unresolved all-height task is now precisely the remaining core family. -/
theorem rh_of_remaining_cores
    (remaining : ∀ n : ℕ, 3 < n →
      Cover.FiniteCover riemannZeta rightCriticalStrip (rightCore n)) :
    _root_.RiemannHypothesis := by
  apply rh_iff_finite_core_certificates.mpr
  intro n
  by_cases small : n ≤ 3
  · exact first_four_core_certificates n small
  · exact remaining n (by omega)

/-- All residue-class approximation errors remain explicit for each character. -/
structure CharacterPatch (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N) where
  region : Set ℂ
  open_region : IsOpen region
  bounded : Bornology.IsBounded region
  contained : closure region ⊆ offCriticalStrip
  model : ZMod N → ℂ → ℂ
  componentError : ZMod N → ℝ
  component_bound : ∀ z ∈ frontier region, ∀ j,
    ‖HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) z - model j z‖ ≤ componentError j
  factorBudget : ℝ
  factor_bound : ∀ z ∈ frontier region, ‖(N : ℂ) ^ (-z)‖ ≤ factorBudget
  inverse : ℂ → ℂ
  inverse_regular : DiffContOnCl ℂ inverse region
  samples : Finset ℂ
  sampleBudget : ℝ
  variationBudget : ℝ
  inverseBudget : ℝ
  sample_bound : ∀ w ∈ samples,
    ‖residual (CharacterApproximation.combine χ model w) (inverse w) 1‖ ≤ sampleBudget
  variation : ∀ z ∈ frontier region, ∃ w ∈ samples,
    ‖residual (CharacterApproximation.combine χ model z) (inverse z) 1 -
      residual (CharacterApproximation.combine χ model w) (inverse w) 1‖ ≤ variationBudget
  inverse_bound : ∀ z ∈ frontier region, ‖inverse z‖ ≤ inverseBudget
  strict : sampleBudget + variationBudget +
    (factorBudget * CharacterApproximation.weightedError χ componentError) * inverseBudget < 1

namespace CharacterPatch

variable {N : ℕ} [NeZero N] {χ : DirichletCharacter ℂ N}

def certificate (p : CharacterPatch N χ) : Boundary.Certificate χ.LFunction p.region :=
  Approximation.boundaryOfSampledModel χ.LFunction
    (CharacterApproximation.combine χ p.model) p.inverse p.region p.samples
    ((differentiableOn_dirichlet_offStrip χ).mono p.contained).diffContOnCl
    p.inverse_regular p.sample_bound p.variation
    (fun z hz => CharacterApproximation.uniform_source_error χ p.model z p.componentError
      (p.component_bound z hz) (p.factor_bound z hz)) p.inverse_bound p.strict

def toPatch (p : CharacterPatch N χ) : Cover.Patch χ.LFunction offCriticalStrip where
  region := p.region
  open_region := p.open_region
  bounded := p.bounded
  contained := p.contained
  certificate := p.certificate

end CharacterPatch

/-- Full Dirichlet GRH: no finite modulus cutoff, selected character or one-sided shortcut. -/
theorem grh_of_character_families
    (family : ∀ (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N),
      ℕ → Finset (CharacterPatch N χ))
    (coverage : ∀ (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N) (n : ℕ),
      ∀ s ∈ offCore n, ∃ p ∈ family N χ n, s ∈ p.region) : DirichletGRH := by
  classical
  apply grh_iff_finite_core_certificates.mpr
  intro N hN χ n
  refine ⟨(family N χ n).image CharacterPatch.toPatch, ?_⟩
  intro s hs
  obtain ⟨p, hp, inside⟩ := coverage N χ n s hs
  exact ⟨p.toPatch, Finset.mem_image.mpr ⟨p, hp, rfl⟩, inside⟩

end GRWTSK.NumberTheory.Conditional.ModelCertificates
