# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Cohomology.Variant41e62330578efa98e09cc2431b4df5c05601411c0620f70dd35be416a5a83845

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8cf2f421e5b29516f73ed8b6102709051ce38fe7` · SHA-256 `41e62330578efa98e09cc2431b4df5c05601411c0620f70dd35be416a5a83845`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Prismatic.Site

namespace Surface.Prismatic

universe u

/-!
# Prismatic cohomology interface

Formalized here: an explicit derived-object interface for `RΓ_Δ`, its source
site, Frobenius, base-change maps, and optional structure-sheaf certificates.

Certificate-gated here: derived category construction, crystals, and comparison
maps.  The `O_Delta` and `O_Delta_bar` objects supplied by the site are
presheaf interfaces; major-proof use requires explicit ring-valued sheaf
certificates over actual dependent sections.
-/

structure DerivedObject
    {p : Nat}
    (A : DeltaRing.{u} p) where
  objectLabel : String
  hasDerivedStructure : Prop
  hasDerivedStructureCertified : hasDerivedStructure
  boundary : List String

structure FrobeniusSemilinearEndomorphism
    {p : Nat}
    {A : DeltaRing.{u} p}
    (D : DerivedObject A) where
  mapLabel : String
  semilinear : Prop
  semilinearCertified : semilinear
  boundary : List String

structure BaseChangeMap
    {p : Nat}
    {A : DeltaRing.{u} p}
    (D : DerivedObject A) where
  targetLabel : String
  mapExists : Prop
  mapExistsCertified : mapExists
  boundary : List String

structure PrismaticCohomology
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme) where
  RΓDelta : DerivedObject P.A
  ODelta_source : PrismaticSite P X
  ODelta_sheaf? : Option (CertifiedStructureSheafOfRings P X)
  ODeltaBar_sheaf? : Option (CertifiedStructureSheafOfRings P X)
  ODelta_pullbackSheaf? : Option (CertifiedPullbackStructureSheafOfRings P X)
  ODeltaBar_pullbackSheaf? :
    Option (CertifiedPullbackStructureSheafOfRings P X)
  frobenius : FrobeniusSemilinearEndomorphism RΓDelta
  base_change_map : BaseChangeMap RΓDelta
  boundary : List String

structure Crystal
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme) where
  value : PrismaticCohomology P X
  crystalCondition : Prop
  crystalConditionCertified : crystalCondition
  boundary : List String

theorem RΓDelta_has_frobenius
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (C : PrismaticCohomology P X) :
    C.frobenius.semilinear :=
    C.frobenius.semilinearCertified

def PrismaticCohomology.hasStructureSheafCertificates
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (C : PrismaticCohomology P X) : Prop :=
  (∃ S : CertifiedStructureSheafOfRings P X, C.ODelta_sheaf? = some S) ∧
  (∃ S : CertifiedStructureSheafOfRings P X, C.ODeltaBar_sheaf? = some S)

/--
Availability of pullback-overlap structure-sheaf certificates for
`O_Delta` and `O_Delta_bar`.

This is stronger than `hasStructureSheafCertificates`: the certificates must
use actual dependent sections over pullback-certified overlaps.
-/
def PrismaticCohomology.hasPullbackStructureSheafCertificates
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (C : PrismaticCohomology P X) : Prop :=
  (∃ S : CertifiedPullbackStructureSheafOfRings P X,
    C.ODelta_pullbackSheaf? = some S) ∧
  (∃ S : CertifiedPullbackStructureSheafOfRings P X,
    C.ODeltaBar_pullbackSheaf? = some S)

/--
Conditional sheaf availability for `O_Delta` and `O_Delta_bar`.

This permits externally supplied assumptions but still rejects placeholder
inputs.  It is useful for staging interfaces, not for final theorem cones.
-/
def PrismaticCohomology.hasConditionalStructureSheafCertificates
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (C : PrismaticCohomology P X) : Prop :=
  (∃ S : CertifiedStructureSheafOfRings P X,
    C.ODelta_sheaf? = some S ∧
      S.usableForConditionalProof) ∧
  (∃ S : CertifiedStructureSheafOfRings P X,
    C.ODeltaBar_sheaf? = some S ∧
      S.usableForConditionalProof)

/--
Final-theorem sheaf availability for `O_Delta` and `O_Delta_bar`.

Both structure sheaves must be constructed in Surface or imported as theorem
objects.  External assumptions and placeholders are excluded from this gate.
-/
def PrismaticCohomology.hasFinalStructureSheafCertificates
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (C : PrismaticCohomology P X) : Prop :=
  (∃ S : CertifiedStructureSheafOfRings P X,
    C.ODelta_sheaf? = some S ∧
      S.usableForFinalTheorem) ∧
  (∃ S : CertifiedStructureSheafOfRings P X,
    C.ODeltaBar_sheaf? = some S ∧
      S.usableForFinalTheorem)

/--
Major-proof sheaf availability for `O_Delta` and `O_Delta_bar`.

This is the gate consumed by major proof cones.  It deliberately names
`usableForMajorProof`, even though the current construction-status policy
identifies major-proof use with final-theorem-grade construction or imported
theorem input.
-/
def PrismaticCohomology.hasMajorProofStructureSheafCertificates
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (C : PrismaticCohomology P X) : Prop :=
  (∃ S : CertifiedStructureSheafOfRings P X,
    C.ODelta_sheaf? = some S ∧
      S.usableForMajorProof) ∧
  (∃ S : CertifiedStructureSheafOfRings P X,
    C.ODeltaBar_sheaf? = some S ∧
      S.usableForMajorProof)

/--
Final-theorem availability of pullback-overlap structure sheaves.

This is the preferred major-proof target for future prismatic comparison and
Hilbert-embedding cones.  It requires both sheaves to be constructed in Surface
or imported as theorem-grade inputs, and their sheaf conditions must be the
pullback-overlap variant.
-/
def PrismaticCohomology.hasFinalPullbackStructureSheafCertificates
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (C : PrismaticCohomology P X) : Prop :=
  (∃ S : CertifiedPullbackStructureSheafOfRings P X,
    C.ODelta_pullbackSheaf? = some S ∧
      S.usableForFinalTheorem) ∧
  (∃ S : CertifiedPullbackStructureSheafOfRings P X,
    C.ODeltaBar_pullbackSheaf? = some S ∧
      S.usableForFinalTheorem)

/--
Major-proof availability of pullback-overlap structure sheaves.

This is the preferred major-proof target for future prismatic comparison and
Hilbert-embedding cones.  It requires both sheaves to pass the explicit
major-proof construction-status gate.
-/
def PrismaticCohomology.hasMajorProofPullbackStructureSheafCertificates
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (C : PrismaticCohomology P X) : Prop :=
  (∃ S : CertifiedPullbackStructureSheafOfRings P X,
    C.ODelta_pullbackSheaf? = some S ∧
      S.usableForMajorProof) ∧
  (∃ S : CertifiedPullbackStructureSheafOfRings P X,
    C.ODeltaBar_pullbackSheaf? = some S ∧
      S.usableForMajorProof)

theorem PrismaticCohomology.finalStructureSheaves_are_conditional
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : PrismaticCohomology P X}
    (h : C.hasFinalStructureSheafCertificates) :
    C.hasConditionalStructureSheafCertificates := by
  constructor
  · rcases h.1 with ⟨S, hS, hFinal⟩
    exact ⟨S, hS, S.finalTheorem_usableForConditionalProof hFinal⟩
  · rcases h.2 with ⟨S, hS, hFinal⟩
    exact ⟨S, hS, S.finalTheorem_usableForConditionalProof hFinal⟩

theorem PrismaticCohomology.finalStructureSheaves_are_certificates
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : PrismaticCohomology P X}
    (h : C.hasFinalStructureSheafCertificates) :
    C.hasStructureSheafCertificates := by
  constructor
  · rcases h.1 with ⟨S, hS, _hFinal⟩
    exact ⟨S, hS⟩
  · rcases h.2 with ⟨S, hS, _hFinal⟩
    exact ⟨S, hS⟩

theorem PrismaticCohomology.majorProofStructureSheaves_are_certificates
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : PrismaticCohomology P X}
    (h : C.hasMajorProofStructureSheafCertificates) :
    C.hasStructureSheafCertificates := by
  constructor
  · rcases h.1 with ⟨S, hS, _hMajor⟩
    exact ⟨S, hS⟩
  · rcases h.2 with ⟨S, hS, _hMajor⟩
    exact ⟨S, hS⟩

theorem PrismaticCohomology.finalPullbackStructureSheaves_are_certificates
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : PrismaticCohomology P X}
    (h : C.hasFinalPullbackStructureSheafCertificates) :
    C.hasPullbackStructureSheafCertificates := by
  constructor
  · rcases h.1 with ⟨S, hS, _hFinal⟩
    exact ⟨S, hS⟩
  · rcases h.2 with ⟨S, hS, _hFinal⟩
    exact ⟨S, hS⟩

theorem PrismaticCohomology.majorProofPullbackStructureSheaves_are_certificates
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : PrismaticCohomology P X}
    (h : C.hasMajorProofPullbackStructureSheafCertificates) :
    C.hasPullbackStructureSheafCertificates := by
  constructor
  · rcases h.1 with ⟨S, hS, _hMajor⟩
    exact ⟨S, hS⟩
  · rcases h.2 with ⟨S, hS, _hMajor⟩
    exact ⟨S, hS⟩

theorem PrismaticCohomology.finalStructureSheaves_reject_externalAssumption
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : PrismaticCohomology P X}
    (h : C.hasFinalStructureSheafCertificates) :
    (∀ S : CertifiedStructureSheafOfRings P X,
      C.ODelta_sheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.externalAssumption) ∧
    (∀ S : CertifiedStructureSheafOfRings P X,
      C.ODeltaBar_sheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.externalAssumption) := by
  constructor
  · intro S hS
    rcases h.1 with ⟨S0, hS0, hFinal⟩
    have hEq : S = S0 := by
      rw [hS] at hS0
      cases hS0
      rfl
    intro hExternal
    have hExternal0 :
        S0.constructionStatus = ConstructionStatus.externalAssumption := by
      rw [← hEq]
      exact hExternal
    exact
      (CertifiedStructureSheafOfRings.rejects_externalAssumption S0 hFinal)
        hExternal0
  · intro S hS
    rcases h.2 with ⟨S0, hS0, hFinal⟩
    have hEq : S = S0 := by
      rw [hS] at hS0
      cases hS0
      rfl
    intro hExternal
    have hExternal0 :
        S0.constructionStatus = ConstructionStatus.externalAssumption := by
      rw [← hEq]
      exact hExternal
    exact
      (CertifiedStructureSheafOfRings.rejects_externalAssumption S0 hFinal)
        hExternal0

theorem PrismaticCohomology.majorProofStructureSheaves_reject_externalAssumption
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : PrismaticCohomology P X}
    (h : C.hasMajorProofStructureSheafCertificates) :
    (∀ S : CertifiedStructureSheafOfRings P X,
      C.ODelta_sheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.externalAssumption) ∧
    (∀ S : CertifiedStructureSheafOfRings P X,
      C.ODeltaBar_sheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.externalAssumption) := by
  constructor
  · intro S hS
    rcases h.1 with ⟨S0, hS0, hMajor⟩
    have hEq : S = S0 := by
      rw [hS] at hS0
      cases hS0
      rfl
    intro hExternal
    have hExternal0 :
        S0.constructionStatus = ConstructionStatus.externalAssumption := by
      rw [← hEq]
      exact hExternal
    exact
      (CertifiedStructureSheafOfRings.rejects_externalAssumption S0 hMajor)
        hExternal0
  · intro S hS
    rcases h.2 with ⟨S0, hS0, hMajor⟩
    have hEq : S = S0 := by
      rw [hS] at hS0
      cases hS0
      rfl
    intro hExternal
    have hExternal0 :
        S0.constructionStatus = ConstructionStatus.externalAssumption := by
      rw [← hEq]
      exact hExternal
    exact
      (CertifiedStructureSheafOfRings.rejects_externalAssumption S0 hMajor)
        hExternal0

theorem PrismaticCohomology.finalStructureSheaves_reject_placeholderInput
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : PrismaticCohomology P X}
    (h : C.hasFinalStructureSheafCertificates) :
    (∀ S : CertifiedStructureSheafOfRings P X,
      C.ODelta_sheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.placeholderInput) ∧
    (∀ S : CertifiedStructureSheafOfRings P X,
      C.ODeltaBar_sheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.placeholderInput) := by
  constructor
  · intro S hS
    rcases h.1 with ⟨S0, hS0, hFinal⟩
    have hEq : S = S0 := by
      rw [hS] at hS0
      cases hS0
      rfl
    intro hPlaceholder
    have hPlaceholder0 :
        S0.constructionStatus = ConstructionStatus.placeholderInput := by
      rw [← hEq]
      exact hPlaceholder
    exact
      (CertifiedStructureSheafOfRings.rejects_placeholderInput S0 hFinal)
        hPlaceholder0
  · intro S hS
    rcases h.2 with ⟨S0, hS0, hFinal⟩
    have hEq : S = S0 := by
      rw [hS] at hS0
      cases hS0
      rfl
    intro hPlaceholder
    have hPlaceholder0 :
        S0.constructionStatus = ConstructionStatus.placeholderInput := by
      rw [← hEq]
      exact hPlaceholder
    exact
      (CertifiedStructureSheafOfRings.rejects_placeholderInput S0 hFinal)
        hPlaceholder0

theorem PrismaticCohomology.majorProofStructureSheaves_reject_placeholderInput
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : PrismaticCohomology P X}
    (h : C.hasMajorProofStructureSheafCertificates) :
    (∀ S : CertifiedStructureSheafOfRings P X,
      C.ODelta_sheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.placeholderInput) ∧
    (∀ S : CertifiedStructureSheafOfRings P X,
      C.ODeltaBar_sheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.placeholderInput) := by
  constructor
  · intro S hS
    rcases h.1 with ⟨S0, hS0, hMajor⟩
    have hEq : S = S0 := by
      rw [hS] at hS0
      cases hS0
      rfl
    intro hPlaceholder
    have hPlaceholder0 :
        S0.constructionStatus = ConstructionStatus.placeholderInput := by
      rw [← hEq]
      exact hPlaceholder
    exact
      (CertifiedStructureSheafOfRings.rejects_placeholderInput S0 hMajor)
        hPlaceholder0
  · intro S hS
    rcases h.2 with ⟨S0, hS0, hMajor⟩
    have hEq : S = S0 := by
      rw [hS] at hS0
      cases hS0
      rfl
    intro hPlaceholder
    have hPlaceholder0 :
        S0.constructionStatus = ConstructionStatus.placeholderInput := by
      rw [← hEq]
      exact hPlaceholder
    exact
      (CertifiedStructureSheafOfRings.rejects_placeholderInput S0 hMajor)
        hPlaceholder0

theorem PrismaticCohomology.finalPullbackStructureSheaves_reject_externalAssumption
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : PrismaticCohomology P X}
    (h : C.hasFinalPullbackStructureSheafCertificates) :
    (∀ S : CertifiedPullbackStructureSheafOfRings P X,
      C.ODelta_pullbackSheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.externalAssumption) ∧
    (∀ S : CertifiedPullbackStructureSheafOfRings P X,
      C.ODeltaBar_pullbackSheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.externalAssumption) := by
  constructor
  · intro S hS
    rcases h.1 with ⟨S0, hS0, hFinal⟩
    have hEq : S = S0 := by
      rw [hS] at hS0
      cases hS0
      rfl
    intro hExternal
    have hExternal0 :
        S0.constructionStatus = ConstructionStatus.externalAssumption := by
      rw [← hEq]
      exact hExternal
    exact
      (CertifiedPullbackStructureSheafOfRings.rejects_externalAssumption
        S0 hFinal) hExternal0
  · intro S hS
    rcases h.2 with ⟨S0, hS0, hFinal⟩
    have hEq : S = S0 := by
      rw [hS] at hS0
      cases hS0
      rfl
    intro hExternal
    have hExternal0 :
        S0.constructionStatus = ConstructionStatus.externalAssumption := by
      rw [← hEq]
      exact hExternal
    exact
      (CertifiedPullbackStructureSheafOfRings.rejects_externalAssumption
        S0 hFinal) hExternal0

theorem PrismaticCohomology.majorProofPullbackStructureSheaves_reject_externalAssumption
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : PrismaticCohomology P X}
    (h : C.hasMajorProofPullbackStructureSheafCertificates) :
    (∀ S : CertifiedPullbackStructureSheafOfRings P X,
      C.ODelta_pullbackSheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.externalAssumption) ∧
    (∀ S : CertifiedPullbackStructureSheafOfRings P X,
      C.ODeltaBar_pullbackSheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.externalAssumption) := by
  constructor
  · intro S hS
    rcases h.1 with ⟨S0, hS0, hMajor⟩
    have hEq : S = S0 := by
      rw [hS] at hS0
      cases hS0
      rfl
    intro hExternal
    have hExternal0 :
        S0.constructionStatus = ConstructionStatus.externalAssumption := by
      rw [← hEq]
      exact hExternal
    exact
      (CertifiedPullbackStructureSheafOfRings.rejects_externalAssumption
        S0 hMajor) hExternal0
  · intro S hS
    rcases h.2 with ⟨S0, hS0, hMajor⟩
    have hEq : S = S0 := by
      rw [hS] at hS0
      cases hS0
      rfl
    intro hExternal
    have hExternal0 :
        S0.constructionStatus = ConstructionStatus.externalAssumption := by
      rw [← hEq]
      exact hExternal
    exact
      (CertifiedPullbackStructureSheafOfRings.rejects_externalAssumption
        S0 hMajor) hExternal0

theorem PrismaticCohomology.finalPullbackStructureSheaves_reject_placeholderInput
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : PrismaticCohomology P X}
    (h : C.hasFinalPullbackStructureSheafCertificates) :
    (∀ S : CertifiedPullbackStructureSheafOfRings P X,
      C.ODelta_pullbackSheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.placeholderInput) ∧
    (∀ S : CertifiedPullbackStructureSheafOfRings P X,
      C.ODeltaBar_pullbackSheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.placeholderInput) := by
  constructor
  · intro S hS
    rcases h.1 with ⟨S0, hS0, hFinal⟩
    have hEq : S = S0 := by
      rw [hS] at hS0
      cases hS0
      rfl
    intro hPlaceholder
    have hPlaceholder0 :
        S0.constructionStatus = ConstructionStatus.placeholderInput := by
      rw [← hEq]
      exact hPlaceholder
    exact
      (CertifiedPullbackStructureSheafOfRings.rejects_placeholderInput
        S0 hFinal) hPlaceholder0
  · intro S hS
    rcases h.2 with ⟨S0, hS0, hFinal⟩
    have hEq : S = S0 := by
      rw [hS] at hS0
      cases hS0
      rfl
    intro hPlaceholder
    have hPlaceholder0 :
        S0.constructionStatus = ConstructionStatus.placeholderInput := by
      rw [← hEq]
      exact hPlaceholder
    exact
      (CertifiedPullbackStructureSheafOfRings.rejects_placeholderInput
        S0 hFinal) hPlaceholder0

theorem PrismaticCohomology.majorProofPullbackStructureSheaves_reject_placeholderInput
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : PrismaticCohomology P X}
    (h : C.hasMajorProofPullbackStructureSheafCertificates) :
    (∀ S : CertifiedPullbackStructureSheafOfRings P X,
      C.ODelta_pullbackSheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.placeholderInput) ∧
    (∀ S : CertifiedPullbackStructureSheafOfRings P X,
      C.ODeltaBar_pullbackSheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.placeholderInput) := by
  constructor
  · intro S hS
    rcases h.1 with ⟨S0, hS0, hMajor⟩
    have hEq : S = S0 := by
      rw [hS] at hS0
      cases hS0
      rfl
    intro hPlaceholder
    have hPlaceholder0 :
        S0.constructionStatus = ConstructionStatus.placeholderInput := by
      rw [← hEq]
      exact hPlaceholder
    exact
      (CertifiedPullbackStructureSheafOfRings.rejects_placeholderInput
        S0 hMajor) hPlaceholder0
  · intro S hS
    rcases h.2 with ⟨S0, hS0, hMajor⟩
    have hEq : S = S0 := by
      rw [hS] at hS0
      cases hS0
      rfl
    intro hPlaceholder
    have hPlaceholder0 :
        S0.constructionStatus = ConstructionStatus.placeholderInput := by
      rw [← hEq]
      exact hPlaceholder
    exact
      (CertifiedPullbackStructureSheafOfRings.rejects_placeholderInput
        S0 hMajor) hPlaceholder0

/--
Construction-level admissibility input for a prismatic cohomology object.

This is not a comparison theorem. It records the typed prerequisites that a
major proof cone may require before asking for comparison certificates: the
bounded prism clauses, the p-adic formal scheme condition, derived structure,
Frobenius semilinearity, base-change map existence, and separately supplied
final-theorem-grade structure-sheaf certificates on the source prismatic site.
-/
def PrismaticCohomology.admissibleForMajorProofInput
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (C : PrismaticCohomology P X) : Prop :=
  P.cartier.cartier ∧
  P.derived_complete.derivedComplete ∧
  P.frobenius_condition.containsP ∧
  P.bounded_torsion.boundedPTorsion ∧
  X.pAdic ∧
  C.RΓDelta.hasDerivedStructure ∧
  C.frobenius.semilinear ∧
  C.base_change_map.mapExists ∧
  C.hasMajorProofStructureSheafCertificates ∧
  C.hasMajorProofPullbackStructureSheafCertificates

theorem PrismaticCohomology.admissibleForMajorProofInput_of_fields
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (C : PrismaticCohomology P X)
    (hSheaves : C.hasMajorProofStructureSheafCertificates)
    (hPullbackSheaves : C.hasMajorProofPullbackStructureSheafCertificates) :
    C.admissibleForMajorProofInput := by
  exact ⟨
    P.cartier.cartierCertified,
    P.derived_complete.derivedCompleteCertified,
    P.frobenius_condition.containsPCertified,
    P.bounded_torsion.boundedPTorsionCertified,
    X.pAdicCertified,
    C.RΓDelta.hasDerivedStructureCertified,
    C.frobenius.semilinearCertified,
    C.base_change_map.mapExistsCertified,
    hSheaves,
    hPullbackSheaves
  ⟩

theorem PrismaticCohomology.admissibleForMajorProofInput_has_structureSheaves
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : PrismaticCohomology P X}
    (h : C.admissibleForMajorProofInput) :
    C.hasMajorProofStructureSheafCertificates := by
  rcases h with
    ⟨_, _, _, _, _, _, _, _, hSheaves, _hPullbackSheaves⟩
  exact hSheaves

theorem PrismaticCohomology.admissibleForMajorProofInput_has_pullbackStructureSheaves
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : PrismaticCohomology P X}
    (h : C.admissibleForMajorProofInput) :
    C.hasMajorProofPullbackStructureSheafCertificates := by
  rcases h with
    ⟨_, _, _, _, _, _, _, _, _hSheaves, hPullbackSheaves⟩
  exact hPullbackSheaves

theorem PrismaticCohomology.admissibleForMajorProofInput_rejects_externalAssumption
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : PrismaticCohomology P X}
    (h : C.admissibleForMajorProofInput) :
    (∀ S : CertifiedStructureSheafOfRings P X,
      C.ODelta_sheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.externalAssumption) ∧
    (∀ S : CertifiedStructureSheafOfRings P X,
      C.ODeltaBar_sheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.externalAssumption) := by
  rcases h with
    ⟨_, _, _, _, _, _, _, _, hSheaves, _hPullbackSheaves⟩
  exact C.majorProofStructureSheaves_reject_externalAssumption hSheaves

theorem PrismaticCohomology.admissibleForMajorProofInput_rejects_placeholderInput
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : PrismaticCohomology P X}
    (h : C.admissibleForMajorProofInput) :
    (∀ S : CertifiedStructureSheafOfRings P X,
      C.ODelta_sheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.placeholderInput) ∧
    (∀ S : CertifiedStructureSheafOfRings P X,
      C.ODeltaBar_sheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.placeholderInput) := by
  rcases h with
    ⟨_, _, _, _, _, _, _, _, hSheaves, _hPullbackSheaves⟩
  exact C.majorProofStructureSheaves_reject_placeholderInput hSheaves

theorem PrismaticCohomology.admissibleForMajorProofInput_pullback_rejects_externalAssumption
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : PrismaticCohomology P X}
    (h : C.admissibleForMajorProofInput) :
    (∀ S : CertifiedPullbackStructureSheafOfRings P X,
      C.ODelta_pullbackSheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.externalAssumption) ∧
    (∀ S : CertifiedPullbackStructureSheafOfRings P X,
      C.ODeltaBar_pullbackSheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.externalAssumption) := by
  exact
    C.majorProofPullbackStructureSheaves_reject_externalAssumption
      (C.admissibleForMajorProofInput_has_pullbackStructureSheaves h)

theorem PrismaticCohomology.admissibleForMajorProofInput_pullback_rejects_placeholderInput
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : PrismaticCohomology P X}
    (h : C.admissibleForMajorProofInput) :
    (∀ S : CertifiedPullbackStructureSheafOfRings P X,
      C.ODelta_pullbackSheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.placeholderInput) ∧
    (∀ S : CertifiedPullbackStructureSheafOfRings P X,
      C.ODeltaBar_pullbackSheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.placeholderInput) := by
  exact
    C.majorProofPullbackStructureSheaves_reject_placeholderInput
      (C.admissibleForMajorProofInput_has_pullbackStructureSheaves h)

def unitPrismaticCohomology (p : Nat) :
    PrismaticCohomology (unitBoundedPrism p) unitPadicFormalScheme where
  RΓDelta := {
    objectLabel := "RΓ_Delta(unit)"
    hasDerivedStructure := True
    hasDerivedStructureCertified := trivial
    boundary := ["Toy derived object for unit prismatic site."]
  }
  ODelta_source := unitPrismaticSite p
  ODelta_sheaf? := none
  ODeltaBar_sheaf? := none
  ODelta_pullbackSheaf? := none
  ODeltaBar_pullbackSheaf? := none
  frobenius := {
    mapLabel := "unit Frobenius"
    semilinear := True
    semilinearCertified := trivial
    boundary := ["Toy Frobenius certificate."]
  }
  base_change_map := {
    targetLabel := "unit base change"
    mapExists := True
    mapExistsCertified := trivial
    boundary := ["Toy base-change map."]
  }
  boundary := ["Unit prismatic cohomology interface example."]

theorem unitPrismaticCohomology_has_no_structure_sheaf_certificates
    (p : Nat) :
    ¬ (unitPrismaticCohomology p).hasStructureSheafCertificates := by
  intro h
  rcases h with ⟨⟨S, hS⟩, _⟩
  cases hS

theorem unitPrismaticCohomology_has_no_pullback_structure_sheaf_certificates
    (p : Nat) :
    ¬ (unitPrismaticCohomology p).hasPullbackStructureSheafCertificates := by
  intro h
  rcases h with ⟨⟨S, hS⟩, _⟩
  cases hS

end Surface.Prismatic
```
