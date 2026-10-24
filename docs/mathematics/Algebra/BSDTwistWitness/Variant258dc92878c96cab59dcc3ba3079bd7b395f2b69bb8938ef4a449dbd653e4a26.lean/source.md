# Complete source: GRWTSK.Algebra.BSDTwistWitness.Variant258dc92878c96cab59dcc3ba3079bd7b395f2b69bb8938ef4a449dbd653e4a26

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `441378d858e502a17a7a37d8d8d7e4ec4d8f8685` · SHA-256 `258dc92878c96cab59dcc3ba3079bd7b395f2b69bb8938ef4a449dbd653e4a26`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Arithmetic.Weierstrass

/-!
# Folder.Arithmetic.BSDTwistWitness

Radiation role: elliptic-compatibility
BinaryMatrix spine: This module names arithmetic compatibility structures that may act on shell torsion without identifying it with BinaryMatrix data.
Ontology: arithmetic.bsdtwist_witness
Pivot role: none
Zero typology: modular
Contract boundary: witness
Composite stack role: torsion
-/


namespace Folder
namespace Arithmetic

/--
A lightweight witness for a family of quadratic twists of elliptic curves.

This is intentionally a certificate interface, not a proof of BSD.
-/
structure QuadraticTwistFamilyWitness where
  CurveId : Type _
  TwistParam : Type _
  baseCurve : CurveId
  twist : TwistParam → CurveId
  isInfiniteFamily : Prop
  strongBSDCertified : TwistParam → Prop
  sourceLabel : String

/--
The witness asserts that every listed twist parameter is certified. This exposes
the certificate field only.
-/
def AllTwistsCertified
    (W : QuadraticTwistFamilyWitness) : Prop :=
  ∀ d : W.TwistParam, W.strongBSDCertified d

structure CertifiedQuadraticTwistFamily where
  witness : QuadraticTwistFamilyWitness
  infinite_family : witness.isInfiniteFamily
  all_certified : AllTwistsCertified witness

theorem certified_twist_family_all_certified
    (W : CertifiedQuadraticTwistFamily) :
    AllTwistsCertified W.witness :=
  W.all_certified

theorem certified_twist_family_infinite
    (W : CertifiedQuadraticTwistFamily) :
    W.witness.isInfiniteFamily :=
  W.infinite_family

structure BSDMonodromyParameterSource
    {K : Type _} [Field K]
    (E : ShortWeierstrass K) where
  witness : QuadraticTwistFamilyWitness
  relationName : String
  note : String

end Arithmetic
end Folder
```
