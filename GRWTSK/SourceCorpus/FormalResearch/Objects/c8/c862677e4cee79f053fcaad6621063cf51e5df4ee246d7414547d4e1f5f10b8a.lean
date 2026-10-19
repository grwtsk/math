import DAF.Comparison.Core
import DAF.Comparison.LogicalStatus
import DAF.Comparison.Properties
import DAF.Comparison.Scope
import Mathlib.Algebra.Group.Defs

/-!
# Conditional assembly-map interface

This module records the data of an assembly map without asserting a global
assembly theorem.  In particular, the existence of `Datum.assembly` only
provides a comparison map: it does not make that map injective, surjective, or
an isomorphism.  A Farrell--Jones assertion is represented by the explicit
`FarrellJonesHypothesis` structure and can be used to build proof certificates
only after a caller supplies that structure.

Ordinary homology is not generally algebraic K-theory.  This interface leaves
both theories abstract and therefore makes no claim that an arbitrary
topological model computes the group-ring K-groups appearing here.
-/

namespace DAF.Assembly

universe u v w

/--
The objects and degreewise map comprising an abstract assembly problem.

The group action, the chosen equivariant homology theory, and the group-ring
K-theory model are parameters.  Supplying this data does not supply an
isomorphism theorem.
-/
structure Datum where
  Group : Type u
  [instGroup : _root_.Group Group]
  EquivariantHomology : Int → Type v
  GroupRingKTheory : Int → Type w
  assembly :
    (degree : Int) →
      EquivariantHomology degree → GroupRingKTheory degree

namespace Datum

instance (A : Datum) : _root_.Group A.Group :=
  A.instGroup

/-- The degreewise assembly map, with no property bundled into it. -/
def comparison
    (A : Datum)
    (degree : Int) :
    Comparison.Spec
      (A.EquivariantHomology degree)
      (A.GroupRingKTheory degree) :=
  ⟨A.assembly degree⟩

@[simp]
theorem comparison_apply
    (A : Datum)
    (degree : Int)
    (x : A.EquivariantHomology degree) :
    (A.comparison degree).map x = A.assembly degree x :=
  rfl

/-- The proposition that every degreewise assembly map is bijective. -/
def IsomorphismClaim
    (A : Datum) :
    Prop :=
  ∀ degree, Function.Bijective (A.assembly degree)

/-- The generic comparison-calculus claim for one degree. -/
def isomorphismClaim
    (A : Datum)
    (degree : Int) :
    Comparison.Claim (A.comparison degree) where
  statement := Comparison.IsBijective (A.comparison degree)

/--
The assembly map as an integral conditional comparison.  The map exists
unconditionally, while bijectivity still requires `A.IsomorphismClaim`.
-/
def certified
    (A : Datum)
    (degree : Int)
    (scope : Comparison.Scope) :
    Comparison.Certified
      (A.EquivariantHomology degree)
      (A.GroupRingKTheory degree) :=
  Comparison.Certified.ofConditional
    (A.comparison degree)
    Comparison.CoefficientContext.integral
    Comparison.CoefficientContext.integral
    scope
    (Comparison.IsBijective (A.comparison degree))
    A.IsomorphismClaim
    (fun h ↦ h degree)

end Datum

/--
An explicit Farrell--Jones hypothesis for a particular assembly datum.

There is deliberately no global inhabitant of this structure.
-/
structure FarrellJonesHypothesis
    (A : Datum) where
  assembly_bijective : A.IsomorphismClaim

namespace FarrellJonesHypothesis

/-- Extract the degreewise bijectivity theorem supplied by the hypothesis. -/
theorem bijective
    {A : Datum}
    (hA : FarrellJonesHypothesis A)
    (degree : Int) :
    Comparison.IsBijective (A.comparison degree) :=
  hA.assembly_bijective degree

/-- Turn a supplied Farrell--Jones hypothesis into a proved claim certificate. -/
theorem certificate
    {A : Datum}
    (hA : FarrellJonesHypothesis A)
    (degree : Int) :
    Comparison.Certificate
      (A.comparison degree)
      (A.isomorphismClaim degree) :=
  ⟨hA.bijective degree⟩

end FarrellJonesHypothesis

/--
The assembly isomorphism claim as a conditional certificate whose hypothesis
is exactly the caller-supplied global assembly assertion.
-/
def conditionalIsomorphismCertificate
    (A : Datum)
    (degree : Int) :
    Comparison.ConditionalCertificate
      (A.comparison degree)
      (A.isomorphismClaim degree) where
  Hypothesis := A.IsomorphismClaim
  proof h := h degree

end DAF.Assembly
