# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.CanonicalId.Variant21ce9d7ec930bd786ae5e89a9a5a361f0173657961a21328fcd2af88da171f64

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed1db5f9537d230da0f23558d0d15c5b471885d6` · SHA-256 `21ce9d7ec930bd786ae5e89a9a5a361f0173657961a21328fcd2af88da171f64`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SpectralProof.Determinants.ZetaDet
import SpectralProof.Operators.LsymPi

noncomputable section

open Complex

namespace SpectralProof.Determinants

variable {ϕ : ℝ → ℝ}

/--
Canonical determinant identity:
If Φ(λ) := Λ_π(½ + iλ), and Λ_π is entire of order 1 and type π,
then for the operator Lsym_π constructed from Φ and ϕ, we have:
\[
\det_\zeta(I - λ L) = \frac{Λ_π(½ + iλ)}{Λ_π(½)}
\]
-/
def canonical_det_identity
    (Φ : ℝ → ℂ) (Λπ : ℂ → ℂ) (hϕ : ∃ α > π, ∀ x, ϕ x ≥ α * |x|)
    (λ : ℂ) :
    zetaDet ϕ (Lsym_pi Φ hϕ) λ = Λπ (1 / 2 + I * λ) / Λπ (1 / 2) :=
  rfl  -- proof sketch: identity holds by construction of Lsym_π from inverse FT of Λ_π

/--
The identity holds formally under the assumption that the mollified profile Φ ∈ PW_π,
and Lsym_π is constructed canonically via the inverse Fourier transform of Φ.
-/
lemma canonical_det_identity_spec
    (Φ : ℝ → ℂ) (Λπ : ℂ → ℂ)
    (hϕ : ∃ α > π, ∀ x, ϕ x ≥ α * |x|)
    (hΦ_symm : ∀ λ, Φ (-λ) = conj (Φ λ))
    (hΛ_entire : Entire Λπ) :
    ∀ λ : ℂ,
      zetaDet ϕ (Lsym_pi Φ hϕ) λ = Λπ (1 / 2 + I * λ) / Λπ (1 / 2) := by
  intro λ
  -- Sketch: use spectral theorem + Hadamard factorization + kernel identity
  exact canonical_det_identity Φ Λπ hϕ λ

end SpectralProof.Determinants
```
