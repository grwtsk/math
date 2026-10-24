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
