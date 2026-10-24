/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.SymmetricPairApproximation
import Mathlib.Data.Rat.Cast.Order

set_option autoImplicit false

/-!
# Rational comparison data for a source-bound symmetric pair

The Boolean checker evaluates ONLY rational arithmetic. Its input is not itself
an analytic certificate. `Valid` binds the two Gaussian centers, both radii and
the displacement interval to one actual function and one actual pair. Both are
needed for soundness. A point may have irrational coordinates; the interval for
its squared displacement is rational. No sampled-grid coverage is asserted.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.ComplexAnalysis.SymmetricPair.Rational
open _root_.Complex

structure Gaussian where
  re : ℚ
  im : ℚ
  deriving DecidableEq, Repr

namespace Gaussian
noncomputable def value (q : Gaussian) : ℂ := ⟨(q.re : ℝ), (q.im : ℝ)⟩
def normSq (q : Gaussian) : ℚ := q.re^2+q.im^2

lemma normSq_cast (q : Gaussian) : (q.normSq : ℝ) = ‖q.value‖^2 := by
  simp only [normSq, value, Complex.sq_norm, Complex.normSq_apply,
    Complex.mk_re, Complex.mk_im]
  push_cast
  ring
end Gaussian

/-- Pure finite data. The lower weight must be positive, not merely nonnegative. -/
structure Data where
  evenCenter : Gaussian
  oddCenter : Gaussian
  evenRadius : ℚ
  oddRadius : ℚ
  weightLo : ℚ
  weightHi : ℚ
  deriving DecidableEq, Repr

namespace Data

def upperBudget (W : Data) : ℚ := W.evenRadius^2+W.weightHi*W.oddRadius^2
def lowerEnergy (W : Data) : ℚ := W.evenCenter.normSq+W.weightLo*W.oddCenter.normSq

def Pass (W : Data) : Prop :=
  0 ≤ W.evenRadius ∧ 0 ≤ W.oddRadius ∧ 0 < W.weightLo ∧
    W.weightLo ≤ W.weightHi ∧ W.upperBudget < W.lowerEnergy

/-- No real/complex equality decision or transcendental evaluation is executed. -/
def check (W : Data) : Bool := decide
  (0 ≤ W.evenRadius ∧ 0 ≤ W.oddRadius ∧ 0 < W.weightLo ∧
    W.weightLo ≤ W.weightHi ∧ W.upperBudget < W.lowerEnergy)

lemma check_iff (W : Data) : W.check = true ↔ W.Pass := by simp [check, Pass]

noncomputable def model (W : Data) (c z : ℂ) : ℂ :=
  W.evenCenter.value+(z-c)*W.oddCenter.value

/-- These bounds remain outside the Boolean check. They must be proved for F. -/
def Valid (W : Data) (F : ℂ → ℂ) (c d : ℂ) : Prop :=
  ‖even F c d-W.evenCenter.value‖ ≤ (W.evenRadius : ℝ) ∧
  ‖odd F c d-W.oddCenter.value‖ ≤ (W.oddRadius : ℝ) ∧
  (W.weightLo : ℝ) ≤ ‖d‖^2 ∧ ‖d‖^2 ≤ (W.weightHi : ℝ)

lemma model_channels (W : Data) (c : ℂ) {d : ℂ} (hd : d ≠ 0) :
    even (W.model c) c d = W.evenCenter.value ∧
    odd (W.model c) c d = W.oddCenter.value := by
  constructor
  · unfold even model; ring
  · unfold odd model
    field_simp [hd] <;> ring

lemma displacement_ne_zero {W : Data} {F : ℂ → ℂ} {c d : ℂ}
    (hv : W.Valid F c d) (hp : W.Pass) : d ≠ 0 := by
  intro hd
  have hw : (0 : ℝ) < (W.weightLo : ℝ) := by exact_mod_cast hp.2.2.1
  have hlo := hv.2.2.1
  rw [hd, norm_zero] at hlo
  nlinarith

/-- A checked rational comparison inhabits the EXISTING analytic enclosure type. -/
noncomputable def enclosure {W : Data} {F : ℂ → ℂ} {c d : ℂ}
    (hv : W.Valid F c d) (hp : W.Pass) : Enclosure F (W.model c) c d where
  valueError := (W.evenRadius : ℝ)
  secantError := (W.oddRadius : ℝ)
  value_nonneg := by exact_mod_cast hp.1
  secant_nonneg := by exact_mod_cast hp.2.1
  even_error := by rw [(W.model_channels c (displacement_ne_zero hv hp)).1]; exact hv.1
  odd_error := by rw [(W.model_channels c (displacement_ne_zero hv hp)).2]; exact hv.2.1

/-- Upper weight is charged to errors; lower weight is used for model energy. -/
theorem strict_model_margin {W : Data} {F : ℂ → ℂ} {c d : ℂ}
    (hv : W.Valid F c d) (hp : W.Pass) :
    (enclosure hv hp).budget < energy (W.model c) c d := by
  have hg : (W.upperBudget : ℝ) < (W.lowerEnergy : ℝ) := by
    exact_mod_cast hp.2.2.2.2
  have hbudget : (enclosure hv hp).budget ≤ (W.upperBudget : ℝ) := by
    simp only [Enclosure.budget, enclosure, upperBudget, Rat.cast_add,
      Rat.cast_pow, Rat.cast_mul]
    exact add_le_add_left (mul_le_mul_of_nonneg_right hv.2.2.2 (sq_nonneg _)) _
  have henergy : (W.lowerEnergy : ℝ) ≤ energy (W.model c) c d := by
    rw [lowerEnergy, Rat.cast_add, Rat.cast_mul, Gaussian.normSq_cast,
      Gaussian.normSq_cast]
    unfold energy
    rw [(W.model_channels c (displacement_ne_zero hv hp)).1,
      (W.model_channels c (displacement_ne_zero hv hp)).2]
    exact add_le_add_left (mul_le_mul_of_nonneg_right hv.2.2.1 (sq_nonneg _)) _
  exact hbudget.trans_lt (hg.trans_le henergy)

/-- A passing BIT plus its source bindings excludes the actual symmetric zero pair. -/
theorem sound {W : Data} {F : ℂ → ℂ} {c d : ℂ}
    (hv : W.Valid F c d) (hcheck : W.check = true) :
    ¬ (F (c+d)=0 ∧ F (c-d)=0) := by
  have hp := (W.check_iff).mp hcheck
  exact (enclosure hv hp).excludes_pair (strict_model_margin hv hp)

/-- Enlarging either nonnegative radius cannot manufacture acceptance. -/
theorem pass_of_larger_radii {W : Data} {r0 r1 : ℚ}
    (h0 : 0 ≤ W.evenRadius) (h1 : 0 ≤ W.oddRadius)
    (hr0 : W.evenRadius ≤ r0) (hr1 : W.oddRadius ≤ r1)
    (h : ({W with evenRadius := r0, oddRadius := r1} : Data).Pass) : W.Pass := by
  refine ⟨h0,h1,h.2.2.1,h.2.2.2.1,?_⟩
  have hw : 0 ≤ W.weightHi := (le_of_lt h.2.2.1).trans h.2.2.2.1
  have h0sq := pow_le_pow_left₀ h0 hr0 2
  have h1sq := pow_le_pow_left₀ h1 hr1 2
  have hb : W.upperBudget ≤ r0^2+W.weightHi*r1^2 :=
    add_le_add h0sq (mul_le_mul_of_nonneg_left h1sq hw)
  exact hb.trans_lt h.2.2.2.2

end Data
end GRWTSK.Analysis.ComplexAnalysis.SymmetricPair.Rational
