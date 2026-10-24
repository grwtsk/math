import Mathlib.Analysis.Matrix.Spectrum
import Mathlib.LinearAlgebra.Eigenspace.Charpoly
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section
open Polynomial

namespace ContinuousResearch.SourceRecognition

/-- Actual finite characteristic roots are real under the genuine symmetry hypothesis. -/
theorem symmetric_charpoly_zero_real {E : Type*} [NormedAddCommGroup E]
    [InnerProductSpace ℂ E] [FiniteDimensional ℂ E]
    {T : E →ₗ[ℂ] E} (hT : T.IsSymmetric) {z : ℂ}
    (hz : T.charpoly.eval z = 0) : z.im = 0 := by
  apply Complex.conj_eq_iff_im.mp
  apply hT.conj_eigenvalue_eq_self
  exact (Module.End.hasEigenvalue_iff_isRoot_charpoly T z).mpr hz

/-- The actual characteristic polynomial of every finite Hermitian complex matrix has real zeros. -/
theorem hermitian_charpoly_zero_real {n : Type*} [Fintype n] [DecidableEq n]
    {A : Matrix n n ℂ} (hA : A.IsHermitian) {z : ℂ}
    (hz : A.charpoly.eval z = 0) : z.im = 0 := by
  apply Complex.conj_eq_iff_im.mp
  apply (Matrix.isSymmetric_toEuclideanLin_iff.mpr hA).conj_eigenvalue_eq_self
  apply Module.End.HasEigenvalue.of_mem_spectrum
  rw [Matrix.spectrum_toLpLin 2]
  exact Matrix.mem_spectrum_of_isRoot_charpoly hz

/-- Exact zero transport is separate from the reality of the boundary zeros. -/
def ZeroTransport (boundary source map : ℂ → ℂ) : Prop :=
  ∀ z, source z = 0 → boundary (map z) = 0

/-- The comparison map must reflect the real axis on the actual source zero locus. -/
def RealAxisReflection (source map : ℂ → ℂ) : Prop :=
  ∀ z, source z = 0 → (map z).im = 0 → z.im = 0

/-- Typed recognition retains independently specified objects and the parameter map. -/
structure Recognition (boundary source map : ℂ → ℂ) : Prop where
  zeros : ZeroTransport boundary source map
  realAxis : RealAxisReflection source map

/-- A proved comparison is required in addition to boundary spectral reality. -/
theorem recognition_transfers_real_zeros {boundary source map : ℂ → ℂ}
    (h : Recognition boundary source map)
    (hboundary : ∀ z, boundary z = 0 → z.im = 0) :
    ∀ z, source z = 0 → z.im = 0 := by
  intro z hz
  exact h.realAxis z hz (hboundary (map z) (h.zeros z hz))

/-- A separately proved exact comparison with a nonvanishing factor supplies zero transport. -/
theorem exact_comparison_zero_transport {boundary source map factor : ℂ → ℂ}
    (hfactor : ∀ z, factor z ≠ 0)
    (hcompare : ∀ z, source z = factor z * boundary (map z)) :
    ZeroTransport boundary source map := by
  intro z hz
  have hproduct : factor z * boundary (map z) = 0 := by rw [← hcompare z, hz]
  exact (mul_eq_zero.mp hproduct).resolve_left (hfactor z)

/-- Both independently proved bridges combine into recognition; no source instance is asserted. -/
theorem recognition_of_exact_comparison {boundary source map factor : ℂ → ℂ}
    (hfactor : ∀ z, factor z ≠ 0)
    (hcompare : ∀ z, source z = factor z * boundary (map z))
    (hreflect : RealAxisReflection source map) : Recognition boundary source map :=
  ⟨exact_comparison_zero_transport hfactor hcompare, hreflect⟩

/-- Real affine coordinate changes preserve the necessary real-axis reflection. -/
theorem real_affine_reflection (source : ℂ → ℂ) {a b : ℝ} (ha : a ≠ 0) :
    RealAxisReflection source (fun z => (a : ℂ) * z + (b : ℂ)) := by
  intro z _ hz
  have hm : a * z.im = 0 := by simpa using hz
  exact (mul_eq_zero.mp hm).resolve_left ha

