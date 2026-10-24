# Complete source: GRWTSK.Algebra.FinitePrismaticSurfaceModel.Variant86078d8324fc4553ef3aaac2b9c80e1377d469b2ae1e7c682c87464359f690c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d504eaa827ba73bab26e5e3659dad1a7f543a3d` · SHA-256 `86078d8324fc4553ef3aaac2b9c80e1377d469b2ae1e7c682c87464359f690c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Homology.FiniteOS.Basic
import Surface.Prismatic

namespace Surface

universe u

/-!
Refined `FinitePrismaticSurfaceModel`.

The existing `Homology.FinitePrismaticSurfaceModel` records a finite Frobenius-lift
matrix and a scalar bound.  That is useful as a finite homological bridge, but
it is not the source of prism definitions.

This file now depends on `Surface.Prismatic` for the actual prismatic
interfaces:

* δ-ring witness;
* bounded-prism witness;
* distinguished element witness;
* Frobenius lift witness;
* ideal-rigidity witness;
* finite Nygaard/conjugate filtration metadata.

Comparison theorems remain certificate-gated in `Surface.Prismatic`.
-/

/-- Wrapper around the canonical Surface prismatic δ-ring interface. -/
structure Homology.DeltaRingCertificate (p : Nat) where
  deltaRing : Surface.Prismatic.DeltaRing p
  boundary : List String

/-- Wrapper around a bounded prism from `Surface.Prismatic`. -/
structure Homology.BoundedPrismCertificate (p : Nat) where
  prism : Surface.Prismatic.BoundedPrism p
  boundary : List String

/-- Distinguished element wrapper over the bounded prism's δ-ring. -/
structure Homology.DistinguishedElementCertificate
    {p : Nat}
    (P : Surface.Prismatic.BoundedPrism p) where
  distinguished : Surface.Prismatic.DistinguishedElement P.A
  boundary : List String

/-- Frobenius lift metadata for a finite matrix model. -/
structure Homology.FrobeniusLiftCertificate
    (n : Nat)
    {p : Nat}
    (A : Surface.Prismatic.DeltaRing p) where
  phi : Homology.NatMatrix n n
  phi_is_lift : A.phi_lifts_frobenius_mod_p
  phi_respects_ideal : Prop
  phi_respects_ideal_certified : phi_respects_ideal
  phi_semilinear : Prop
  phi_semilinear_certified : phi_semilinear
  boundary : List String

/-- Nygaard/conjugate filtration metadata from `Surface.Prismatic`. -/
structure Homology.FiltrationCertificate (p : Nat) where
  qrsp : Surface.Prismatic.QuasiRegularSemiperfectoid p
  nygaard : Surface.Prismatic.NygaardFiltration qrsp
  comparison? :
    Option (Surface.Prismatic.NygaardConjugateComparisonCertificate qrsp)
  boundary : List String

/--
Refined finite matrix surface with prismatic attachments.

This extends the current `FinitePrismaticSurfaceModel` with references to real
`Surface.Prismatic` interfaces.  It remains a finite matrix/homology bridge.
-/
structure Homology.RefinedFinitePrismaticSurfaceModel (n : Nat) where
  base : Homology.FinitePrismaticSurfaceModel n
  prismaticPrime : Nat
  boundedPrism : Homology.BoundedPrismCertificate prismaticPrime
  deltaRing : Homology.DeltaRingCertificate prismaticPrime
  deltaRing_matches_prism :
    deltaRing.deltaRing = boundedPrism.prism.A
  distinguished : Homology.DistinguishedElementCertificate boundedPrism.prism
  frobenius :
    Homology.FrobeniusLiftCertificate n boundedPrism.prism.A
  filtration : Homology.FiltrationCertificate prismaticPrime
  frobenius_matrix_matches :
    frobenius.phi = base.frob_phi
  frobenius_bounded :
    ∀ i j, frobenius.phi i j ≤ base.prism.prism_d

/-- The refined surface inherits the original Frobenius bound. -/
theorem Homology.RefinedFinitePrismaticSurfaceModel.frob_bound
    {n : Nat}
    (S : Homology.RefinedFinitePrismaticSurfaceModel n)
    (i j : Fin n) :
    S.frobenius.phi i j ≤ S.base.prism.prism_d :=
  S.frobenius_bounded i j

/-- A refined surface delegates prism readiness to `Surface.Prismatic.Readiness`. -/
def Homology.RefinedFinitePrismaticSurfaceModel.prismReady
    {n : Nat}
    (_S : Homology.RefinedFinitePrismaticSurfaceModel n) :
    Bool :=
  Surface.Prismatic.currentInterfaceReadiness.ready

/-- A conservative certificate: the current standard surface is not prism-ready. -/
def Homology.standardFinitePrismaticSurfaceModel2Refined :
    Homology.RefinedFinitePrismaticSurfaceModel 2 where
  base := Homology.standardFinitePrismaticSurfaceModel2
  prismaticPrime := 2
  boundedPrism :=
    { prism := Surface.Prismatic.unitBoundedPrism 2
      boundary := [
        "Boolean homology wrapper around Surface.Prismatic.unitBoundedPrism."
      ] }
  deltaRing :=
    { deltaRing := (Surface.Prismatic.unitBoundedPrism 2).A
      boundary := [
        "Boolean homology wrapper around the bounded prism δ-ring."
      ] }
  deltaRing_matches_prism := rfl
  distinguished :=
    { distinguished := Surface.Prismatic.unitDistinguishedElement 2
      boundary := [
        "Distinguished element supplied by Surface.Prismatic."
      ] }
  frobenius :=
    { phi := Homology.standardFinitePrismaticSurfaceModel2.frob_phi
      phi_is_lift :=
        (Surface.Prismatic.unitBoundedPrism 2).A
          |>.phi_lifts_frobenius_mod_p_certified
      phi_respects_ideal := True
      phi_respects_ideal_certified := trivial
      phi_semilinear := True
      phi_semilinear_certified := trivial
      boundary := [
        "Finite matrix Frobenius lift is linked to the Surface.Prismatic δ-ring.",
        "This does not prove a comparison theorem."
      ] }
  filtration :=
    { qrsp := Surface.Prismatic.unitQRSP 2
      nygaard := Surface.Prismatic.unitNygaardFiltration 2
      comparison? := none
      boundary := [
        "Nygaard filtration supplied through Surface.Prismatic.",
        "No Nygaard/conjugate comparison certificate is supplied here."
      ] }
  frobenius_matrix_matches := rfl
  frobenius_bounded := by
    intro i j
    exact
      Homology.FinitePrismaticSurfaceModel.frob_phi_bound
        Homology.standardFinitePrismaticSurfaceModel2 i j

/--
Under the present finite symbolic certificates, the standard finite prismatic surface model is
not yet prism-ready.
-/
theorem Homology.standardFinitePrismaticSurfaceModel2Refined_not_prismReady :
    Homology.RefinedFinitePrismaticSurfaceModel.prismReady
      Homology.standardFinitePrismaticSurfaceModel2Refined = false := by
  decide

end Surface
```
