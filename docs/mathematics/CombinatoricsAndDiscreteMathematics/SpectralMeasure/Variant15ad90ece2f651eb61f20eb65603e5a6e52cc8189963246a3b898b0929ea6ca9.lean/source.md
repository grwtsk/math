# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SpectralMeasure.Variant15ad90ece2f651eb61f20eb65603e5a6e52cc8189963246a3b898b0929ea6ca9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7a5c96e11db83d26f37055aa7976d01dcf57cbc` · SHA-256 `15ad90ece2f651eb61f20eb65603e5a6e52cc8189963246a3b898b0929ea6ca9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.ConnesBitfield.OperatorPurity

/-!
# Empirical and invariant ensemble spectral functionals

Eigenvalues are indexed with repetition, so algebraic multiplicity is
retained without choosing an ordering of the distinct spectrum.
-/

namespace Mathematics.ConnesBitfield

open scoped BigOperators

noncomputable def eigenvalueMultiplicity
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    (purity : OperatorPurityCertificate spectral)
    (state : Bitfield system.bits)
    (value : ℝ) : Nat := by
  classical
  exact
    (Finset.univ.filter
      (fun index =>
        purity.eigenvalue state index = value)).card

/--
Integration against the normalized empirical spectral measure
`m⁻¹ ∑ᵢ δ_{λᵢ}`.
-/
noncomputable def empiricalSpectralIntegral
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    (purity : OperatorPurityCertificate spectral)
    (state : Bitfield system.bits)
    (test : ℝ → ℂ) : ℂ :=
  (spectral.dim : ℂ)⁻¹ *
    ∑ index : Fin spectral.dim,
      test (purity.eigenvalue state index)

/-- Expectation of the empirical spectral functional under the finite law. -/
noncomputable def invariantEnsembleSpectralIntegral
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    (purity : OperatorPurityCertificate spectral)
    (test : ℝ → ℂ) : ℂ :=
  system.law.expectation
    (fun state =>
      empiricalSpectralIntegral purity state test)

end Mathematics.ConnesBitfield
```
