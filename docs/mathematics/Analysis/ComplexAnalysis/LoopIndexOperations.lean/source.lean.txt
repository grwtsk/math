/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.ExponentialLoopIndex

set_option autoImplicit false

/-!
# Orientation, traversal and parameterization of the exponential loop index

The signed integer is normalized by actual exponential loops. Reversal changes
its sign; repeated turns are not deduplicated. Endpoint-preserving continuous
reparameterization leaves it unchanged without imposing a speed or arclength.
No polygon crossing algorithm or contour-integral normalization is assumed.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.Complex.LoopIndexOperations

open scoped unitInterval
open ContinuousMap ExponentialLoopIndex

noncomputable section

/-- Exponentiating a continuous function produces an actual punctured-plane map. -/
def exponentialMap (L : C(I, ℂ)) : C(I, Punctured) where
  toFun t := expCover (L t)
  continuous_toFun := covering.continuous.comp L.continuous

theorem exponentialMap_closed (L : C(I, ℂ)) {k : ℤ}
    (hk : L 1 - L 0 = deck k) : exponentialMap L 0 = exponentialMap L 1 := by
  apply Subtype.ext
  change Complex.exp (L 0) = Complex.exp (L 1)
  apply (Complex.exp_eq_exp_iff_exists_int.mpr ?_).symm
  refine ⟨k, ?_⟩
  change L 1 = L 0 + deck k
  linear_combination hk

theorem winding_exponentialMap (L : C(I, ℂ)) {k : ℤ}
    (hk : L 1 - L 0 = deck k) :
    winding (exponentialMap L) (exponentialMap_closed L hk) = k :=
  winding_eq_of_lift _ _ L (fun _ => rfl) hk

/-- One positively oriented turn has lifted increment +2*pi*i. The integer
may be negative; no absolute value is used in the index. -/
def turnLift (k : ℤ) : C(I, ℂ) where
  toFun t := ((t : ℝ) : ℂ) * deck k
  continuous_toFun := by fun_prop

@[simp] theorem turnLift_jump (k : ℤ) : turnLift k 1 - turnLift k 0 = deck k := by
  simp [turnLift]

def turnLoop (k : ℤ) : C(I, Punctured) := exponentialMap (turnLift k)

theorem turnLoop_closed (k : ℤ) : turnLoop k 0 = turnLoop k 1 :=
  exponentialMap_closed _ (turnLift_jump k)

@[simp] theorem winding_turnLoop (k : ℤ) : winding (turnLoop k) (turnLoop_closed k) = k :=
  winding_exponentialMap _ (turnLift_jump k)

@[simp] theorem turnLoop_zero (k : ℤ) : (turnLoop k 0).1 = 1 := by
  simp [turnLoop, exponentialMap, expCover, turnLift]

@[simp] theorem turnLoop_one (k : ℤ) : (turnLoop k 1).1 = 1 := by
  simp [turnLoop, exponentialMap, expCover, turnLift]

/-- Both endpoint principal logs vanish even for a nonzero turn count. -/
theorem endpoint_principal_logs_lose_turns (k : ℤ) :
    Complex.log (turnLoop k 1).1 - Complex.log (turnLoop k 0).1 = 0 := by simp

/-- A nonzero-turn loop has continuous logs, but NONE of them can close. -/
theorem no_closed_log_of_nonzero_turn {k : ℤ} (hk : k ≠ 0) :
    ¬ ∃ L : C(I, ℂ), (∀ t, Complex.exp (L t) = (turnLoop k t).1) ∧ L 0 = L 1 := by
  rintro ⟨L, hL, hc⟩
  have h := winding_zero_of_closed_log (turnLoop k) (turnLoop_closed k) L hL hc
  rw [winding_turnLoop] at h
  exact hk h

