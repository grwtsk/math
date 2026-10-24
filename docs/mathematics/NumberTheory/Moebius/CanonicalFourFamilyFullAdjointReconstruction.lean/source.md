# Complete source: GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyFullAdjointReconstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1bd4c059a0f468212e1d4666d54e42eb8ac28e2b` · SHA-256 `78a8b4c4b46d6a7c944040fb6ed46406dec35dc9e595924d90f4708211fb305e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. -/
import GRWTSK.LinearAlgebra.Matrix.FiniteAdjointDescent
import GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyArithmeticRestrictions

/-! # Full-coordinate damped adjoint reconstruction
The literal arithmetic matrix gives a bounded reconstruction and residual descent
on every packet, hence on every genuine RH restriction difference. Strict relative
contraction still requires a quantitative observability gap on that family. -/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.RiemannHypothesis
private abbrev matrix (X : ℕ) (n : ℕ) (p : CanonicalFourFamily × ℕ) : ℝ :=
  canonicalFourFamilyGreenMatrixEntry X n p.1 p.2
private abbrev cells := canonicalFourFamilyCells
private abbrev window := centeredGreenWindow

def fullAdjointDamping (X : ℕ) : ℝ := GRWTSK.LinearAlgebra.Matrix.FiniteAdjointDescent.damping (cells X) (window X) (matrix X)
def fullAdjointReconstruction (X : ℕ) (y : ℕ → ℝ)
    (F : CanonicalFourFamily) (c : ℕ) : ℝ := GRWTSK.LinearAlgebra.Matrix.FiniteAdjointDescent.reconstruction (cells X) (window X) (matrix X) y (F,c)

private theorem source_energy (X : ℕ) (v : CanonicalFourFamily → ℕ → ℝ) :
    GRWTSK.LinearAlgebra.Matrix.FiniteAdjointDescent.energy (cells X) (fun p => v p.1 p.2) = canonicalFourFamilyAmbientSourceEnergy X v := by
  simp [GRWTSK.LinearAlgebra.Matrix.FiniteAdjointDescent.energy,
    canonicalFourFamilyCells, canonicalFourFamilyAmbientSourceEnergy, Finset.sum_product]
private theorem matrix_apply (X n : ℕ) (v : CanonicalFourFamily → ℕ → ℝ) :
    GRWTSK.LinearAlgebra.Matrix.FiniteAdjointDescent.applyMatrix (cells X) (matrix X) (fun p => v p.1 p.2) n =
      canonicalFourFamilyGreenMatrixApply X n v := by
  simp [GRWTSK.LinearAlgebra.Matrix.FiniteAdjointDescent.applyMatrix,
    canonicalFourFamilyCells, canonicalFourFamilyGreenMatrixApply, Finset.sum_product]

theorem fullAdjointDamping_pos (X : ℕ) : 0 < fullAdjointDamping X :=
  (GRWTSK.LinearAlgebra.Matrix.FiniteAdjointDescent.damping_bounds _ _ _).1

theorem fullAdjointReconstruction_bound (X : ℕ) (y : ℕ → ℝ) :
    canonicalFourFamilyAmbientSourceEnergy X (fullAdjointReconstruction X y) ≤
      ∑ n ∈ centeredGreenWindow X, y n ^ 2 := by
  rw [← source_energy]
  exact GRWTSK.LinearAlgebra.Matrix.FiniteAdjointDescent.reconstruction_bound _ _ _ _

theorem fullAdjointResidual_descent (X : ℕ) (v : CanonicalFourFamily → ℕ → ℝ) :
    canonicalFourFamilyAmbientSourceEnergy X
      (fun F c => v F c - fullAdjointReconstruction X
        (fun n => canonicalFourFamilyGreenMatrixApply X n v) F c) ≤
    canonicalFourFamilyAmbientSourceEnergy X v -
      fullAdjointDamping X * canonicalFourFamilyWindowOutputEnergy X v := by
  have h := GRWTSK.LinearAlgebra.Matrix.FiniteAdjointDescent.residual_descent
    (cells X) (window X) (matrix X) (fun p => v p.1 p.2)
  have he : GRWTSK.LinearAlgebra.Matrix.FiniteAdjointDescent.applyMatrix (cells X) (matrix X) (fun p => v p.1 p.2) = (fun n => canonicalFourFamilyGreenMatrixApply X n v) := funext (fun n => matrix_apply X n v)
  rw [he] at h
  simpa only [← source_energy, fullAdjointReconstruction, fullAdjointDamping,
    canonicalFourFamilyWindowOutputEnergy,
    GRWTSK.LinearAlgebra.Matrix.FiniteAdjointDescent.energy] using h
end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
```
