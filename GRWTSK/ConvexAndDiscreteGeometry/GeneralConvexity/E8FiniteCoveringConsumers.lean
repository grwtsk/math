/- Local attribution: grwtsk contributors.
Upstream E8 source authors Bhavik Mehta and Gareth Ma retain Apache-2.0 attribution. -/
import GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.E8SeparationConsumers
import Mathlib.Topology.MetricSpace.CoveringNumbers
import Mathlib.Data.Set.Card

/-!
# Exact small-radius covering cost of a finite E8 sample

Below half the E8 separation scale, a closed ball cannot cover two sample
points. Thus an external cover, even with centers outside E8, needs at least
one center per sample point; the sample itself attains that number.

The radius inequality is strict because `Metric.IsCover` uses closed balls.
At half the separation scale a midpoint-centered closed ball can contain both
ends of a minimally separated pair. Empty samples and radius zero are included.
There is no optimal-density, asymptotic lattice-count or coefficient-mass claim.
SOURCE_PROOF_CANDIDATE: compilation, fresh kernel replay and axiom audit NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.E8FiniteCoveringConsumers

/-- The exact Euclidean sample is strictly separated at twice the cover radius.
The factor-two radius is the one consumed by the covering-number comparison. -/
theorem isSeparated_image_of_two_mul_radius_lt_sqrt_two
    (S : Finset (Fin 8 → ℝ)) (hS : ∀ v ∈ S, v ∈ Submodule.E8 ℝ)
    (ε : NNReal) (hε : 2 * (ε : ℝ) < Real.sqrt 2) :
    Metric.IsSeparated ((2 * ε : NNReal) : ENNReal)
      ((WithLp.toLp 2) '' (S : Set (Fin 8 → ℝ))) := by
  rintro x ⟨v, hv, rfl⟩ y ⟨w, hw, rfl⟩ hne
  have hvw : v ≠ w := by
    intro hvw
    exact hne (congrArg (WithLp.toLp 2) hvw)
  have hdist : ((2 * ε : NNReal) : ℝ) <
      dist (WithLp.toLp 2 v) (WithLp.toLp 2 w) := by
    simpa only [NNReal.coe_mul, NNReal.coe_ofNat] using
      hε.trans_le (E8SeparationConsumers.centre_distance_lower_bound v w (hS v hv) (hS w hw) hvw)
  have hext : ENNReal.ofReal (((2 * ε : NNReal) : ℝ)) <
      ENNReal.ofReal (dist (WithLp.toLp 2 v) (WithLp.toLp 2 w)) :=
    (ENNReal.ofReal_lt_ofReal_iff_of_nonneg (NNReal.coe_nonneg (2 * ε))).mpr hdist
  simpa only [ENNReal.ofReal_coe_nnreal, edist_dist] using hext

/-- Every finite E8 sample has exact external covering cost equal to its
cardinality for closed-ball radii strictly below half the separation scale.
The cover centers are unrestricted, and no nonempty-sample premise is used. -/
theorem externalCoveringNumber_eq_card_of_two_mul_radius_lt_sqrt_two
    (S : Finset (Fin 8 → ℝ)) (hS : ∀ v ∈ S, v ∈ Submodule.E8 ℝ)
    (ε : NNReal) (hε : 2 * (ε : ℝ) < Real.sqrt 2) :
    Metric.externalCoveringNumber ε
      ((WithLp.toLp 2) '' (S : Set (Fin 8 → ℝ))) = (S.card : ENat) := by
  classical
  let T : Finset (EuclideanSpace ℝ (Fin 8)) := S.image (WithLp.toLp 2)
  have hT : (T : Set (EuclideanSpace ℝ (Fin 8))) =
      (WithLp.toLp 2) '' (S : Set (Fin 8 → ℝ)) := Finset.coe_image
  have hTcard : T.card = S.card :=
    Finset.card_image_of_injective S (WithLp.toLp_injective 2)
  have hcard : ((WithLp.toLp 2) '' (S : Set (Fin 8 → ℝ))).encard = (S.card : ENat) := by
    rw [← hT, Set.encard_coe_eq_coe_finsetCard, hTcard]
  have hsep := isSeparated_image_of_two_mul_radius_lt_sqrt_two S hS ε hε
  apply le_antisymm
  · exact (Metric.externalCoveringNumber_le_encard_self _).trans_eq hcard
  · calc
      (S.card : ENat) = ((WithLp.toLp 2) '' (S : Set (Fin 8 → ℝ))).encard := hcard.symm
      _ ≤ Metric.packingNumber (2 * ε)
          ((WithLp.toLp 2) '' (S : Set (Fin 8 → ℝ))) :=
        Metric.IsSeparated.encard_le_packingNumber (Set.Subset.refl _) hsep
      _ ≤ Metric.externalCoveringNumber ε
          ((WithLp.toLp 2) '' (S : Set (Fin 8 → ℝ))) :=
        Metric.packingNumber_two_mul_le_externalCoveringNumber ε _

/-- Any closed-ball cover of the sample has at least as many centers as sample
points. The center set may be infinite and need not lie in the lattice. -/
theorem card_le_encard_of_isCover
    (S : Finset (Fin 8 → ℝ)) (hS : ∀ v ∈ S, v ∈ Submodule.E8 ℝ)
    (ε : NNReal) (hε : 2 * (ε : ℝ) < Real.sqrt 2)
    (C : Set (EuclideanSpace ℝ (Fin 8)))
    (hC : Metric.IsCover ε ((WithLp.toLp 2) '' (S : Set (Fin 8 → ℝ))) C) :
    (S.card : ENat) ≤ C.encard := by
  calc
    (S.card : ENat) = Metric.externalCoveringNumber ε
        ((WithLp.toLp 2) '' (S : Set (Fin 8 → ℝ))) :=
      (externalCoveringNumber_eq_card_of_two_mul_radius_lt_sqrt_two S hS ε hε).symm
    _ ≤ C.encard := Metric.IsCover.externalCoveringNumber_le_encard hC

end GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.E8FiniteCoveringConsumers
