import GRWTSK.Geometry.Hodge.FiniteMatrixHodge

namespace GRWTSK.Geometry.Hodge.MoserMatrixHodge

open GRWTSK.Algebra.LinearAlgebra.FramedFiberPort
open GRWTSK.Geometry.Hodge.FiniteGraphCellular
open GRWTSK.Geometry.Hodge.FiniteMatrixHodge

/-- Exact finite Hodge datum of the source-oriented eleven-edge Moser graph. -/
def hodgeData : TwoTermHodgeData ℝ (Fin 7 → ℝ)
    (FiniteGraphCellular.Moser.Edge → ℝ) :=
  FiniteMatrixHodge.hodgeData FiniteGraphCellular.Moser.incidence

/-- Moser graph Laplacian is positive semidefinite. -/
theorem laplacian_nonneg (x : Fin 7 → ℝ) :
    0 ≤ x ⬝ᵥ (FiniteMatrixHodge.laplacian
      FiniteGraphCellular.Moser.incidence x) :=
  FiniteMatrixHodge.laplacian_nonneg _ x

/-- Exact harmonic kernel of the finite Moser incidence model: constant cochains. -/
theorem harmonic_iff_constant (x : Fin 7 → ℝ) :
    hodgeData.IsHarmonic0 x ↔ ∃ c : ℝ, x = fun _ => c := by
  change
    FiniteMatrixHodge.laplacian FiniteGraphCellular.Moser.incidence x = 0 ↔
      ∃ c : ℝ, x = fun _ => c
  rw [FiniteMatrixHodge.laplacian_eq_zero_iff_delta_eq_zero,
    FiniteMatrixHodge.delta_eq_coboundary]
  constructor
  · intro hx
    apply (FiniteGraphCellular.Moser.energy_eq_zero_iff_constant x).mp
    apply (FiniteGraphCellular.Moser.incidence.energy_eq_zero_iff_coboundary_eq_zero x).2
    exact hx
  · intro hx
    apply (FiniteGraphCellular.Moser.incidence.energy_eq_zero_iff_coboundary_eq_zero x).1
    exact (FiniteGraphCellular.Moser.energy_eq_zero_iff_constant x).2 hx

/-- Every constant Moser cochain is fixed by the harmonic projection condition. -/
theorem constant_harmonic (c : ℝ) :
    hodgeData.IsHarmonic0 (fun _ : Fin 7 => c) :=
  (harmonic_iff_constant _).2 ⟨c, rfl⟩

end GRWTSK.Geometry.Hodge.MoserMatrixHodge
