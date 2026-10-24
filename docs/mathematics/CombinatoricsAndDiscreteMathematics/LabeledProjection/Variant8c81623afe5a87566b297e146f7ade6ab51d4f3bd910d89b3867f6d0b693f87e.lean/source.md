# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.LabeledProjection.Variant8c81623afe5a87566b297e146f7ade6ab51d4f3bd910d89b3867f6d0b693f87e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e538a749042fe26ef42907801f9a711266b2d588` · SHA-256 `8c81623afe5a87566b297e146f7ade6ab51d4f3bd910d89b3867f6d0b693f87e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Projection.DerivedLabel
import Mathlib.Data.Finset.Max
import Mathlib.Order.Basic

/-!
# Exact label-normalized projection lifting

The code implementation is supplied with an injectivity proof.  The finite
selected orbit is then lifted by exact minimum, never by score or stable-ID
tie-breaking.
-/

namespace Mathematics.Projection

universe u v w

variable {signature : StructuralSignature}
variable {hierarchy : PolyHierarchy signature}

/-- Exact prefix-free implementation of the normalized labeled projection code. -/
structure LabelNormalizedProjectionCode
    (certificate : ExternalRigidifierCert hierarchy) where
  encode : MonoHierarchy certificate.Label → Nat
  injective : Function.Injective encode

noncomputable def labeledProjectionCode
    (certificate : ExternalRigidifierCert hierarchy)
    (encoding : LabelNormalizedProjectionCode certificate)
    (projection : MonoHierarchy hierarchy.Element) : Nat :=
  encoding.encode
    (MonoHierarchy.transport certificate.externalLabelEquiv projection)

theorem labeledProjectionCode_injective
    (certificate : ExternalRigidifierCert hierarchy)
    (encoding : LabelNormalizedProjectionCode certificate) :
    Function.Injective
      (labeledProjectionCode certificate encoding) :=
  encoding.injective.comp
    (MonoHierarchy.transport_injective certificate.externalLabelEquiv)

/-- Exact minimum of one finite nonempty intrinsic projection orbit. -/
noncomputable def liftProjectionOrbit
    (certificate : ExternalRigidifierCert hierarchy)
    (encoding : LabelNormalizedProjectionCode certificate)
    (orbit : Finset (MonoHierarchy hierarchy.Element))
    (nonempty : orbit.Nonempty) :
    MonoHierarchy hierarchy.Element :=
  letI : LinearOrder (MonoHierarchy hierarchy.Element) :=
    LinearOrder.lift'
      (labeledProjectionCode certificate encoding)
      (labeledProjectionCode_injective certificate encoding)
  orbit.min' nonempty

theorem liftProjectionOrbit_mem
    (certificate : ExternalRigidifierCert hierarchy)
    (encoding : LabelNormalizedProjectionCode certificate)
    (orbit : Finset (MonoHierarchy hierarchy.Element))
    (nonempty : orbit.Nonempty) :
    liftProjectionOrbit certificate encoding orbit nonempty ∈ orbit := by
  letI : LinearOrder (MonoHierarchy hierarchy.Element) :=
    LinearOrder.lift'
      (labeledProjectionCode certificate encoding)
      (labeledProjectionCode_injective certificate encoding)
  exact Finset.min'_mem orbit nonempty

theorem liftProjectionOrbit_minimal
    (certificate : ExternalRigidifierCert hierarchy)
    (encoding : LabelNormalizedProjectionCode certificate)
    (orbit : Finset (MonoHierarchy hierarchy.Element))
    (nonempty : orbit.Nonempty)
    (candidate : MonoHierarchy hierarchy.Element)
    (member : candidate ∈ orbit) :
    labeledProjectionCode certificate encoding
        (liftProjectionOrbit certificate encoding orbit nonempty) ≤
      labeledProjectionCode certificate encoding candidate := by
  letI : LinearOrder (MonoHierarchy hierarchy.Element) :=
    LinearOrder.lift'
      (labeledProjectionCode certificate encoding)
      (labeledProjectionCode_injective certificate encoding)
  exact Finset.min'_le orbit candidate member

theorem liftProjectionOrbit_unique
    (certificate : ExternalRigidifierCert hierarchy)
    (encoding : LabelNormalizedProjectionCode certificate)
    (orbit : Finset (MonoHierarchy hierarchy.Element))
    (nonempty : orbit.Nonempty) :
    ∃! projection,
      projection ∈ orbit ∧
      ∀ candidate ∈ orbit,
        labeledProjectionCode certificate encoding projection ≤
          labeledProjectionCode certificate encoding candidate := by
  let selected :=
    liftProjectionOrbit certificate encoding orbit nonempty
  refine ⟨selected, ?_, ?_⟩
  · exact ⟨
      liftProjectionOrbit_mem certificate encoding orbit nonempty,
      liftProjectionOrbit_minimal certificate encoding orbit nonempty⟩
  · intro candidate candidateProperty
    have selectedMember :=
      liftProjectionOrbit_mem certificate encoding orbit nonempty
    have candidateLeSelected :=
      candidateProperty.2 selected selectedMember
    have selectedLeCandidate :=
      liftProjectionOrbit_minimal certificate encoding orbit nonempty
        candidate candidateProperty.1
    apply labeledProjectionCode_injective certificate encoding
    exact Nat.le_antisymm candidateLeSelected selectedLeCandidate

end Mathematics.Projection
```
