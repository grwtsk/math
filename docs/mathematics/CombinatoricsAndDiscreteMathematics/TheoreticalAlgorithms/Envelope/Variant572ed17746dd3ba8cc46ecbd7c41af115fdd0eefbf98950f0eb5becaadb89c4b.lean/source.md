# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Envelope.Variant572ed17746dd3ba8cc46ecbd7c41af115fdd0eefbf98950f0eb5becaadb89c4b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43143711c61656d40aaade15d215331b4b650dde` · SHA-256 `572ed17746dd3ba8cc46ecbd7c41af115fdd0eefbf98950f0eb5becaadb89c4b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Prismatic.Nygaard

namespace Surface.Prismatic

universe u

/-!
# Prismatic envelopes

Formalized here: interfaces for prismatic envelopes of regular ideals and the
Proposition 3.13 style theorem targets.

Certificate-gated here: regular sequence hypotheses, universal properties,
complete flatness, base change, and flat localization.
-/

structure CompletelyRegularSequenceRelativeTo
    {p : Nat}
    (A : DeltaRing.{u} p)
    (I : IdealLike A) where
  sequenceLabel : String
  completelyRegular : Prop
  completelyRegularCertified : completelyRegular
  boundary : List String

structure DeltaPairOverPrism
    {p : Nat}
    (P : Prism.{u} p) where
  pair : DeltaPair.{u} p
  mapToBase : PrismMap P P
  boundary : List String

structure PrismaticEnvelope
    {p : Nat}
    (P : Prism.{u} p) where
  idealLabel : String
  envelopePair : DeltaPair.{u} p
  universalProperty : Prop
  universalPropertyCertified : universalProperty
  p_I_completelyFlat : Prop
  pICompletelyFlatCertified : p_I_completelyFlat
  boundary : List String

namespace PrismaticEnvelope

/--
Envelope admissibility for major proof infrastructure.

This is intentionally stronger than merely naming an envelope: both the
universal property and the `(p,I)`-complete flatness clause must be certified.
-/
def certifiedForMajorProof
    {p : Nat}
    {P : Prism.{u} p}
    (E : PrismaticEnvelope P) : Prop :=
  E.universalProperty ∧ E.p_I_completelyFlat

theorem certifiedForMajorProof_of_fields
    {p : Nat}
    {P : Prism.{u} p}
    (E : PrismaticEnvelope P) :
    E.certifiedForMajorProof := by
  exact ⟨E.universalPropertyCertified, E.pICompletelyFlatCertified⟩

end PrismaticEnvelope

def envelopeNotation_B_J_over_I
    {p : Nat}
    {P : Prism.{u} p}
    (E : PrismaticEnvelope P) :
    String :=
  "Delta envelope of " ++ E.idealLabel

theorem universal_property_of_prismatic_envelope
    {p : Nat}
    {P : Prism.{u} p}
    (E : PrismaticEnvelope P) :
    E.universalProperty :=
  E.universalPropertyCertified

theorem envelope_p_I_completely_flat
    {p : Nat}
    {P : Prism.{u} p}
    (E : PrismaticEnvelope P) :
    E.p_I_completelyFlat :=
  E.pICompletelyFlatCertified

structure EnvelopeBaseChangeCertificate
    {p : Nat}
    {P : Prism.{u} p}
    (E : PrismaticEnvelope P) where
  baseChange : Prop
  baseChangeCertified : baseChange
  boundary : List String

namespace EnvelopeBaseChangeCertificate

def certifiedForMajorProof
    {p : Nat}
    {P : Prism.{u} p}
    {E : PrismaticEnvelope P}
    (C : EnvelopeBaseChangeCertificate E) : Prop :=
  C.baseChange

theorem certifiedForMajorProof_of_field
    {p : Nat}
    {P : Prism.{u} p}
    {E : PrismaticEnvelope P}
    (C : EnvelopeBaseChangeCertificate E) :
    C.certifiedForMajorProof :=
  C.baseChangeCertified

end EnvelopeBaseChangeCertificate

theorem envelope_base_change
    {p : Nat}
    {P : Prism.{u} p}
    {E : PrismaticEnvelope P}
    (C : EnvelopeBaseChangeCertificate E) :
    C.baseChange :=
  C.baseChangeCertified

structure EnvelopeFlatLocalizationCertificate
    {p : Nat}
    {P : Prism.{u} p}
    (E : PrismaticEnvelope P) where
  flatLocalization : Prop
  flatLocalizationCertified : flatLocalization
  boundary : List String

namespace EnvelopeFlatLocalizationCertificate

def certifiedForMajorProof
    {p : Nat}
    {P : Prism.{u} p}
    {E : PrismaticEnvelope P}
    (C : EnvelopeFlatLocalizationCertificate E) : Prop :=
  C.flatLocalization

theorem certifiedForMajorProof_of_field
    {p : Nat}
    {P : Prism.{u} p}
    {E : PrismaticEnvelope P}
    (C : EnvelopeFlatLocalizationCertificate E) :
    C.certifiedForMajorProof :=
  C.flatLocalizationCertified

end EnvelopeFlatLocalizationCertificate

theorem envelope_flat_localization
    {p : Nat}
    {P : Prism.{u} p}
    {E : PrismaticEnvelope P}
    (C : EnvelopeFlatLocalizationCertificate E) :
    C.flatLocalization :=
  C.flatLocalizationCertified

/--
Complete proof-cone envelope package.

Major proof infrastructure should depend on this bundled object, or on the
individual certificate predicates above, rather than on an envelope label alone.
-/
structure PrismaticEnvelopeTheoremCertificate
    {p : Nat}
    (P : Prism.{u} p) where
  envelope : PrismaticEnvelope P
  baseChange : EnvelopeBaseChangeCertificate envelope
  flatLocalization : EnvelopeFlatLocalizationCertificate envelope
  certified :
    envelope.certifiedForMajorProof ∧
      baseChange.certifiedForMajorProof ∧
      flatLocalization.certifiedForMajorProof
  boundary : List String

namespace PrismaticEnvelopeTheoremCertificate

def certifiedForMajorProof
    {p : Nat}
    {P : Prism.{u} p}
    (C : PrismaticEnvelopeTheoremCertificate P) : Prop :=
  C.envelope.certifiedForMajorProof ∧
    C.baseChange.certifiedForMajorProof ∧
    C.flatLocalization.certifiedForMajorProof

theorem certifiedForMajorProof_of_field
    {p : Nat}
    {P : Prism.{u} p}
    (C : PrismaticEnvelopeTheoremCertificate P) :
    C.certifiedForMajorProof :=
  C.certified

end PrismaticEnvelopeTheoremCertificate

def unitPrismaticEnvelope
    (p : Nat) :
    PrismaticEnvelope (unitPrism p) where
  idealLabel := "unit ideal"
  envelopePair := {
    A := (unitPrism p).A
    I := (unitPrism p).I
    boundary := ["Unit envelope δ-pair."]
  }
  universalProperty := True
  universalPropertyCertified := trivial
  p_I_completelyFlat := True
  pICompletelyFlatCertified := trivial
  boundary := [
    "Unit prismatic-envelope example.",
    "This is a toy certificate, not a nontrivial prismatic-envelope theorem."
  ]

def unitPrismaticEnvelope_certificateAccessor
    (p : Nat) :
    (unitPrismaticEnvelope p).certifiedForMajorProof :=
  PrismaticEnvelope.certifiedForMajorProof_of_fields (unitPrismaticEnvelope p)

end Surface.Prismatic
```
