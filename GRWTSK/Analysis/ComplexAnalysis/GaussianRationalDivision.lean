/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.GaussianRationalArithmetic

set_option autoImplicit false

/-!
# Exact Gaussian-rational division with an explicit unit premise

The totalized rational calculation at zero is not a certified inverse.
Every interpretation theorem consumes nonvanishing of the actual denominator.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.ComplexAnalysis.SymmetricPair.Rational.Gaussian
open _root_.Complex

def qinv (a : Gaussian) : Gaussian := ⟨a.re/a.normSq,-a.im/a.normSq⟩

lemma normSq_ne_zero {a : Gaussian} (ha : a.value ≠ 0) : a.normSq ≠ 0 := by
  intro h
  have he : ‖a.value‖^2=0 := by rw [← normSq_cast,h]; norm_num
  have hn := norm_pos_iff.mpr ha
  nlinarith

lemma value_qinv {a : Gaussian} (ha : a.value ≠ 0) : (qinv a).value=a.value⁻¹ := by
  have hq := normSq_ne_zero ha
  have hr : (a.re : ℝ)^2+(a.im : ℝ)^2 ≠ 0 := by
    have h : (a.normSq : ℝ) ≠ 0 := by exact_mod_cast hq
    simpa only [normSq,Rat.cast_add,Rat.cast_pow] using h
  have hm : (qinv a).value*a.value=1 := by
    apply Complex.ext <;> simp [qinv,value,normSq] <;>
      push_cast <;> field_simp [hr] <;> ring
  rw [← one_div]
  exact (eq_div_iff ha).mpr hm

/-- This is an upper bound, not a denominator-conditioning equality. -/
lemma inverse_norm_le {a : Gaussian} (ha : a.value ≠ 0) :
    ‖a.value⁻¹‖ ≤ ((qinv a).l1 : ℝ) := by
  simpa only [value_qinv ha] using norm_value_le_l1 (qinv a)

end GRWTSK.Analysis.ComplexAnalysis.SymmetricPair.Rational.Gaussian
