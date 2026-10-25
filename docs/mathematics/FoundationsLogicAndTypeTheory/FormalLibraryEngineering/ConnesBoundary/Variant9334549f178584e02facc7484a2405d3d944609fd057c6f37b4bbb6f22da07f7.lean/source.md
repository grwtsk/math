# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConnesBoundary.Variant9334549f178584e02facc7484a2405d3d944609fd057c6f37b4bbb6f22da07f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08642be3ef14a957d126ec41e7892f2d543db24d` · SHA-256 `9334549f178584e02facc7484a2405d3d944609fd057c6f37b4bbb6f22da07f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Arithmetic.GammaSpindle
import DAF.Universe.Authority

/-!
# Connes-style authority boundary

The finite Gamma spindle is structurally suggestive of spectral/trace
frameworks, but it is not a trace formula and does not identify zeros with an
operator spectrum.  Those promotions require distinct proof-bearing
certificates, absent from the canonical finite package.
-/

noncomputable section

namespace DAF.Arithmetic

structure TraceFormulaSide where
  description : String
  sourceDigest : Universe.Digest
  authority : Universe.SourceAuthority
  deriving DecidableEq, Repr

structure ExplicitFormulaCertificate
    (chi : PrimitiveDirichletCharacter) where
  statement : Prop
  proof : statement
  authority : Universe.SourceAuthority
  verifiedAuthority : authority =
    Surface.ContinuousAssurance.AuthorityClass.certifiedSource

structure ZeroSpectralCorrespondenceCertificate
    (chi : PrimitiveDirichletCharacter) where
  statement : Prop
  proof : statement
  authority : Universe.SourceAuthority
  verifiedAuthority : authority =
    Surface.ContinuousAssurance.AuthorityClass.certifiedSource

/-- Separation of operator, trace, spectral, and geometric sides. -/
structure CharacterTracePackage (chi : PrimitiveDirichletCharacter) where
  gammaSpindle : ArchimedeanGammaSpindle chi
  traceSide : TraceFormulaSide
  spectralSide : TraceFormulaSide
  geometricSide : TraceFormulaSide
  normalizationCompatible : Prop
  operatorCompatible : Prop
  explicitFormulaCertificate : Option (ExplicitFormulaCertificate chi)
  zeroSpectralCertificate : Option (ZeroSpectralCorrespondenceCertificate chi)

/-- Canonical finite packages retain both research certificates as absent. -/
def finiteCharacterTracePackage
    (chi : PrimitiveDirichletCharacter)
    (traceSide spectralSide geometricSide : TraceFormulaSide)
    (normalizationCompatible operatorCompatible : Prop) :
    CharacterTracePackage chi where
  gammaSpindle := canonicalArchimedeanGammaSpindle chi
  traceSide := traceSide
  spectralSide := spectralSide
  geometricSide := geometricSide
  normalizationCompatible := normalizationCompatible
  operatorCompatible := operatorCompatible
  explicitFormulaCertificate := none
  zeroSpectralCertificate := none

@[simp]
theorem finiteCharacterTracePackage_noExplicitFormula
    (chi : PrimitiveDirichletCharacter)
    (traceSide spectralSide geometricSide : TraceFormulaSide)
    (normalizationCompatible operatorCompatible : Prop) :
    (finiteCharacterTracePackage chi traceSide spectralSide geometricSide
      normalizationCompatible operatorCompatible).explicitFormulaCertificate = none :=
  rfl

@[simp]
theorem finiteCharacterTracePackage_noZeroSpectrum
    (chi : PrimitiveDirichletCharacter)
    (traceSide spectralSide geometricSide : TraceFormulaSide)
    (normalizationCompatible operatorCompatible : Prop) :
    (finiteCharacterTracePackage chi traceSide spectralSide geometricSide
      normalizationCompatible operatorCompatible).zeroSpectralCertificate = none :=
  rfl

end DAF.Arithmetic
```
