import Mathematics.MobiusOntology.TraceIdentity

/-!
# Purity on the trace spectrum

Functional symmetry is not used as a half-plane theorem.  The certificate is
indexed by the actual spectrum appearing in the exact trace identity.
-/

namespace Mathematics.MobiusOntology

open scoped BigOperators

universe u v w

structure PurityOnTraceSpectrum
    (Scale : Type u) (Spectrum : Type v) (Carrier : Type w)
    [Fintype Spectrum] [NormedAddCommGroup Carrier]
    (trace : TraceCertificate Scale Spectrum Carrier) where
  realPart : Spectrum → ℝ
  occurs : Scale → Spectrum → Prop
  sameSpectrum :
    ∀ scale spectral,
      trace.spectralTerm scale spectral ≠ 0 →
        occurs scale spectral
  halfPlane :
    ∀ {scale spectral},
      occurs scale spectral →
        realPart spectral ≤ (1 : ℝ) / 2

structure SpectralVariationCertificate
    (Scale : Type u) (Spectrum : Type v)
    [Fintype Spectrum] where
  variation : Scale → Spectrum → ℝ≥0
  uniformBound : ℝ≥0
  variationBound :
    ∀ scale,
      ∑ spectral, variation scale spectral ≤ uniformBound
  jordanOrder : Spectrum → Nat
  logarithmicOrder : Nat
  jordanBound :
    ∀ spectral,
      jordanOrder spectral ≤ logarithmicOrder + 1

end Mathematics.MobiusOntology
