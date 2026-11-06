/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.FunctionsOfAComplexVariable.BoundaryResidual
import Mathlib.Topology.MetricSpace.Bounded

/-!
# Gluing certified nonvanishing through actual open-region covers

A patch retains its region, openness, boundedness, closure containment and an
actual Boundary.Certificate. A cover cannot omit the requested point, cross an
excluded singularity without evidence, or infer a global inverse from labels.
The shared value is the original function, not a collection of unrelated local
surrogates. The preceding normalization theorem derives overlap compatibility.

For a holomorphic function on an open domain, pointwise nonvanishing is
logically equivalent to existence of such a cover. The forward construction
uses the actual inverse on small balls and is explicitly non-effective: it is
not a source of previously unavailable numerical certificates. The useful
opposite direction consumes independently established residual estimates.

Compactness produces finite subcovers; singleton compact sets give the converse
of the all-compacts criterion. These results keep all-region quantification
separate from a single finite computation. Consumers: compact critical-strip
cores and exact RH/Dirichlet-GRH return statements.

Primary arguments: the existing maximum-modulus certificate theorem, a smaller
ball inside an open set, and the finite-subcover theorem. No novelty claim.
Mathlib pin: d13f23b723b8a846827a245b89c10fc7d3f11612. AI-assisted formalization.
Compilation, fresh kernel checking, transitive axiom audit and independent
analytical review: NOT_RUN. No numerical witness generation is claimed.
-/

set_option autoImplicit false
noncomputable section
open Set

namespace GRWTSK.Analysis.Division.Cover

/-- Every patch retains the precise domain on which its residual certificate applies. -/
structure Patch (f : ℂ → ℂ) (D : Set ℂ) where
  region : Set ℂ
  open_region : IsOpen region
  bounded : Bornology.IsBounded region
  contained : closure region ⊆ D
  certificate : Boundary.Certificate f region

/-- A real witness places the requested point inside an actual open patch. -/
def CertifiedAt (f : ℂ → ℂ) (D : Set ℂ) (z : ℂ) : Prop :=
  ∃ p : Patch f D, z ∈ p.region

def CertifiedOn (f : ℂ → ℂ) (D : Set ℂ) : Prop :=
  ∀ z ∈ D, CertifiedAt f D z

/-- Finite patches, not just finite function evaluations, cover the target set. -/
def FiniteCover (f : ℂ → ℂ) (D K : Set ℂ) : Prop :=
  ∃ family : Finset (Patch f D), ∀ z ∈ K, ∃ p ∈ family, z ∈ p.region

theorem certifiedAt_nonzero {f : ℂ → ℂ} {D : Set ℂ} {z : ℂ}
    (certified : CertifiedAt f D z) : f z ≠ 0 := by
  obtain ⟨p, hp⟩ := certified
  exact p.certificate.nonzero p.bounded (subset_closure hp)

theorem certifiedAt_mem_domain {f : ℂ → ℂ} {D : Set ℂ} {z : ℂ}
    (certified : CertifiedAt f D z) : z ∈ D := by
  obtain ⟨p, hp⟩ := certified
  exact p.contained (subset_closure hp)

theorem certifiedOn_nonzero {f : ℂ → ℂ} {D : Set ℂ}
    (certified : CertifiedOn f D) : ∀ z ∈ D, f z ≠ 0 :=
  fun z hz => certifiedAt_nonzero (certified z hz)

theorem finiteCover_nonzero {f : ℂ → ℂ} {D K : Set ℂ}
    (covered : FiniteCover f D K) : ∀ z ∈ K, f z ≠ 0 := by
  obtain ⟨family, covered⟩ := covered
  intro z hz
  obtain ⟨p, hp, inside⟩ := covered z hz
  exact certifiedAt_nonzero ⟨p, inside⟩