/-- Same-point equality is one faithful special case, independently proved rather than assumed globally. -/
theorem same_point_comparison_real_zeros {boundary source factor : ℂ → ℂ}
    (hboundary : ∀ z, boundary z = 0 → z.im = 0)
    (hfactor : ∀ z, factor z ≠ 0)
    (hcompare : ∀ z, source z = factor z * boundary z) :
    ∀ z, source z = 0 → z.im = 0 := by
  intro z hz
  exact hboundary z (exact_comparison_zero_transport (map := id) hfactor hcompare z hz)

/-- A genuine finite Hermitian operator, with actual characteristic polynomial X. -/
def zeroMatrix : Matrix (Fin 1) (Fin 1) ℂ := 0

def hostileSource : Polynomial ℂ := X ^ 2 + 1

theorem zeroMatrix_hermitian : zeroMatrix.IsHermitian := by
  simp [zeroMatrix, Matrix.IsHermitian]

theorem zeroMatrix_charpoly : zeroMatrix.charpoly = X := by
  simp [zeroMatrix, Matrix.charpoly_zero]

theorem zeroMatrix_charpoly_zeros_real :
    ∀ z : ℂ, zeroMatrix.charpoly.eval z = 0 → z.im = 0 := by
  intro z hz
  rw [zeroMatrix_charpoly, eval_X] at hz
  simp [hz]

theorem hostileSource_nonreal_zero :
    hostileSource.eval Complex.I = 0 ∧ Complex.I.im ≠ 0 := by
  norm_num [hostileSource]

/-- Executable hostile pair: its boundary spectrum says nothing about the independent source. -/
theorem finite_boundary_reality_does_not_identify_source :
    zeroMatrix.IsHermitian ∧
      (∀ z : ℂ, zeroMatrix.charpoly.eval z = 0 → z.im = 0) ∧
      ¬ (∀ z : ℂ, hostileSource.eval z = 0 → z.im = 0) := by
  refine ⟨zeroMatrix_hermitian, zeroMatrix_charpoly_zeros_real, ?_⟩
  intro h
  exact hostileSource_nonreal_zero.2 (h Complex.I hostileSource_nonreal_zero.1)

/-- Even exact composed equality needs a real-axis reflecting parameter map. -/
def shiftedBoundary : ℂ → ℂ := fun z => z + 1

def squareMap : ℂ → ℂ := fun z => z ^ 2

def negativeUnitMatrix : Matrix (Fin 1) (Fin 1) ℂ := -1

theorem negativeUnitMatrix_hermitian : negativeUnitMatrix.IsHermitian := by
  simp [negativeUnitMatrix, Matrix.IsHermitian]

theorem negativeUnitMatrix_charpoly : negativeUnitMatrix.charpoly = X + 1 := by
  have hd : negativeUnitMatrix = Matrix.diagonal (fun _ : Fin 1 => (-1 : ℂ)) := by
    ext i j
    simp [negativeUnitMatrix, Matrix.diagonal_apply]
  rw [hd, Matrix.charpoly_diagonal]
  simp

theorem negativeUnitMatrix_characteristic_function :
    ∀ z, negativeUnitMatrix.charpoly.eval z = shiftedBoundary z := by
  intro z
  simp [negativeUnitMatrix_charpoly, shiftedBoundary]

theorem shiftedBoundary_real_zeros : ∀ z, shiftedBoundary z = 0 → z.im = 0 := by
  intro z hz
  have hi := congrArg Complex.im hz
  simpa [shiftedBoundary] using hi

theorem square_comparison_exact :
    ∀ z : ℂ, hostileSource.eval z = (1 : ℂ) * shiftedBoundary (squareMap z) := by
  intro z
  simp [hostileSource, shiftedBoundary, squareMap]

theorem square_zero_transport :
    ZeroTransport shiftedBoundary (fun z => hostileSource.eval z) squareMap :=
  exact_comparison_zero_transport (by intro z; simp) square_comparison_exact

theorem square_map_not_real_axis_reflecting :
    ¬ RealAxisReflection (fun z => hostileSource.eval z) squareMap := by
  intro h
  have hi : (squareMap Complex.I).im = 0 := by simp [squareMap]
  exact hostileSource_nonreal_zero.2 (h Complex.I hostileSource_nonreal_zero.1 hi)

end ContinuousResearch.SourceRecognition


