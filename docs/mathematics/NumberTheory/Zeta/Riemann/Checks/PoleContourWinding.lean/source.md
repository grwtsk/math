# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PoleContourWinding

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d336c69302a0b181fa78f286580800057cf2619b` · SHA-256 `2ddb99e623e779e5b4d639bfc4c5ff0edd5a71b517302abce3fee636ae4622e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.LoopIndexOperations
import GRWTSK.NumberTheory.Zeta.Riemann.PoleContourWinding
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.PoleContourHomotopy

set_option autoImplicit false

/-!
# Signed loop-index controls and the sourced small-square application

The positive actual-source example is the old SMALL pole square, not the large
counting rectangle. Exponential loops below are exact synthetic controls; they
are neither zeta values nor numerically discovered zeros. Every new and inherited
proof script remains unexecuted. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.PoleContourWinding

open scoped unitInterval
open ContinuousMap
open GRWTSK.Analysis.Complex
open ExponentialLoopIndex LoopIndexOperations
open PoleContourCoverage

noncomputable section

/-- Source-bound zero index of the complete SMALL square, with no extra numerical
or index premise. No argument principle or interior exclusion is asserted. -/
theorem small_square_source_index_zero :
    GRWTSK.RiemannHypothesis.PoleContourWinding.sourceIndex
      image_checked square_enclosures = 0 := by
  apply GRWTSK.RiemannHypothesis.PoleContourWinding.sourceIndex_zero_of_constant
    image_checked square_enclosures (z := 1) (by norm_num)
  intro t
  rw [PoleContourHomotopy.square_image_is_constant]
  rfl

theorem signed_turn_controls :
    winding (turnLoop 1) (turnLoop_closed 1) = 1 ∧
    winding (turnLoop (-1)) (turnLoop_closed (-1)) = -1 ∧
    winding (turnLoop 2) (turnLoop_closed 2) = 2 := by simp

/-- Identical endpoint values and principal logs do not imply zero winding. -/
theorem endpoint_log_control :
    Complex.log (turnLoop 1 1).1 - Complex.log (turnLoop 1 0).1 = 0 ∧
    winding (turnLoop 1) (turnLoop_closed 1) = 1 := by simp

/-- A continuous logarithm along the path exists, but does not close for one turn. -/
theorem lift_does_not_close_for_one_turn :
    ¬ ∃ L : C(I, ℂ), (∀ t, Complex.exp (L t) = (turnLoop 1 t).1) ∧ L 0 = L 1 :=
  no_closed_log_of_nonzero_turn (by decide : (1 : ℤ) ≠ 0)

theorem one_turn_cannot_contract_through_closed_nonzero_loops :
    ¬ Nonempty (HomotopyWith (turnLoop 1) (turnLoop 0) (fun g => g 0 = g 1)) :=
  no_homotopy_between_distinct_turns (by decide : (1 : ℤ) ≠ 0)

/-- A global branch shift changes neither path values nor the lifted increment. -/
def shiftedTurnLift (k j : ℤ) : C(I, ℂ) where
  toFun t := turnLift k t + deck j
  continuous_toFun := (turnLift k).continuous.add continuous_const

theorem shifted_turn_lifts (k j : ℤ) (t : I) :
    Complex.exp (shiftedTurnLift k j t) = (turnLoop k t).1 := by
  simp [shiftedTurnLift, Complex.exp_add, turnLoop, exponentialMap, expCover]

theorem arbitrary_initial_branch_same_index (k j : ℤ) :
    winding (turnLoop k) (turnLoop_closed k) = k := by
  apply winding_eq_of_lift _ _ (shiftedTurnLift k j) (shifted_turn_lifts k j)
  simp [shiftedTurnLift, turnLift]

def squareTime : C(I, I) where
  toFun t := ⟨(t : ℝ) ^ 2, ⟨sq_nonneg _, by nlinarith [t.2.1, t.2.2]⟩⟩
  continuous_toFun := (continuous_subtype_val.pow 2).subtype_mk _

/-- Nonuniform timing retains the integer, not a uniform quadrature weight. -/
theorem nonlinear_time_preserves_index (k : ℤ) :
    winding ((turnLoop k).comp squareTime)
      (by simp [squareTime, ContinuousMap.comp_apply, turnLoop_closed]) = k := by
  rw [winding_reparam (turnLoop k) (turnLoop_closed k) squareTime
    (by ext; norm_num [squareTime]) (by ext; norm_num [squareTime])]
  exact winding_turnLoop k

theorem actual_reverse_changes_sign :
    winding (reverseLoop (turnLoop 1)) (reverseLoop_closed _ (turnLoop_closed 1)) = -1 := by
  rw [winding_reverse, winding_turnLoop]

theorem product_keeps_signed_turn_sum :
    winding (productLoop (turnLoop 1) (turnLoop 2))
      (productLoop_closed _ _ (turnLoop_closed 1) (turnLoop_closed 2)) = 3 := by
  rw [winding_product, winding_turnLoop, winding_turnLoop]
  norm_num

/-- An open nonzero exponential path need not have an integral deck jump. -/
def openLift : C(I, ℂ) where
  toFun t := ((t : ℝ) : ℂ)
  continuous_toFun := by fun_prop

theorem nonclosed_path_has_no_integer_jump :
    ¬ ∃ k : ℤ, openLift 1 - openLift 0 = deck k := by
  rintro ⟨k, hk⟩
  have hr := congrArg Complex.re hk
  norm_num [openLift, deck, period, Complex.mul_re, Complex.mul_im] at hr

/-- Removing zero avoidance permits the usual straight contraction of any loop.
This is a pointwise SYNTHETIC obstruction, not an accepted punctured homotopy. -/
theorem opposite_value_interpolation_hits_zero :
    PolygonTube.blend (1 / 2) (1 : ℂ) (-1) = 0 := by
  norm_num [PolygonTube.blend, Complex.real_smul]

/-- Old false-value controls persist: a scalar pass cannot furnish the source
Enclosures premise required by the new index-transport theorem. -/
theorem fictitious_contour_still_has_no_source :
    ¬ RationalPoleContour.Enclosures 4 fictitiousData := fictitious_data_have_no_enclosures

end
end GRWTSK.RiemannHypothesis.Checks.PoleContourWinding
```