/-- The converse is an existence argument using nonvanishing, not its discovery. -/
theorem certifiedOn_of_nonzero {f : ℂ → ℂ} {D : Set ℂ}
    (openD : IsOpen D) (hf : DifferentiableOn ℂ f D)
    (nonzero : ∀ z ∈ D, f z ≠ 0) : CertifiedOn f D := by
  intro z hz
  obtain ⟨r, positive, ball_in⟩ := Metric.isOpen_iff.mp openD z hz
  have contained : closure (Metric.ball z (r / 2)) ⊆ D :=
    Metric.closure_ball_subset_closedBall.trans
      ((Metric.closedBall_subset_ball (half_lt_self positive)).trans ball_in)
  have localRegular : DiffContOnCl ℂ f (Metric.ball z (r / 2)) :=
    (hf.mono contained).diffContOnCl
  have localNonzero : ∀ w ∈ closure (Metric.ball z (r / 2)), f w ≠ 0 :=
    fun w hw => nonzero w (contained hw)
  let c : Boundary.Certificate f (Metric.ball z (r / 2)) := {
    approximation := fun w => (f w)⁻¹
    bound := 0
    strict := zero_lt_one
    regular := Boundary.residual_regular localRegular (localRegular.inv localNonzero)
    boundary_bound := by
      intro w hw
      have hn := localNonzero w (frontier_subset_closure hw)
      simp [residual, hn] }
  refine ⟨{
    region := Metric.ball z (r / 2)
    open_region := Metric.isOpen_ball
    bounded := Metric.isBounded_ball
    contained := contained
    certificate := c }, ?_⟩
  exact Metric.mem_ball_self (half_pos positive)

/-- Exact equivalence, with no computed universal family of witnesses implied. -/
theorem nonzero_iff_certifiedOn {f : ℂ → ℂ} {D : Set ℂ}
    (openD : IsOpen D) (hf : DifferentiableOn ℂ f D) :
    (∀ z ∈ D, f z ≠ 0) ↔ CertifiedOn f D :=
  ⟨certifiedOn_of_nonzero openD hf, certifiedOn_nonzero⟩

/-- Actual local certificates have a finite subcover of any compact target. -/
theorem finiteCover_of_compact {f : ℂ → ℂ} {D K : Set ℂ}
    (compact : IsCompact K) (covered : ∀ z ∈ K, CertifiedAt f D z) :
    FiniteCover f D K := by
  have unionCover : K ⊆ ⋃ p : Patch f D, p.region := by
    intro z hz
    obtain ⟨p, hp⟩ := covered z hz
    exact mem_iUnion.mpr ⟨p, hp⟩
  obtain ⟨family, cover⟩ := compact.elim_finite_subcover
    (fun p : Patch f D => p.region) (fun p => p.open_region) unionCover
  refine ⟨family, ?_⟩
  intro z hz
  obtain ⟨p, hp⟩ := mem_iUnion.mp (cover hz)
  obtain ⟨member, inside⟩ := mem_iUnion.mp hp
  exact ⟨p, member, inside⟩

/-- Every compact target, not one selected compact target, characterizes the cover. -/
theorem certifiedOn_iff_all_compact_covers (f : ℂ → ℂ) (D : Set ℂ) :
    CertifiedOn f D ↔
      ∀ K : Set ℂ, IsCompact K → K ⊆ D → FiniteCover f D K := by
  constructor
  · intro certified K compact inside
    exact finiteCover_of_compact compact (fun z hz => certified z (inside hz))
  · intro covers z hz
    have singleton_in : ({z} : Set ℂ) ⊆ D := by
      intro w hw
      have same : w = z := mem_singleton_iff.mp hw
      simpa only [same] using hz
    obtain ⟨family, cover⟩ := covers {z} isCompact_singleton singleton_in
    obtain ⟨p, hp, inside⟩ := cover z (mem_singleton z)
    exact ⟨p, inside⟩

/-- After certification, differentiation of the global reciprocal is legitimate. -/
theorem differentiableOn_inverse {f : ℂ → ℂ} {D : Set ℂ}
    (hf : DifferentiableOn ℂ f D) (covered : CertifiedOn f D) :
    DifferentiableOn ℂ (fun z => (f z)⁻¹) D :=
  hf.inv (certifiedOn_nonzero covered)

/-- A valid cover returns the actual pointwise inverse equation. -/
theorem inverse_equation {f : ℂ → ℂ} {D : Set ℂ}
    (covered : CertifiedOn f D) {z : ℂ} (hz : z ∈ D) : f z * (f z)⁻¹ = 1 :=
  mul_inv_cancel₀ (certifiedOn_nonzero covered z hz)

end GRWTSK.Analysis.Division.Cover