set_option pp.universes true
set_option pp.fullNames true
#print ContinuousResearch.SourceRecognition.symmetric_charpoly_zero_real
#print axioms ContinuousResearch.SourceRecognition.symmetric_charpoly_zero_real
#print ContinuousResearch.SourceRecognition.hermitian_charpoly_zero_real
#print axioms ContinuousResearch.SourceRecognition.hermitian_charpoly_zero_real
#print ContinuousResearch.SourceRecognition.ZeroTransport
#print axioms ContinuousResearch.SourceRecognition.ZeroTransport
#print ContinuousResearch.SourceRecognition.RealAxisReflection
#print axioms ContinuousResearch.SourceRecognition.RealAxisReflection
#print ContinuousResearch.SourceRecognition.Recognition
#print axioms ContinuousResearch.SourceRecognition.Recognition
#print ContinuousResearch.SourceRecognition.recognition_transfers_real_zeros
#print axioms ContinuousResearch.SourceRecognition.recognition_transfers_real_zeros
#print ContinuousResearch.SourceRecognition.exact_comparison_zero_transport
#print axioms ContinuousResearch.SourceRecognition.exact_comparison_zero_transport
#print ContinuousResearch.SourceRecognition.recognition_of_exact_comparison
#print axioms ContinuousResearch.SourceRecognition.recognition_of_exact_comparison
#print ContinuousResearch.SourceRecognition.real_affine_reflection
#print axioms ContinuousResearch.SourceRecognition.real_affine_reflection
#print ContinuousResearch.SourceRecognition.same_point_comparison_real_zeros
#print axioms ContinuousResearch.SourceRecognition.same_point_comparison_real_zeros
#print ContinuousResearch.SourceRecognition.zeroMatrix
#print axioms ContinuousResearch.SourceRecognition.zeroMatrix
#print ContinuousResearch.SourceRecognition.hostileSource
#print axioms ContinuousResearch.SourceRecognition.hostileSource
#print ContinuousResearch.SourceRecognition.zeroMatrix_hermitian
#print axioms ContinuousResearch.SourceRecognition.zeroMatrix_hermitian
#print ContinuousResearch.SourceRecognition.zeroMatrix_charpoly
#print axioms ContinuousResearch.SourceRecognition.zeroMatrix_charpoly
#print ContinuousResearch.SourceRecognition.zeroMatrix_charpoly_zeros_real
#print axioms ContinuousResearch.SourceRecognition.zeroMatrix_charpoly_zeros_real
#print ContinuousResearch.SourceRecognition.hostileSource_nonreal_zero
#print axioms ContinuousResearch.SourceRecognition.hostileSource_nonreal_zero
#print ContinuousResearch.SourceRecognition.finite_boundary_reality_does_not_identify_source
#print axioms ContinuousResearch.SourceRecognition.finite_boundary_reality_does_not_identify_source
#print ContinuousResearch.SourceRecognition.shiftedBoundary
#print axioms ContinuousResearch.SourceRecognition.shiftedBoundary
#print ContinuousResearch.SourceRecognition.squareMap
#print axioms ContinuousResearch.SourceRecognition.squareMap
#print ContinuousResearch.SourceRecognition.negativeUnitMatrix
#print axioms ContinuousResearch.SourceRecognition.negativeUnitMatrix
#print ContinuousResearch.SourceRecognition.negativeUnitMatrix_hermitian
#print axioms ContinuousResearch.SourceRecognition.negativeUnitMatrix_hermitian
#print ContinuousResearch.SourceRecognition.negativeUnitMatrix_charpoly
#print axioms ContinuousResearch.SourceRecognition.negativeUnitMatrix_charpoly
#print ContinuousResearch.SourceRecognition.negativeUnitMatrix_characteristic_function
#print axioms ContinuousResearch.SourceRecognition.negativeUnitMatrix_characteristic_function
#print ContinuousResearch.SourceRecognition.shiftedBoundary_real_zeros
#print axioms ContinuousResearch.SourceRecognition.shiftedBoundary_real_zeros
#print ContinuousResearch.SourceRecognition.square_comparison_exact
#print axioms ContinuousResearch.SourceRecognition.square_comparison_exact
#print ContinuousResearch.SourceRecognition.square_zero_transport
#print axioms ContinuousResearch.SourceRecognition.square_zero_transport
#print ContinuousResearch.SourceRecognition.square_map_not_real_axis_reflecting
#print axioms ContinuousResearch.SourceRecognition.square_map_not_real_axis_reflecting
