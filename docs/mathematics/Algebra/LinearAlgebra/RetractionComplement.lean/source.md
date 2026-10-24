# Complete source: GRWTSK.LinearAlgebra.RetractionComplement

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10de52251b1390c30ecf1b568d8876b5bd635338` · SHA-256 `380b78243199e889bb83ea727a2f1aec4b26f205c3cf957aca3224d118d52384`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.LinearAlgebra.Projection

/-! A conditional splitting component for B2 of the boundary outline.
An actual retraction must be supplied; no cohomology theory, localization
sequence or geometric splitting is inferred from a set decomposition. -/
namespace GRWTSK.LinearAlgebra
variable {R M B : Type*} [CommRing R] [AddCommGroup M] [Module R M]
    [AddCommGroup B] [Module R B]

/-- The complementary projector obtained from an actual retraction. -/
def retractionComplement (i : B →ₗ[R] M) (r : M →ₗ[R] B) : M →ₗ[R] M :=
  LinearMap.id - i.comp r

/-- The constructed component lands in the kernel of the retraction. -/
theorem retractionComplement_in_kernel (i : B →ₗ[R] M) (r : M →ₗ[R] B)
    (hr : ∀ b, r (i b) = b) (x : M) : r (retractionComplement i r x) = 0 := by
  simp [retractionComplement, hr]

/-- The complementary projector kills the supplied inclusion image. -/
theorem retractionComplement_on_image (i : B →ₗ[R] M) (r : M →ₗ[R] B)
    (hr : ∀ b, r (i b) = b) (b : B) : retractionComplement i r (i b) = 0 := by
  simp [retractionComplement, hr]

/-- Idempotence follows from the retraction identity, rather than being assumed. -/
theorem retractionComplement_idempotent (i : B →ₗ[R] M) (r : M →ₗ[R] B)
    (hr : ∀ b, r (i b) = b) (x : M) :
    retractionComplement i r (retractionComplement i r x) = retractionComplement i r x := by
  have hk := retractionComplement_in_kernel i r hr x
  change retractionComplement i r x - i (r (retractionComplement i r x)) = _
  rw [hk, map_zero, sub_zero]

/-- Exact reconstruction from the included and complementary components. -/
theorem retractionComplement_decomposition (i : B →ₗ[R] M) (r : M →ₗ[R] B) (x : M) :
    x = i (r x) + retractionComplement i r x := by
  simp [retractionComplement]

/-- Compatibility with a supplied action requires both actual intertwining identities. -/
theorem retractionComplement_commutes (i : B →ₗ[R] M) (r : M →ₗ[R] B)
    (T : M →ₗ[R] M) (S : B →ₗ[R] B)
    (hi : ∀ b, T (i b) = i (S b)) (hr : ∀ x, r (T x) = S (r x)) (x : M) :
    T (retractionComplement i r x) = retractionComplement i r (T x) := by
  simp [retractionComplement, hi, hr]
end GRWTSK.LinearAlgebra
```
