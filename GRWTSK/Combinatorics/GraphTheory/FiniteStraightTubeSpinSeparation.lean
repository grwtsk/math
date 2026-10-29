/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
Mathlib original copyrights and licenses remain unchanged. -/
import GRWTSK.Combinatorics.GraphTheory.FiniteStraightTubeSpinDynamics
import GRWTSK.MeasureAndIntegration.FiniteStraightTubeProjectiveDirections

set_option autoImplicit false
noncomputable section

/-!
# Projective Kakeya separation is invariant under COMMON rigid spin

The source definition of projective angular separation uses both
unit chord distances, min(||omega-nu||,||omega+nu||), so it does
not identify antipodal labels as separated tubes.

An actual real linear isometry preserves both signed distances,
hence the projective gap of any two true straight tube directions.
The finite dynamical orbit of a common spin consequently preserves
the original sigma-projective separation hypothesis at EVERY time.

This result is independent of a probabilistic mixing theorem:
the same dynamics also preserves the actual physical overlap
moment, so mere iteration cannot improve the Kakeya estimate.
-/

namespace GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

variable {d : ℕ}

namespace Tube

theorem spin_direction (T : Tube d) (Q : RigidSpin d) :
    ((T.spin Q).direction : Space d) =
      Q (T.direction : Space d) := rfl

/-- All projective line-axis gaps are exact invariants of the same
ambient isometry, including near-antipodal source directions. -/
theorem projectiveDirectionGap_spin
    (Q : RigidSpin d) (T U : Tube d) :
    projectiveDirectionGap (T.spin Q).direction
        (U.spin Q).direction =
      projectiveDirectionGap T.direction U.direction := by
  have hminus :
      dist (Q (T.direction : Space d))
          (Q (U.direction : Space d)) =
        dist (T.direction : Space d) (U.direction : Space d) := by
    simp [dist_eq_norm, ← map_sub, Q.norm_map]
  have hplus :
      dist (Q (T.direction : Space d))
          (-(Q (U.direction : Space d))) =
        dist (T.direction : Space d) (-(U.direction : Space d)) := by
    rw [dist_eq_norm, dist_eq_norm]
    have hneg :
        -(Q (U.direction : Space d)) =
          Q (-(U.direction : Space d)) := by
      simp
    rw [hneg, ← map_sub, Q.norm_map]
  unfold projectiveDirectionGap
  rw [T.spin_direction Q, U.spin_direction Q, hminus, hplus]

/-- The source radius and half-length are unchanged by a rigid spin,
regardless of ambient dimension or spin power. -/
theorem spin_scales (Q : RigidSpin d) (T : Tube d) :
    (T.spin Q).radius = T.radius ∧
      (T.spin Q).halfLength = T.halfLength := ⟨rfl,rfl⟩

end Tube

end GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

universe u
variable {d : ℕ} {Index : Type u} [Fintype Index]

namespace Family

/-- The source's actual projective angular separation, not the
weaker oriented-vector predicate, survives one whole-family spin. -/
theorem projectivelySeparated_spin
    (S : Family d Index) (Q : RigidSpin d) (sigma : ℝ)
    (h : S.ProjectivelySeparated sigma) :
    (S.spin Q).ProjectivelySeparated sigma := by
  intro i j hij
  have hp := h i j hij
  have heq :=
    Tube.projectiveDirectionGap_spin Q (S.tube i) (S.tube j)
  simpa [Family.spin, heq] using hp

/-- Every finite orbit step preserves the same selected projective
separation certificate, while its true overlap moment stays fixed. -/
theorem spinOrbit_projectivelySeparated
    (S : Family d Index) (Q : RigidSpin d)
    (sigma : ℝ) (h : S.ProjectivelySeparated sigma) (n : ℕ) :
    (S.spinOrbit Q n).ProjectivelySeparated sigma := by
  induction n with
  | zero => exact h
  | succ n ih =>
      exact (S.spinOrbit Q n).projectivelySeparated_spin Q sigma ih

theorem spinOrbit_separation_and_overlap
    (S : Family d Index) (Q : RigidSpin d)
    (sigma : ℝ) (h : S.ProjectivelySeparated sigma) (n : ℕ) :
    (S.spinOrbit Q n).ProjectivelySeparated sigma ∧
      (S.spinOrbit Q n).physicalSecondMoment =
        S.physicalSecondMoment := by
  exact ⟨S.spinOrbit_projectivelySeparated Q sigma h n,
    S.spinOrbit_secondMoment Q n⟩

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
