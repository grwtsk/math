/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib

/-!
# Exact finite-source observations graded by arbitrary finite residue labels

Local mathematical attribution: grwtsk contributors.

A finite packet S may lie in an INFINITE ambient source type. The residue
space R is any finite type, not necessarily cyclic, a group, or a seven-color
index. Every source item has exactly one label rho(s). An additive-valued
observable may be signed or complex: class observations are summed BEFORE
norms, preserving every amplitude and multiplicity.

The complete cover, precise nonempty-fiber criterion, a masked observation
with its exact omitted source, and a bounded class-dependent positive weight
are proved here. Source maps and analytic regularity belong to consumers.
This module does not equate independent physical models, prove any continuum
limit, or derive a spectral mass gap.

SOURCE_PROOF_CANDIDATE; LEAN_BUILD_NOT_RUN; FRESH_KERNEL_NOT_RUN;
TRANSITIVE_AXIOMS_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.HarmonicAnalysisOnEuclideanSpaces.FiniteGradedObservableCover

variable {Source Grade : Type*} [Fintype Grade] [DecidableEq Grade]

/-- The exact subpacket of source items carrying a particular grade. -/
def fiber (S : Finset Source) (rho : Source → Grade) (r : Grade) : Finset Source :=
  S.filter (fun s => rho s = r)

/-- Every class is occupied exactly when the restricted source grade covers it.
No vacuous surjectivity is asserted for an arbitrary finite packet. -/
theorem all_fibers_nonempty_iff (S : Finset Source) (rho : Source → Grade) :
    (∀ r : Grade, (fiber S rho r).Nonempty) ↔
      (∀ r : Grade, ∃ s ∈ S, rho s = r) := by
  classical
  constructor
  · intro h r
    rcases h r with ⟨s, hs⟩
    change s ∈ S.filter (fun s => rho s = r) at hs
    exact ⟨s, (Finset.mem_filter.mp hs).1, (Finset.mem_filter.mp hs).2⟩
  · intro h r
    rcases h r with ⟨s, hs, hr⟩
    refine ⟨s, ?_⟩
    change s ∈ S.filter (fun s => rho s = r)
    exact Finset.mem_filter.mpr ⟨hs, hr⟩

/-- The original source-specific additive observation in one full fiber. -/
def classSum {M : Type*} [AddCommMonoid M]
    (S : Finset Source) (rho : Source → Grade) (f : Source → M)
    (r : Grade) : M :=
  ∑ s ∈ fiber S rho r, f s

/-- Exact reconstruction for ANY additive source, including signed/complex data.
The output does not take a norm or drop duplicate-valued source entries. -/
theorem classSum_cover {M : Type*} [AddCommMonoid M]
    (S : Finset Source) (rho : Source → Grade) (f : Source → M) :
    (∑ r : Grade, classSum S rho f r) = ∑ s ∈ S, f s := by
  classical
  calc
    (∑ r : Grade, classSum S rho f r) =
        ∑ r : Grade, ∑ s ∈ S, if rho s = r then f s else 0 := by
      simp only [classSum, fiber, Finset.sum_filter]
    _ = ∑ s ∈ S, ∑ r : Grade, if rho s = r then f s else 0 := by
      rw [Finset.sum_comm]
    _ = ∑ s ∈ S, f s := by
      apply Finset.sum_congr rfl
      intro s _
      simp

/-- Select whole classes, paying the entire literal omitted-class residual. -/
def retainedClassSum {M : Type*} [AddCommMonoid M]
    (S : Finset Source) (rho : Source → Grade) (mask : Grade → Bool)
    (f : Source → M) : M :=
  ∑ r : Grade, if mask r then classSum S rho f r else 0

/-- Every masked-out class, retaining its signed source observation. -/
def omittedClassSum {M : Type*} [AddCommMonoid M]
    (S : Finset Source) (rho : Source → Grade) (mask : Grade → Bool)
    (f : Source → M) : M :=
  ∑ r : Grade, if mask r then 0 else classSum S rho f r

/-- Exact reconstruction from an arbitrary mask and its true remainder. -/
theorem source_eq_retained_add_omitted {M : Type*} [AddCommMonoid M]
    (S : Finset Source) (rho : Source → Grade) (mask : Grade → Bool)
    (f : Source → M) :
    (∑ s ∈ S, f s) =
      retainedClassSum S rho mask f + omittedClassSum S rho mask f := by
  classical
  calc
    (∑ s ∈ S, f s) = ∑ r : Grade, classSum S rho f r :=
      (classSum_cover S rho f).symm
    _ = ∑ r : Grade,
        (if mask r then classSum S rho f r else 0) +
        (if mask r then 0 else classSum S rho f r) := by
      apply Finset.sum_congr rfl
      intro r _
      cases h : mask r <;> simp [h]
    _ = retainedClassSum S rho mask f +
        omittedClassSum S rho mask f := by
      simp only [retainedClassSum, omittedClassSum, Finset.sum_add_distrib]

