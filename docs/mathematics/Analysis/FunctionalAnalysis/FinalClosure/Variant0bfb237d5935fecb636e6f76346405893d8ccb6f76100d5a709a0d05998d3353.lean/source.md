# Complete source: GRWTSK.Analysis.FunctionalAnalysis.FinalClosure.Variant0bfb237d5935fecb636e6f76346405893d8ccb6f76100d5a709a0d05998d3353

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c7ba401a314ed72f9c037dcde54a80829788817` · SHA-256 `0bfb237d5935fecb636e6f76346405893d8ccb6f76100d5a709a0d05998d3353`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SpectralProof.Equivalences.RH_iff_SpecReal

noncomputable section

open Complex

namespace SpectralProof.Equivalences

variable {ϕ : ℝ → ℝ}

/--
Final logical closure of the spectral reformulation:
\[
\boxed{\text{GRH for } Λ_π \iff \text{Spec}(L_{\text{sym}}^\varphi) \subset \mathbb{R}}
\]

This equivalence is canonical: the spectrum of `Lsym_π` contains (μ_ρ) for each zero ρ of Λ_π, and
is real if and only if all ρ lie on the critical line Re(ρ) = ½.
-/
theorem GRH_spectral_closure
    (Φ : ℝ → ℂ) (Λπ : ℂ → ℂ)
    (hϕ : ∃ α > π, ∀ x, ϕ x ≥ α * |x|)
    (hΦ_symm : ∀ λ, Φ (-λ) = conj (Φ λ))
    (hΛ_entire : Entire Λπ)
    (hcanonical : ∀ λ, zetaDet ϕ (SpectralProof.Operators.Lsym_pi Φ hϕ) λ
                        = Λπ (1 / 2 + I * λ) / Λπ (1 / 2)) :
    (∀ ρ, Λπ ρ = 0 → ρ.re = 1 / 2)
      ↔ (∀ μ ∈ spectrum (SpectralProof.Operators.Lsym_pi Φ hϕ), μ.im = 0) :=
  GRH_iff_spec_real Φ Λπ hϕ hΦ_symm hΛ_entire hcanonical

end SpectralProof.Equivalences
```
