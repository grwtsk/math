# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.PurityBridge.Variant255e60437f2103379be5a1a44a56769859c852c690a1d97d73dc215d7aa0e6fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff436f45bc126d6a814374226743189c45a454cd` · SHA-256 `255e60437f2103379be5a1a44a56769859c852c690a1d97d73dc215d7aa0e6fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
