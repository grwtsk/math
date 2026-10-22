import Mathlib.LinearAlgebra.TensorProduct.Associator

/-!
# Four paired tensor factors: coefficient/vector shuffle

Independent tensor-product algebra. No number field, Hodge structure,
cohomology, or geometric supplier is imported.
-/

namespace GRWTSK.LinearAlgebra.TensorProduct.FourPairedShuffle

open _root_.TensorProduct

variable (R : Type*) [CommRing R]
variable (M : Type*) [AddCommGroup M] [Module R M]

abbrev Pair := M ⊗[R] M
abbrev Two := Pair R M ⊗[R] Pair R M
abbrev Three := Two R M ⊗[R] Pair R M
abbrev Four := Three R M ⊗[R] Pair R M

abbrev TwoEntries := M ⊗[R] M
abbrev ThreeEntries := TwoEntries R M ⊗[R] M
abbrev FourEntries := ThreeEntries R M ⊗[R] M

/-- Separate the first two paired factors. -/
def shuffleTwo :
    Two R M ≃ₗ[R] (TwoEntries R M ⊗[R] TwoEntries R M) :=
  TensorProduct.tensorTensorTensorComm R M M M M

/-- Separate three paired factors, retaining left association. -/
def shuffleThree :
    Three R M ≃ₗ[R]
      (ThreeEntries R M ⊗[R] ThreeEntries R M) :=
  (TensorProduct.congr (shuffleTwo R M)
    (LinearEquiv.refl R (Pair R M))).trans
      (TensorProduct.tensorTensorTensorComm R
        (TwoEntries R M) (TwoEntries R M) M M)

/-- Separate four paired factors, retaining left association. -/
def shuffleFour :
    Four R M ≃ₗ[R] (FourEntries R M ⊗[R] FourEntries R M) :=
  (TensorProduct.congr (shuffleThree R M)
    (LinearEquiv.refl R (Pair R M))).trans
      (TensorProduct.tensorTensorTensorComm R
        (ThreeEntries R M) (ThreeEntries R M) M M)

def pairedPure (a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : M) : Four R M :=
  (((a₁ ⊗ₜ[R] x₁) ⊗ₜ[R] (a₂ ⊗ₜ[R] x₂)) ⊗ₜ[R]
    (a₃ ⊗ₜ[R] x₃)) ⊗ₜ[R] (a₄ ⊗ₜ[R] x₄)

def separatedPure (a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : M) :
    FourEntries R M ⊗[R] FourEntries R M :=
  (((a₁ ⊗ₜ[R] a₂) ⊗ₜ[R] a₃) ⊗ₜ[R] a₄) ⊗ₜ[R]
    (((x₁ ⊗ₜ[R] x₂) ⊗ₜ[R] x₃) ⊗ₜ[R] x₄)

@[simp]
theorem shuffleFour_pairedPure (a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : M) :
    shuffleFour R M (pairedPure R M a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄) =
      separatedPure R M a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ := by
  simp [shuffleFour, shuffleThree, shuffleTwo,
    pairedPure, separatedPure]

attribute [local ext high] _root_.TensorProduct.ext in
/-- Pure generators determine the four-pair linear shuffle uniquely. -/
theorem shuffleFour_unique
    (F : Four R M →ₗ[R] (FourEntries R M ⊗[R] FourEntries R M))
    (hF : ∀ a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : M,
      F (pairedPure R M a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄) =
        separatedPure R M a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄) :
    F = (shuffleFour R M).toLinearMap := by
  ext a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄
  simpa [pairedPure] using
    (hF a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄).trans
      (shuffleFour_pairedPure R M a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄).symm

end GRWTSK.LinearAlgebra.TensorProduct.FourPairedShuffle
