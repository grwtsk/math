/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Rational spectral spacing under a finite heat-refinement step

This module supplies a self-contained finite rational model. The
step q ↦ (1-t)q+t*c is an Euler relaxation toward a fixed reference
level c. It is NOT Tao's continuous heat flow, a Navier–Stokes
solution, a Hodge-theoretic comparison, or a Hilbert–Pólya
realization of actual zeta zeros.

A fixed positive rational scale gives proportional separation. A
nontrivial step with t < 1 preserves collisions exactly; at t = 1
all samples collapse, so the strict hypothesis is essential.
The M23, Rank32 and RS sources are not imported or assumed.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.RationalSpectralHeatCollision

/-- A synthetic rational spectral sample with a fixed reference
level. No claim is made that entries are actual zeta zeros. -/
structure RationalSpectralSample (ι : Type*) where
  zeroCoordinate : ι → ℚ
  reference : ℚ

/-- One rational explicit-Euler heat relaxation step. -/
def heatStep (c t q : ℚ) : ℚ := (1 - t) * q + t * c

/-- Fixed-scale proportional distance, avoiding a moving
normalization that could invalidate contraction. -/
def proportionalGap (scale q r : ℚ) : ℚ :=
  |q - r| / scale

theorem heatStep_difference (c t q r : ℚ) :
    heatStep c t q - heatStep c t r = (1 - t) * (q - r) := by
  unfold heatStep
  ring

theorem heatStep_collision_iff (c t q r : ℚ)
    (ht : t < 1) :
    heatStep c t q = heatStep c t r ↔ q = r := by
  rw [← sub_eq_zero, heatStep_difference]
  constructor
  · intro h
    have hfactor : 1 - t ≠ (0 : ℚ) := ne_of_gt (sub_pos.mpr ht)
    exact sub_eq_zero.mp ((mul_eq_zero.mp h).resolve_left hfactor)
  · intro h
    subst r
    rfl

