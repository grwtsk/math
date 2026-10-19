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
