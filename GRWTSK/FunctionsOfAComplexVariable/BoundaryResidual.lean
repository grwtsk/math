/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.FunctionsOfAComplexVariable.MultiplicativeResidual
import Mathlib.Analysis.Complex.AbsMax
import Mathlib.Data.Finset.Basic

/-!
# Boundary residual certificates and finite sampling with a remainder

Let R(z) = f(z)*u(z)-1. On a bounded region, differentiability of R and
continuity on its closure transfer a boundary bound |R| <= q < 1 to the entire
closure by the maximum modulus principle. MultiplicativeResidual then proves
f != 0 there. Nonvanishing is a conclusion, not a field of the certificate.

Finite sampling contributes only with a proved variation remainder. For a mesh
radius r and an actual residual-variation constant L, the test is epsilon+L*r<1.
The error concerns the full product residual, including any evaluation errors.
A zero inside the region forces some boundary residual to have norm at least
one; this is an independent maximum-principle obstruction to fake certificates.

The source compares actual functions and actual region closures. Exact local
inverses agree on overlaps after normalization; approximate inverses need not.
Consumers: open-region covers and RH/Dirichlet-GRH certificate reductions.
This is an application of the classical maximum modulus principle, not a claim
of a new analytic nonvanishing estimate. No witness for all required regions is
manufactured. Mathlib's AbsMax and DiffContOnCl were inspected at
 d13f23b723b8a846827a245b89c10fc7d3f11612; upstream licenses remain unchanged.
AI-assisted formalization. Compilation, fresh kernel checking, transitive axiom
audit and independent analytical review: NOT_RUN. Dependency pins unchanged.
-/

set_option autoImplicit false
noncomputable section
open Set

namespace GRWTSK.Analysis.Division.Boundary

/-- Regularity is proved for the full residual, not for a truncated observation. -/
theorem residual_regular {f u : ℂ → ℂ} {U : Set ℂ}
    (hf : DiffContOnCl ℂ f U) (hu : DiffContOnCl ℂ u U) :
    DiffContOnCl ℂ (fun z => residual (f z) (u z) 1) U := by
  have product : DiffContOnCl ℂ (fun z => f z * u z) U :=
    ⟨hf.differentiableOn.mul hu.differentiableOn,
      hf.continuousOn.mul hu.continuousOn⟩
  exact product.sub_const 1

/-- No zero-free premise occurs in the certificate data. -/
structure Certificate (f : ℂ → ℂ) (U : Set ℂ) where
  approximation : ℂ → ℂ
  bound : ℝ
  strict : bound < 1
  regular : DiffContOnCl ℂ (fun z => residual (f z) (approximation z) 1) U
  boundary_bound : ∀ z ∈ frontier U, ‖residual (f z) (approximation z) 1‖ ≤ bound

namespace Certificate

variable {f : ℂ → ℂ} {U : Set ℂ}

/-- Maximum modulus returns the boundary estimate on the complete region. -/
theorem closure_bound (c : Certificate f U) (bounded : Bornology.IsBounded U)
    {z : ℂ} (hz : z ∈ closure U) :
    ‖residual (f z) (c.approximation z) 1‖ ≤ c.bound :=
  Complex.norm_le_of_forall_mem_frontier_norm_le bounded c.regular c.boundary_bound hz

/-- The central consumer: a certified residual proves actual nonvanishing. -/
theorem nonzero (c : Certificate f U) (bounded : Bornology.IsBounded U)
    {z : ℂ} (hz : z ∈ closure U) : f z ≠ 0 :=
  nonzero_of_unit_residual (c.closure_bound bounded hz) c.strict

/-- A separate approximation-size bound yields an explicit inverse margin. -/
theorem margin (c : Certificate f U) (bounded : Bornology.IsBounded U)
    {M : ℝ} (positive : 0 < M)
    (size : ∀ z ∈ closure U, ‖c.approximation z‖ ≤ M)
    {z : ℂ} (hz : z ∈ closure U) : (1 - c.bound) / M ≤ ‖f z‖ :=
  unit_residual_margin positive (size z hz) (c.closure_bound bounded hz)

/-- Analytic division follows only after the preceding nonvanishing argument. -/
theorem inverse_regular (c : Certificate f U) (bounded : Bornology.IsBounded U)
    (hf : DiffContOnCl ℂ f U) : DiffContOnCl ℂ (fun z => (f z)⁻¹) U :=
  hf.inv (fun _ hz => c.nonzero bounded hz)

/-- Reuse the quantitative inverse-error theorem, with its derived margin. -/
theorem inverse_error (c : Certificate f U) (bounded : Bornology.IsBounded U)
    {M : ℝ} (positive : 0 < M)
    (size : ∀ z ∈ closure U, ‖c.approximation z‖ ≤ M)
    {z : ℂ} (hz : z ∈ closure U) :
    ‖c.approximation z - (f z)⁻¹‖ ≤ c.bound / ((1 - c.bound) / M) :=
  inverse_error_from_unit_residual positive (size z hz)
    (c.closure_bound bounded hz) c.strict