/-- Equality of endpoint values alone cannot deform distinct turn counts
through CLOSED, zero-avoiding loops. -/
theorem no_homotopy_between_distinct_turns {j k : ℤ} (hjk : j ≠ k) :
    ¬ Nonempty (HomotopyWith (turnLoop j) (turnLoop k) (fun g => g 0 = g 1)) := by
  rintro ⟨H⟩
  have h := winding_homotopy (turnLoop_closed j) (turnLoop_closed k) H
  simp only [winding_turnLoop] at h
  exact hjk h

def reverseTime : C(I, I) where
  toFun t := ⟨1 - (t : ℝ), by constructor <;> linarith [t.2.1, t.2.2]⟩
  continuous_toFun := (continuous_const.sub continuous_subtype_val).subtype_mk _

@[simp] theorem reverseTime_zero : reverseTime 0 = 1 := by ext; norm_num [reverseTime]
@[simp] theorem reverseTime_one : reverseTime 1 = 0 := by ext; norm_num [reverseTime]

def reverseLoop (g : C(I, Punctured)) : C(I, Punctured) := g.comp reverseTime

theorem reverseLoop_closed (g : C(I, Punctured)) (hg : g 0 = g 1) :
    reverseLoop g 0 = reverseLoop g 1 := by simpa [reverseLoop] using hg.symm

theorem winding_reverse (g : C(I, Punctured)) (hg : g 0 = g 1) :
    winding (reverseLoop g) (reverseLoop_closed g hg) = -winding g hg := by
  apply winding_eq_of_lift _ _ ((logLift g).comp reverseTime)
  · intro t
    exact logLift_exp g (reverseTime t)
  · simp only [ContinuousMap.comp_apply, reverseTime_zero, reverseTime_one, deck_neg]
    have hj := winding_spec g hg
    linear_combination -hj

/-- Pauses or nonuniform timing do not change winding. This is a topological
statement, NOT a change-of-variables theorem for a numerical integral. -/
theorem winding_reparam (g : C(I, Punctured)) (hg : g 0 = g 1)
    (r : C(I, I)) (h0 : r 0 = 0) (h1 : r 1 = 1) :
    winding (g.comp r) (by simpa only [ContinuousMap.comp_apply, h0, h1] using hg) =
      winding g hg := by
  apply winding_eq_of_lift _ _ ((logLift g).comp r)
  · intro t
    exact logLift_exp g (r t)
  · simpa only [ContinuousMap.comp_apply, h0, h1] using winding_spec g hg

def productLoop (g h : C(I, Punctured)) : C(I, Punctured) where
  toFun t := ⟨(g t).1 * (h t).1, mul_ne_zero (g t).2 (h t).2⟩
  continuous_toFun := ((continuous_subtype_val.comp g.continuous).mul
    (continuous_subtype_val.comp h.continuous)).subtype_mk _

theorem productLoop_closed (g h : C(I, Punctured)) (hg : g 0 = g 1) (hh : h 0 = h 1) :
    productLoop g h 0 = productLoop g h 1 := by
  apply Subtype.ext
  change (g 0).1 * (h 0).1 = (g 1).1 * (h 1).1
  rw [hg, hh]

/-- Signed additivity concerns POINTWISE MULTIPLICATION of nonzero loops.
It is not additivity for pointwise sums, which may vanish. -/
theorem winding_product (g h : C(I, Punctured)) (hg : g 0 = g 1) (hh : h 0 = h 1) :
    winding (productLoop g h) (productLoop_closed g h hg hh) = winding g hg + winding h hh := by
  let L : C(I, ℂ) := ⟨fun t => logLift g t + logLift h t,
    (logLift g).continuous.add (logLift h).continuous⟩
  apply winding_eq_of_lift _ _ L
  · intro t
    change Complex.exp (logLift g t + logLift h t) = (g t).1 * (h t).1
    rw [Complex.exp_add, logLift_exp, logLift_exp]
  · change (logLift g 1 + logLift h 1) - (logLift g 0 + logLift h 0) = _
    rw [deck_add]
    linear_combination winding_spec g hg + winding_spec h hh

end
end GRWTSK.Analysis.Complex.LoopIndexOperations
