import Mathematics.Projection.RoutingStatus
import Mathematics.Projection.StructuralIsomorphism

/-!
# Proof obligations emitted by unresolved routing residue

A separator is new mathematics.  A model may propose one, but admission
requires invariance, conservative refinement, and exact separation proofs.
-/

namespace Mathematics.Projection

universe u v w

inductive SeparatorKind
  | intrinsicProbe
  | externalRigidifier
  deriving DecidableEq, Repr

structure SeparatorObligation
    (Element : Type u) (Probe : Type v)
    [DecidableEq Element] where
  residue : RoutingResidue Element Probe
  separatorKind : SeparatorKind

/--
An admitted intrinsic separator is an invariant new probe that distinguishes
the complete unresolved fiber and conservatively extends the old code.  The
required theorem is this dependent type itself; no decorative string or
caller-selected proposition is treated as a discharged obligation.
-/
structure CertifiedSeparator
    {Element : Type u}
    {OldProbe : Type v}
    {NewProbe : Type w}
    [DecidableEq Element]
    (oldEncode : Element → IncidenceCode OldProbe)
    (newEncode : Element → IncidenceCode NewProbe)
    (extension : ProbeExtension OldProbe NewProbe)
    (obligation : SeparatorObligation Element OldProbe) where
  conservative :
    ConservativeRefinement oldEncode newEncode extension
  separates :
    ∀ left ∈ obligation.residue.candidateFiber,
      ∀ right ∈ obligation.residue.candidateFiber,
        left ≠ right →
          newEncode left ≠ newEncode right

end Mathematics.Projection
