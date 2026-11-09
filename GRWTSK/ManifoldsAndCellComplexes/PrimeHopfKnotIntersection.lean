/- Copyright (c) 2026 grwtsk contributors. MIT.
Source-level candidate for grwtsk/math at 0290551b75a7c5b07a807a5dd7f72bd575e35e0e.
Native Lean elaboration, fresh kernel replay, transitive axiom audit,
and independent review: NOT_RUN unless separately recorded. -/
import GRWTSK.ManifoldsAndCellComplexes.PrimeHopfKnotProjection
import Mathlib

noncomputable section

/-!
# Intersection of the selected Clifford-torus knot representatives

This *additive* geometric module consumes the published PrimePair and
PrimeHopfKnotProjection source. That source defines arithmetic projectedWinding,
not a Lean-valued K_p. We define precisely the representative that its written
section uses: K_p(z) = (z^2, z^(2*p+1)) / sqrt(2), for z on Mathlib's Circle.

The three-sphere below is the standard complex-coordinate real unit sphere.
It is a subtype of C × C, not a new knot-classification or manifold foundation.
The separate comparison with a Mathlib EuclideanSpace real-unit-sphere manifold
is a later port; no smooth embedding / ambient isotopy theorem is fabricated.

Each individual curve is a topological embedding. Every two of these *specific*
curves share their value at z=1. Thus they cannot be the disjoint components
of the chosen prime link, notwithstanding their individual torus-knot types.
No winding arithmetic is identified with a linking invariant.
-/

namespace GRWTSK.Topology.GeometricTopology.PrimeLinkGeometrization
namespace PrimeHopfKnotIntersection

open _root_.Topology

/-- The actual unit three-sphere as a complex-coordinate subset, with its
inherited topology. The Euclidean-space sphere comparison is a separate port. -/
abbrev ComplexThreeSphere : Type :=
  {x : ℂ × ℂ // ‖x.1‖ ^ 2 + ‖x.2‖ ^ 2 = (1 : ℝ)}

private def denominator : ℂ := (Real.sqrt (2 : ℝ) : ℂ)

private theorem denominator_ne_zero : denominator ≠ 0 := by
  unfold denominator
  exact_mod_cast (ne_of_gt (Real.sqrt_pos.2 (by norm_num : (0 : ℝ) < 2)))

/-- On the unit circle, division by sqrt(2) contributes squared norm 1/2. -/
private theorem squared_norm_scaled (z : Circle) :
    ‖(z : ℂ) / denominator‖ ^ 2 = (1 / 2 : ℝ) := by
  have hs : 0 < Real.sqrt (2 : ℝ) := Real.sqrt_pos.2 (by norm_num)
  calc
    ‖(z : ℂ) / denominator‖ ^ 2 = (1 / Real.sqrt 2) ^ 2 := by
      simp [denominator, norm_div, Complex.norm_real, Real.norm_eq_abs,
        abs_of_pos hs]
    _ = 1 / 2 := by
      rw [div_pow, Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2)]
      norm_num

/-- The common Clifford torus, already normalized into S^3. -/
def cliffordPoint (a b : Circle) : ComplexThreeSphere :=
  ⟨((a : ℂ) / denominator, (b : ℂ) / denominator), by
    change ‖(a : ℂ) / denominator‖ ^ 2 +
      ‖(b : ℂ) / denominator‖ ^ 2 = 1
    rw [squared_norm_scaled a, squared_norm_scaled b]
    norm_num⟩

/-- The pair of angular powers; keeping these as Circle objects makes the
coprimality argument purely algebraic. -/
def torusCoordinates (p : ℕ) (z : Circle) : Circle × Circle :=
  (z ^ 2, z ^ (2 * p + 1))

/-- The literal representative described in PrimeHopfKnotProjection.lean. -/
def chosenKnot (p : ℕ) (z : Circle) : ComplexThreeSphere :=
  cliffordPoint (z ^ 2) (z ^ (2 * p + 1))

/-- These circle powers agree with the published exp(2 i t),
exp((2p+1) i t) at z = Circle.exp t. -/
theorem angle_powers (p : ℕ) (t : ℝ) :
    (Circle.exp t) ^ 2 = Circle.exp (2 * t) ∧
      (Circle.exp t) ^ (2 * p + 1) = Circle.exp ((2 * p + 1) * t) := by
  constructor
  · simpa using (Circle.exp_natCast_mul t 2).symm
  · simpa using (Circle.exp_natCast_mul t (2 * p + 1)).symm

