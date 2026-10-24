# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.Nygaard.Variant6446410be806cb90e25cab9e114e3f186cb9243a3a231a27e7f942950b13eb1d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0b45481e38b50e54cbeae017bb491ce78dc7d9f` · SHA-256 `6446410be806cb90e25cab9e114e3f186cb9243a3a231a27e7f942950b13eb1d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Prismatic.Comparisons

namespace Surface.Prismatic

universe u

/-!
# Nygaard and conjugate filtrations

Formalized here: filtration interfaces and the Nygaard/conjugate comparison
target as certificate data.

Certificate-gated here: quasi-regular semiperfectoid hypotheses and graded
comparison theorems.
-/

structure Filtration
    (α : Type u) where
  contains : Nat → α → Prop
  monotone : Prop
  monotoneCertified : monotone
  boundary : List String

structure MultiplicativeFiltration
    (A : DeltaRing.{u} p)
    extends Filtration A.ops.carrier where
  multiplicative : Prop
  multiplicativeCertified : multiplicative
  boundaryMul : List String

structure QuasiRegularSemiperfectoid
    (p : Nat) where
  prism : BoundedPrism.{u} p
  qrsp : Prop
  qrspCertified : qrsp
  boundary : List String

structure NygaardFiltration
    (S : QuasiRegularSemiperfectoid.{u} p) where
  filtration : Filtration S.prism.A.ops.carrier
  definitionStatement : String
  definitionCertified : Prop
  definitionProof : definitionCertified
  boundary : List String

structure ConjugateFiltration
    (S : QuasiRegularSemiperfectoid.{u} p) where
  filtration : Filtration S.prism.A.ops.carrier
  definitionStatement : String
  definitionCertified : Prop
  definitionProof : definitionCertified
  boundary : List String

structure NygaardConjugateComparisonCertificate
    (S : QuasiRegularSemiperfectoid.{u} p) where
  nygaard : NygaardFiltration S
  conjugate : ConjugateFiltration S
  image_agrees : Prop
  imageAgreesCertified : image_agrees
  graded_iso : Prop
  gradedIsoCertified : graded_iso
  boundary : List String

def NygaardFiltration.certifiedForMajorProof
    {S : QuasiRegularSemiperfectoid.{u} p}
    (N : NygaardFiltration S) : Prop :=
  S.qrsp ∧
  N.filtration.monotone ∧
  N.definitionCertified

def NygaardFiltration.certificateAccessor_of_fields
    {S : QuasiRegularSemiperfectoid.{u} p}
    (N : NygaardFiltration S) :
    N.certifiedForMajorProof :=
  ⟨S.qrspCertified,
    N.filtration.monotoneCertified,
    N.definitionProof⟩

def ConjugateFiltration.certifiedForMajorProof
    {S : QuasiRegularSemiperfectoid.{u} p}
    (F : ConjugateFiltration S) : Prop :=
  S.qrsp ∧
  F.filtration.monotone ∧
  F.definitionCertified

theorem ConjugateFiltration.certifiedForMajorProof_of_fields
    {S : QuasiRegularSemiperfectoid.{u} p}
    (F : ConjugateFiltration S) :
    F.certifiedForMajorProof :=
  ⟨S.qrspCertified,
    F.filtration.monotoneCertified,
    F.definitionProof⟩

def NygaardConjugateComparisonCertificate.certifiedForMajorProof
    {S : QuasiRegularSemiperfectoid.{u} p}
    (C : NygaardConjugateComparisonCertificate S) : Prop :=
  C.nygaard.certifiedForMajorProof ∧
  C.conjugate.certifiedForMajorProof ∧
  C.image_agrees ∧
  C.graded_iso

theorem NygaardConjugateComparisonCertificate.certifiedForMajorProof_of_fields
    {S : QuasiRegularSemiperfectoid.{u} p}
    (C : NygaardConjugateComparisonCertificate S) :
    C.certifiedForMajorProof :=
  ⟨C.nygaard.certificateAccessor_of_fields,
    C.conjugate.certifiedForMajorProof_of_fields,
    C.imageAgreesCertified,
    C.gradedIsoCertified⟩

theorem nygaard_filtration_def
    {S : QuasiRegularSemiperfectoid.{u} p}
    (N : NygaardFiltration S) :
    N.definitionCertified :=
  N.definitionProof

theorem nygaard_image_agrees_with_conjugate
    {S : QuasiRegularSemiperfectoid.{u} p}
    (C : NygaardConjugateComparisonCertificate S) :
    C.image_agrees :=
  C.imageAgreesCertified

theorem graded_nygaard_iso_conjugate_twist
    {S : QuasiRegularSemiperfectoid.{u} p}
    (C : NygaardConjugateComparisonCertificate S) :
    C.graded_iso :=
  C.gradedIsoCertified

/-- Unit QRSP example for interface tests. -/
def unitQRSP (p : Nat) : QuasiRegularSemiperfectoid.{0} p where
  prism := unitBoundedPrism p
  qrsp := True
  qrspCertified := trivial
  boundary := ["Toy quasi-regular semiperfectoid descriptor."]

def unitNygaardFiltration (p : Nat) :
    NygaardFiltration (unitQRSP p) where
  filtration := {
    contains := fun _ _ => True
    monotone := True
    monotoneCertified := trivial
    boundary := ["Toy filtration on the unit QRSP object."]
  }
  definitionStatement := "Fil^i_N Delta = {x | phi(x) lies in d^i Delta}"
  definitionCertified := True
  definitionProof := trivial
  boundary := ["Toy Nygaard filtration descriptor."]

def unitConjugateFiltration (p : Nat) :
    ConjugateFiltration (unitQRSP p) where
  filtration := {
    contains := fun _ _ => True
    monotone := True
    monotoneCertified := trivial
    boundary := ["Toy conjugate filtration on the unit QRSP object."]
  }
  definitionStatement := "Fil_conj is the conjugate filtration target for the unit interface."
  definitionCertified := True
  definitionProof := trivial
  boundary := ["Toy conjugate filtration descriptor."]

def unitNygaardConjugateComparison (p : Nat) :
    NygaardConjugateComparisonCertificate (unitQRSP p) where
  nygaard := unitNygaardFiltration p
  conjugate := unitConjugateFiltration p
  image_agrees := True
  imageAgreesCertified := trivial
  graded_iso := True
  gradedIsoCertified := trivial
  boundary := [
    "Unit Nygaard/conjugate comparison interface example.",
    "This is a typed certificate example, not a full Bhatt--Scholze comparison proof."
  ]

def unitNygaardConjugateComparison_certificateAccessor
    (p : Nat) :
    (unitNygaardConjugateComparison p).certifiedForMajorProof :=
  NygaardConjugateComparisonCertificate.certifiedForMajorProof_of_fields
    (unitNygaardConjugateComparison p)

end Surface.Prismatic
```
