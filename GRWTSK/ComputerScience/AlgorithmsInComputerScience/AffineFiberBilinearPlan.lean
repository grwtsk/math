/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.ComputerScience.AlgorithmsInComputerScience.AffineFiberTensorNetworkContraction
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteBilinearMatrixPlan
import Mathlib.Logic.Equiv.Fin.Basic

/-!
# Certified bilinear evaluation of the affine-fiber renderer

A finite rectangular plan can supply the visibility–angular product. The
products of input linear forms are shared across the whole image readout.
-/

namespace GRWTSK.ComputerScience.AlgorithmsInComputerScience.AffineFiberBilinearPlan

open Boolean.Cube.AffineFiberTensorNetwork (ColorChannel PixelTensorNetwork RGB)
open GRWTSK.ComputerScience.AlgorithmsInComputerScience.AffineFiberTensorNetworkContraction
open GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.FiniteBilinearMatrixPlan (Plan)
open scoped BigOperators

variable {F : Type*} [Field F]

/-- A matrix multiplication plan evaluates all visibility–angular coefficients
before the harmonic readout. Its column index flattens a mode and a color. -/
def renderViaPlan (T : PixelTensorNetwork F) {r : ℕ}
    (P : Plan F T.pixels (T.modes * 3) T.atoms r) : Fin T.pixels → RGB F :=
  let columns : Fin T.modes × ColorChannel ≃ Fin (T.modes * 3) := finProdFinEquiv
  let products := P.products (fun x => T.K x.1 x.2)
    (fun y => angularMatrix T y.1 (columns.symm y.2))
  fun p c => ∑ m : Fin T.modes, T.Y p m * P.decode products (p, columns (m, c))

/-- Coefficient correctness for the supplied plan preserves every pixel and
color of the original renderer. The theorem includes empty index ranges. -/
theorem render_eq_renderViaPlan (T : PixelTensorNetwork F) {r : ℕ}
    (P : Plan F T.pixels (T.modes * 3) T.atoms r) (hP : P.Correct) :
    T.render = renderViaPlan T P := by
  rw [render_eq_renderViaMatrix T]
  funext p c
  simp only [renderViaMatrix, renderViaPlan]
  refine Finset.sum_congr rfl fun m _ => ?_
  congr 1
  rw [Plan.eval_matrixProduct hP]
  simp only [Equiv.symm_apply_apply]
  exact Matrix.mul_apply

end GRWTSK.ComputerScience.AlgorithmsInComputerScience.AffineFiberBilinearPlan
