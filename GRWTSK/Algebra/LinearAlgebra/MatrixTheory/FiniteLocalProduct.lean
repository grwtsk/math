import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ConjugateLocalFactor

/-! Finite local-factor comparison for E4. This does not pass to an infinite
Euler product or construct bad-place or Archimedean factors. -/
namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory

/-- Equality of every supplied conjugate factor transports a finite inverse product.
No nonvanishing premise is needed for totalized field inversion; analytic use of
reciprocals as holomorphic functions still requires denominators nonzero. -/
theorem finite_inverse_local_product_eq {K n v : Type*} [Field K]
    [Fintype n] [DecidableEq n] (places : Finset v)
    (A B U V : v → Matrix n n K) (t : v → K)
    (uv : ∀ p ∈ places, U p * V p = 1)
    (vu : ∀ p ∈ places, V p * U p = 1)
    (intertwines : ∀ p ∈ places, A p * U p = U p * B p) :
    (∏ p ∈ places, (Matrix.det (1 - t p • A p))⁻¹) =
      ∏ p ∈ places, (Matrix.det (1 - t p • B p))⁻¹ := by
  apply Finset.prod_congr rfl
  intro p hp
  rw [det_pencil_eq (A p) (B p) (U p) (V p) (uv p hp) (vu p hp) (intertwines p hp)]
end GRWTSK.Algebra.LinearAlgebra.MatrixTheory
