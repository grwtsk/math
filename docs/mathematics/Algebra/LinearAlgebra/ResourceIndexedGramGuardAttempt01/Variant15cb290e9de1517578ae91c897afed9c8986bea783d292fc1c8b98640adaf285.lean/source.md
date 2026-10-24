# Complete source: GRWTSK.Algebra.LinearAlgebra.ResourceIndexedGramGuardAttempt01.Variant15cb290e9de1517578ae91c897afed9c8986bea783d292fc1c8b98640adaf285

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2a47b549d6764638b9a132ed887e87a882ea126` · SHA-256 `15cb290e9de1517578ae91c897afed9c8986bea783d292fc1c8b98640adaf285`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GramResidualGuard

/-! Optional resource-indexed adapter for the unchanged finite source matrix in #232/#234.
Direction grwtsk contributors; scratch proof construction OpenAI Codex.
Each precision may use a different finite row count. No source certificate is supplied. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.GramResidualGuard
open scoped ComplexOrder
variable {𝕜 : Type*} [RCLike 𝕜]
variable {n : Type*} [Fintype n] [DecidableEq n]

/-- The source dimension and H remain fixed; only the finite Gram resource may grow. -/
theorem matrix_posSemidef_of_resource_indexed_gram_precision
    (H : Matrix n n 𝕜) (hH : H.IsHermitian)
    (happrox : ∀ ε : ℝ, 0 < ε → ∃ rows : ℕ, ∃ V : Matrix (Fin rows) n 𝕜,
      ‖matrixOperator H-matrixOperator (V.conjTranspose*V)‖ ≤ ε) : H.PosSemidef := by
  apply (matrixOperator_positive_iff H).mp
  apply positive_of_arbitrary_precision (matrixOperator H)
    (Matrix.isSymmetric_toEuclideanLin_iff.mpr hH)
  intro ε hε
  obtain ⟨rows,V,hV⟩ := happrox ε hε
  exact ⟨matrixOperator (V.conjTranspose*V),
    (matrixOperator_positive_iff _).mpr (Matrix.posSemidef_conjTranspose_mul_self V),hV⟩
end ContinuousResearch.GramResidualGuard

#check ContinuousResearch.GramResidualGuard.matrix_posSemidef_of_resource_indexed_gram_precision
#print axioms ContinuousResearch.GramResidualGuard.matrix_posSemidef_of_resource_indexed_gram_precision
#print ContinuousResearch.GramResidualGuard.matrix_posSemidef_of_resource_indexed_gram_precision
```
