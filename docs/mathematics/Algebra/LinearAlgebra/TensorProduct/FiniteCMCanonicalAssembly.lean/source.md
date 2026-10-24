# Complete source: GRWTSK.LinearAlgebra.TensorProduct.FiniteCMCanonicalAssembly

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `edee2ce00089a3bb2b0959021be4d935256ed327` · SHA-256 `717704fc37e92f9bcf8c9379d5c3c87673478eec001a84bd5b4d702aa88b9935`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.TensorProduct.FourPairedShuffle
import Mathlib.LinearAlgebra.TensorProduct.Basic
import Mathlib.Algebra.Field.Rat

/-!
# Finite coefficient/vector assembly

This module isolates the algebra used by the finite-CM fourfold construction.
It has no geometric, Hodge, or CM-field imports. A finite CM field may be
substituted for E; the algebraic assembly does not depend on its CM structure.
-/

namespace GRWTSK.LinearAlgebra.TensorProduct.FiniteCMCanonicalAssembly

open _root_.TensorProduct
open GRWTSK.LinearAlgebra.TensorProduct.FourPairedShuffle

variable (E : Type*) [Field E] [Algebra ℚ E]

abbrev Paired := Four ℚ E
abbrev Coefficients := FourEntries ℚ E
abbrev Vectors := FourEntries ℚ E
abbrev Separated := Coefficients E ⊗[ℚ] Vectors E
abbrev Output := E ⊗[ℚ] Vectors E

/-- Multiplication descends to the rational tensor square. -/
def coefficientMul : E ⊗[ℚ] E →ₗ[ℚ] E :=
  _root_.TensorProduct.lift {
    toFun := fun a => {
      toFun := fun b => a * b
      map_add' := by intros; simp [mul_add]
      map_smul' := by
        intro q b
        simp [Algebra.smul_def, mul_assoc, mul_comm]
    }
    map_add' := by
      intro a b
      ext x
      exact add_mul a b x
    map_smul' := by
      intro q a
      ext x
      simp [Algebra.smul_def, mul_assoc, mul_left_comm, mul_comm]
  }

@[simp] theorem coefficientMul_tmul (a b : E) :
    coefficientMul E (a ⊗ₜ[ℚ] b) = a * b := rfl

/-- Iterated multiplication with the same left association as the shuffle. -/
def coefficientMulFour : Coefficients E →ₗ[ℚ] E :=
  coefficientMul E ∘ₗ
    ((coefficientMul E ∘ₗ
      (coefficientMul E).rTensor E).rTensor E)

@[simp] theorem coefficientMulFour_pure (a b c d : E) :
    coefficientMulFour E (((a ⊗ₜ[ℚ] b) ⊗ₜ[ℚ] c) ⊗ₜ[ℚ] d) =
      a * b * c * d := by
  simp [coefficientMulFour, coefficientMul_tmul, mul_assoc]

/-- The original separated coefficient multiplication. -/
def separatedAssembly : Separated E →ₗ[ℚ] Output E :=
  (coefficientMulFour E).rTensor (Vectors E)

/-- The actual finite paired assembly is the verified four-pair shuffle
followed by separated coefficient multiplication. -/
def pairedAssembly : Paired E →ₗ[ℚ] Output E :=
  separatedAssembly E ∘ₗ (shuffleFour ℚ E).toLinearMap

@[simp] theorem pairedAssembly_pure (a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : E) :
    pairedAssembly E
        (pairedPure ℚ E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄) =
      (a₁ * a₂ * a₃ * a₄) ⊗ₜ[ℚ]
        (((x₁ ⊗ₜ[ℚ] x₂) ⊗ₜ[ℚ] x₃) ⊗ₜ[ℚ] x₄) := by
  simp [pairedAssembly, separatedAssembly, separatedPure,
    coefficientMulFour_pure]

attribute [local ext high] _root_.TensorProduct.ext in
/-- The existing finite paired assembly is uniquely identified by its pure
coefficient/vector formula, with no geometric hypotheses. -/
theorem pairedAssembly_unique
    (F : Paired E →ₗ[ℚ] Output E)
    (hF : ∀ a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : E,
      F (pairedPure ℚ E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄) =
        (a₁ * a₂ * a₃ * a₄) ⊗ₜ[ℚ]
          (((x₁ ⊗ₜ[ℚ] x₂) ⊗ₜ[ℚ] x₃) ⊗ₜ[ℚ] x₄)) :
    F = pairedAssembly E := by
  ext a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄
  simpa [pairedPure] using
    (hF a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄).trans
      (pairedAssembly_pure E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄).symm

/-!
## Adapter for the archived finite-CM assembly source

The source in PR #502 used the same left-associated paired and separated
tensor carriers, but its iterated coefficient multiplication incorrectly
applied `lTensor` to a left-associated coefficient tensor. The corrected
rational-linear operation necessarily uses `rTensor`. The following
minimal algebraic adapter gives the normalized meaning of that original
formula without importing its geometric CM carrier or Hodge witnesses.
-/

/-- The archived CM coefficient multiplication, with its tensor direction
normalized to the actual left-associated source type. -/
def originalNormalizedCoefficientMulFour : Coefficients E →ₗ[ℚ] E :=
  coefficientMul E ∘ₗ
    ((coefficientMul E ∘ₗ
      (coefficientMul E).rTensor E).rTensor E)

/-- Exact equality of the normalized original multiplication with the
independently checked fourfold multiplication supplier. -/
theorem originalNormalizedCoefficientMulFour_eq :
    originalNormalizedCoefficientMulFour E = coefficientMulFour E := rfl

/-- Normalized original separated assembly, retaining its original target. -/
def originalNormalizedSeparatedAssembly : Separated E →ₗ[ℚ] Output E :=
  (originalNormalizedCoefficientMulFour E).rTensor (Vectors E)

/-- Original finite assembly after correcting tensor direction, and using
the already checked canonical shuffle for the original paired carrier. -/
def originalNormalizedPairedAssembly : Paired E →ₗ[ℚ] Output E :=
  originalNormalizedSeparatedAssembly E ∘ₗ (shuffleFour ℚ E).toLinearMap

/-- The normalized original assembly reproduces the archived finite-CM
pure coefficient/vector multiplication formula. -/
theorem originalNormalizedPairedAssembly_pure
    (a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : E) :
    originalNormalizedPairedAssembly E
        (pairedPure ℚ E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄) =
      (a₁ * a₂ * a₃ * a₄) ⊗ₜ[ℚ]
        (((x₁ ⊗ₜ[ℚ] x₂) ⊗ₜ[ℚ] x₃) ⊗ₜ[ℚ] x₄) := by
  exact pairedAssembly_pure E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄

/-- Concrete declaration equality: the normalized original finite paired
assembly is exactly the checked canonical specialization. -/
theorem originalNormalizedPairedAssembly_eq :
    originalNormalizedPairedAssembly E = pairedAssembly E := by
  exact pairedAssembly_unique E (originalNormalizedPairedAssembly E)
    (originalNormalizedPairedAssembly_pure E)

end GRWTSK.LinearAlgebra.TensorProduct.FiniteCMCanonicalAssembly
```