/-- The two odd/even angular powers recover the original circle point.
No primality assumption is needed. -/
theorem torusCoordinates_injective (p : ℕ) :
    Function.Injective (torusCoordinates p) := by
  intro z w h
  have h2 : z ^ 2 = w ^ 2 := congrArg Prod.fst h
  have hodd : z ^ (2 * p + 1) = w ^ (2 * p + 1) :=
    congrArg Prod.snd h
  have hpow : z ^ (2 * p) = w ^ (2 * p) := by
    simpa only [pow_mul] using congrArg (fun u : Circle => u ^ p) h2
  have hlast : z ^ (2 * p) * z = w ^ (2 * p) * w := by
    simpa only [pow_add, pow_one] using hodd
  rw [hpow] at hlast
  exact mul_left_cancel hlast

private theorem cliffordPoint_injective :
    Function.Injective (fun ab : Circle × Circle =>
      cliffordPoint ab.1 ab.2) := by
  rintro ⟨a, b⟩ ⟨c, d⟩ h
  have ha : (a : ℂ) / denominator = (c : ℂ) / denominator :=
    congrArg (fun s : ComplexThreeSphere => s.val.1) h
  have hb : (b : ℂ) / denominator = (d : ℂ) / denominator :=
    congrArg (fun s : ComplexThreeSphere => s.val.2) h
  have ha' : (a : ℂ) = (c : ℂ) := by
    have hm := congrArg (fun x : ℂ => x * denominator) ha
    simpa [div_eq_mul_inv, mul_assoc, denominator_ne_zero] using hm
  have hb' : (b : ℂ) = (d : ℂ) := by
    have hm := congrArg (fun x : ℂ => x * denominator) hb
    simpa [div_eq_mul_inv, mul_assoc, denominator_ne_zero] using hm
  exact Prod.ext (Circle.coe_injective ha') (Circle.coe_injective hb')

/-- The selected K_p is injective as a map into the actual complex S^3. -/
theorem chosenKnot_injective (p : ℕ) :
    Function.Injective (chosenKnot p) := by
  intro z w h
  apply torusCoordinates_injective p
  apply cliffordPoint_injective
  exact h

/-- Continuity of the chosen S^3-valued curve. -/
theorem chosenKnot_continuous (p : ℕ) :
    Continuous (chosenKnot p) := by
  apply Continuous.subtype_mk
  exact ((continuous_subtype_val.pow 2).div_const denominator).prodMk
    ((continuous_subtype_val.pow (2 * p + 1)).div_const denominator)

/-- Compact-to-Hausdorff upgrades the continuous injection to a
TOPological embedding; smooth embeddedness is left as a separate manifold port. -/
theorem chosenKnot_isEmbedding (p : ℕ) :
    IsEmbedding (chosenKnot p) := by
  have hclosed : IsClosedMap (chosenKnot p) := by
    intro s hs
    exact (hs.isCompact.image (chosenKnot_continuous p)).isClosed
  exact (IsClosedEmbedding.of_continuous_injective_isClosedMap
    (chosenKnot_continuous p) (chosenKnot_injective p) hclosed).isEmbedding

/-! ### Hopf observation of the actual normalized representative

With the convention `2 * conj(z) * w`, the equatorial complex phase is
`b/a` at `(a,b)/sqrt 2`; the height is zero because both squared
norms equal 1/2. Thus on K_p it is `u^(2p-1)` for positive p.
This supplies the missing observation of the actual S³ coordinates,
not merely an assigned winding integer. The p=0 curve has exponent -1;
natural subtraction would give 0, so positivity cannot be dropped.
The topological degree and smooth manifold ports remain unproved.
Independent analytical review, fresh kernel replay and transitive axiom
audit remain NOT_RUN. No simultaneous link realization follows.
-/

/-- Complex equatorial coordinate and real height of the Hopf observation.
The codomain is coordinates; a full S²-valued map is a separate obligation. -/
def hopfObservation (x : ComplexThreeSphere) : ℂ × ℝ :=
  (2 * star x.val.1 * x.val.2, ‖x.val.1‖ ^ 2 - ‖x.val.2‖ ^ 2)

