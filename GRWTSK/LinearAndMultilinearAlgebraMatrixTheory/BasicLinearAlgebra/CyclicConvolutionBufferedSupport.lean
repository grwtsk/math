/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.CyclicFourierConvolutionBound

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact finite buffered-support removal with cyclic subtraction.
The actual potential Fourier-conjugacy and uniform coefficient-tail
supplier remain separate. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicConvolutionBufferedSupport
open CyclicFourierConvolutionBound
variable (N : ℕ) [NeZero N]

theorem frequencyShift_apply (r i : ZMod N) (x : EuclideanSpace ℂ (ZMod N)) :
    frequencyShift N r x i = x (i-r) := by
  change WithLp.ofLp (frequencyShift N r x) i = _
  rw [frequencyShift, Matrix.ofLp_toEuclideanCLM, Matrix.permMatrix_mulVec]
  rfl

def convolutionValue (c x : ZMod N → ℂ) (k : ZMod N) : ℂ :=
  ∑ r : ZMod N, c r*x (k-r)

theorem buffered_term_zero (A B R : Finset (ZMod N))
    (hbuffer : ∀ r ∈ R, ∀ l ∈ A, l+r ∈ B)
    (x : ZMod N → ℂ) (hx : ∀ l ∉ A, x l=0)
    (k r : ZMod N) (hk : k ∉ B) (hr : r ∈ R) : x (k-r)=0 := by
  apply hx
  intro h
  have hb := hbuffer r hr (k-r) h
  have he : k-r+r=k := sub_add_cancel k r
  rw [he] at hb
  exact hk hb

theorem outside_buffer_exact_tail (A B R : Finset (ZMod N))
    (hbuffer : ∀ r ∈ R, ∀ l ∈ A, l+r ∈ B)
    (c x : ZMod N → ℂ) (hx : ∀ l ∉ A, x l=0)
    (k : ZMod N) (hk : k ∉ B) :
    convolutionValue N c x k = ∑ r ∈ Finset.univ \ R, c r*x (k-r) := by
  unfold convolutionValue
  symm
  apply Finset.sum_subset (Finset.sdiff_subset)
  intro r _ hr
  have hR : r ∈ R := by simpa using hr
  rw [buffered_term_zero N A B R hbuffer x hx k r hk hR, mul_zero]

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicConvolutionBufferedSupport
