/-
Local attribution: grwtsk contributors.
Upstream E8 authors Bhavik Mehta and Gareth Ma and Mathlib retain Apache-2.0 attribution.
-/
import GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.E8FiniteCoveringConsumers
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Tactic.Linarith

/-!
# Radius-close point-to-center matchings for finite E8 samples

The covering-number consumer gives a cardinality obstruction. Here the same
separation scale supplies an actual assignment: every finite sample point is
assigned a distinct covering center at distance at most the cover radius.
The center set can be infinite and need not lie in E8. If a finite center set
has exactly the sample cardinality, the assignment is a bijection.

Strict `2*epsilon < sqrt 2` is retained for closed balls. Empty samples and
radius zero are included. The chosen centers are radius-close, not asserted
to be nearest centers. The use of classical choice proves existence; it is
not a matching algorithm or a claim about execution time. No packing-density,
volume or geometric-to-arithmetic mass conclusion is supplied.

The isolated package retains the exact E8 source and native dependency pins.
The root covering-number source is not imported across versions, and the
admitted `SpherePacking.MainTheorem` endpoint remains excluded.
SOURCE_PROOF_CANDIDATE: compilation, expected-interface checking, fresh kernel
replay and complete transitive axiom auditing remain NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.E8CoverMatching

/-- An arbitrary closed-ball cover admits a radius-close injection from the
actual finite E8 sample subtype to its center subtype. No finiteness or
lattice-membership condition is imposed on the center set. -/
theorem exists_close_embedding_of_isCover
    (S : Finset (Fin 8 → ℝ)) (hS : ∀ v ∈ S, v ∈ Submodule.E8 ℝ)
    (ε : NNReal) (hε : 2 * (ε : ℝ) < Real.sqrt 2)
    (C : Set (EuclideanSpace ℝ (Fin 8)))
    (hC : Metric.IsCover ε ((WithLp.toLp 2) '' (S : Set (Fin 8 → ℝ))) C) :
    ∃ f : S ↪ C, ∀ v : S,
      dist (WithLp.toLp 2 (v : Fin 8 → ℝ)) (f v : EuclideanSpace ℝ (Fin 8)) ≤
        (ε : ℝ) := by
  classical
  have hpoint (v : S) : ∃ c : C,
      dist (WithLp.toLp 2 (v : Fin 8 → ℝ)) (c : EuclideanSpace ℝ (Fin 8)) ≤
        (ε : ℝ) := by
    obtain ⟨c, hc, hclose⟩ := hC (Set.mem_image_of_mem (WithLp.toLp 2) v.property)
    refine ⟨⟨c, hc⟩, ?_⟩
    apply (edist_le_ofReal (NNReal.coe_nonneg ε)).mp
    simpa only [ENNReal.ofReal_coe_nnreal] using hclose
  let f : S → C := fun v => Classical.choose (hpoint v)
  have hclose (v : S) :
      dist (WithLp.toLp 2 (v : Fin 8 → ℝ)) (f v : EuclideanSpace ℝ (Fin 8)) ≤
        (ε : ℝ) := Classical.choose_spec (hpoint v)
  have hf : Function.Injective f := by
    intro v w hvw
    by_contra hne
    have hval : (v : Fin 8 → ℝ) ≠ (w : Fin 8 → ℝ) := by
      intro heq
      exact hne (Subtype.ext heq)
    have hsep := E8SeparationConsumers.centre_distance_lower_bound
      (v : Fin 8 → ℝ) (w : Fin 8 → ℝ) (hS v v.property) (hS w w.property) hval
    have htriangle := dist_triangle (WithLp.toLp 2 (v : Fin 8 → ℝ))
      (f v : EuclideanSpace ℝ (Fin 8)) (WithLp.toLp 2 (w : Fin 8 → ℝ))
    have hvclose := hclose v
    have hwclose :
        dist (f v : EuclideanSpace ℝ (Fin 8)) (WithLp.toLp 2 (w : Fin 8 → ℝ)) ≤
          (ε : ℝ) := by
      calc
        dist (f v : EuclideanSpace ℝ (Fin 8)) (WithLp.toLp 2 (w : Fin 8 → ℝ)) =
            dist (WithLp.toLp 2 (w : Fin 8 → ℝ)) (f w : EuclideanSpace ℝ (Fin 8)) := by
              rw [hvw, dist_comm]
        _ ≤ (ε : ℝ) := hclose w
    linarith
  exact ⟨⟨f, hf⟩, hclose⟩

/-- An equal-cardinality finite cover admits a radius-close equivalence.
Every center is used, including in the empty-sample and empty-center case.
The conclusion is a correspondence, not a nearest-center optimality claim. -/
theorem exists_close_equiv_of_isCover_and_card_eq
    (S : Finset (Fin 8 → ℝ)) (hS : ∀ v ∈ S, v ∈ Submodule.E8 ℝ)
    (ε : NNReal) (hε : 2 * (ε : ℝ) < Real.sqrt 2)
    (C : Finset (EuclideanSpace ℝ (Fin 8)))
    (hC : Metric.IsCover ε ((WithLp.toLp 2) '' (S : Set (Fin 8 → ℝ)))
      (C : Set (EuclideanSpace ℝ (Fin 8))))
    (hcard : C.card = S.card) :
    ∃ e : S ≃ C, ∀ v : S,
      dist (WithLp.toLp 2 (v : Fin 8 → ℝ)) (e v : EuclideanSpace ℝ (Fin 8)) ≤
        (ε : ℝ) := by
  classical
  obtain ⟨f, hclose⟩ := exists_close_embedding_of_isCover S hS ε hε
    (C : Set (EuclideanSpace ℝ (Fin 8))) hC
  have hcard' : Fintype.card S = Fintype.card C := by
    simpa only [Fintype.card_coe] using hcard.symm
  have hbij : Function.Bijective (fun v : S => f v) :=
    (Fintype.bijective_iff_injective_and_card (fun v : S => f v)).mpr
      ⟨f.injective, hcard'⟩
  let e : S ≃ C := Equiv.ofBijective (fun v : S => f v) hbij
  exact ⟨e, hclose⟩

end GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.E8CoverMatching