/-- Discarding no classes leaves no residual for every signed source. -/
theorem omitted_all_retained {M : Type*} [AddCommMonoid M]
    (S : Finset Source) (rho : Source → Grade) (f : Source → M) :
    omittedClassSum S rho (fun _ => true) f = 0 := by
  simp [omittedClassSum]

/-- Quantitative allowance for a complex masked observation, with the actual
unobserved signed amplitude still present. -/
theorem complex_source_norm_le
    (S : Finset Source) (rho : Source → Grade) (mask : Grade → Bool)
    (f : Source → ℂ) :
    ‖∑ s ∈ S, f s‖ ≤
      ‖retainedClassSum S rho mask f‖ +
      ‖omittedClassSum S rho mask f‖ := by
  rw [source_eq_retained_add_omitted S rho mask f]
  exact norm_add_le _ _

/-- A positive source bounds each class even without assuming surjectivity. -/
theorem classSum_nonneg (S : Finset Source) (rho : Source → Grade)
    (f : Source → ℝ) (hf : ∀ s, 0 ≤ f s) (r : Grade) :
    0 ≤ classSum S rho f r := by
  unfold classSum
  exact Finset.sum_nonneg (fun s _ => hf s)

/-- Cardinality bound for any uniformly bounded real source. -/
theorem classSum_le_card (S : Finset Source) (rho : Source → Grade)
    (f : Source → ℝ) (B : ℝ) (hB : ∀ s, f s ≤ B)
    (r : Grade) :
    classSum S rho f r ≤ B * ((fiber S rho r).card : ℝ) := by
  unfold classSum
  calc
    (∑ s ∈ fiber S rho r, f s) ≤ ∑ _s ∈ fiber S rho r, B := by
      apply Finset.sum_le_sum
      intro s _
      exact hB s
    _ = B * ((fiber S rho r).card : ℝ) := by
      simp [mul_comm]

/-- A class-dependent real observation, retaining the original class sums. -/
def weightedClassSum (S : Finset Source) (rho : Source → Grade)
    (f : Source → ℝ) (weight : Grade → ℝ) : ℝ :=
  ∑ r : Grade, weight r * classSum S rho f r

/-- Exact pullback of every residue weight to its ORIGINAL source item. -/
theorem weighted_eq_source (S : Finset Source) (rho : Source → Grade)
    (f : Source → ℝ) (weight : Grade → ℝ) :
    weightedClassSum S rho f weight =
      ∑ s ∈ S, weight (rho s) * f s := by
  classical
  calc
    weightedClassSum S rho f weight =
        ∑ r : Grade, ∑ s ∈ S,
          if rho s = r then weight r * f s else 0 := by
      simp only [weightedClassSum, classSum, fiber, Finset.sum_filter,
        Finset.mul_sum, mul_ite, mul_zero]
    _ = ∑ s ∈ S, ∑ r : Grade,
          if rho s = r then weight r * f s else 0 := by
      rw [Finset.sum_comm]
    _ = ∑ s ∈ S, weight (rho s) * f s := by
      apply Finset.sum_congr rfl
      intro s _
      simp

/-- Two-sided return from all class weights to the actual positive source.
No sign condition on the weights themselves is required: only their
pointwise lower and upper bounds and positivity of the source are used. -/
theorem weighted_bounds
    (S : Finset Source) (rho : Source → Grade) (f : Source → ℝ)
    (hf : ∀ s, 0 ≤ f s)
    (weight : Grade → ℝ) (lower upper : ℝ)
    (hlower : ∀ r, lower ≤ weight r)
    (hupper : ∀ r, weight r ≤ upper) :
    lower * (∑ s ∈ S, f s) ≤ weightedClassSum S rho f weight ∧
      weightedClassSum S rho f weight ≤
        upper * (∑ s ∈ S, f s) := by
  have hclass (r : Grade) : 0 ≤ classSum S rho f r :=
    classSum_nonneg S rho f hf r
  constructor
  · calc
      lower * (∑ s ∈ S, f s) =
          ∑ r : Grade, lower * classSum S rho f r := by
        rw [← classSum_cover S rho f, Finset.mul_sum]
      _ ≤ weightedClassSum S rho f weight := by
        unfold weightedClassSum
        exact Finset.sum_le_sum
          (fun r _ => mul_le_mul_of_nonneg_right (hlower r) (hclass r))
  · calc
      weightedClassSum S rho f weight ≤
          ∑ r : Grade, upper * classSum S rho f r := by
        unfold weightedClassSum
        exact Finset.sum_le_sum
          (fun r _ => mul_le_mul_of_nonneg_right (hupper r) (hclass r))
      _ = upper * (∑ s ∈ S, f s) := by
        rw [← classSum_cover S rho f, Finset.mul_sum]

end GRWTSK.HarmonicAnalysisOnEuclideanSpaces.FiniteGradedObservableCover