/-- Exact normalized Clifford-torus Hopf formula, with the sign convention
matching PrimeHopfKnotProjection. -/
theorem hopfObservation_cliffordPoint (a b : Circle) :
    hopfObservation (cliffordPoint a b) = (((b / a : Circle) : ℂ), 0) := by
  apply Prod.ext
  · change 2 * star ((a : ℂ) / denominator) *
        ((b : ℂ) / denominator) = ((b / a : Circle) : ℂ)
    have hd : star denominator = denominator := by simp [denominator]
    have hs : denominator ^ 2 = (2 : ℂ) := by
      unfold denominator
      rw [← Complex.ofReal_pow, Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2)]
      norm_num
    have ha : star (a : ℂ) = ((a⁻¹ : Circle) : ℂ) :=
      (Circle.coe_inv_eq_conj a).symm
    rw [star_div₀, hd, ha, Circle.coe_div]
    rw [div_eq_mul_inv (b : ℂ) (a : ℂ)]
    rw [← Circle.coe_inv]
    change 2 * ((↑a⁻¹ : ℂ) / denominator) *
      ((b : ℂ) / denominator) = (b : ℂ) * (↑a⁻¹ : ℂ)
    field_simp [denominator_ne_zero]
    rw [hs]
  · change ‖(a : ℂ) / denominator‖ ^ 2 -
        ‖(b : ℂ) / denominator‖ ^ 2 = 0
    rw [squared_norm_scaled a, squared_norm_scaled b]
    ring

/-- Actual Hopf observation of the chosen S³-valued knot. The exponent
is an algebraic phase exponent, not yet a Lean topological degree. -/
theorem hopfObservation_chosenKnot (p : ℕ) (hp : 0 < p) (u : Circle) :
    hopfObservation (chosenKnot p u) =
      (((u ^ PrimeHopfKnotProjection.projectedWinding p : Circle) : ℂ), 0) := by
  have he : 2 * p + 1 = PrimeHopfKnotProjection.projectedWinding p + 2 := by
    dsimp [PrimeHopfKnotProjection.projectedWinding]
    omega
  unfold chosenKnot
  rw [hopfObservation_cliffordPoint, he, pow_add]
  simp

/-- The actual selected prime Hopf phases, together with their exact
return to the imported stereographic displacement of the original PrimePair. -/
theorem hopfObservation_primePair_return (pair : PrimePair) (u : Circle) :
    hopfObservation (chosenKnot pair.p u) =
      (((u ^ PrimeHopfKnotProjection.projectedWinding pair.p : Circle) : ℂ), 0) ∧
    hopfObservation (chosenKnot pair.q u) =
      (((u ^ PrimeHopfKnotProjection.projectedWinding pair.q : Circle) : ℂ), 0) ∧
    ((PrimeHopfKnotProjection.projectedWinding pair.q -
        PrimeHopfKnotProjection.projectedWinding pair.p : ℕ) : ℚ) =
      2 * SphericalPrimeDisplacement.displacement
        (SphericalPrimeDisplacement.primePoint pair.p)
        (SphericalPrimeDisplacement.primePoint pair.q) := by
  refine ⟨hopfObservation_chosenKnot pair.p pair.prime_p.pos u,
    hopfObservation_chosenKnot pair.q pair.prime_q.pos u, ?_⟩
  rw [PrimeHopfKnotProjection.winding_difference,
    SphericalPrimeDisplacement.displacement_source_gap]
  simp

/-- All selected representatives pass through the same Clifford-torus point. -/
@[simp] theorem chosenKnot_one (p : ℕ) :
    chosenKnot p (1 : Circle) = cliffordPoint 1 1 := by
  simp [chosenKnot]

/-- The exact shared-point equality, not a comparison of winding numbers. -/
theorem chosenKnot_commonPoint (p q : ℕ) :
    chosenKnot p (1 : Circle) = chosenKnot q (1 : Circle) := by
  simp

/-- Their geometric images intersect; therefore these particular maps
are NOT the two disjoint components of any link. -/
theorem chosenKnot_ranges_not_disjoint (p q : ℕ) :
    ¬ Disjoint (Set.range (chosenKnot p)) (Set.range (chosenKnot q)) := by
  intro hd
  have hp : chosenKnot p (1 : Circle) ∈ Set.range (chosenKnot p) :=
    ⟨1, rfl⟩
  have hq : chosenKnot p (1 : Circle) ∈ Set.range (chosenKnot q) := by
    refine ⟨1, ?_⟩
    exact (chosenKnot_commonPoint p q).symm
  exact (Set.disjoint_left.mp hd) hp hq

/-- Source-faithful consumer of the repository's exact ordered PrimePair. -/
theorem primePair_chosen_representatives_not_disjoint (pair : PrimePair) :
    ¬ Disjoint (Set.range (chosenKnot pair.p))
        (Set.range (chosenKnot pair.q)) :=
  chosenKnot_ranges_not_disjoint pair.p pair.q

end PrimeHopfKnotIntersection
end GRWTSK.Topology.GeometricTopology.PrimeLinkGeometrization
