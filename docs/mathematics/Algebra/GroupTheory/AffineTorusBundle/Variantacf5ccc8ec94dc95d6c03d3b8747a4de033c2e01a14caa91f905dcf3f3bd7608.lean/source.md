# Complete source: GRWTSK.Algebra.GroupTheory.AffineTorusBundle.Variantacf5ccc8ec94dc95d6c03d3b8747a4de033c2e01a14caa91f905dcf3f3bd7608

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `508c4e9c3d1261501052d07cbc610f0b7bfd38ad` · SHA-256 `acf5ccc8ec94dc95d6c03d3b8747a4de033c2e01a14caa91f905dcf3f3bd7608`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Homology.LocalSystem

/-!
# Principal and affine torus-bundle realizations

With trivial linear monodromy, the classifying datum is an ordinary
`H²(K; ℤ^m)` class.  With prescribed `GL(m,ℤ)` monodromy it is a twisted
`H²(K; Lρ)` class for an affine torus bundle.  These scopes are not merged.
-/

namespace Mathematics.Homology

universe u v

/-- Principal torus bundle realization with certified trivial monodromy. -/
structure PrincipalTorusBundleRealization
    (H2Class : Type u) (Bundle : Type v) where
  cohomologyClass : H2Class
  bundle : Bundle
  rank : Nat
  trivialMonodromyCertificate : ObjectAddress
  realizesClass : Prop
  realizationProof : realizesClass
  realizationCertificate : ObjectAddress

/-- Affine torus bundle with one fixed integral local system and twisted class. -/
structure AffineTorusBundleRealization
    (Loop : Type u) [Group Loop]
    (rank : Nat)
    (localSystem : IntegralLocalSystem Loop rank)
    (TwistedH2Class : Type v)
    (Bundle : Type*) where
  twistedClass : TwistedH2Class
  bundle : Bundle
  fixedMonodromyDigest : Digest
  localSystem_bound :
    fixedMonodromyDigest = localSystem.monodromyDigest
  realizesClass : Prop
  realizationProof : realizesClass
  classificationHypothesesDigest : Digest
  realizationCertificate : ObjectAddress

end Mathematics.Homology
```