/-- Normalized local sections agree even if the raw approximations do not. -/
theorem overlap {V : Set ℂ} (first : Certificate f U) (second : Certificate f V)
    (boundedU : Bornology.IsBounded U) (boundedV : Bornology.IsBounded V)
    {z : ℂ} (hzU : z ∈ closure U) (hzV : z ∈ closure V) :
    first.approximation z / (f z * first.approximation z) =
      second.approximation z / (f z * second.approximation z) :=
  normalized_overlap (first.closure_bound boundedU hzU) first.strict
    (second.closure_bound boundedV hzV) second.strict

end Certificate

/-- A finite observation is useful only together with an all-boundary remainder. -/
theorem sampled_boundary_bound (R : ℂ → ℂ) (U : Set ℂ) (samples : Finset ℂ)
    {ε η : ℝ} (sampled : ∀ w ∈ samples, ‖R w‖ ≤ ε)
    (variation : ∀ z ∈ frontier U, ∃ w ∈ samples, ‖R z - R w‖ ≤ η) :
    ∀ z ∈ frontier U, ‖R z‖ ≤ ε + η := by
  intro z hz
  obtain ⟨w, hw, remainder⟩ := variation z hz
  calc
    ‖R z‖ = ‖(R z - R w) + R w‖ := by rw [sub_add_cancel]
    _ ≤ ‖R z - R w‖ + ‖R w‖ := norm_add_le _ _
    _ ≤ η + ε := add_le_add remainder (sampled w hw)
    _ = ε + η := add_comm _ _

/-- Finite values and a certified residual remainder construct an actual certificate. -/
def ofSamples (f u : ℂ → ℂ) (U : Set ℂ) (samples : Finset ℂ)
    (hf : DiffContOnCl ℂ f U) (hu : DiffContOnCl ℂ u U)
    {ε η : ℝ}
    (sampled : ∀ w ∈ samples, ‖residual (f w) (u w) 1‖ ≤ ε)
    (variation : ∀ z ∈ frontier U, ∃ w ∈ samples,
      ‖residual (f z) (u z) 1 - residual (f w) (u w) 1‖ ≤ η)
    (gap : ε + η < 1) : Certificate f U where
  approximation := u
  bound := ε + η
  strict := gap
  regular := residual_regular hf hu
  boundary_bound := sampled_boundary_bound _ U samples sampled variation

/-- A mesh radius is meaningful only with an actual bound between samples. -/
def ofMesh (f u : ℂ → ℂ) (U : Set ℂ) (samples : Finset ℂ)
    (hf : DiffContOnCl ℂ f U) (hu : DiffContOnCl ℂ u U)
    {ε L r : ℝ} (nonnegative : 0 ≤ L)
    (sampled : ∀ w ∈ samples, ‖residual (f w) (u w) 1‖ ≤ ε)
    (cover : ∀ z ∈ frontier U, ∃ w ∈ samples, dist z w ≤ r)
    (variation : ∀ z ∈ frontier U, ∀ w ∈ samples,
      ‖residual (f z) (u z) 1 - residual (f w) (u w) 1‖ ≤ L * dist z w)
    (gap : ε + L * r < 1) : Certificate f U :=
  ofSamples f u U samples hf hu sampled (by
    intro z hz
    obtain ⟨w, hw, nearby⟩ := cover z hz
    exact ⟨w, hw, (variation z hz w hw).trans
      (mul_le_mul_of_nonneg_left nearby nonnegative)⟩) gap

/-- A zero forces failure of some boundary test for every regular approximation. -/
theorem zero_forces_boundary_residual (f u : ℂ → ℂ) (U : Set ℂ)
    (bounded : Bornology.IsBounded U)
    (regular : DiffContOnCl ℂ (fun z => residual (f z) (u z) 1) U)
    {z : ℂ} (hz : z ∈ U) (zero : f z = 0) :
    ∃ w ∈ frontier U, 1 ≤ ‖residual (f w) (u w) 1‖ := by
  obtain ⟨w, hw, maximal⟩ :=
    Complex.exists_mem_frontier_isMaxOn_norm bounded ⟨z, hz⟩ regular
  refine ⟨w, hw, ?_⟩
  have bound := maximal (subset_closure hz)
  simpa [Function.comp_def, residual, zero] using bound

/-- Boundedness cannot simply be deleted: an empty boundary certifies nothing. -/
theorem unbounded_boundary_failure :
    (∀ z ∈ frontier (Set.univ : Set ℂ), ‖residual 0 (z : ℂ) 1‖ ≤ (0 : ℝ)) ∧
      ¬ (∀ z : ℂ, (fun _ : ℂ => (0 : ℂ)) z ≠ 0) := by
  constructor
  · simp
  · intro h
    exact h 0 rfl

end GRWTSK.Analysis.Division.Boundary