/-- A nonnegative step below one contracts every rational pair
by exactly the factor 1-t at a fixed positive scale. -/
theorem proportionalGap_heatStep_eq
    (c t scale q r : ℚ)
    (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    proportionalGap scale (heatStep c t q) (heatStep c t r) =
      (1 - t) * proportionalGap scale q r := by
  unfold proportionalGap
  rw [heatStep_difference, abs_mul,
    abs_of_nonneg (sub_nonneg.mpr ht1)]
  ring

/-- No collision can be created by a strictly subunit heat step. -/
theorem no_new_collision (c t q r : ℚ) (ht : t < 1)
    (hne : q ≠ r) :
    heatStep c t q ≠ heatStep c t r := by
  intro h
  exact hne ((heatStep_collision_iff c t q r ht).mp h)

/-- At the terminal step all coordinates collide, demonstrating
why the strict step-size assumption cannot be removed. -/
theorem terminal_heatStep (c q : ℚ) :
    heatStep c 1 q = c := by
  unfold heatStep
  ring

/-! ## Finite Hodge-style refinement commuting with heat

A linear rational refinement R preserves a reference vector when it
maps the constant function at c to itself. Under that explicit
hypothesis it commutes with the synthetic Euler heat relaxation.
This is a finite algebraic analogue, not an analytic Hodge theorem.
-/

/-- Pointwise heat relaxation of a rational finite spectral field. -/
def heatField {ι : Type*} (c t : ℚ) (u : ι → ℚ) : ι → ℚ :=
  fun i => heatStep c t (u i)

/-- A linear refinement of rational spectral coordinates. -/
def refinedField {ι κ : Type*}
    (R : (ι → ℚ) →ₗ[ℚ] (κ → ℚ)) (u : ι → ℚ) : κ → ℚ :=
  R u

/-- Exact commutation when the refinement preserves the constant
reference field. This is the missing hypothesis for heat transport. -/
theorem refinement_commutes_heat
    {ι κ : Type*}
    (R : (ι → ℚ) →ₗ[ℚ] (κ → ℚ))
    (c t : ℚ)
    (hreference : R (fun _ : ι => c) = (fun _ : κ => c))
    (u : ι → ℚ) :
    refinedField R (heatField c t u) =
      heatField c t (refinedField R u) := by
  have hfield : heatField c t u =
      (1 - t) • u + t • (fun _ : ι => c) := by
    funext i
    simp [heatField, heatStep, Pi.add_apply, Pi.smul_apply, smul_eq_mul]
  unfold refinedField
  rw [hfield, map_add, map_smul, map_smul, hreference]
  funext i
  simp [heatField, heatStep, Pi.add_apply, Pi.smul_apply, smul_eq_mul]

/-- Constant-preserving refinement carries a terminal collision field
to the same reference level. -/
theorem refinement_preserves_terminal_collision
    {ι κ : Type*}
    (R : (ι → ℚ) →ₗ[ℚ] (κ → ℚ))
    (c : ℚ)
    (hreference : R (fun _ : ι => c) = (fun _ : κ => c))
    (u : ι → ℚ) :
    refinedField R (heatField c 1 u) = (fun _ : κ => c) := by
  rw [refinement_commutes_heat R c 1 hreference u]
  funext i
  exact terminal_heatStep c (refinedField R u i)

/-! ## Explicit spectral-gap stability under refinement

Constant preservation alone does not bound pairwise differences.
A separate nonexpansive-gap hypothesis is sufficient to transport
gap contraction through refinement. The hypothesis is not inferred
from linearity or Hodge terminology.
-/

/-- A fixed-scale gap nonexpansion certificate for a rational linear
refinement. Every output pair is compared with a designated input
pair; the map of index pairs is an explicit mathematical input. -/
def GapNonexpansive
    {ι κ : Type*}
    (R : (ι → ℚ) →ₗ[ℚ] (κ → ℚ))
    (sourcePair : κ → κ → ι × ι)
    (scale : ℚ) : Prop :=
  ∀ (u : ι → ℚ) (a b : κ),
    proportionalGap scale (R u a) (R u b) ≤
      proportionalGap scale (u (sourcePair a b).1)
        (u (sourcePair a b).2)

/-- A certified nonexpansive refinement followed by the finite heat
step contracts the designated input gap by the exact factor 1-t. -/
theorem refined_heat_gap_le
    {ι κ : Type*}
    (R : (ι → ℚ) →ₗ[ℚ] (κ → ℚ))
    (sourcePair : κ → κ → ι × ι)
    (scale c t : ℚ)
    (ht0 : 0 ≤ t) (ht1 : t ≤ 1)
    (hgap : GapNonexpansive R sourcePair scale)
    (a b : κ) (u : ι → ℚ) :
    proportionalGap scale
        (heatField c t (R u) a)
        (heatField c t (R u) b) ≤
      (1 - t) *
        proportionalGap scale
          (u (sourcePair a b).1)
          (u (sourcePair a b).2) := by
  have hfactor : 0 ≤ (1 - t : ℚ) := sub_nonneg.mpr ht1
  have h := hgap u a b
  have hscaled := mul_le_mul_of_nonneg_left h hfactor
  simpa only [heatField, proportionalGap_heatStep_eq c t scale
    (R u a) (R u b) ht0 ht1] using hscaled

/-- Constant preservation and certified gap nonexpansion combine to
give the same bound when refinement is applied AFTER heat. -/
theorem refinement_after_heat_gap_le
    {ι κ : Type*}
    (R : (ι → ℚ) →ₗ[ℚ] (κ → ℚ))
    (sourcePair : κ → κ → ι × ι)
    (scale c t : ℚ)
    (ht0 : 0 ≤ t) (ht1 : t ≤ 1)
    (hreference : R (fun _ : ι => c) = (fun _ : κ => c))
    (hgap : GapNonexpansive R sourcePair scale)
    (a b : κ) (u : ι → ℚ) :
    proportionalGap scale
        (R (heatField c t u) a)
        (R (heatField c t u) b) ≤
      (1 - t) *
        proportionalGap scale
          (u (sourcePair a b).1)
          (u (sourcePair a b).2) := by
  rw [refinement_commutes_heat R c t hreference u]
  exact refined_heat_gap_le R sourcePair scale c t
    ht0 ht1 hgap a b u

/-! ## Concrete pullback refinement

A coordinate pullback is a genuine rational linear map. It preserves
every constant field and exactly transports pairwise gaps through
the corresponding source index pair. This is an exact finite
refinement example, not a smoothing or Hodge projection.
-/

/-- Coordinate pullback along an index map. -/
def pullbackRefinement {ι κ : Type*} (f : κ → ι) :
    (ι → ℚ) →ₗ[ℚ] (κ → ℚ) where
  toFun := fun u a => u (f a)
  map_add' := by
    intro u v
    funext a
    rfl
  map_smul' := by
    intro c u
    funext a
    rfl

/-- Pullback preserves the constant reference field. -/
theorem pullback_preserves_reference
    {ι κ : Type*} (f : κ → ι) (c : ℚ) :
    pullbackRefinement f (fun _ : ι => c) = (fun _ : κ => c) := by
  rfl

/-- Pullback is gap nonexpansive with exact equality when the
designated source pair is the pulled-back output pair. -/
theorem pullback_gapNonexpansive
    {ι κ : Type*} (f : κ → ι) (scale : ℚ) :
    GapNonexpansive (pullbackRefinement f)
      (fun a b => (f a, f b)) scale := by
  intro u a b
  exact le_refl _

/-- Concrete heat-refinement gap contraction, with no abstract
GapNonexpansive certificate supplied by the caller. -/
theorem pullback_refinement_heat_gap_le
    {ι κ : Type*} (f : κ → ι)
    (scale c t : ℚ) (ht0 : 0 ≤ t) (ht1 : t ≤ 1)
    (u : ι → ℚ) (a b : κ) :
    proportionalGap scale
      (pullbackRefinement f (heatField c t u) a)
      (pullbackRefinement f (heatField c t u) b) ≤
      (1 - t) * proportionalGap scale (u (f a)) (u (f b)) := by
  exact refinement_after_heat_gap_le
    (pullbackRefinement f) (fun x y => (f x, f y))
    scale c t ht0 ht1
    (pullback_preserves_reference f c)
    (pullback_gapNonexpansive f scale) a b u

/-! ## Collision preservation under injective coordinate pullback

Injectivity of the INDEX map ensures distinct output indices have
distinct source indices. It does not alone ensure the source field
takes distinct values there: that is a separate spectral
noncollision hypothesis. Both are preserved explicitly.
-/

/-- Injective pullback preserves noncollision of the designated
source values for any two output indices. -/
theorem pullback_noncollision_of_source_noncollision
    {ι κ : Type*} (f : κ → ι)
    (u : ι → ℚ) (a b : κ)
    (hsource : u (f a) ≠ u (f b)) :
    pullbackRefinement f u a ≠ pullbackRefinement f u b := by
  exact hsource

/-- Injective index refinement and a source field separating
distinct source indices ensure distinct output spectral values. -/
theorem pullback_preserves_pairwise_distinct
    {ι κ : Type*} (f : κ → ι)
    (hf : Function.Injective f)
    (u : ι → ℚ)
    (hu : Function.Injective u) :
    Function.Injective (pullbackRefinement f u) := by
  intro a b hab
  apply hf
  apply hu
  exact hab

/-- Strictly subterminal heat flow after an injective pullback
preserves pairwise distinct rational spectral coordinates. -/
theorem pullback_heat_preserves_pairwise_distinct
    {ι κ : Type*} (f : κ → ι)
    (hf : Function.Injective f)
    (u : ι → ℚ) (hu : Function.Injective u)
    (c t : ℚ) (ht : t < 1) :
    Function.Injective
      (pullbackRefinement f (heatField c t u)) := by
  intro a b hab
  have hsource :
      heatStep c t (u (f a)) = heatStep c t (u (f b)) := hab
  have hbefore :=
    (heatStep_collision_iff c t (u (f a)) (u (f b)) ht).mp hsource
  exact hf (hu hbefore)

end GRWTSK.DifferentialEquationsAndDynamicalSystems.RationalSpectralHeatCollision
